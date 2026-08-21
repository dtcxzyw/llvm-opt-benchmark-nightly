inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_channel_map_apply_f32:bb.a
  %i.yr = shufflevector <8 x float> %i.yj, <8 x float> %i.yl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ys = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yr, <16 x float> %i.xz, <16 x float> zeroinitializer)
  %i.yt = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yq, <16 x float> %i.xy, <16 x float> %i.ys)
  %i.yu = shufflevector <8 x float> %i.ym, <8 x float> %i.yo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yv = shufflevector <8 x float> %i.yn, <8 x float> %i.yp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yw = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yv, <16 x float> %i.yb, <16 x float> zeroinitializer)
  %i.yx = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yu, <16 x float> %i.ya, <16 x float> %i.yw)
  %interleaved.vec = shufflevector <16 x float> %i.yt, <16 x float> %i.yx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.yh, align 4, !tbaa !336, !alias.scope !1216, !noalias !1213
  %index.next922 = add nuw i32 %index920, 4       ; 2 uses
  %i.yy = icmp eq i32 %index.next922, %n.vec886
  br i1 %i.yy, label %middle.block923, label %vector.body919, !llvm.loop !1218

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i32 %n.vec886, %i.xi
  br i1 %cmp.n924, label %.loopexit373, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck880, %.lr.ph471, %middle.block923
  %.0314470.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck880 ], [ 0, %.lr.ph471 ], [ %n.vec886, %middle.block923 ]
  %i.yz = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.za = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zb = shufflevector <4 x float> %i.yz, <4 x float> %i.za, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.zc = shufflevector <2 x float> %i.xd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zd = shufflevector <4 x float> %i.zb, <4 x float> %i.zc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ze = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> %i.za, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zg = shufflevector <4 x float> %i.zf, <4 x float> %i.zc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.zh = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.zi = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zj = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.zk = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zm = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zn = shufflevector <4 x float> %i.zm, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zo = shufflevector <4 x float> %i.zn, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.0314470 = phi i32 [ %i.aal, %scalar.ph883 ], [ %.0314470.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.zp = shl i32 %.0314470, 1                    ; 2 uses
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zq
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !336
  %i.zt = or disjoint i32 %i.zp, 1
  %i.zu = zext i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !336
  %i.zx = shl i32 %.0314470, 3                    ; 2 uses
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zy
  %i.aaa = insertelement <4 x float> poison, float %i.zs, i64 0
  %i.aab = shufflevector <4 x float> %i.aaa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aab, <4 x float> %i.zd, <4 x float> zeroinitializer)
  %i.aad = insertelement <4 x float> poison, float %i.zw, i64 0
  %i.aae = shufflevector <4 x float> %i.aad, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aaf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aae, <4 x float> %i.zg, <4 x float> %i.aac)
  store <4 x float> %i.aaf, ptr %i.zz, align 4, !tbaa !336
  %i.aag = or disjoint i32 %i.zx, 4
  %i.aah = zext i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aah
  %i.aaj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aab, <4 x float> %i.zl, <4 x float> zeroinitializer)
  %i.aak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aae, <4 x float> %i.zo, <4 x float> %i.aaj)
  store <4 x float> %i.aak, ptr %i.aai, align 4, !tbaa !336
  %i.aal = add i32 %.0314470, 1                   ; 3 uses
  %i.aam = zext i32 %i.aal to i64
  %i.aan = icmp ugt i64 %6, %i.aam
  br i1 %i.aan, label %scalar.ph883, label %.loopexit373, !llvm.loop !1219

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge459
  %.1315468 = phi i32 [ 0, %.preheader374.lr.ph ], [ %i.acg, %._crit_edge459 ] ; 3 uses
  br i1 %.not489, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader374
  %i.aao = mul i32 %.1315468, %5
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph458, %bb.ba
  %indvars.iv602 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next603, %bb.ba ] ; 10 uses
  %i.aap = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abk, %bb.ba ]
  %i.aaq = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abx, %bb.ba ]
  %i.aar = trunc nuw i64 %indvars.iv602 to i32
  %i.aas = add i32 %i.aao, %i.aar
  %i.aat = zext i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aat
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !336
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv602
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !336
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv602
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !336
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv602
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !336
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv602
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !336
  %i.abe = insertelement <4 x float> poison, float %i.aav, i64 0
  %i.abf = shufflevector <4 x float> %i.abe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abg = insertelement <4 x float> poison, float %i.aax, i64 0
  %i.abh = insertelement <4 x float> %i.abg, float %i.aaz, i64 1
  %i.abi = insertelement <4 x float> %i.abh, float %i.abb, i64 2
  %i.abj = insertelement <4 x float> %i.abi, float %i.abd, i64 3
  %i.abk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abf, <4 x float> %i.abj, <4 x float> %i.aap) ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv602
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !336
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv602
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !336
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv602
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !336
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv602
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !336
  %i.abt = insertelement <4 x float> poison, float %i.abm, i64 0
  %i.abu = insertelement <4 x float> %i.abt, float %i.abo, i64 1
  %i.abv = insertelement <4 x float> %i.abu, float %i.abq, i64 2
  %i.abw = insertelement <4 x float> %i.abv, float %i.abs, i64 3
  %i.abx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abf, <4 x float> %i.abw, <4 x float> %i.aaq) ; 2 uses
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge459, label %bb.ba, !llvm.loop !1220

._crit_edge459:                                   ; preds = %bb.ba, %.preheader374
  %i.aby = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abk, %bb.ba ]
  %i.abz = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abx, %bb.ba ]
  %i.aca = shl i32 %.1315468, 3                   ; 2 uses
  %i.acb = zext i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.acb
  store <4 x float> %i.aby, ptr %i.acc, align 4, !tbaa !336
  %i.acd = or disjoint i32 %i.aca, 4
  %i.ace = zext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ace
  store <4 x float> %i.abz, ptr %i.acf, align 4, !tbaa !336
  %i.acg = add i32 %.1315468, 1                   ; 3 uses
  %i.ach = zext i32 %i.acg to i64
  %i.aci = icmp ugt i64 %6, %i.ach
  br i1 %i.aci, label %.preheader374, label %.loopexit373, !llvm.loop !1221

.preheader377:                                    ; preds = %.preheader377.lr.ph, %._crit_edge441
  %.2447 = phi i32 [ 0, %.preheader377.lr.ph ], [ %i.aeb, %._crit_edge441 ] ; 3 uses
  br i1 %.not487, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader377
  %i.acj = mul i32 %.2447, %5
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph440, %bb.bb
  %indvars.iv597 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next598, %bb.bb ] ; 8 uses
  %i.ack = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.ado, %bb.bb ]
  %i.acl = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.adh, %bb.bb ]
  %i.acm = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.ada, %bb.bb ]
  %i.acn = trunc nuw i64 %indvars.iv597 to i32
  %i.aco = add i32 %i.acj, %i.acn
  %i.acp = zext i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acp
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !336
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv597
  %i.act = load float, ptr %i.acs, align 4, !tbaa !336
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv597
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !336
  %i.acw = insertelement <2 x float> poison, float %i.acr, i64 0
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acy = insertelement <2 x float> poison, float %i.act, i64 0
  %i.acz = insertelement <2 x float> %i.acy, float %i.acv, i64 1
  %i.ada = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acx, <2 x float> %i.acz, <2 x float> %i.acm) ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv597
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !336
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv597
  %i.ade = load float, ptr %i.add, align 4, !tbaa !336
  %i.adf = insertelement <2 x float> poison, float %i.adc, i64 0
  %i.adg = insertelement <2 x float> %i.adf, float %i.ade, i64 1
  %i.adh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acx, <2 x float> %i.adg, <2 x float> %i.acl) ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv597
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !336
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv597
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !336
  %i.adm = insertelement <2 x float> poison, float %i.adj, i64 0
  %i.adn = insertelement <2 x float> %i.adm, float %i.adl, i64 1
  %i.ado = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acx, <2 x float> %i.adn, <2 x float> %i.ack) ; 2 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge441, label %bb.bb, !llvm.loop !1222

._crit_edge441:                                   ; preds = %bb.bb, %.preheader377
  %i.adp = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.ado, %bb.bb ]
  %i.adq = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.adh, %bb.bb ]
  %i.adr = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.ada, %bb.bb ]
  %i.ads = mul i32 %.2447, 6                      ; 3 uses
  %i.adt = zext i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adt
  store <2 x float> %i.adr, ptr %i.adu, align 4, !tbaa !336
  %i.adv = add i32 %i.ads, 2
  %i.adw = zext i32 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adw
  store <2 x float> %i.adq, ptr %i.adx, align 4, !tbaa !336
  %i.ady = add i32 %i.ads, 4
  %i.adz = zext i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adz
  store <2 x float> %i.adp, ptr %i.aea, align 4, !tbaa !336
  %i.aeb = add i32 %.2447, 1                      ; 3 uses
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = icmp ugt i64 %6, %i.aec
  br i1 %i.aed, label %.preheader377, label %.loopexit373, !llvm.loop !1223

.loopexit373:                                     ; preds = %._crit_edge441, %._crit_edge459, %scalar.ph883, %middle.block923, %.preheader380, %.preheader378, %.preheader375, %.preheader372, %._crit_edge432
  %.3 = phi i32 [ 0, %._crit_edge432 ], [ %i.aal, %scalar.ph883 ], [ 0, %.preheader380 ], [ 0, %.preheader372 ], [ 0, %.preheader375 ], [ 0, %.preheader378 ], [ %i.acg, %._crit_edge459 ], [ %n.vec886, %middle.block923 ], [ %i.aeb, %._crit_edge441 ] ; 3 uses
  %i.aee = zext i32 %.3 to i64
  %i.aef = icmp ugt i64 %6, %i.aee
  br i1 %i.aef, label %.preheader371.lr.ph, label %.loopexit

.preheader371.lr.ph:                              ; preds = %.loopexit373
  %.not492 = icmp eq i32 %5, 0
  %wide.trip.count615 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count610 = zext nneg i32 %5 to i64   ; 2 uses
  %wide.trip.count620 = zext nneg i32 %2 to i64
  %i.aeg = add nsw i64 %wide.trip.count615, -1    ; 2 uses
  %xtraiter1169 = and i64 %wide.trip.count610, 3  ; 3 uses
  %i.aeh = add nsw i32 %5, -1
  %i.aei = icmp ult i32 %i.aeh, 3
  %unroll_iter1174 = and i64 %wide.trip.count610, 60
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  %lcmp.mod1173 = icmp ne i64 %xtraiter1169, 0
  %min.iters.check928 = icmp ult i32 %2, 8
  %i.aej = trunc nsw i64 %i.aeg to i32
  %i.aek = icmp ugt i64 %i.aeg, 4294967295
  %n.vec930 = and i64 %wide.trip.count615, 56     ; 3 uses
  %cmp.n935 = icmp eq i64 %n.vec930, %wide.trip.count615
  %xtraiter1176 = and i64 %wide.trip.count615, 3  ; 2 uses
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1176, 0
  br label %.preheader371

.preheader371:                                    ; preds = %.preheader371.lr.ph, %._crit_edge479
  %indvar = phi i32 [ 0, %.preheader371.lr.ph ], [ %indvar.next, %._crit_edge479 ] ; 2 uses
  %.4480 = phi i32 [ %.3, %.preheader371.lr.ph ], [ %i.ahi, %._crit_edge479 ] ; 3 uses
  %9 = add i32 %.3, %indvar
  %10 = mul i32 %9, %2
  br i1 %.not484, label %._crit_edge479, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader371
  %i.ael = mul i32 %.4480, %5                     ; 5 uses
  %i.aem = mul i32 %.4480, %2                     ; 7 uses
  br i1 %.not492, label %.preheader.preheader, label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  br i1 %min.iters.check928, label %.preheader.preheader960, label %vector.scevcheck926

vector.scevcheck926:                              ; preds = %.preheader.preheader
  %i.aen = xor i32 %10, -1
  %i.aeo = icmp ult i32 %i.aen, %i.aej
  %i.aep = or i1 %i.aeo, %i.aek
  br i1 %i.aep, label %.preheader.preheader960, label %vector.body931

vector.body931:                                   ; preds = %vector.scevcheck926, %vector.body931
  %index932 = phi i64 [ %index.next933, %vector.body931 ], [ 0, %vector.scevcheck926 ] ; 2 uses
  %i.aeq = trunc nuw nsw i64 %index932 to i32
  %i.aer = add i32 %i.aem, %i.aeq
  %i.aes = zext i32 %i.aer to i64
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aes ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  store <4 x float> zeroinitializer, ptr %i.aet, align 4, !tbaa !336
  store <4 x float> zeroinitializer, ptr %i.aeu, align 4, !tbaa !336
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.aev = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.aev, label %middle.block934, label %vector.body931, !llvm.loop !1224

middle.block934:                                  ; preds = %vector.body931
  br i1 %cmp.n935, label %._crit_edge479, label %.preheader.preheader960

.preheader.preheader960:                          ; preds = %vector.scevcheck926, %.preheader.preheader, %middle.block934
  %indvars.iv617.ph = phi i64 [ 0, %vector.scevcheck926 ], [ 0, %.preheader.preheader ], [ %n.vec930, %middle.block934 ] ; 3 uses
  br i1 %lcmp.mod1177.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader960, %.preheader.prol
  %indvars.iv617.prol = phi i64 [ %indvars.iv.next618.prol, %.preheader.prol ], [ %indvars.iv617.ph, %.preheader.preheader960 ] ; 2 uses
  %prol.iter1178 = phi i64 [ %prol.iter1178.next, %.preheader.prol ], [ 0, %.preheader.preheader960 ]
  %i.aew = trunc nuw nsw i64 %indvars.iv617.prol to i32
  %i.aex = add i32 %i.aem, %i.aew
  %i.aey = zext i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aey
  store float 0.000000e+00, ptr %i.aez, align 4, !tbaa !336
  %indvars.iv.next618.prol = add nuw nsw i64 %indvars.iv617.prol, 1 ; 2 uses
  %prol.iter1178.next = add i64 %prol.iter1178, 1 ; 2 uses
  %prol.iter1178.cmp.not = icmp eq i64 %prol.iter1178.next, %xtraiter1176
  br i1 %prol.iter1178.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !1225

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader960
  %indvars.iv617.unr = phi i64 [ %indvars.iv617.ph, %.preheader.preheader960 ], [ %indvars.iv.next618.prol, %.preheader.prol ]
  %i.afa = sub nsw i64 %indvars.iv617.ph, %wide.trip.count615
  %i.afb = icmp ugt i64 %i.afa, -4
  br i1 %i.afb, label %._crit_edge479, label %.preheader.preheader960.new

.preheader.preheader960.new:                      ; preds = %.preheader.prol.loopexit
  %invariant.op1229 = add i32 1, %i.aem
  %invariant.op1231 = add i32 2, %i.aem
  %invariant.op1233 = add i32 3, %i.aem
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge476.us
  %indvars.iv612 = phi i64 [ %indvars.iv.next613, %._crit_edge476.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %indvars.iv612 ; 5 uses
  br i1 %i.aei, label %.epil.preheader1168, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv607 = phi i64 [ %indvars.iv.next608.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.0312474.us = phi float [ %i.agi, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter1175 = phi i64 [ %niter1175.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.afd = trunc nuw i64 %indvars.iv607 to i32
  %i.afe = add i32 %i.ael, %i.afd
  %i.aff = zext i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aff
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !336
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %indvars.iv607
  %i.afj = load float, ptr %i.afi, align 16, !tbaa !336
  %i.afk = tail call float @llvm.fmuladd.f32(float %i.afh, float %i.afj, float %.0312474.us)
  %indvars.iv.next608 = or disjoint i64 %indvars.iv607, 1 ; 2 uses
  %i.afl = trunc nuw i64 %indvars.iv.next608 to i32
  %i.afm = add i32 %i.ael, %i.afl
  %i.afn = zext i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afn
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !336
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %indvars.iv.next608
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !336
  %i.afs = tail call float @llvm.fmuladd.f32(float %i.afp, float %i.afr, float %i.afk)
  %indvars.iv.next608.1 = or disjoint i64 %indvars.iv607, 2 ; 2 uses
  %i.aft = trunc nuw i64 %indvars.iv.next608.1 to i32
  %i.afu = add i32 %i.ael, %i.aft
  %i.afv = zext i32 %i.afu to i64
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !336
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %indvars.iv.next608.1
  %i.afz = load float, ptr %i.afy, align 8, !tbaa !336
  %i.aga = tail call float @llvm.fmuladd.f32(float %i.afx, float %i.afz, float %i.afs)
  %indvars.iv.next608.2 = or disjoint i64 %indvars.iv607, 3 ; 2 uses
  %i.agb = trunc nuw i64 %indvars.iv.next608.2 to i32
  %i.agc = add i32 %i.ael, %i.agb
  %i.agd = zext i32 %i.agc to i64
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agd
  %i.agf = load float, ptr %i.age, align 4, !tbaa !336
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %indvars.iv.next608.2
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !336
  %i.agi = tail call float @llvm.fmuladd.f32(float %i.agf, float %i.agh, float %i.aga) ; 3 uses
  %indvars.iv.next608.3 = add nuw nsw i64 %indvars.iv607, 4 ; 2 uses
  %niter1175.next.3 = add i64 %niter1175, 4       ; 2 uses
  %niter1175.ncmp.3 = icmp eq i64 %niter1175.next.3, %unroll_iter1174
  br i1 %niter1175.ncmp.3, label %._crit_edge476.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !1226

._crit_edge476.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod1171.not, label %._crit_edge476.us, label %.epil.preheader1168

.epil.preheader1168:                              ; preds = %._crit_edge476.us.unr-lcssa, %.preheader.us
  %indvars.iv607.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next608.3, %._crit_edge476.us.unr-lcssa ]
  %.0312474.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.agi, %._crit_edge476.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1173)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader1168
  %indvars.iv607.epil = phi i64 [ %indvars.iv607.epil.init, %.epil.preheader1168 ], [ %indvars.iv.next608.epil, %bb.bc ] ; 3 uses
  %.0312474.us.epil = phi float [ %.0312474.us.epil.init, %.epil.preheader1168 ], [ %i.agq, %bb.bc ]
  %epil.iter1170 = phi i64 [ 0, %.epil.preheader1168 ], [ %epil.iter1170.next, %bb.bc ]
  %i.agj = trunc nuw i64 %indvars.iv607.epil to i32
  %i.agk = add i32 %i.ael, %i.agj
  %i.agl = zext i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agl
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !336
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %indvars.iv607.epil
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !336
  %i.agq = tail call float @llvm.fmuladd.f32(float %i.agn, float %i.agp, float %.0312474.us.epil) ; 2 uses
  %indvars.iv.next608.epil = add nuw nsw i64 %indvars.iv607.epil, 1
  %epil.iter1170.next = add i64 %epil.iter1170, 1 ; 2 uses
  %epil.iter1170.cmp.not = icmp eq i64 %epil.iter1170.next, %xtraiter1169
  br i1 %epil.iter1170.cmp.not, label %._crit_edge476.us, label %bb.bc, !llvm.loop !1227

._crit_edge476.us:                                ; preds = %bb.bc, %._crit_edge476.us.unr-lcssa
  %.lcssa = phi float [ %i.agi, %._crit_edge476.us.unr-lcssa ], [ %i.agq, %bb.bc ]
  %i.agr = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.ags = add i32 %i.aem, %i.agr
  %i.agt = zext i32 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agt
  store float %.lcssa, ptr %i.agu, align 4, !tbaa !336
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count615
  br i1 %exitcond616.not, label %._crit_edge479, label %.preheader.us, !llvm.loop !1228

.preheader:                                       ; preds = %.preheader, %.preheader.preheader960.new
  %indvars.iv617 = phi i64 [ %indvars.iv617.unr, %.preheader.preheader960.new ], [ %indvars.iv.next618.3, %.preheader ] ; 5 uses
  %i.agv = trunc nuw nsw i64 %indvars.iv617 to i32
  %i.agw = add i32 %i.aem, %i.agv
  %i.agx = zext i32 %i.agw to i64
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.agx
  store float 0.000000e+00, ptr %i.agy, align 4, !tbaa !336
  %i.agz = trunc i64 %indvars.iv617 to i32
  %.reass1230 = add i32 %i.agz, %invariant.op1229
  %i.aha = zext i32 %.reass1230 to i64
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aha
  store float 0.000000e+00, ptr %i.ahb, align 4, !tbaa !336
  %i.ahc = trunc i64 %indvars.iv617 to i32
  %.reass1232 = add i32 %i.ahc, %invariant.op1231
  %i.ahd = zext i32 %.reass1232 to i64
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ahd
  store float 0.000000e+00, ptr %i.ahe, align 4, !tbaa !336
  %i.ahf = trunc i64 %indvars.iv617 to i32
  %.reass1234 = add i32 %i.ahf, %invariant.op1233
  %i.ahg = zext i32 %.reass1234 to i64
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ahg
  store float 0.000000e+00, ptr %i.ahh, align 4, !tbaa !336
  %indvars.iv.next618.3 = add nuw nsw i64 %indvars.iv617, 4 ; 2 uses
  %exitcond621.not.3 = icmp eq i64 %indvars.iv.next618.3, %wide.trip.count620
  br i1 %exitcond621.not.3, label %._crit_edge479, label %.preheader, !llvm.loop !1229

._crit_edge479:                                   ; preds = %._crit_edge476.us, %.preheader.prol.loopexit, %.preheader, %middle.block934, %.preheader371
  %i.ahi = add i32 %.4480, 1                      ; 2 uses
  %i.ahj = zext i32 %i.ahi to i64
  %i.ahk = icmp ugt i64 %6, %i.ahj
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ahk, label %.preheader371, label %.loopexit, !llvm.loop !1230

.preheader381:                                    ; preds = %.preheader381.lr.ph, %._crit_edge419
  %.5428 = phi i32 [ 0, %.preheader381.lr.ph ], [ %i.apy, %._crit_edge419 ] ; 5 uses
  %11 = mul i32 %2, %.5428
  %12 = mul i32 %2, %.5428
  br i1 %.not482, label %._crit_edge419, label %.lr.ph418

.lr.ph418:                                        ; preds = %.preheader381
  %i.ahl = mul i32 %.5428, %5                     ; 7 uses
  %i.ahm = mul i32 %.5428, %2                     ; 13 uses
  br i1 %.not483, label %.lr.ph418.split, label %.lr.ph418.split.us.preheader

.lr.ph418.split.us.preheader:                     ; preds = %.lr.ph418
  %i.ahn = zext i32 %i.ahl to i64
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahn
  %i.ahp = add i32 %i.ahl, 1
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahq
  %i.ahs = add i32 %i.ahl, 2
  %i.aht = zext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aht
  %i.ahv = add i32 %i.ahl, 3
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahw
  %i.ahy = add i32 %i.ahl, 4
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahz
  br label %.lr.ph418.split.us

.lr.ph418.split.us:                               ; preds = %.lr.ph418.split.us.preheader, %._crit_edge.us
  %indvars.iv567 = phi i64 [ 0, %.lr.ph418.split.us.preheader ], [ %indvars.iv.next568, %._crit_edge.us ] ; 4 uses
  br i1 %i.tn, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph418.split.us
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv567
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !9
  br label %ma_channel_map_get_channel.exit360.us

bb.be:                                            ; preds = %.lr.ph418.split.us
  %i.aid = trunc nuw nsw i64 %indvars.iv567 to i32
  %i.aie = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %2, i32 noundef %i.aid)
  br label %ma_channel_map_get_channel.exit360.us

ma_channel_map_get_channel.exit360.us:            ; preds = %bb.be, %bb.bd
  %.0.i359.us = phi i8 [ %i.aie, %bb.be ], [ %i.aic, %bb.bd ]
  %i.aif = zext i8 %.0.i359.us to i64
  %i.aig = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.aif ; 5 uses
  %i.aih = load float, ptr %i.aig, align 8, !tbaa !336 ; 7 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !336 ; 7 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  %i.ail = load float, ptr %i.aik, align 8, !tbaa !336 ; 7 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aig, i64 12
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !336 ; 7 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aig, i64 20
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !336 ; 7 uses
  br i1 %i.to, label %.lr.ph.split.us.us.preheader, label %ma_channel_map_get_channel.exit363.us420

.lr.ph.split.us.us.preheader:                     ; preds = %ma_channel_map_get_channel.exit360.us
  %i.aiq = load float, ptr %i.aho, align 4, !tbaa !336
  %i.air = load float, ptr %i.tr, align 8, !tbaa !336
  %i.ais = load float, ptr %i.ts, align 4, !tbaa !336
  %i.ait = fmul float %i.aij, %i.ais
  %i.aiu = tail call float @llvm.fmuladd.f32(float %i.aih, float %i.air, float %i.ait)
  %i.aiv = load float, ptr %i.tt, align 8, !tbaa !336
  %i.aiw = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.aiv, float %i.aiu)
  %i.aix = load float, ptr %i.tu, align 4, !tbaa !336
  %i.aiy = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.aix, float %i.aiw)
  %i.aiz = fadd float %i.aiy, 0.000000e+00
  %i.aja = load float, ptr %i.tv, align 4, !tbaa !336
  %i.ajb = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.aja, float %i.aiz)
  %i.ajc = tail call float @llvm.fmuladd.f32(float %i.aiq, float %i.ajb, float 0.000000e+00) ; 2 uses
  br i1 %exitcond551.peel.not, label %._crit_edge.us, label %ma_channel_map_get_channel.exit363.us.us.peel562

ma_channel_map_get_channel.exit363.us.us.peel562: ; preds = %.lr.ph.split.us.us.preheader
  %i.ajd = load float, ptr %i.ahr, align 4, !tbaa !336
  %i.aje = fmul float %i.aij, 5.000000e-01
  %i.ajf = tail call float @llvm.fmuladd.f32(float %i.aih, float 0.000000e+00, float %i.aje)
  %i.ajg = tail call float @llvm.fmuladd.f32(float %i.ail, float 5.000000e-01, float %i.ajf)
  %i.ajh = tail call float @llvm.fmuladd.f32(float %i.ain, float 0.000000e+00, float %i.ajg)
  %i.aji = fadd float %i.ajh, 0.000000e+00
  %i.ajj = tail call float @llvm.fmuladd.f32(float %i.aip, float 0.000000e+00, float %i.aji)
  %i.ajk = tail call float @llvm.fmuladd.f32(float %i.ajd, float %i.ajj, float %i.ajc) ; 2 uses
  %cond1235 = icmp eq i32 %5, 2
  br i1 %cond1235, label %._crit_edge.us, label %ma_channel_map_get_channel.exit363.us.us.peel

ma_channel_map_get_channel.exit363.us.us.peel:    ; preds = %ma_channel_map_get_channel.exit363.us.us.peel562
  %i.ajl = load float, ptr %i.ahu, align 4, !tbaa !336
  %i.ajm = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 4 ; 5 uses
  %i.ajn = load float, ptr %i.ajm, align 8, !tbaa !336
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !336
  %i.ajq = fmul float %i.aij, %i.ajp
  %i.ajr = tail call float @llvm.fmuladd.f32(float %i.aih, float %i.ajn, float %i.ajq)
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  %i.ajt = load float, ptr %i.ajs, align 8, !tbaa !336
  %i.aju = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.ajt, float %i.ajr)
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajm, i64 12
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !336
  %i.ajx = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.ajw, float %i.aju)
  %i.ajy = fadd float %i.ajx, 0.000000e+00
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajm, i64 20
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !336
  %i.akb = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.aka, float %i.ajy)
  %i.akc = tail call float @llvm.fmuladd.f32(float %i.ajl, float %i.akb, float %i.ajk) ; 2 uses
  switch i32 %5, label %switch.lookup956.peel1119 [
    i32 3, label %._crit_edge.us
    i32 4, label %switch.lookup947.peel1104
    i32 1, label %ma_channel_map_get_channel.exit363.us.us.peel1123
    i32 5, label %switch.lookup942.peel1099
  ]

switch.lookup942.peel1099:                        ; preds = %ma_channel_map_get_channel.exit363.us.us.peel
  br label %ma_channel_map_get_channel.exit363.us.us.peel1123

switch.lookup947.peel1104:                        ; preds = %ma_channel_map_get_channel.exit363.us.us.peel
  br label %ma_channel_map_get_channel.exit363.us.us.peel1123

switch.lookup956.peel1119:                        ; preds = %ma_channel_map_get_channel.exit363.us.us.peel
  br label %ma_channel_map_get_channel.exit363.us.us.peel1123

ma_channel_map_get_channel.exit363.us.us.peel1123: ; preds = %ma_channel_map_get_channel.exit363.us.us.peel, %switch.lookup956.peel1119, %switch.lookup947.peel1104, %switch.lookup942.peel1099
  %.0.i362.us.us.peel1124 = phi i64 [ 10, %switch.lookup947.peel1104 ], [ 5, %switch.lookup956.peel1119 ], [ 1, %ma_channel_map_get_channel.exit363.us.us.peel ], [ 6, %switch.lookup942.peel1099 ]
  %i.akd = load float, ptr %i.ahx, align 4, !tbaa !336
  %i.ake = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %.0.i362.us.us.peel1124 ; 5 uses
  %i.akf = load float, ptr %i.ake, align 8, !tbaa !336
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 4
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !336
  %i.aki = fmul float %i.aij, %i.akh
  %i.akj = tail call float @llvm.fmuladd.f32(float %i.aih, float %i.akf, float %i.aki)
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.akl = load float, ptr %i.akk, align 8, !tbaa !336
  %i.akm = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.akl, float %i.akj)
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ake, i64 12
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !336
  %i.akp = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.ako, float %i.akm)
  %i.akq = fadd float %i.akp, 0.000000e+00
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ake, i64 20
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !336
  %i.akt = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.aks, float %i.akq)
  %i.aku = tail call float @llvm.fmuladd.f32(float %i.akd, float %i.akt, float %i.akc) ; 2 uses
  switch i32 %5, label %switch.lookup956.peel1154 [
    i32 4, label %._crit_edge.us
    i32 7, label %switch.lookup952.peel1147
    i32 1, label %ma_channel_map_get_channel.exit363.us.us.peel1158
    i32 2, label %.thread.i67.i.us.us.peel1146
    i32 5, label %switch.lookup942.peel1134
    i32 6, label %switch.lookup.peel1129
  ]

switch.lookup.peel1129:                           ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1123
  br label %ma_channel_map_get_channel.exit363.us.us.peel1158

switch.lookup942.peel1134:                        ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1123
  br label %ma_channel_map_get_channel.exit363.us.us.peel1158

.thread.i67.i.us.us.peel1146:                     ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1123
  br label %ma_channel_map_get_channel.exit363.us.us.peel1158

switch.lookup952.peel1147:                        ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1123
  br label %ma_channel_map_get_channel.exit363.us.us.peel1158

switch.lookup956.peel1154:                        ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1123
  br label %ma_channel_map_get_channel.exit363.us.us.peel1158

ma_channel_map_get_channel.exit363.us.us.peel1158: ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1123, %switch.lookup956.peel1154, %switch.lookup952.peel1147, %.thread.i67.i.us.us.peel1146, %switch.lookup942.peel1134, %switch.lookup.peel1129
  %.0.i362.us.us.peel1159 = phi i64 [ 0, %.thread.i67.i.us.us.peel1146 ], [ 11, %switch.lookup.peel1129 ], [ 1, %ma_channel_map_get_channel.exit363.us.us.peel1123 ], [ 7, %switch.lookup942.peel1134 ], [ 6, %switch.lookup956.peel1154 ], [ 10, %switch.lookup952.peel1147 ]
  %i.akv = load float, ptr %i.aia, align 4, !tbaa !336
  %i.akw = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %.0.i362.us.us.peel1159 ; 5 uses
  %i.akx = load float, ptr %i.akw, align 8, !tbaa !336
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !336
  %i.ala = fmul float %i.aij, %i.akz
  %i.alb = tail call float @llvm.fmuladd.f32(float %i.aih, float %i.akx, float %i.ala)
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %i.ald = load float, ptr %i.alc, align 8, !tbaa !336
  %i.ale = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.ald, float %i.alb)
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akw, i64 12
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !336
  %i.alh = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.alg, float %i.ale)
  %i.ali = fadd float %i.alh, 0.000000e+00
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akw, i64 20
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !336
  %i.all = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.alk, float %i.ali)
  %i.alm = tail call float @llvm.fmuladd.f32(float %i.akv, float %i.all, float %i.aku) ; 2 uses
  br i1 %exitcond551.not.peel1161, label %._crit_edge.us, label %.lr.ph.split.us.us

ma_channel_map_get_channel.exit363.us420:         ; preds = %ma_channel_map_get_channel.exit360.us, %ma_channel_map_get_channel.exit363.us420
  %indvars.iv = phi i64 [ %indvars.iv.next, %ma_channel_map_get_channel.exit363.us420 ], [ 0, %ma_channel_map_get_channel.exit360.us ] ; 3 uses
  %.0416.us421 = phi float [ %i.aml, %ma_channel_map_get_channel.exit363.us420 ], [ 0.000000e+00, %ma_channel_map_get_channel.exit360.us ]
  %i.aln = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !9
  %i.alp = trunc nuw i64 %indvars.iv to i32
  %i.alq = add i32 %i.ahl, %i.alp
  %i.alr = zext i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.alr
  %i.alt = load float, ptr %i.als, align 4, !tbaa !336
  %i.alu = zext i8 %i.alo to i64
  %i.alv = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.alu ; 5 uses
  %i.alw = load float, ptr %i.alv, align 8, !tbaa !336
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !336
  %i.alz = fmul float %i.aij, %i.aly
  %i.ama = tail call float @llvm.fmuladd.f32(float %i.aih, float %i.alw, float %i.alz)
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.amc = load float, ptr %i.amb, align 8, !tbaa !336
  %i.amd = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.amc, float %i.ama)
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alv, i64 12
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !336
  %i.amg = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.amf, float %i.amd)
  %i.amh = fadd float %i.amg, 0.000000e+00
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alv, i64 20
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !336
  %i.amk = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.amj, float %i.amh)
  %i.aml = tail call float @llvm.fmuladd.f32(float %i.alt, float %i.amk, float %.0416.us421) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %ma_channel_map_get_channel.exit363.us420, !llvm.loop !1231

._crit_edge.us:                                   ; preds = %ma_channel_map_get_channel.exit363.us.us.peel562, %ma_channel_map_get_channel.exit363.us420, %ma_channel_map_get_channel.exit363.us.us.peel1158, %ma_channel_map_get_channel.exit363.us.us.peel, %ma_channel_map_get_channel.exit363.us.us.peel1123, %ma_channel_map_get_channel.exit363.us.us, %.lr.ph.split.us.us.preheader
  %.us-phi.us = phi float [ %i.ant, %ma_channel_map_get_channel.exit363.us.us ], [ %i.ajk, %ma_channel_map_get_channel.exit363.us.us.peel562 ], [ %i.ajc, %.lr.ph.split.us.us.preheader ], [ %i.alm, %ma_channel_map_get_channel.exit363.us.us.peel1158 ], [ %i.akc, %ma_channel_map_get_channel.exit363.us.us.peel ], [ %i.aku, %ma_channel_map_get_channel.exit363.us.us.peel1123 ], [ %i.aml, %ma_channel_map_get_channel.exit363.us420 ]
  %i.amm = trunc nuw nsw i64 %indvars.iv567 to i32
  %i.amn = add i32 %i.ahm, %i.amm
  %i.amo = zext i32 %i.amn to i64
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.amo
  store float %.us-phi.us, ptr %i.amp, align 4, !tbaa !336
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %._crit_edge419, label %.lr.ph418.split.us, !llvm.loop !1232

.lr.ph.split.us.us:                               ; preds = %ma_channel_map_get_channel.exit363.us.us.peel1158, %ma_channel_map_get_channel.exit363.us.us
  %indvars.iv546 = phi i64 [ %indvars.iv.next547, %ma_channel_map_get_channel.exit363.us.us ], [ 5, %ma_channel_map_get_channel.exit363.us.us.peel1158 ] ; 11 uses
  %.0416.us.us = phi float [ %i.ant, %ma_channel_map_get_channel.exit363.us.us ], [ %i.alm, %ma_channel_map_get_channel.exit363.us.us.peel1158 ]
  switch i32 %5, label %bb.bh [
    i32 7, label %bb.bg
    i32 1, label %ma_channel_map_get_channel.exit363.us.us
    i32 2, label %.thread.i67.i.us.us
    i32 3, label %switch.lookup.i68.i.us.us
    i32 4, label %.thread.i67.i.us.us
    i32 5, label %.thread.i67.i.us.us
    i32 6, label %bb.bf
  ]

bb.bf:                                            ; preds = %.lr.ph.split.us.us
  %i.amq = icmp samesign ult i64 %indvars.iv546, 6
  br i1 %i.amq, label %switch.lookup, label %.thread.i67.i.us.us

switch.lookup.i68.i.us.us:                        ; preds = %.lr.ph.split.us.us
  %switch.offset.i70.i.us.us = add nuw nsw i64 %indvars.iv546, 2
  br label %ma_channel_map_get_channel.exit363.us.us

bb.bg:                                            ; preds = %.lr.ph.split.us.us
  %i.amr = icmp samesign ult i64 %indvars.iv546, 7
  br i1 %i.amr, label %switch.lookup952, label %.thread.i67.i.us.us

.thread.i67.i.us.us:                              ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.us, %bb.bg, %bb.bf, %.lr.ph.split.us.us
  br label %ma_channel_map_get_channel.exit363.us.us

bb.bh:                                            ; preds = %.lr.ph.split.us.us
  %i.ams = icmp samesign ult i64 %indvars.iv546, 8
  br i1 %i.ams, label %switch.lookup956, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.amt = icmp samesign ult i64 %indvars.iv546, 32
  %or.cond.i73.i.us.us = and i1 %i.tp, %i.amt
  %i.amu = add nuw nsw i64 %indvars.iv546, 12
  %spec.select716 = select i1 %or.cond.i73.i.us.us, i64 %i.amu, i64 0
  br label %ma_channel_map_get_channel.exit363.us.us

switch.lookup:                                    ; preds = %bb.bf
  %switch.tableidx = add nuw nsw i64 %indvars.iv546, 4294967295
  %i.amv = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32, i64 %i.amv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %ma_channel_map_get_channel.exit363.us.us

switch.lookup952:                                 ; preds = %bb.bg
  %switch.tableidx951 = add nuw nsw i64 %indvars.iv546, 4294967295
  %i.amw = and i64 %switch.tableidx951, 4294967295
  %switch.gep953 = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32.56, i64 %i.amw
  %switch.load954 = load i8, ptr %switch.gep953, align 1
  %switch.ext955 = zext i8 %switch.load954 to i64
  br label %ma_channel_map_get_channel.exit363.us.us

switch.lookup956:                                 ; preds = %bb.bh
  %switch.gep957 = getelementptr inbounds nuw i8, ptr @switch.table.ma_channel_map_apply_f32.57, i64 %indvars.iv546
  %switch.load958 = load i8, ptr %switch.gep957, align 1
  %switch.ext959 = zext i8 %switch.load958 to i64
  br label %ma_channel_map_get_channel.exit363.us.us

ma_channel_map_get_channel.exit363.us.us:         ; preds = %switch.lookup956, %switch.lookup952, %switch.lookup, %bb.bi, %.thread.i67.i.us.us, %switch.lookup.i68.i.us.us, %.lr.ph.split.us.us
  %.0.i362.us.us = phi i64 [ 0, %.thread.i67.i.us.us ], [ %switch.offset.i70.i.us.us, %switch.lookup.i68.i.us.us ], [ 1, %.lr.ph.split.us.us ], [ %switch.ext955, %switch.lookup952 ], [ %switch.ext959, %switch.lookup956 ], [ %switch.ext, %switch.lookup ], [ %spec.select716, %bb.bi ]
  %i.amx = trunc nuw i64 %indvars.iv546 to i32
  %i.amy = add i32 %i.ahl, %i.amx
  %i.amz = zext i32 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amz
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !336
  %i.anc = and i64 %.0.i362.us.us, 255
  %i.and = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.anc ; 5 uses
  %i.ane = load float, ptr %i.and, align 8, !tbaa !336
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 4
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !336
  %i.anh = fmul float %i.aij, %i.ang
  %i.ani = tail call float @llvm.fmuladd.f32(float %i.aih, float %i.ane, float %i.anh)
  %i.anj = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.ank = load float, ptr %i.anj, align 8, !tbaa !336
  %i.anl = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.ank, float %i.ani)
  %i.anm = getelementptr inbounds nuw i8, ptr %i.and, i64 12
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !336
  %i.ano = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.ann, float %i.anl)
  %i.anp = fadd float %i.ano, 0.000000e+00
  %i.anq = getelementptr inbounds nuw i8, ptr %i.and, i64 20
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !336
  %i.ans = tail call float @llvm.fmuladd.f32(float %i.aip, float %i.anr, float %i.anp)
  %i.ant = tail call float @llvm.fmuladd.f32(float %i.anb, float %i.ans, float %.0416.us.us) ; 2 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count550
  br i1 %exitcond551.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !1233

.lr.ph418.split:                                  ; preds = %.lr.ph418
  br i1 %i.tn, label %ma_channel_map_get_channel.exit360.us427.preheader, label %ma_channel_map_get_channel.exit360.preheader

ma_channel_map_get_channel.exit360.preheader:     ; preds = %.lr.ph418.split
  br i1 %min.iters.check860, label %ma_channel_map_get_channel.exit360.preheader976, label %vector.scevcheck869

vector.scevcheck869:                              ; preds = %ma_channel_map_get_channel.exit360.preheader
  %i.anu = xor i32 %11, -1
  %i.anv = icmp ult i32 %i.anu, %i.tw
  %i.anw = or i1 %i.anv, %i.tx
  br i1 %i.anw, label %ma_channel_map_get_channel.exit360.preheader976, label %vector.body874

vector.body874:                                   ; preds = %vector.scevcheck869, %vector.body874
  %index875 = phi i64 [ %index.next876, %vector.body874 ], [ 0, %vector.scevcheck869 ] ; 2 uses
  %i.anx = trunc nuw nsw i64 %index875 to i32
  %i.any = add i32 %i.ahm, %i.anx
  %i.anz = zext i32 %i.any to i64
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.anz ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  store <4 x float> zeroinitializer, ptr %i.aoa, align 4, !tbaa !336
  store <4 x float> zeroinitializer, ptr %i.aob, align 4, !tbaa !336
  %index.next876 = add nuw i64 %index875, 8       ; 2 uses
  %i.aoc = icmp eq i64 %index.next876, %n.vec873
  br i1 %i.aoc, label %middle.block877, label %vector.body874, !llvm.loop !1235

middle.block877:                                  ; preds = %vector.body874
  br i1 %cmp.n878, label %._crit_edge419, label %ma_channel_map_get_channel.exit360.preheader976

ma_channel_map_get_channel.exit360.preheader976:  ; preds = %vector.scevcheck869, %ma_channel_map_get_channel.exit360.preheader, %middle.block877
  %indvars.iv572.ph = phi i64 [ 0, %vector.scevcheck869 ], [ 0, %ma_channel_map_get_channel.exit360.preheader ], [ %n.vec873, %middle.block877 ] ; 3 uses
  br i1 %lcmp.mod1164.not, label %ma_channel_map_get_channel.exit360.prol.loopexit, label %ma_channel_map_get_channel.exit360.prol

ma_channel_map_get_channel.exit360.prol:          ; preds = %ma_channel_map_get_channel.exit360.preheader976, %ma_channel_map_get_channel.exit360.prol
  %indvars.iv572.prol = phi i64 [ %indvars.iv.next573.prol, %ma_channel_map_get_channel.exit360.prol ], [ %indvars.iv572.ph, %ma_channel_map_get_channel.exit360.preheader976 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %ma_channel_map_get_channel.exit360.prol ], [ 0, %ma_channel_map_get_channel.exit360.preheader976 ]
  %i.aod = trunc nuw nsw i64 %indvars.iv572.prol to i32
  %i.aoe = add i32 %i.ahm, %i.aod
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aof
  store float 0.000000e+00, ptr %i.aog, align 4, !tbaa !336
  %indvars.iv.next573.prol = add nuw nsw i64 %indvars.iv572.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1163
  br i1 %prol.iter.cmp.not, label %ma_channel_map_get_channel.exit360.prol.loopexit, label %ma_channel_map_get_channel.exit360.prol, !llvm.loop !1236

ma_channel_map_get_channel.exit360.prol.loopexit: ; preds = %ma_channel_map_get_channel.exit360.prol, %ma_channel_map_get_channel.exit360.preheader976
  %indvars.iv572.unr = phi i64 [ %indvars.iv572.ph, %ma_channel_map_get_channel.exit360.preheader976 ], [ %indvars.iv.next573.prol, %ma_channel_map_get_channel.exit360.prol ]
  %i.aoh = sub nsw i64 %indvars.iv572.ph, %wide.trip.count570
  %i.aoi = icmp ugt i64 %i.aoh, -4
  br i1 %i.aoi, label %._crit_edge419, label %ma_channel_map_get_channel.exit360.preheader976.new

ma_channel_map_get_channel.exit360.preheader976.new: ; preds = %ma_channel_map_get_channel.exit360.prol.loopexit
  %invariant.op = add i32 1, %i.ahm
  %invariant.op1219 = add i32 2, %i.ahm
  %invariant.op1221 = add i32 3, %i.ahm
  br label %ma_channel_map_get_channel.exit360

ma_channel_map_get_channel.exit360.us427.preheader: ; preds = %.lr.ph418.split
  br i1 %min.iters.check860, label %ma_channel_map_get_channel.exit360.us427.preheader975, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %ma_channel_map_get_channel.exit360.us427.preheader
  %i.aoj = xor i32 %12, -1
  %i.aok = icmp ult i32 %i.aoj, %i.ty
  %i.aol = or i1 %i.aok, %i.tz
  br i1 %i.aol, label %ma_channel_map_get_channel.exit360.us427.preheader975, label %vector.body863

vector.body863:                                   ; preds = %vector.scevcheck, %vector.body863
  %index864 = phi i64 [ %index.next865, %vector.body863 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.aom = trunc nuw nsw i64 %index864 to i32
  %i.aon = add i32 %i.ahm, %i.aom
  %i.aoo = zext i32 %i.aon to i64
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aoo ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  store <4 x float> zeroinitializer, ptr %i.aop, align 4, !tbaa !336
  store <4 x float> zeroinitializer, ptr %i.aoq, align 4, !tbaa !336
  %index.next865 = add nuw i64 %index864, 8       ; 2 uses
  %i.aor = icmp eq i64 %index.next865, %n.vec862
  br i1 %i.aor, label %middle.block866, label %vector.body863, !llvm.loop !1237

middle.block866:                                  ; preds = %vector.body863
  br i1 %cmp.n867, label %._crit_edge419, label %ma_channel_map_get_channel.exit360.us427.preheader975

ma_channel_map_get_channel.exit360.us427.preheader975: ; preds = %vector.scevcheck, %ma_channel_map_get_channel.exit360.us427.preheader, %middle.block866
  %indvars.iv577.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %ma_channel_map_get_channel.exit360.us427.preheader ], [ %n.vec862, %middle.block866 ] ; 3 uses
  br i1 %lcmp.mod1166.not, label %ma_channel_map_get_channel.exit360.us427.prol.loopexit, label %ma_channel_map_get_channel.exit360.us427.prol

ma_channel_map_get_channel.exit360.us427.prol:    ; preds = %ma_channel_map_get_channel.exit360.us427.preheader975, %ma_channel_map_get_channel.exit360.us427.prol
  %indvars.iv577.prol = phi i64 [ %indvars.iv.next578.prol, %ma_channel_map_get_channel.exit360.us427.prol ], [ %indvars.iv577.ph, %ma_channel_map_get_channel.exit360.us427.preheader975 ] ; 2 uses
  %prol.iter1167 = phi i64 [ %prol.iter1167.next, %ma_channel_map_get_channel.exit360.us427.prol ], [ 0, %ma_channel_map_get_channel.exit360.us427.preheader975 ]
  %i.aos = trunc nuw nsw i64 %indvars.iv577.prol to i32
  %i.aot = add i32 %i.ahm, %i.aos
  %i.aou = zext i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aou
  store float 0.000000e+00, ptr %i.aov, align 4, !tbaa !336
  %indvars.iv.next578.prol = add nuw nsw i64 %indvars.iv577.prol, 1 ; 2 uses
  %prol.iter1167.next = add i64 %prol.iter1167, 1 ; 2 uses
  %prol.iter1167.cmp.not = icmp eq i64 %prol.iter1167.next, %xtraiter1165
  br i1 %prol.iter1167.cmp.not, label %ma_channel_map_get_channel.exit360.us427.prol.loopexit, label %ma_channel_map_get_channel.exit360.us427.prol, !llvm.loop !1238

ma_channel_map_get_channel.exit360.us427.prol.loopexit: ; preds = %ma_channel_map_get_channel.exit360.us427.prol, %ma_channel_map_get_channel.exit360.us427.preheader975
  %indvars.iv577.unr = phi i64 [ %indvars.iv577.ph, %ma_channel_map_get_channel.exit360.us427.preheader975 ], [ %indvars.iv.next578.prol, %ma_channel_map_get_channel.exit360.us427.prol ]
  %i.aow = sub nsw i64 %indvars.iv577.ph, %wide.trip.count570
  %i.aox = icmp ugt i64 %i.aow, -4
  br i1 %i.aox, label %._crit_edge419, label %ma_channel_map_get_channel.exit360.us427.preheader975.new

ma_channel_map_get_channel.exit360.us427.preheader975.new: ; preds = %ma_channel_map_get_channel.exit360.us427.prol.loopexit
  %invariant.op1223 = add i32 1, %i.ahm
  %invariant.op1225 = add i32 2, %i.ahm
  %invariant.op1227 = add i32 3, %i.ahm
  br label %ma_channel_map_get_channel.exit360.us427

ma_channel_map_get_channel.exit360.us427:         ; preds = %ma_channel_map_get_channel.exit360.us427, %ma_channel_map_get_channel.exit360.us427.preheader975.new
  %indvars.iv577 = phi i64 [ %indvars.iv577.unr, %ma_channel_map_get_channel.exit360.us427.preheader975.new ], [ %indvars.iv.next578.3, %ma_channel_map_get_channel.exit360.us427 ] ; 5 uses
  %i.aoy = trunc nuw nsw i64 %indvars.iv577 to i32
  %i.aoz = add i32 %i.ahm, %i.aoy
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apa
  store float 0.000000e+00, ptr %i.apb, align 4, !tbaa !336
  %i.apc = trunc i64 %indvars.iv577 to i32
  %.reass1224 = add i32 %i.apc, %invariant.op1223
  %i.apd = zext i32 %.reass1224 to i64
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apd
  store float 0.000000e+00, ptr %i.ape, align 4, !tbaa !336
  %i.apf = trunc i64 %indvars.iv577 to i32
  %.reass1226 = add i32 %i.apf, %invariant.op1225
  %i.apg = zext i32 %.reass1226 to i64
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apg
  store float 0.000000e+00, ptr %i.aph, align 4, !tbaa !336
  %i.api = trunc i64 %indvars.iv577 to i32
  %.reass1228 = add i32 %i.api, %invariant.op1227
  %i.apj = zext i32 %.reass1228 to i64
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apj
  store float 0.000000e+00, ptr %i.apk, align 4, !tbaa !336
  %indvars.iv.next578.3 = add nuw nsw i64 %indvars.iv577, 4 ; 2 uses
  %exitcond581.not.3 = icmp eq i64 %indvars.iv.next578.3, %wide.trip.count580
  br i1 %exitcond581.not.3, label %._crit_edge419, label %ma_channel_map_get_channel.exit360.us427, !llvm.loop !1239

ma_channel_map_get_channel.exit360:               ; preds = %ma_channel_map_get_channel.exit360, %ma_channel_map_get_channel.exit360.preheader976.new
  %indvars.iv572 = phi i64 [ %indvars.iv572.unr, %ma_channel_map_get_channel.exit360.preheader976.new ], [ %indvars.iv.next573.3, %ma_channel_map_get_channel.exit360 ] ; 5 uses
  %i.apl = trunc nuw nsw i64 %indvars.iv572 to i32
  %i.apm = add i32 %i.ahm, %i.apl
  %i.apn = zext i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apn
  store float 0.000000e+00, ptr %i.apo, align 4, !tbaa !336
  %i.app = trunc i64 %indvars.iv572 to i32
  %.reass = add i32 %i.app, %invariant.op
  %i.apq = zext i32 %.reass to i64
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apq
  store float 0.000000e+00, ptr %i.apr, align 4, !tbaa !336
  %i.aps = trunc i64 %indvars.iv572 to i32
  %.reass1220 = add i32 %i.aps, %invariant.op1219
  %i.apt = zext i32 %.reass1220 to i64
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apt
  store float 0.000000e+00, ptr %i.apu, align 4, !tbaa !336
  %i.apv = trunc i64 %indvars.iv572 to i32
  %.reass1222 = add i32 %i.apv, %invariant.op1221
  %i.apw = zext i32 %.reass1222 to i64
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.apw
  store float 0.000000e+00, ptr %i.apx, align 4, !tbaa !336
  %indvars.iv.next573.3 = add nuw nsw i64 %indvars.iv572, 4 ; 2 uses
  %exitcond576.not.3 = icmp eq i64 %indvars.iv.next573.3, %wide.trip.count575
  br i1 %exitcond576.not.3, label %._crit_edge419, label %ma_channel_map_get_channel.exit360, !llvm.loop !1240

._crit_edge419:                                   ; preds = %._crit_edge.us, %ma_channel_map_get_channel.exit360.prol.loopexit, %ma_channel_map_get_channel.exit360, %ma_channel_map_get_channel.exit360.us427.prol.loopexit, %ma_channel_map_get_channel.exit360.us427, %middle.block877, %middle.block866, %.preheader381
  %i.apy = add i32 %.5428, 1                      ; 2 uses
  %i.apz = zext i32 %i.apy to i64
  %i.aqa = icmp ugt i64 %6, %i.apz
  br i1 %i.aqa, label %.preheader381, label %.loopexit, !llvm.loop !1241

.loopexit:                                        ; preds = %._crit_edge419, %._crit_edge479, %.preheader382, %.loopexit373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.critedge334

.critedge:                                        ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.critedge334

bb.bj:                                            ; preds = %bb.al
  %i.aqb = shl i32 %2, 2
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = mul i64 %6, %i.aqc                     ; 2 uses
  %.not.i13.i = icmp eq i64 %i.aqd, 0
  br i1 %.not.i13.i, label %.critedge334, label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %bb.bj, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.aqf, %ma_zero_memory_default.exit.i.i ], [ %0, %bb.bj ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.aqe, %ma_zero_memory_default.exit.i.i ], [ %i.aqd, %bb.bj ] ; 2 uses
  %spec.store.select.i.i365 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i366 = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i366, label %ma_zero_memory_default.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i365, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.bk, %.lr.ph.i364
  %i.aqe = sub i64 %.08.i14.i, %spec.store.select.i.i365 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i365
  %.not.i.i367 = icmp eq i64 %i.aqe, 0
  br i1 %.not.i.i367, label %.critedge334, label %.lr.ph.i364, !llvm.loop !286

.critedge334:                                     ; preds = %.split324.i, %.split324.us.us.i, %._crit_edge335.split.i, %._crit_edge335.split.us.us.i, %.split345.i, %.split345.us.us.i, %._crit_edge.split.us85.i, %._crit_edge.split.us.us.us.i, %.lr.ph.i.i, %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.bj, %.loopexit.i, %.preheader303.i, %.preheader308.i, %._crit_edge.thread.i, %._crit_edge.i, %bb.f, %bb.e, %.preheader64.i, %bb.d, %bb.c, %bb.b, %ma_channel_map_apply_shuffle_table.exit, %.loopexit, %.critedge
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_min_distance(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_max_distance(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_rolloff(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_doppler_factor(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@ma_dr_mp3d_synth_granule:bb.a
  store <4 x float> %i.ml, ptr %i.br, align 1, !tbaa !9
  %i.mm = fadd <4 x float> %i.lo, %i.lm           ; 2 uses
  store <4 x float> %i.gt, ptr %i.cl, align 1, !tbaa !9
  %i.mn = fadd <4 x float> %i.jx, %i.mm
  store <4 x float> %i.mn, ptr %i.df, align 1, !tbaa !9
  %i.mo = fadd <4 x float> %i.ik, %i.ii
  store <4 x float> %i.mo, ptr %i.dz, align 1, !tbaa !9
  %i.mp = fadd <4 x float> %i.jz, %i.mm
  store <4 x float> %i.mp, ptr %i.et, align 1, !tbaa !9
  %i.mq = fadd <4 x float> %i.lo, %i.lq           ; 2 uses
  store <4 x float> %i.gv, ptr %i.ev, align 1, !tbaa !9
  %i.mr = fadd <4 x float> %i.jz, %i.mq
  store <4 x float> %i.mr, ptr %i.eb, align 1, !tbaa !9
  %i.ms = fadd <4 x float> %i.ik, %i.im
  store <4 x float> %i.ms, ptr %i.dh, align 1, !tbaa !9
  %i.mt = fadd <4 x float> %i.kb, %i.mq
  store <4 x float> %i.mt, ptr %i.cn, align 1, !tbaa !9
  store <4 x float> %i.gx, ptr %i.bt, align 1, !tbaa !9
  %i.mu = fadd <4 x float> %i.kb, %i.lq
  store <4 x float> %i.mu, ptr %i.az, align 1, !tbaa !9
  store <4 x float> %i.im, ptr %i.af, align 1, !tbaa !9
  store <4 x float> %i.lq, ptr %i.l, align 1, !tbaa !9
  br label %bb.c

.preheader.preheader.i:                           ; preds = %.preheader165.preheader.i
  %i.mv = shufflevector <4 x float> %i.fv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.mv, ptr %i.f, align 1, !tbaa !9
  %i.mw = fadd <4 x float> %i.iz, %i.ls
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.mx, ptr %i.z, align 1, !tbaa !9
  %i.my = fadd <4 x float> %i.hk, %i.ic
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.mz, ptr %i.at, align 1, !tbaa !9
  %i.na = fadd <4 x float> %i.jr, %i.ls
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nb, ptr %i.bn, align 1, !tbaa !9
  %i.nc = fadd <4 x float> %i.li, %i.lg           ; 2 uses
  %i.nd = shufflevector <4 x float> %i.gn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nd, ptr %i.ch, align 1, !tbaa !9
  %i.ne = fadd <4 x float> %i.jr, %i.nc
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nf, ptr %i.db, align 1, !tbaa !9
  %i.ng = fadd <4 x float> %i.ie, %i.ic
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nh, ptr %i.dv, align 1, !tbaa !9
  %i.ni = fadd <4 x float> %i.jt, %i.nc
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nj, ptr %i.ep, align 1, !tbaa !9
  %i.nk = fadd <4 x float> %i.li, %i.lk           ; 2 uses
  %i.nl = shufflevector <4 x float> %i.gp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nl, ptr %i.er, align 1, !tbaa !9
  %i.nm = fadd <4 x float> %i.jt, %i.nk
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nn, ptr %i.dx, align 1, !tbaa !9
  %i.no = fadd <4 x float> %i.ie, %i.ig
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.np, ptr %i.dd, align 1, !tbaa !9
  %i.nq = fadd <4 x float> %i.jv, %i.nk
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nr, ptr %i.cj, align 1, !tbaa !9
  %i.ns = fadd <4 x float> %i.kq, %i.lk           ; 2 uses
  %i.nt = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nt, ptr %i.bp, align 1, !tbaa !9
  %i.nu = fadd <4 x float> %i.jv, %i.ns
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nv, ptr %i.av, align 1, !tbaa !9
  %i.nw = fadd <4 x float> %i.hm, %i.ig
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nx, ptr %i.ab, align 1, !tbaa !9
  %i.ny = fadd <4 x float> %i.jb, %i.ns
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.nz, ptr %i.h, align 1, !tbaa !9
  %i.oa = fadd <4 x float> %i.kq, %i.lm           ; 2 uses
  %i.ob = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ob, ptr %i.j, align 1, !tbaa !9
  %i.oc = fadd <4 x float> %i.jb, %i.oa
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.od, ptr %i.ad, align 1, !tbaa !9
  %i.oe = fadd <4 x float> %i.hm, %i.ii
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.of, ptr %i.ax, align 1, !tbaa !9
  %i.og = fadd <4 x float> %i.jx, %i.oa
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oh, ptr %i.br, align 1, !tbaa !9
  %i.oi = fadd <4 x float> %i.lo, %i.lm           ; 2 uses
  %i.oj = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oj, ptr %i.cl, align 1, !tbaa !9
  %i.ok = fadd <4 x float> %i.jx, %i.oi
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ol, ptr %i.df, align 1, !tbaa !9
  %i.om = fadd <4 x float> %i.ik, %i.ii
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.on, ptr %i.dz, align 1, !tbaa !9
  %i.oo = fadd <4 x float> %i.jz, %i.oi
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.op, ptr %i.et, align 1, !tbaa !9
  %i.oq = fadd <4 x float> %i.lo, %i.lq           ; 2 uses
  %i.or = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.or, ptr %i.ev, align 1, !tbaa !9
  %i.os = fadd <4 x float> %i.jz, %i.oq
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ot, ptr %i.eb, align 1, !tbaa !9
  %i.ou = fadd <4 x float> %i.ik, %i.im
  %i.ov = shufflevector <4 x float> %i.ou, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ov, ptr %i.dh, align 1, !tbaa !9
  %i.ow = fadd <4 x float> %i.kb, %i.oq
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ox, ptr %i.cn, align 1, !tbaa !9
  %i.oy = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.oy, ptr %i.bt, align 1, !tbaa !9
  %i.oz = fadd <4 x float> %i.kb, %i.lq
  %i.pa = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pa, ptr %i.az, align 1, !tbaa !9
  %i.pb = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pb, ptr %i.af, align 1, !tbaa !9
  %i.pc = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.pc, ptr %i.l, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader.i, %.preheader164.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.pd = icmp samesign ult i64 %indvars.iv.next.i, %i.d
  br i1 %i.pd, label %.preheader165.preheader.i, label %ma_dr_mp3d_DCT_II.exit, !llvm.loop !2951

ma_dr_mp3d_DCT_II.exit:                           ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2952

._crit_edge:                                      ; preds = %ma_dr_mp3d_DCT_II.exit, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3840) %5, ptr noundef nonnull align 4 dereferenceable(3840) %0, i64 3840, i1 false)
  %i.pe = shl nsw i32 %3, 5
  %i.pf = add nsw i32 %3, -1                      ; 2 uses
  %i.pg = mul nsw i32 %i.pf, 576
  %i.ph = sext i32 %i.pg to i64
  %i.pi = sext i32 %i.pf to i64
  %i.pj = sext i32 %i.pe to i64                   ; 3 uses
  %i.pk = sext i32 %3 to i64                      ; 4 uses
  %i.pl = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %ma_dr_mp3d_synth.exit
  %indvars.iv37 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next38, %ma_dr_mp3d_synth.exit ] ; 4 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv37 ; 9 uses
  %i.pn = mul nsw i64 %indvars.iv37, %i.pj
  %i.po = getelementptr inbounds [2 x i8], ptr %4, i64 %i.pn ; 7 uses
  %.idx43 = shl nuw nsw i64 %indvars.iv37, 8
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 %.idx43 ; 13 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.ph ; 8 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pi ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 3840
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 1152
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !336
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 4080
  store float %i.pu, ptr %i.pv, align 4, !tbaa !336
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 1152
  %i.px = load float, ptr %i.pw, align 4, !tbaa !336
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 4084
  store float %i.px, ptr %i.py, align 4, !tbaa !336
  %i.pz = load float, ptr %i.pm, align 4, !tbaa !336
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 4088
  store float %i.pz, ptr %i.qa, align 4, !tbaa !336
  %i.qb = load float, ptr %i.pq, align 4, !tbaa !336
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 4092
  store float %i.qb, ptr %i.qc, align 4, !tbaa !336
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pm, i64 1156
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !336
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pp, i64 4336
  store float %i.qe, ptr %i.qf, align 4, !tbaa !336
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pq, i64 1156
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !336
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pp, i64 4340
  store float %i.qh, ptr %i.qi, align 4, !tbaa !336
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !336
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pp, i64 4344
  store float %i.qk, ptr %i.ql, align 4, !tbaa !336
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !336
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pp, i64 4348
  store float %i.qn, ptr %i.qo, align 4, !tbaa !336
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pp, i64 240
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pp, i64 244
  tail call fastcc void @ma_dr_mp3d_synth_pair(ptr noundef %i.pr, i32 noundef %3, ptr noundef nonnull %i.qq)
  %i.qr = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.pj
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pp, i64 496
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pp, i64 500
  tail call fastcc void @ma_dr_mp3d_synth_pair(ptr noundef %i.qr, i32 noundef %3, ptr noundef nonnull %i.qt)
  tail call fastcc void @ma_dr_mp3d_synth_pair(ptr noundef nonnull %i.po, i32 noundef %3, ptr noundef nonnull %i.qp)
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.pj
  tail call fastcc void @ma_dr_mp3d_synth_pair(ptr noundef %i.qu, i32 noundef %3, ptr noundef nonnull %i.qs)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i31 = phi i64 [ 14, %bb.d ], [ %indvars.iv.next.i32, %bb.e ] ; 9 uses
  %.0228229.i = phi ptr [ @ma_dr_mp3d_synth.g_win, %bb.d ], [ %i.xk, %bb.e ] ; 17 uses
  %i.qv = sub nuw nsw i64 31, %indvars.iv.i31
  %i.qw = mul nuw nsw i64 %i.qv, 18               ; 3 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !336
  %.idx.i = shl nuw nsw i64 %indvars.iv.i31, 4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.idx.i ; 24 uses
  store float %i.qy, ptr %i.qz, align 4, !tbaa !336
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.qw
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !336
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store float %i.rb, ptr %i.rc, align 4, !tbaa !336
  %i.rd = or disjoint i64 %i.qw, 1                ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rd
  %i.rf = load float, ptr %i.re, align 4, !tbaa !336
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store float %i.rf, ptr %i.rg, align 4, !tbaa !336
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rd
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !336
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  store float %i.ri, ptr %i.rj, align 4, !tbaa !336
  %i.rk = mul nuw nsw i64 %indvars.iv.i31, 18     ; 2 uses
  %i.rl = add nuw nsw i64 %i.rk, 18               ; 2 uses
  %i.rm = add nuw nsw i64 %i.rk, 19               ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rm
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !336
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qz, i64 256
  store float %i.ro, ptr %i.rp, align 4, !tbaa !336
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rm
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !336
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 260
  store float %i.rr, ptr %i.rs, align 4, !tbaa !336
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.rl
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !336
  %i.rv = getelementptr i8, ptr %i.qz, i64 -248
  store float %i.ru, ptr %i.rv, align 4, !tbaa !336
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.rl
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !336
  %i.ry = getelementptr i8, ptr %i.qz, i64 -244
  store float %i.rx, ptr %i.ry, align 4, !tbaa !336
  %i.rz = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 4
  %i.sa = load float, ptr %.0228229.i, align 4, !tbaa !336
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 8
  %i.se = load float, ptr %i.rz, align 4, !tbaa !336
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sh = load <4 x float>, ptr %i.qz, align 4, !tbaa !9 ; 2 uses
  %i.si = getelementptr i8, ptr %i.qz, i64 -3840
  %i.sj = load <4 x float>, ptr %i.si, align 4, !tbaa !9 ; 2 uses
  %i.sk = fmul <4 x float> %i.sh, %i.sg
  %i.sl = fmul <4 x float> %i.sc, %i.sj
  %i.sm = fadd <4 x float> %i.sk, %i.sl
  %i.sn = fmul <4 x float> %i.sh, %i.sc
  %i.so = fmul <4 x float> %i.sj, %i.sg
  %i.sp = fsub <4 x float> %i.sn, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 12
  %i.sr = load float, ptr %i.sd, align 4, !tbaa !336
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 16
  %i.sv = load float, ptr %i.sq, align 4, !tbaa !336
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sy = getelementptr i8, ptr %i.qz, i64 -256
  %i.sz = load <4 x float>, ptr %i.sy, align 4, !tbaa !9 ; 2 uses
  %i.ta = getelementptr i8, ptr %i.qz, i64 -3584
  %i.tb = load <4 x float>, ptr %i.ta, align 4, !tbaa !9 ; 2 uses
  %i.tc = fmul <4 x float> %i.sz, %i.sx
  %i.td = fmul <4 x float> %i.st, %i.tb
  %i.te = fadd <4 x float> %i.tc, %i.td
  %i.tf = fadd <4 x float> %i.sm, %i.te
  %i.tg = fmul <4 x float> %i.tb, %i.sx
  %i.th = fmul <4 x float> %i.sz, %i.st
  %i.ti = fsub <4 x float> %i.tg, %i.th
  %i.tj = fadd <4 x float> %i.sp, %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 20
  %i.tl = load float, ptr %i.su, align 4, !tbaa !336
  %i.tm = insertelement <4 x float> poison, float %i.tl, i64 0
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 24
  %i.tp = load float, ptr %i.tk, align 4, !tbaa !336
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ts = getelementptr i8, ptr %i.qz, i64 -512
  %i.tt = load <4 x float>, ptr %i.ts, align 4, !tbaa !9 ; 2 uses
  %i.tu = getelementptr i8, ptr %i.qz, i64 -3328
  %i.tv = load <4 x float>, ptr %i.tu, align 4, !tbaa !9 ; 2 uses
  %i.tw = fmul <4 x float> %i.tt, %i.tr
  %i.tx = fmul <4 x float> %i.tn, %i.tv
  %i.ty = fadd <4 x float> %i.tw, %i.tx
  %i.tz = fadd <4 x float> %i.tf, %i.ty
  %i.ua = fmul <4 x float> %i.tt, %i.tn
  %i.ub = fmul <4 x float> %i.tv, %i.tr
  %i.uc = fsub <4 x float> %i.ua, %i.ub
  %i.ud = fadd <4 x float> %i.tj, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 28
  %i.uf = load float, ptr %i.to, align 4, !tbaa !336
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 32
  %i.uj = load float, ptr %i.ue, align 4, !tbaa !336
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.um = getelementptr i8, ptr %i.qz, i64 -768
  %i.un = load <4 x float>, ptr %i.um, align 4, !tbaa !9 ; 2 uses
  %i.uo = getelementptr i8, ptr %i.qz, i64 -3072
  %i.up = load <4 x float>, ptr %i.uo, align 4, !tbaa !9 ; 2 uses
  %i.uq = fmul <4 x float> %i.un, %i.ul
  %i.ur = fmul <4 x float> %i.uh, %i.up
  %i.us = fadd <4 x float> %i.uq, %i.ur
  %i.ut = fadd <4 x float> %i.tz, %i.us
  %i.uu = fmul <4 x float> %i.up, %i.ul
  %i.uv = fmul <4 x float> %i.un, %i.uh
  %i.uw = fsub <4 x float> %i.uu, %i.uv
  %i.ux = fadd <4 x float> %i.ud, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 36
  %i.uz = load float, ptr %i.ui, align 4, !tbaa !336
  %i.va = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 40
  %i.vd = load float, ptr %i.uy, align 4, !tbaa !336
  %i.ve = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vf = shufflevector <4 x float> %i.ve, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vg = getelementptr i8, ptr %i.qz, i64 -1024
  %i.vh = load <4 x float>, ptr %i.vg, align 4, !tbaa !9 ; 2 uses
  %i.vi = getelementptr i8, ptr %i.qz, i64 -2816
  %i.vj = load <4 x float>, ptr %i.vi, align 4, !tbaa !9 ; 2 uses
  %i.vk = fmul <4 x float> %i.vh, %i.vf
  %i.vl = fmul <4 x float> %i.vb, %i.vj
  %i.vm = fadd <4 x float> %i.vk, %i.vl
  %i.vn = fadd <4 x float> %i.ut, %i.vm
  %i.vo = fmul <4 x float> %i.vh, %i.vb
  %i.vp = fmul <4 x float> %i.vj, %i.vf
  %i.vq = fsub <4 x float> %i.vo, %i.vp
  %i.vr = fadd <4 x float> %i.ux, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 44
  %i.vt = load float, ptr %i.vc, align 4, !tbaa !336
  %i.vu = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.vv = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 48
  %i.vx = load float, ptr %i.vs, align 4, !tbaa !336
  %i.vy = insertelement <4 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wa = getelementptr i8, ptr %i.qz, i64 -1280
  %i.wb = load <4 x float>, ptr %i.wa, align 4, !tbaa !9 ; 2 uses
  %i.wc = getelementptr i8, ptr %i.qz, i64 -2560
  %i.wd = load <4 x float>, ptr %i.wc, align 4, !tbaa !9 ; 2 uses
  %i.we = fmul <4 x float> %i.wb, %i.vz
  %i.wf = fmul <4 x float> %i.vv, %i.wd
  %i.wg = fadd <4 x float> %i.we, %i.wf
  %i.wh = fadd <4 x float> %i.vn, %i.wg
  %i.wi = fmul <4 x float> %i.wd, %i.vz
  %i.wj = fmul <4 x float> %i.wb, %i.vv
  %i.wk = fsub <4 x float> %i.wi, %i.wj
  %i.wl = fadd <4 x float> %i.vr, %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 52
  %i.wn = load float, ptr %i.vw, align 4, !tbaa !336
  %i.wo = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 56
  %i.wr = load float, ptr %i.wm, align 4, !tbaa !336
  %i.ws = insertelement <4 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wu = getelementptr i8, ptr %i.qz, i64 -1536
  %i.wv = load <4 x float>, ptr %i.wu, align 4, !tbaa !9 ; 2 uses
  %i.ww = getelementptr i8, ptr %i.qz, i64 -2304
  %i.wx = load <4 x float>, ptr %i.ww, align 4, !tbaa !9 ; 2 uses
  %i.wy = fmul <4 x float> %i.wv, %i.wt
  %i.wz = fmul <4 x float> %i.wp, %i.wx
  %i.xa = fadd <4 x float> %i.wy, %i.wz
  %i.xb = fadd <4 x float> %i.wh, %i.xa
  %i.xc = fmul <4 x float> %i.wv, %i.wp
  %i.xd = fmul <4 x float> %i.wx, %i.wt
  %i.xe = fsub <4 x float> %i.xc, %i.xd
  %i.xf = fadd <4 x float> %i.wl, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 60
  %i.xh = load float, ptr %i.wq, align 4, !tbaa !336
  %i.xi = insertelement <4 x float> poison, float %i.xh, i64 0
  %i.xj = shufflevector <4 x float> %i.xi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0228229.i, i64 64
  %i.xl = load float, ptr %i.xg, align 4, !tbaa !336
  %i.xm = insertelement <4 x float> poison, float %i.xl, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xo = getelementptr i8, ptr %i.qz, i64 -1792
  %i.xp = load <4 x float>, ptr %i.xo, align 4, !tbaa !9 ; 2 uses
  %i.xq = getelementptr i8, ptr %i.qz, i64 -2048
  %i.xr = load <4 x float>, ptr %i.xq, align 4, !tbaa !9 ; 2 uses
  %i.xs = fmul <4 x float> %i.xp, %i.xn
  %i.xt = fmul <4 x float> %i.xj, %i.xr
  %i.xu = fadd <4 x float> %i.xs, %i.xt
  %i.xv = fadd <4 x float> %i.xb, %i.xu
  %i.xw = fmul <4 x float> %i.xr, %i.xn
  %i.xx = fmul <4 x float> %i.xp, %i.xj
  %i.xy = fsub <4 x float> %i.xw, %i.xx
  %i.xz = fadd <4 x float> %i.xf, %i.xy
  %i.ya = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xz, <4 x float> splat (float 3.276700e+04))
  %i.yb = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ya, <4 x float> splat (float -3.276800e+04))
  %i.yc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.yb)
  %i.yd = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xv, <4 x float> splat (float 3.276700e+04))
  %i.ye = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yd, <4 x float> splat (float -3.276800e+04))
  %i.yf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ye)
  %i.yg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yc, <4 x i32> %i.yf) ; 8 uses
  %i.yh = extractelement <8 x i16> %i.yg, i64 1
  %i.yi = sub nuw nsw i64 15, %indvars.iv.i31
  %i.yj = mul nsw i64 %i.yi, %i.pk                ; 2 uses
  %i.yk = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yj
  store i16 %i.yh, ptr %i.yk, align 2, !tbaa !20
  %i.yl = extractelement <8 x i16> %i.yg, i64 5
  %i.ym = add nuw nsw i64 %indvars.iv.i31, 17
  %i.yn = mul nsw i64 %i.ym, %i.pk                ; 2 uses
  %i.yo = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.yn
  store i16 %i.yl, ptr %i.yo, align 2, !tbaa !20
  %i.yp = extractelement <8 x i16> %i.yg, i64 0
  %i.yq = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yj
  store i16 %i.yp, ptr %i.yq, align 2, !tbaa !20
  %i.yr = extractelement <8 x i16> %i.yg, i64 4
  %i.ys = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.yn
  store i16 %i.yr, ptr %i.ys, align 2, !tbaa !20
  %i.yt = extractelement <8 x i16> %i.yg, i64 3
  %i.yu = sub nuw nsw i64 47, %indvars.iv.i31
end_hunk_1
