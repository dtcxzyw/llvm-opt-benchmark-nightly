Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyMLCPConstraintSolver?download=true
inline.NumInlined: 604
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo:bb.a
.lr.ph798:                                        ; preds = %._crit_edge794
  %i.acg = icmp sgt i32 %.fr819962, 0
  %i.ach = sext i32 %.fr819962 to i64
  %.idx352 = shl nuw nsw i64 %i.ach, 5
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acc, i64 %.idx352
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph798, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564
  %.0277796 = phi i32 [ %.0277795, %.lr.ph798 ], [ %.0277, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564 ]
  %i.acj = zext nneg i32 %.0277796 to i64
  %i.ack = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22672.0.lcssa, i64 %i.acj ; 3 uses
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !209
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 12
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !210 ; 2 uses
  %i.aco = sext i32 %i.acl to i64                 ; 3 uses
  %i.acp = icmp sgt i64 %indvars.iv877, %i.aco
  br i1 %i.acp, label %bb.co, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564

bb.co:                                            ; preds = %bb.cn
  %i.acq = icmp slt i32 %i.acn, %i.xr
  br i1 %i.acq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.acr = load ptr, ptr %i.xs, align 8, !tbaa !203
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.acr, i64 %i.aco
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !205
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.acu = phi i32 [ %i.act, %bb.cp ], [ 1, %bb.co ] ; 3 uses
  %i.acv = sext i32 %i.acn to i64
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.acv
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !35
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 156
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !50
  %i.ada = icmp eq i32 %i.acz, %i.yj
  %i.adb = shl nsw i32 %i.acu, 3
  %i.adc = select i1 %i.ada, i32 %i.adb, i32 0
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.xn, i64 %i.aco
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !41 ; 2 uses
  %i.adg = sext i32 %i.adf to i64
  %.idx353 = shl nsw i64 %i.adg, 6
  %i.adh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx353
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %i.add
  %i.adj = icmp sgt i32 %i.acu, 0
  %or.cond = select i1 %i.acg, i1 %i.adj, i1 false
  br i1 %or.cond, label %.preheader.i547, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564

.preheader.i547:                                  ; preds = %bb.cq, %._crit_edge.i557
  %.038.i548 = phi ptr [ %i.adq, %._crit_edge.i557 ], [ %i.aci, %bb.cq ] ; 6 uses
  %.03437.i549 = phi i32 [ %i.adr, %._crit_edge.i557 ], [ 0, %bb.cq ] ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.038.i548, i64 4
  %i.adl = getelementptr inbounds nuw i8, ptr %.038.i548, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %.038.i548, i64 16 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.038.i548, i64 24 ; 2 uses
  %i.ado = add nsw i32 %.03437.i549, %i.yc
  %i.adp = load <2 x float>, ptr %i.adm, align 4, !tbaa !25
  %.pre45.i552 = load float, ptr %i.adn, align 4, !tbaa !25
  br label %bb.cr

._crit_edge.i557:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i555
  %i.adq = getelementptr inbounds nuw i8, ptr %.038.i548, i64 32
  %i.adr = add nuw nsw i32 %.03437.i549, 1        ; 2 uses
  %exitcond40.not.i558 = icmp eq i32 %i.adr, %.fr819962
  br i1 %exitcond40.not.i558, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564, label %.preheader.i547, !llvm.loop !173

bb.cr:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i555, %.preheader.i547
  %i.ads = phi float [ %.pre45.i552, %.preheader.i547 ], [ %i.afe, %_ZN9btMatrixXIfE7addElemEiif.exit.i555 ] ; 2 uses
  %.03236.i553 = phi i32 [ 0, %.preheader.i547 ], [ %i.afh, %_ZN9btMatrixXIfE7addElemEiif.exit.i555 ] ; 2 uses
  %.03335.i554 = phi ptr [ %i.adi, %.preheader.i547 ], [ %i.afg, %_ZN9btMatrixXIfE7addElemEiif.exit.i555 ] ; 7 uses
  %i.adt = phi <2 x float> [ %i.adp, %.preheader.i547 ], [ %i.aff, %_ZN9btMatrixXIfE7addElemEiif.exit.i555 ] ; 3 uses
  %i.adu = load float, ptr %.038.i548, align 4, !tbaa !25
  %i.adv = load float, ptr %.03335.i554, align 4, !tbaa !25
  %i.adw = fmul float %i.adu, %i.adv
  %i.adx = load float, ptr %i.adk, align 4, !tbaa !25
  %i.ady = getelementptr inbounds nuw i8, ptr %.03335.i554, i64 4
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !25
  %i.aea = call float @llvm.fmuladd.f32(float %i.adx, float %i.adz, float %i.adw)
  %i.aeb = load float, ptr %i.adl, align 4, !tbaa !25
  %i.aec = getelementptr inbounds nuw i8, ptr %.03335.i554, i64 8
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !25
  %i.aee = call float @llvm.fmuladd.f32(float %i.aeb, float %i.aed, float %i.aea)
  %i.aef = getelementptr inbounds nuw i8, ptr %.03335.i554, i64 16
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !25
  %i.aeh = extractelement <2 x float> %i.adt, i64 0
  %i.aei = call float @llvm.fmuladd.f32(float %i.aeh, float %i.aeg, float %i.aee)
  %i.aej = getelementptr inbounds nuw i8, ptr %.03335.i554, i64 20
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !25
  %i.ael = extractelement <2 x float> %i.adt, i64 1
  %i.aem = call float @llvm.fmuladd.f32(float %i.ael, float %i.aek, float %i.aei)
  %i.aen = getelementptr inbounds nuw i8, ptr %.03335.i554, i64 24
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !25
  %i.aep = call float @llvm.fmuladd.f32(float %i.ads, float %i.aeo, float %i.aem) ; 3 uses
  %i.aeq = fcmp une float %i.aep, 0.000000e+00
  br i1 %i.aeq, label %bb.cs, label %_ZN9btMatrixXIfE7addElemEiif.exit.i555

bb.cs:                                            ; preds = %bb.cr
  %i.aer = add nsw i32 %.03236.i553, %i.adf
  %i.aes = load i32, ptr %i.xt, align 4, !tbaa !67
  %i.aet = mul nsw i32 %i.aes, %i.ado
  %i.aeu = add nsw i32 %i.aer, %i.aet
  %i.aev = load ptr, ptr %i.xu, align 8, !tbaa !23
  %i.aew = sext i32 %i.aeu to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.aew ; 2 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !25 ; 2 uses
  %i.aez = fcmp oeq float %i.aey, 0.000000e+00
  br i1 %i.aez, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.afa = load i32, ptr %i.xv, align 8, !tbaa !68
  %i.afb = add nsw i32 %i.afa, 1
  store i32 %i.afb, ptr %i.xv, align 8, !tbaa !68
  br label %.sink.split.i.i559

bb.cu:                                            ; preds = %bb.cs
  %i.afc = fadd float %i.aep, %i.aey
  br label %.sink.split.i.i559

.sink.split.i.i559:                               ; preds = %bb.cu, %bb.ct
  %.sink.i.i560 = phi float [ %i.aep, %bb.ct ], [ %i.afc, %bb.cu ]
  store float %.sink.i.i560, ptr %i.aex, align 4, !tbaa !25
  %i.afd = load <2 x float>, ptr %i.adm, align 4, !tbaa !25
  %.pre44.i563 = load float, ptr %i.adn, align 4, !tbaa !25
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i555

_ZN9btMatrixXIfE7addElemEiif.exit.i555:           ; preds = %.sink.split.i.i559, %bb.cr
  %i.afe = phi float [ %i.ads, %bb.cr ], [ %.pre44.i563, %.sink.split.i.i559 ]
  %i.aff = phi <2 x float> [ %i.adt, %bb.cr ], [ %i.afd, %.sink.split.i.i559 ]
  %i.afg = getelementptr inbounds nuw i8, ptr %.03335.i554, i64 32
  %i.afh = add nuw nsw i32 %.03236.i553, 1        ; 2 uses
  %exitcond.not.i556 = icmp eq i32 %i.afh, %i.acu
  br i1 %exitcond.not.i556, label %._crit_edge.i557, label %bb.cr, !llvm.loop !172

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564: ; preds = %._crit_edge.i557, %bb.cq, %bb.cn
  %i.afi = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %.0277 = load i32, ptr %i.afi, align 4, !tbaa !41 ; 2 uses
  %i.afj = icmp sgt i32 %.0277, -1
  br i1 %i.afj, label %bb.cn, label %._crit_edge799, !llvm.loop !175

._crit_edge799:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit564, %._crit_edge794
  %i.afk = add nsw i32 %.fr819962, %.0279802      ; 2 uses
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 1
  %i.afl = icmp slt i32 %i.afk, %i.xk
  br i1 %i.afl, label %bb.cf, label %._crit_edge804, !llvm.loop !176

bb.cv:                                            ; preds = %._crit_edge804
  %i.afm = load i32, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.afn = icmp sgt i32 %i.afm, 0
  br i1 %i.afn, label %.lr.ph809, label %._crit_edge810

.lr.ph809:                                        ; preds = %bb.cv
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !33
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !51
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !59
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %scevgep1058 = getelementptr i8, ptr %i.mf, i64 -4
  %scevgep1060.a = getelementptr i8, ptr %i.mb, i64 28
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph809, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit593
  %indvars.iv880 = phi i64 [ 0, %.lr.ph809 ], [ %indvars.iv.next881, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit593 ] ; 2 uses
  %.0276805 = phi i32 [ 0, %.lr.ph809 ], [ %i.aoo, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit593 ] ; 7 uses
  %i.afy = sext i32 %.0276805 to i64              ; 3 uses
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.afp, i64 %i.afy
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !35
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 156
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !50
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds [248 x i8], ptr %i.afr, i64 %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 240
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !56
  %i.agh = icmp slt i32 %.0276805, %i.aft
  br i1 %i.agh, label %bb.cx, label %.preheader.lr.ph.i565

bb.cx:                                            ; preds = %bb.cw
  %i.agi = load ptr, ptr %i.afu, align 8, !tbaa !203
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %indvars.iv880
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !205 ; 3 uses
  %i.agl = icmp sgt i32 %i.agk, 0
  br i1 %i.agl, label %.preheader.lr.ph.i565, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit593

.preheader.lr.ph.i565:                            ; preds = %bb.cw, %bb.cx
  %i.agm = phi i32 [ %i.agk, %bb.cx ], [ 1, %bb.cw ] ; 11 uses
  %.pn977 = shl nsw i64 %i.afy, 4                 ; 2 uses
  %i.agn = getelementptr [4 x i8], ptr %i.mb, i64 %.pn977 ; 3 uses
  %i.ago = getelementptr [4 x i8], ptr %i.mf, i64 %.pn977 ; 10 uses
  %i.agp = load i32, ptr %i.afw, align 4
  %i.agq = load ptr, ptr %i.afx, align 8          ; 4 uses
  %.promoted40.i = load i32, ptr %i.afv, align 8, !tbaa !68
  %wide.trip.count.i566 = zext nneg i32 %i.agm to i64 ; 6 uses
  %i.agr = add nsw i64 %wide.trip.count.i566, -1  ; 2 uses
  %i.ags = shl nsw i64 %i.afy, 6                  ; 2 uses
  %i.agt = shl nuw nsw i64 %wide.trip.count.i566, 5
  %i.agu = getelementptr i8, ptr %scevgep1058, i64 %i.ags
  %scevgep1059 = getelementptr i8, ptr %i.agu, i64 %i.agt
  %i.agv = add nsw i32 %i.agm, -1
  %i.agw = zext i32 %i.agv to i64
  %i.agx = shl nuw nsw i64 %i.agw, 5
  %i.agy = getelementptr i8, ptr %scevgep1060.a, i64 %i.ags
  %scevgep1061 = getelementptr i8, ptr %i.agy, i64 %i.agx
  %min.iters.check1063 = icmp samesign ult i32 %i.agm, 5
  %i.agz = trunc nsw i64 %i.agr to i32
  %i.aha = icmp ugt i64 %i.agr, 4294967295
  %i.ahb = and i64 %wide.trip.count.i566, 3       ; 2 uses
  %i.ahc = icmp eq i64 %i.ahb, 0
  %i.ahd = select i1 %i.ahc, i64 4, i64 %i.ahb
  %n.vec1069 = sub nsw i64 %wide.trip.count.i566, %i.ahd ; 3 uses
  %i.ahe = shl nsw i64 %n.vec1069, 5
  %i.ahf = getelementptr i8, ptr %i.ago, i64 %i.ahe
  br label %.preheader.i567

.preheader.i567:                                  ; preds = %._crit_edge.i574, %.preheader.lr.ph.i565
  %.038.i568 = phi ptr [ %i.agn, %.preheader.lr.ph.i565 ], [ %i.alf, %._crit_edge.i574 ] ; 8 uses
  %.03437.i569 = phi i32 [ 0, %.preheader.lr.ph.i565 ], [ %i.alg, %._crit_edge.i574 ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.038.i568, i64 4 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.038.i568, i64 8 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.038.i568, i64 16 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.038.i568, i64 20 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.038.i568, i64 24 ; 2 uses
  %i.ahl = add nsw i32 %.03437.i569, %.0276805
  %i.ahm = mul nsw i32 %i.ahl, %i.agp
  %invariant.op.i = add i32 %i.ahm, %.0276805     ; 5 uses
  br i1 %min.iters.check1063, label %scalar.ph1062.preheader, label %vector.scevcheck

scalar.ph1062.preheader:                          ; preds = %vector.body1070, %vector.memcheck1064, %vector.scevcheck, %.preheader.i567
  %indvars.iv.i570.ph = phi i64 [ 0, %vector.memcheck1064 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i567 ], [ %n.vec1069, %vector.body1070 ]
  %.03335.i571.ph = phi ptr [ %i.ago, %vector.memcheck1064 ], [ %i.ago, %vector.scevcheck ], [ %i.ago, %.preheader.i567 ], [ %i.ahf, %vector.body1070 ]
  br label %scalar.ph1062

vector.scevcheck:                                 ; preds = %.preheader.i567
  %i.ahn = add i32 %invariant.op.i, %i.agz
  %i.aho = icmp slt i32 %i.ahn, %invariant.op.i
  %i.ahp = or i1 %i.aho, %i.aha
  br i1 %i.ahp, label %scalar.ph1062.preheader, label %vector.memcheck1064

vector.memcheck1064:                              ; preds = %vector.scevcheck
  %i.ahq = sext i32 %invariant.op.i to i64        ; 2 uses
  %i.ahr = shl nsw i64 %i.ahq, 2
  %i.ahs = getelementptr i8, ptr %i.agq, i64 %i.ahr ; 2 uses
  %19 = add nsw i64 %i.ahq, %wide.trip.count.i566
  %20 = shl nsw i64 %19, 2
  %i.aht = getelementptr i8, ptr %i.agq, i64 %20  ; 2 uses
  %bound0 = icmp ult ptr %i.agn, %i.aht
  %bound1 = icmp ult ptr %i.ahs, %scevgep1061
  %found.conflict = and i1 %bound0, %bound1
  %bound01065 = icmp ult ptr %i.ago, %i.aht
  %bound11066 = icmp ult ptr %i.ahs, %scevgep1059
  %found.conflict1067 = and i1 %bound01065, %bound11066
  %conflict.rdx = or i1 %found.conflict, %found.conflict1067
  br i1 %conflict.rdx, label %scalar.ph1062.preheader, label %vector.ph1068

vector.ph1068:                                    ; preds = %vector.memcheck1064
  %i.ahu = load float, ptr %.038.i568, align 4, !tbaa !25, !alias.scope !212, !noalias !213
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ahu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahv = load float, ptr %i.ahg, align 4, !tbaa !25, !alias.scope !212, !noalias !213
  %broadcast.splatinsert1075 = insertelement <4 x float> poison, float %i.ahv, i64 0
  %broadcast.splat1076 = shufflevector <4 x float> %broadcast.splatinsert1075, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahw = load float, ptr %i.ahh, align 4, !tbaa !25, !alias.scope !212, !noalias !213
  %broadcast.splatinsert1077 = insertelement <4 x float> poison, float %i.ahw, i64 0
  %broadcast.splat1078 = shufflevector <4 x float> %broadcast.splatinsert1077, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahx = load float, ptr %i.ahi, align 4, !tbaa !25, !alias.scope !212, !noalias !213
  %broadcast.splatinsert1079 = insertelement <4 x float> poison, float %i.ahx, i64 0
  %broadcast.splat1080 = shufflevector <4 x float> %broadcast.splatinsert1079, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahy = load float, ptr %i.ahj, align 4, !tbaa !25, !alias.scope !212, !noalias !213
  %broadcast.splatinsert1081 = insertelement <4 x float> poison, float %i.ahy, i64 0
  %broadcast.splat1082 = shufflevector <4 x float> %broadcast.splatinsert1081, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahz = load float, ptr %i.ahk, align 4, !tbaa !25, !alias.scope !212, !noalias !213
  %broadcast.splatinsert1083 = insertelement <4 x float> poison, float %i.ahz, i64 0
  %broadcast.splat1084 = shufflevector <4 x float> %broadcast.splatinsert1083, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %vector.ph1068
  %index1071 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1085, %vector.body1070 ] ; 3 uses
  %i.aia = shl i64 %index1071, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ago, i64 %i.aia ; 6 uses
  %i.aib = getelementptr i8, ptr %i.ago, i64 %i.aia ; 6 uses
  %next.gep1072 = getelementptr i8, ptr %i.aib, i64 32
  %i.aic = getelementptr i8, ptr %i.ago, i64 %i.aia ; 6 uses
  %next.gep1073 = getelementptr i8, ptr %i.aic, i64 64
  %i.aid = getelementptr i8, ptr %i.ago, i64 %i.aia ; 6 uses
  %next.gep1074 = getelementptr i8, ptr %i.aid, i64 96
  %i.aie = load float, ptr %next.gep, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aif = load float, ptr %next.gep1072, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aig = load float, ptr %next.gep1073, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aih = load float, ptr %next.gep1074, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aii = insertelement <4 x float> poison, float %i.aie, i64 0
  %i.aij = insertelement <4 x float> %i.aii, float %i.aif, i64 1
  %i.aik = insertelement <4 x float> %i.aij, float %i.aig, i64 2
  %i.ail = insertelement <4 x float> %i.aik, float %i.aih, i64 3
  %i.aim = fmul <4 x float> %broadcast.splat, %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aio = getelementptr i8, ptr %i.aib, i64 36
  %i.aip = getelementptr i8, ptr %i.aic, i64 68
  %i.aiq = getelementptr i8, ptr %i.aid, i64 100
  %i.air = load float, ptr %i.ain, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ais = load float, ptr %i.aio, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ait = load float, ptr %i.aip, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aiu = load float, ptr %i.aiq, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aiv = insertelement <4 x float> poison, float %i.air, i64 0
  %i.aiw = insertelement <4 x float> %i.aiv, float %i.ais, i64 1
  %i.aix = insertelement <4 x float> %i.aiw, float %i.ait, i64 2
  %i.aiy = insertelement <4 x float> %i.aix, float %i.aiu, i64 3
  %i.aiz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1076, <4 x float> %i.aiy, <4 x float> %i.aim)
  %i.aja = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ajb = getelementptr i8, ptr %i.aib, i64 40
  %i.ajc = getelementptr i8, ptr %i.aic, i64 72
  %i.ajd = getelementptr i8, ptr %i.aid, i64 104
  %i.aje = load float, ptr %i.aja, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ajf = load float, ptr %i.ajb, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ajg = load float, ptr %i.ajc, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ajh = load float, ptr %i.ajd, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aji = insertelement <4 x float> poison, float %i.aje, i64 0
  %i.ajj = insertelement <4 x float> %i.aji, float %i.ajf, i64 1
  %i.ajk = insertelement <4 x float> %i.ajj, float %i.ajg, i64 2
  %i.ajl = insertelement <4 x float> %i.ajk, float %i.ajh, i64 3
  %i.ajm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1078, <4 x float> %i.ajl, <4 x float> %i.aiz)
  %i.ajn = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ajo = getelementptr i8, ptr %i.aib, i64 48
  %i.ajp = getelementptr i8, ptr %i.aic, i64 80
  %i.ajq = getelementptr i8, ptr %i.aid, i64 112
  %i.ajr = load float, ptr %i.ajn, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ajs = load float, ptr %i.ajo, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ajt = load float, ptr %i.ajp, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aju = load float, ptr %i.ajq, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.ajv = insertelement <4 x float> poison, float %i.ajr, i64 0
  %i.ajw = insertelement <4 x float> %i.ajv, float %i.ajs, i64 1
  %i.ajx = insertelement <4 x float> %i.ajw, float %i.ajt, i64 2
  %i.ajy = insertelement <4 x float> %i.ajx, float %i.aju, i64 3
  %i.ajz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1080, <4 x float> %i.ajy, <4 x float> %i.ajm)
  %i.aka = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.akb = getelementptr i8, ptr %i.aib, i64 52
  %i.akc = getelementptr i8, ptr %i.aic, i64 84
  %i.akd = getelementptr i8, ptr %i.aid, i64 116
  %i.ake = load float, ptr %i.aka, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.akf = load float, ptr %i.akb, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.akg = load float, ptr %i.akc, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.akh = load float, ptr %i.akd, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aki = insertelement <4 x float> poison, float %i.ake, i64 0
  %i.akj = insertelement <4 x float> %i.aki, float %i.akf, i64 1
  %i.akk = insertelement <4 x float> %i.akj, float %i.akg, i64 2
  %i.akl = insertelement <4 x float> %i.akk, float %i.akh, i64 3
  %i.akm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1082, <4 x float> %i.akl, <4 x float> %i.ajz)
  %i.akn = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.ako = getelementptr i8, ptr %i.aib, i64 56
  %i.akp = getelementptr i8, ptr %i.aic, i64 88
  %i.akq = getelementptr i8, ptr %i.aid, i64 120
  %i.akr = load float, ptr %i.akn, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aks = load float, ptr %i.ako, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.akt = load float, ptr %i.akp, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.aku = load float, ptr %i.akq, align 4, !tbaa !25, !alias.scope !214, !noalias !213
  %i.akv = insertelement <4 x float> poison, float %i.akr, i64 0
  %i.akw = insertelement <4 x float> %i.akv, float %i.aks, i64 1
  %i.akx = insertelement <4 x float> %i.akw, float %i.akt, i64 2
  %i.aky = insertelement <4 x float> %i.akx, float %i.aku, i64 3
  %i.akz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1084, <4 x float> %i.aky, <4 x float> %i.akm)
  %i.ala = trunc nuw nsw i64 %index1071 to i32
  %i.alb = add i32 %invariant.op.i, %i.ala
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.alc
  store <4 x float> %i.akz, ptr %i.ald, align 4, !tbaa !25, !alias.scope !213
  %index.next1085 = add nuw i64 %index1071, 4     ; 2 uses
  %i.ale = icmp eq i64 %index.next1085, %n.vec1069
  br i1 %i.ale, label %scalar.ph1062.preheader, label %vector.body1070, !llvm.loop !181

._crit_edge.i574:                                 ; preds = %scalar.ph1062
  %i.alf = getelementptr inbounds nuw i8, ptr %.038.i568, i64 32
  %i.alg = add nuw nsw i32 %.03437.i569, 1        ; 2 uses
  %exitcond43.not.i = icmp eq i32 %i.alg, %i.agm
  br i1 %exitcond43.not.i, label %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit, label %.preheader.i567, !llvm.loop !182

scalar.ph1062:                                    ; preds = %scalar.ph1062.preheader, %scalar.ph1062
  %indvars.iv.i570 = phi i64 [ %indvars.iv.next.i572, %scalar.ph1062 ], [ %indvars.iv.i570.ph, %scalar.ph1062.preheader ] ; 2 uses
  %.03335.i571 = phi ptr [ %i.amh, %scalar.ph1062 ], [ %.03335.i571.ph, %scalar.ph1062.preheader ] ; 7 uses
  %i.alh = load float, ptr %.038.i568, align 4, !tbaa !25
  %i.ali = load float, ptr %.03335.i571, align 4, !tbaa !25
  %i.alj = fmul float %i.alh, %i.ali
  %i.alk = load float, ptr %i.ahg, align 4, !tbaa !25
  %i.all = getelementptr inbounds nuw i8, ptr %.03335.i571, i64 4
  %i.alm = load float, ptr %i.all, align 4, !tbaa !25
  %i.aln = call float @llvm.fmuladd.f32(float %i.alk, float %i.alm, float %i.alj)
  %i.alo = load float, ptr %i.ahh, align 4, !tbaa !25
  %i.alp = getelementptr inbounds nuw i8, ptr %.03335.i571, i64 8
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !25
  %i.alr = call float @llvm.fmuladd.f32(float %i.alo, float %i.alq, float %i.aln)
  %i.als = load float, ptr %i.ahi, align 4, !tbaa !25
  %i.alt = getelementptr inbounds nuw i8, ptr %.03335.i571, i64 16
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !25
  %i.alv = call float @llvm.fmuladd.f32(float %i.als, float %i.alu, float %i.alr)
  %i.alw = load float, ptr %i.ahj, align 4, !tbaa !25
  %i.alx = getelementptr inbounds nuw i8, ptr %.03335.i571, i64 20
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !25
  %i.alz = call float @llvm.fmuladd.f32(float %i.alw, float %i.aly, float %i.alv)
  %i.ama = load float, ptr %i.ahk, align 4, !tbaa !25
  %i.amb = getelementptr inbounds nuw i8, ptr %.03335.i571, i64 24
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !25
  %i.amd = call float @llvm.fmuladd.f32(float %i.ama, float %i.amc, float %i.alz)
  %i.ame = trunc nuw nsw i64 %indvars.iv.i570 to i32
  %.reass.i = add i32 %invariant.op.i, %i.ame
  %i.amf = sext i32 %.reass.i to i64
  %i.amg = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.amf
  store float %i.amd, ptr %i.amg, align 4, !tbaa !25
  %i.amh = getelementptr inbounds nuw i8, ptr %.03335.i571, i64 32
  %indvars.iv.next.i572 = add nuw nsw i64 %indvars.iv.i570, 1 ; 2 uses
  %exitcond.not.i573 = icmp eq i64 %indvars.iv.next.i572, %wide.trip.count.i566
  br i1 %exitcond.not.i573, label %._crit_edge.i574, label %scalar.ph1062, !llvm.loop !183

_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit:  ; preds = %._crit_edge.i574
  %i.ami = mul i32 %i.agm, %i.agm
  %i.amj = add i32 %.promoted40.i, %i.ami
  store i32 %i.amj, ptr %i.afv, align 8, !tbaa !68
  %.not349 = icmp eq ptr %i.agg, null
  br i1 %.not349, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit593, label %.preheader.lr.ph.i575

.preheader.lr.ph.i575:                            ; preds = %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit
  %i.amk = zext nneg i32 %i.agm to i64
  %i.aml = shl nuw nsw i64 %i.amk, 3              ; 2 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %i.aml
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.aml
  br label %.preheader.i576

.preheader.i576:                                  ; preds = %.preheader.lr.ph.i575, %._crit_edge.i586
  %.038.i577 = phi ptr [ %i.amu, %._crit_edge.i586 ], [ %i.amn, %.preheader.lr.ph.i575 ] ; 6 uses
  %.03437.i578 = phi i32 [ %i.amv, %._crit_edge.i586 ], [ 0, %.preheader.lr.ph.i575 ] ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.038.i577, i64 4
  %i.amp = getelementptr inbounds nuw i8, ptr %.038.i577, i64 8
  %i.amq = getelementptr inbounds nuw i8, ptr %.038.i577, i64 16 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.038.i577, i64 24 ; 2 uses
  %i.ams = add nsw i32 %.03437.i578, %.0276805
  %i.amt = load <2 x float>, ptr %i.amq, align 4, !tbaa !25
  %.pre45.i581 = load float, ptr %i.amr, align 4, !tbaa !25
  br label %bb.cy

._crit_edge.i586:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i584
  %i.amu = getelementptr inbounds nuw i8, ptr %.038.i577, i64 32
  %i.amv = add nuw nsw i32 %.03437.i578, 1        ; 2 uses
  %exitcond40.not.i587 = icmp eq i32 %i.amv, %i.agm
  br i1 %exitcond40.not.i587, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit593, label %.preheader.i576, !llvm.loop !173

bb.cy:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i584, %.preheader.i576
  %i.amw = phi float [ %.pre45.i581, %.preheader.i576 ], [ %i.aoi, %_ZN9btMatrixXIfE7addElemEiif.exit.i584 ] ; 2 uses
  %.03236.i582 = phi i32 [ 0, %.preheader.i576 ], [ %i.aol, %_ZN9btMatrixXIfE7addElemEiif.exit.i584 ] ; 2 uses
  %.03335.i583 = phi ptr [ %i.amm, %.preheader.i576 ], [ %i.aok, %_ZN9btMatrixXIfE7addElemEiif.exit.i584 ] ; 7 uses
  %i.amx = phi <2 x float> [ %i.amt, %.preheader.i576 ], [ %i.aoj, %_ZN9btMatrixXIfE7addElemEiif.exit.i584 ] ; 3 uses
  %i.amy = load float, ptr %.038.i577, align 4, !tbaa !25
  %i.amz = load float, ptr %.03335.i583, align 4, !tbaa !25
  %i.ana = fmul float %i.amy, %i.amz
end_hunk_0
