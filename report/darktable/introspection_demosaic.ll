inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.cae = getelementptr inbounds nuw i8, ptr %i.btu, i64 20
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bth, i64 10
  %i.cag = load <4 x i16>, ptr %i.cae, align 4, !tbaa !216 ; 2 uses
  %i.cah = shufflevector <4 x i16> %i.cag, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.cai = mul <2 x i16> %i.cah, splat (i16 122)
  %i.caj = shufflevector <4 x i16> %i.cag, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.cak = add <2 x i16> %i.caj, %i.cai
  store <2 x i16> %i.cak, ptr %i.caf, align 2, !tbaa !216
  %i.cal = getelementptr inbounds nuw i8, ptr %i.btu, i64 28
  %i.cam = load i16, ptr %i.cal, align 4, !tbaa !216
  %.reass.7.4.i = mul i16 %i.cam, 122
  %i.can = getelementptr inbounds nuw i8, ptr %i.btu, i64 30
  %i.cao = load i16, ptr %i.can, align 2, !tbaa !216
  %i.cap = add i16 %i.cao, %.reass.7.4.i
  %i.caq = getelementptr inbounds nuw i8, ptr %i.bth, i64 14
  store i16 %i.cap, ptr %i.caq, align 2, !tbaa !216
  br label %.loopexit1268.4.i

.loopexit1268.4.i:                                ; preds = %.preheader1267.4.i, %.loopexit1268.3.i
  %indvars.iv.next.i484 = add nuw nsw i64 %indvars.iv.i483, 1 ; 2 uses
  %exitcond.not.i485 = icmp eq i64 %indvars.iv.next.i484, 3
  br i1 %exitcond.not.i485, label %bb.iz, label %.preheader1269.i

.preheader1263.i.fold.split:                      ; preds = %bb.jn
  br label %.preheader1263.i

.preheader1263.i:                                 ; preds = %bb.jn, %.preheader1263.i.fold.split, %bb.jp, %bb.jo, %bb.jm, %.preheader1265.i
  %.010831288.lcssa.i = phi i32 [ 0, %.preheader1265.i ], [ 1, %bb.jm ], [ 2, %bb.jn ], [ 5, %bb.jp ], [ 4, %bb.jo ], [ 3, %.preheader1263.i.fold.split ] ; 2 uses
  %i.car = zext i16 %.31019.4.fr.i to i32         ; 4 uses
  %i.cas = trunc nuw nsw i32 %.010831288.lcssa.i to i16
  %.lhs.trunc2080.i = or disjoint i16 %i.cas, 600
  %i.cat = urem i16 %.lhs.trunc2080.i, 6
  %i.cau = zext nneg i16 %i.cat to i64
  %i.cav = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cau ; 6 uses
  %i.caw = urem i16 %.31019.4.fr.i, 3
  %.not1122.i = icmp eq i16 %i.caw, 0
  br i1 %.not1122.i, label %bb.ja, label %bb.jc

bb.ja:                                            ; preds = %.preheader1263.i
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cav, i64 1
  %i.cay = load i8, ptr %i.cax, align 1, !tbaa !169
  %i.caz = icmp eq i8 %i.cay, 0
  br i1 %i.caz, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.jl, %bb.jj, %bb.jh, %bb.jf, %bb.jd, %bb.ja
  %.010821289.lcssa.neg.i = phi i64 [ 24, %bb.ja ], [ 23, %bb.jd ], [ 22, %bb.jf ], [ 21, %bb.jh ], [ 20, %bb.jj ], [ 19, %bb.jl ]
  %i.cba = sub nuw nsw i32 24, %.010831288.lcssa.i
  %i.cbb = zext nneg i32 %i.cba to i64
  br label %.loopexit1264.i

bb.jc:                                            ; preds = %bb.ja, %.preheader1263.i
  %i.cbc = sub nsw i32 1, %i.car
  %i.cbd = srem i32 %i.cbc, 3
  %.not1122.1.i = icmp eq i32 %i.cbd, 0
  br i1 %.not1122.1.i, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cav, i64 2
  %i.cbf = load i8, ptr %i.cbe, align 1, !tbaa !169
  %i.cbg = icmp eq i8 %i.cbf, 0
  br i1 %i.cbg, label %bb.jb, label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %.not1122.2.i = icmp eq i16 %.31019.4.fr.i, 2
  br i1 %.not1122.2.i, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cav, i64 3
  %i.cbi = load i8, ptr %i.cbh, align 1, !tbaa !169
  %i.cbj = icmp eq i8 %i.cbi, 0
  br i1 %i.cbj, label %bb.jb, label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.cbk = add i16 %.31019.4.fr.i, -1
  %.cmp.i = icmp ult i16 %i.cbk, 3
  %i.cbl = select i1 %.cmp.i, i32 3, i32 0
  %.not1122.3.i = icmp eq i32 %i.cbl, %i.car
  br i1 %.not1122.3.i, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cav, i64 4
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !169
  %i.cbo = icmp eq i8 %i.cbn, 0
  br i1 %i.cbo, label %bb.jb, label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.cbp = add i16 %.31019.4.fr.i, -2
  %.cmp2087.i = icmp ult i16 %i.cbp, 3
  %i.cbq = select i1 %.cmp2087.i, i32 4, i32 1
  %.not1122.4.i = icmp eq i32 %i.cbq, %i.car
  br i1 %.not1122.4.i, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cav, i64 5
  %i.cbs = load i8, ptr %i.cbr, align 1, !tbaa !169
  %i.cbt = icmp eq i8 %i.cbs, 0
  br i1 %i.cbt, label %bb.jb, label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.cbu = add i16 %.31019.4.fr.i, -6
  %.cmp2090.inv.i = icmp ult i16 %i.cbu, -3
  %i.cbv = select i1 %.cmp2090.inv.i, i32 2, i32 5
  %.not1122.5.i = icmp eq i32 %i.cbv, %i.car
  br i1 %.not1122.5.i, label %bb.jl, label %.loopexit1264.i

bb.jl:                                            ; preds = %bb.jk
  %i.cbw = load i8, ptr %i.cav, align 1, !tbaa !169
  %i.cbx = icmp eq i8 %i.cbw, 0
  br i1 %i.cbx, label %bb.jb, label %.loopexit1264.i

bb.jm:                                            ; preds = %.preheader1265.i
  %.neg2127.i = add i16 %.31013.4.fr.i, -1
  %i.cby = urem i16 %.neg2127.i, 3
  %.not1121.1.i = icmp eq i16 %i.cby, 0
  br i1 %.not1121.1.i, label %.preheader1263.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  switch i16 %.31013.4.fr.i, label %bb.jo [
    i16 2, label %.preheader1263.i
    i16 3, label %.preheader1263.i.fold.split
  ]

bb.jo:                                            ; preds = %bb.jn
  %i.cbz = add i16 %.31013.4.fr.i, -2
  %.cmp2096.i = icmp ult i16 %i.cbz, 3
  %i.cca = select i1 %.cmp2096.i, i32 4, i32 1
  %.not1121.4.i = icmp eq i32 %i.cca, %i.btd
  br i1 %.not1121.4.i, label %.preheader1263.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ccb = add i16 %.31013.4.fr.i, -6
  %.cmp2099.inv.i = icmp ult i16 %i.ccb, -3
  %i.ccc = select i1 %.cmp2099.inv.i, i32 2, i32 5
  %.not1121.5.i = icmp eq i32 %i.ccc, %i.btd
  br i1 %.not1121.5.i, label %.preheader1263.i, label %.loopexit1264.i

.loopexit1264.i:                                  ; preds = %bb.jp, %bb.jl, %bb.jk, %bb.jb
  %.11087.i = phi i64 [ 0, %bb.jk ], [ %i.cbb, %bb.jb ], [ 0, %bb.jl ], [ 0, %bb.jp ]
  %.11085.i = phi i64 [ 0, %bb.jk ], [ %.010821289.lcssa.neg.i, %bb.jb ], [ 0, %bb.jl ], [ 0, %bb.jp ]
  %i.ccd = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.209) #27
  %i.cce = icmp slt i32 %i.ccd, %i.en             ; 2 uses
  %spec.select.i486 = select i1 %i.cce, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %spec.select1142.i = select i1 %i.cce, float 0.000000e+00, float 1.000000e+00 ; 3 uses
  %i.ccf = add nsw i32 %i.ayd, -13
  %i.ccg = icmp sgt i32 %i.ayd, 0
  br i1 %i.ccg, label %.lr.ph1506.i, label %._crit_edge1507.split.i

.lr.ph1506.i:                                     ; preds = %.loopexit1264.i
  %i.cch = getelementptr inbounds nuw i8, ptr %i.bsg, i64 714432 ; 8 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %i.bsg, i64 893040 ; 4 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.bsg, i64 773968 ; 15 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.bsg, i64 1131184 ; 10 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.bsg, i64 1250256 ; 4 uses
  %i.ccm = add nuw i32 %i.ayd, 13                 ; 4 uses
  %i.ccn = shl nuw nsw i32 %i.ayd, 1
  %i.cco = add nsw i32 %i.ccn, -2                 ; 3 uses
  %i.ccp = zext nneg i16 %.31019.4.fr.i to i32
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.bsg, i64 833504
  br i1 %i.aqy, label %.lr.ph1502.preheader.i, label %._crit_edge1507.split.i

.lr.ph1502.preheader.i:                           ; preds = %.lr.ph1506.i
  %i.ccr = zext nneg i32 %i.ayd to i64
  %i.ccs = zext i16 %.31013.4.fr.i to i64         ; 4 uses
  %i.cct = zext i16 %.31019.4.fr.i to i64         ; 2 uses
  %i.ccu = sext i32 %i.ccf to i64
  %i.ccv = sext i32 %i.ccm to i64
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.bsg, i64 178608
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.bsg, i64 357216
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.bsg, i64 535824
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.bsg, i64 1071648 ; 3 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %i.bsg, i64 952576 ; 3 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.bsg, i64 1012112 ; 3 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.bsg, i64 788852
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.bsg, i64 729316
  %i.cde = getelementptr inbounds nuw i8, ptr %i.bsg, i64 803736
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.bsg, i64 744200
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.bsg, i64 818620
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 759084
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.bsg, i64 1309792 ; 3 uses
  %scevgep2047 = getelementptr i8, ptr %i.bsg, i64 1250308
  %scevgep2049 = getelementptr i8, ptr %i.bsg, i64 1309792
  %scevgep2058.a = getelementptr i8, ptr %i.bsg, i64 1250304
  %scevgep2060.a = getelementptr i8, ptr %i.bsg, i64 1309796
  %scevgep2063.a = getelementptr i8, ptr %i.bsg, i64 1250308
  %scevgep2065.a = getelementptr i8, ptr %i.bsg, i64 1309792
  %scevgep2068.a = getelementptr i8, ptr %i.bsg, i64 19188
  %scevgep2069 = getelementptr i8, ptr %i.bsg, i64 534360
  %scevgep2074 = getelementptr i8, ptr %i.bsg, i64 775567
  %scevgep2075 = getelementptr i8, ptr %i.bsg, i64 818498
  %broadcast.splatinsert2103 = insertelement <8 x float> poison, float %spec.select1142.i, i64 0
  %broadcast.splat2104 = shufflevector <8 x float> %broadcast.splatinsert2103, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2105.a = insertelement <8 x float> poison, float %spec.select.i486, i64 0
  %broadcast.splat2106.a = shufflevector <8 x float> %broadcast.splatinsert2105.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1502.i

._crit_edge1507.split.i:                          ; preds = %._crit_edge1503.i, %.lr.ph1506.i, %.loopexit1264.i
  tail call void @free(ptr noundef %i.bsg) #27
  br label %xtrans_fdc_interpolate.exit

.lr.ph1502.i:                                     ; preds = %._crit_edge1503.i, %.lr.ph1502.preheader.i
  %indvar.a = phi i32 [ %indvar.next, %._crit_edge1503.i ], [ 0, %.lr.ph1502.preheader.i ] ; 3 uses
  %indvars.iv1197 = phi i32 [ %indvars.iv.next1198, %._crit_edge1503.i ], [ 5, %.lr.ph1502.preheader.i ] ; 2 uses
  %indvars.iv1721.i = phi i32 [ %indvars.iv.next1722.i, %._crit_edge1503.i ], [ 109, %.lr.ph1502.preheader.i ] ; 3 uses
  %indvars.iv1654.i = phi i64 [ %indvars.iv.next1655.i, %._crit_edge1503.i ], [ -5, %.lr.ph1502.preheader.i ] ; 2 uses
  %indvars.iv1630.i = phi i64 [ %indvars.iv.next1631.i, %._crit_edge1503.i ], [ -7, %.lr.ph1502.preheader.i ] ; 2 uses
  %indvars.iv1602.i = phi i64 [ %indvars.iv.next1603.i, %._crit_edge1503.i ], [ -10, %.lr.ph1502.preheader.i ] ; 2 uses
  %indvars.iv1577.i = phi i64 [ %indvars.iv.next1578.i, %._crit_edge1503.i ], [ -13, %.lr.ph1502.preheader.i ] ; 15 uses
  %i.cdj = phi <4 x i32> [ %i.cfz, %._crit_edge1503.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1502.preheader.i ] ; 3 uses
  %6 = extractelement <4 x i32> %i.cdj, i64 3     ; 2 uses
  %7 = mul i32 %i.auy, %indvar.a
  %smin2070 = call i32 @llvm.smin.i32(i32 %indvars.iv1721.i, i32 %i.ccm)
  %i.cdk = add i32 %smin2070, %6
  %smax2071 = call i32 @llvm.smax.i32(i32 %i.cdk, i32 14)
  %i.cdl = zext nneg i32 %smax2071 to i64         ; 2 uses
  %i.cdm = mul nuw nsw i64 %i.cdl, 1464
  %i.cdn = mul nuw nsw i64 %i.cdl, 122
  %i.cdo = mul i32 %i.auw, %indvar.a
  %smin1234 = call i32 @llvm.smin.i32(i32 %indvars.iv1721.i, i32 %i.ccm) ; 6 uses
  %i.cdp = insertelement <4 x i32> poison, i32 %smin1234, i64 0
  %i.cdq = shufflevector <4 x i32> %i.cdp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdr = add <4 x i32> %i.cdq, %i.cdj
  %8 = add i32 %smin1234, %6
  %i.cds = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cdr, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.cdt = add i32 %smin1234, %indvars.iv1197
  %i.cdu = call i32 @llvm.smax.i32(i32 %i.cdt, i32 9)
  %smax1199 = zext nneg i32 %i.cdu to i64
  %i.cdv = add i32 %smin1234, -8
  %i.cdw = sext i32 %i.cdv to i64
  %i.cdx = add i32 %smin1234, -6
  %i.cdy = sext i32 %i.cdx to i64
  %i.cdz = add i32 %smin1234, -3
  %i.cea = sext i32 %i.cdz to i64
  %i.ceb = tail call i32 @llvm.smax.i32(i32 %8, i32 14)
  %smax1756.i = zext nneg i32 %i.ceb to i64       ; 6 uses
  %i.cec = trunc i64 %indvars.iv1577.i to i32     ; 2 uses
  %i.ced = add i32 %i.cec, 122
  %i.cee = tail call i32 @llvm.smin.i32(i32 %i.ced, i32 %i.ccm) ; 6 uses
  %i.cef = icmp slt i64 %indvars.iv1577.i, %i.ccv
  %i.ceg = add nuw nsw i64 %indvars.iv1577.i, 3   ; 3 uses
  %i.ceh = add nsw i32 %i.cee, -3                 ; 2 uses
  %i.cei = sext i32 %i.ceh to i64
  %i.cej = icmp slt i64 %i.ceg, %i.cei
  %i.cek = add nsw i32 %i.cee, -4
  %i.cel = sub i64 %indvars.iv1577.i, %i.ccs
  %i.cem = trunc i64 %i.cel to i32
  %i.cen = add i32 %i.cem, 8                      ; 2 uses
  %i.ceo = srem i32 %i.cen, 3
  %i.cep = add i32 %i.cen, %i.btd
  %i.ceq = sub i32 %i.cep, %i.ceo                 ; 2 uses
  %i.cer = add nsw i32 %i.cee, -6                 ; 2 uses
  %i.ces = icmp slt i32 %i.ceq, %i.cer
  %i.cet = add nuw nsw i64 %indvars.iv1577.i, 6
  %i.ceu = sext i32 %i.cer to i64                 ; 2 uses
  %i.cev = icmp slt i64 %i.cet, %i.ceu
  %i.cew = add nuw nsw i64 %indvars.iv1577.i, 8
  %i.cex = add nsw i32 %i.cee, -8
  %i.cey = sext i32 %i.cex to i64
  %i.cez = icmp slt i64 %i.cew, %i.cey
  %i.cfa = sub nsw i32 %i.cee, %i.cec             ; 5 uses
  %i.cfb = icmp sgt i32 %i.cfa, 16
  %i.cfc = icmp sgt i32 %i.cfa, 18
  %i.cfd = icmp sgt i32 %i.cfa, 20
  %i.cfe = icmp sgt i32 %i.cfa, 26                ; 2 uses
  %i.cff = icmp sgt i32 %i.cfa, 12
  %i.cfg = sext i32 %i.cee to i64
  %i.cfh = sext i32 %i.ceq to i64
  %i.cfi = trunc nsw i64 %i.ceg to i32
  %i.cfj = extractelement <4 x i32> %i.cds, i64 0
  %i.cfk = zext nneg i32 %i.cfj to i64
  %i.cfl = add nsw i64 %i.cfk, -7
  %scevgep2072 = getelementptr i8, ptr %scevgep2069, i64 %i.cdm
  %scevgep2076 = getelementptr i8, ptr %scevgep2075, i64 %i.cdn
  %i.cfm = add nsw i64 %smax1756.i, -13           ; 8 uses
  %i.cfn = add nsw i64 %smax1756.i, -14           ; 4 uses
  %i.cfo = extractelement <4 x i32> %i.cds, i64 2
  %i.cfp = zext nneg i32 %i.cfo to i64
  %i.cfq = extractelement <4 x i32> %i.cds, i64 1
  %i.cfr = zext nneg i32 %i.cfq to i64
  %xtraiter4803 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfs = icmp ult i64 %i.cfn, 7
  %unroll_iter4807 = and i64 %i.cfm, -8
  %lcmp.mod4805.not = icmp eq i64 %xtraiter4803, 0
  %lcmp.mod4806 = icmp ne i64 %xtraiter4803, 0
  %xtraiter4809 = and i64 %i.cfm, 7               ; 3 uses
  %i.cft = icmp ult i64 %i.cfn, 7
  %unroll_iter4813 = and i64 %i.cfm, -8
  %lcmp.mod4811.not = icmp eq i64 %xtraiter4809, 0
  %lcmp.mod4812 = icmp ne i64 %xtraiter4809, 0
  %xtraiter4815 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfu = icmp ult i64 %i.cfn, 7
  %unroll_iter4819 = and i64 %i.cfm, -8
  %lcmp.mod4817.not = icmp eq i64 %xtraiter4815, 0
  %lcmp.mod4818 = icmp ne i64 %xtraiter4815, 0
  %xtraiter4821 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfv = icmp ult i64 %i.cfn, 7
  %unroll_iter4825 = and i64 %i.cfm, -8
  %lcmp.mod4823.not = icmp eq i64 %xtraiter4821, 0
  %lcmp.mod4824 = icmp ne i64 %xtraiter4821, 0
  %i.cfw = extractelement <4 x i32> %i.cds, i64 3
  %i.cfx = zext nneg i32 %i.cfw to i64
  br label %bb.jq

._crit_edge1503.i:                                ; preds = %._crit_edge1497.split.i
  %indvars.iv.next1578.i = add nsw i64 %indvars.iv1577.i, 96 ; 2 uses
  %i.cfy = icmp slt i64 %indvars.iv.next1578.i, %i.ccu
  %indvars.iv.next1603.i = add nsw i64 %indvars.iv1602.i, 96
  %indvars.iv.next1631.i = add nsw i64 %indvars.iv1630.i, 96
  %indvars.iv.next1655.i = add nsw i64 %indvars.iv1654.i, 96
  %indvars.iv.next1722.i = add nuw i32 %indvars.iv1721.i, 96
  %indvars.iv.next1198 = add i32 %indvars.iv1197, -96
  %i.cfz = add <4 x i32> %i.cdj, splat (i32 -96)
  %indvar.next = add i32 %indvar.a, 1
  br i1 %i.cfy, label %.lr.ph1502.i, label %._crit_edge1507.split.i

bb.jq:                                            ; preds = %._crit_edge1497.split.i, %.lr.ph1502.i
  %indvar2039 = phi i32 [ %indvar.next2040, %._crit_edge1497.split.i ], [ 0, %.lr.ph1502.i ] ; 3 uses
  %indvars.iv1222 = phi i32 [ %indvars.iv.next1223, %._crit_edge1497.split.i ], [ 7, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1212 = phi i32 [ %indvars.iv.next1213, %._crit_edge1497.split.i ], [ 3, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1202 = phi i32 [ %indvars.iv.next1203, %._crit_edge1497.split.i ], [ 4, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1192 = phi i32 [ %indvars.iv.next1193, %._crit_edge1497.split.i ], [ 5, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1718.i = phi i32 [ %indvars.iv.next1719.i, %._crit_edge1497.split.i ], [ 0, %.lr.ph1502.i ] ; 4 uses
  %indvars.iv1716.i = phi i32 [ %indvars.iv.next1717.i, %._crit_edge1497.split.i ], [ 109, %.lr.ph1502.i ] ; 5 uses
  %indvars.iv1649.i = phi i64 [ %indvars.iv.next1650.i, %._crit_edge1497.split.i ], [ -5, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1625.i = phi i64 [ %indvars.iv.next1626.i, %._crit_edge1497.split.i ], [ -7, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1597.i = phi i64 [ %indvars.iv.next1598.i, %._crit_edge1497.split.i ], [ -10, %.lr.ph1502.i ] ; 2 uses
  %indvars.iv1572.i = phi i64 [ %indvars.iv.next1573.i, %._crit_edge1497.split.i ], [ -13, %.lr.ph1502.i ] ; 15 uses
  %smin4795 = call i32 @llvm.smin.i32(i32 %indvars.iv1716.i, i32 %i.aqz)
  %i.cga = add i32 %smin4795, %indvars.iv1192     ; 2 uses
  %smax4796 = call i32 @llvm.smax.i32(i32 %i.cga, i32 9) ; 2 uses
  %i.cgb = zext nneg i32 %smax4796 to i64         ; 2 uses
  %smin2050 = call i32 @llvm.smin.i32(i32 %indvars.iv1716.i, i32 %i.aqz)
  %i.cgc = add i32 %smin2050, %indvars.iv1718.i
  %i.cgd = call i32 @llvm.umax.i32(i32 %i.cgc, i32 14)
  %umax2051 = zext i32 %i.cgd to i64              ; 4 uses
  %i.cge = shl nuw nsw i64 %umax2051, 2           ; 3 uses
  %i.cgf = mul i32 %indvar2039, 384
  %i.cgg = add i32 %7, %i.cgf
  %i.cgh = shl nuw nsw i64 %umax2051, 4
  %i.cgi = mul nuw nsw i64 %umax2051, 12
  %scevgep2073 = getelementptr i8, ptr %scevgep2072, i64 %i.cgi
  %scevgep2077 = getelementptr i8, ptr %scevgep2076, i64 %umax2051
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1716.i, i32 %i.aqz)
  %i.cgj = add i32 %smin, %indvars.iv1718.i
  %i.cgk = zext i32 %i.cgj to i64
  %i.cgl = call i64 @llvm.usub.sat.i64(i64 %i.cgk, i64 14) ; 2 uses
  %i.cgm = mul i32 %indvar2039, 384
  %i.cgn = add i32 %i.cdo, %i.cgm
  %smin1231 = call i32 @llvm.smin.i32(i32 %indvars.iv1716.i, i32 %i.aqz) ; 7 uses
  %i.cgo = add i32 %smin1231, %indvars.iv1718.i   ; 3 uses
  %i.cgp = call i32 @llvm.umax.i32(i32 %i.cgo, i32 14)
  %umax1232 = zext i32 %i.cgp to i64
  %i.cgq = add i32 %smin1231, %indvars.iv1222
  %i.cgr = call i32 @llvm.umax.i32(i32 %i.cgq, i32 7)
  %umax1224 = zext i32 %i.cgr to i64
  %i.cgs = add i32 %smin1231, %indvars.iv1212
  %i.cgt = call i32 @llvm.umax.i32(i32 %i.cgs, i32 11)
  %umax1214 = zext i32 %i.cgt to i64
  %i.cgu = add i32 %smin1231, %indvars.iv1202     ; 2 uses
  %i.cgv = call i32 @llvm.smax.i32(i32 %i.cgu, i32 10)
  %smax1204 = zext nneg i32 %i.cgv to i64
  %i.cgw = add i32 %smin1231, -8
  %i.cgx = sext i32 %i.cgw to i64
  %i.cgy = add i32 %smin1231, -6
  %i.cgz = sext i32 %i.cgy to i64
  %i.cha = add i32 %smin1231, -3
  %i.chb = sext i32 %i.cha to i64
  %i.chc = tail call i32 @llvm.smax.i32(i32 %i.cgo, i32 10)
  %smax1750.i = zext nneg i32 %i.chc to i64       ; 4 uses
  %i.chd = trunc i64 %indvars.iv1572.i to i32     ; 3 uses
  %i.che = add i32 %i.chd, 122
  %i.chf = tail call i32 @llvm.smin.i32(i32 %i.che, i32 %i.aqz) ; 7 uses
  %i.chg = icmp slt i64 %indvars.iv1572.i, %i.arc
  %or.cond1509.i = and i1 %i.cef, %i.chg
  br i1 %or.cond1509.i, label %.preheader1257.preheader.i, label %.preheader1262.i

.preheader1257.preheader.i:                       ; preds = %bb.jq
  %i.chh = sext i32 %i.chf to i64
  br label %.preheader1257.i

.preheader1262.i:                                 ; preds = %._crit_edge.i492, %bb.jq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.ccw, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsg, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.ccx, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsg, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.ccy, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsg, i64 178608, i1 false)
  br i1 %i.cej, label %.lr.ph1319.i, label %._crit_edge1337.split.i

.preheader1257.i:                                 ; preds = %._crit_edge.i492, %.preheader1257.preheader.i
  %indvars.iv1579.i = phi i64 [ %indvars.iv1577.i, %.preheader1257.preheader.i ], [ %indvars.iv.next1580.i, %._crit_edge.i492 ] ; 5 uses
  %i.chi = sub nsw i64 %indvars.iv1579.i, %indvars.iv1577.i ; 2 uses
  %i.chj = getelementptr inbounds [1464 x i8], ptr %i.bsg, i64 %i.chi
  %i.chk = icmp slt i64 %indvars.iv1579.i, %i.ccr ; 2 uses
  %i.chl = trunc i64 %indvars.iv1579.i to i32     ; 7 uses
  %i.chm = add i32 %i.chl, 600
  %i.chn = srem i32 %i.chm, 6
  %i.cho = sext i32 %i.chn to i64
  %i.chp = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cho
  %i.chq = sub i32 %i.cco, %i.chl                 ; 3 uses
  %i.chr = tail call i32 @llvm.abs.i32(i32 %i.chl, i1 true) ; 3 uses
  %invariant.gep1304.idx.i = mul nuw nsw i64 %i.chi, 488
  %invariant.gep1304.i = getelementptr i8, ptr %i.cck, i64 %invariant.gep1304.idx.i ; 2 uses
  %i.chs = mul nsw i64 %indvars.iv1579.i, %i.aow
  %i.cht = add i32 %i.chl, -1                     ; 3 uses
  %.1508.i = select i1 %i.chk, i32 %i.chr, i32 %i.chq ; 2 uses
  %i.chu = add nsw i32 %.1508.i, 600
  %i.chv = srem i32 %i.chu, 6
  %i.chw = sext i32 %i.chv to i64
  %i.chx = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chw
  %i.chy = mul nsw i32 %.1508.i, %i.bo
  %invariant.gep.i490 = getelementptr [4 x i8], ptr %i.ayn, i64 %i.chs
  %.not1140.i = icmp slt i32 %i.cht, %i.ayd
  %i.chz = sub nsw i32 %i.cco, %i.cht             ; 2 uses
  %i.cia = add nsw i32 %i.chz, 600
  %i.cib = srem i32 %i.cia, 6
  %i.cic = sext i32 %i.cib to i64
  %i.cid = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cic ; 3 uses
  %i.cie = mul nsw i32 %i.chz, %i.bo              ; 3 uses
  %i.cif = tail call i32 @llvm.abs.i32(i32 %i.cht, i1 true) ; 2 uses
  %i.cig = add nuw nsw i32 %i.cif, 600
  %i.cih = urem i32 %i.cig, 6
  %i.cii = zext nneg i32 %i.cih to i64
  %i.cij = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cii ; 3 uses
  %i.cik = mul nuw nsw i32 %i.cif, %i.bo          ; 3 uses
  %.not1140.i.1 = icmp sgt i32 %i.ayd, %i.chl
  %i.cil = add nsw i32 %i.chq, 600
  %i.cim = srem i32 %i.cil, 6
  %i.cin = sext i32 %i.cim to i64
  %i.cio = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cin ; 3 uses
  %i.cip = mul nsw i32 %i.chq, %i.bo              ; 3 uses
  %i.ciq = add nuw nsw i32 %i.chr, 600
  %i.cir = urem i32 %i.ciq, 6
  %i.cis = zext nneg i32 %i.cir to i64
  %i.cit = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cis ; 3 uses
  %i.ciu = mul nuw nsw i32 %i.chr, %i.bo          ; 3 uses
  %i.civ = add i32 %i.chl, 1                      ; 3 uses
  %.not1140.i.2 = icmp slt i32 %i.civ, %i.ayd
  %i.ciw = sub nsw i32 %i.cco, %i.civ             ; 2 uses
  %i.cix = add nsw i32 %i.ciw, 600
  %i.ciy = srem i32 %i.cix, 6
  %i.ciz = sext i32 %i.ciy to i64
  %i.cja = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ciz ; 3 uses
  %i.cjb = mul nsw i32 %i.ciw, %i.bo              ; 3 uses
  %i.cjc = tail call i32 @llvm.abs.i32(i32 %i.civ, i1 true) ; 2 uses
  %i.cjd = add nuw nsw i32 %i.cjc, 600
  %i.cje = urem i32 %i.cjd, 6
  %i.cjf = zext nneg i32 %i.cje to i64
  %i.cjg = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cjf ; 3 uses
  %i.cjh = mul nuw nsw i32 %i.cjc, %i.bo          ; 3 uses
  br label %bb.jr

._crit_edge.i492:                                 ; preds = %.loopexit1250.i
  %indvars.iv.next1580.i = add nsw i64 %indvars.iv1579.i, 1 ; 2 uses
  %i.cji = icmp slt i64 %indvars.iv.next1580.i, %i.cfg
  br i1 %i.cji, label %.preheader1257.i, label %.preheader1262.i

bb.jr:                                            ; preds = %.loopexit1250.i, %.preheader1257.i
  %indvars.iv1574.i = phi i64 [ %indvars.iv1572.i, %.preheader1257.i ], [ %indvars.iv.next1575.i.pre-phi, %.loopexit1250.i ] ; 7 uses
  %i.cjj = sub nsw i64 %indvars.iv1574.i, %indvars.iv1572.i ; 3 uses
  %i.cjk = getelementptr inbounds [12 x i8], ptr %i.chj, i64 %i.cjj ; 7 uses
  %i.cjl = trunc i64 %indvars.iv1574.i to i32     ; 5 uses
  %i.cjm = or i32 %i.cjl, %i.chl
  %or.cond.i491 = icmp sgt i32 %i.cjm, -1
  %i.cjn = icmp slt i64 %indvars.iv1574.i, %i.aow ; 2 uses
  %or.cond1143.i = and i1 %i.cjn, %or.cond.i491
  %or.cond1144.i = and i1 %i.chk, %or.cond1143.i
  %i.cjo = add i32 %i.cjl, 600
  %i.cjp = srem i32 %i.cjo, 6
  %i.cjq = sext i32 %i.cjp to i64
  %i.cjr = getelementptr inbounds i8, ptr %i.chp, i64 %i.cjq
  %i.cjs = load i8, ptr %i.cjr, align 1, !tbaa !169 ; 23 uses
  br i1 %or.cond1144.i, label %bb.js, label %bb.jy

bb.js:                                            ; preds = %bb.jr
  %gep.i494 = getelementptr [4 x i8], ptr %invariant.gep.i490, i64 %indvars.iv1574.i ; 4 uses
  %i.cjt = icmp eq i8 %i.cjs, 0
  br i1 %i.cjt, label %.thread.i, label %bb.jt

.thread.i:                                        ; preds = %bb.js
  %i.cju = load float, ptr %gep.i494, align 4, !tbaa !22
  store float %i.cju, ptr %i.cjk, align 4, !tbaa !22
  br label %.thread2078.i

bb.jt:                                            ; preds = %bb.js
  store float 0.000000e+00, ptr %i.cjk, align 4, !tbaa !22
  %i.cjv = icmp eq i8 %i.cjs, 1
  br i1 %i.cjv, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.cjw = load float, ptr %gep.i494, align 4, !tbaa !22
  br label %.thread2078.i

.thread2078.i:                                    ; preds = %bb.ju, %.thread.i
  %.ph.i = phi float [ 0.000000e+00, %.thread.i ], [ %i.cjw, %bb.ju ]
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjk, i64 4
  store float %.ph.i, ptr %i.cjx, align 4, !tbaa !22
  br label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cjk, i64 4
  store float 0.000000e+00, ptr %i.cjy, align 4, !tbaa !22
  %i.cjz = icmp eq i8 %i.cjs, 2
  br i1 %i.cjz, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.cka = load float, ptr %gep.i494, align 4, !tbaa !22
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %.thread2078.i
  %i.ckb = phi reassoc nsz arcp contract afn float [ %i.cka, %bb.jw ], [ 0.000000e+00, %bb.jv ], [ 0.000000e+00, %.thread2078.i ]
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cjk, i64 8
  store float %i.ckb, ptr %i.ckc, align 4, !tbaa !22
  %i.ckd = load float, ptr %gep.i494, align 4, !tbaa !22
  %i.cke = getelementptr inbounds [4 x i8], ptr %invariant.gep1304.i, i64 %i.cjj
  store float %i.ckd, ptr %i.cke, align 4, !tbaa !22
  %.pre1254 = add nsw i64 %indvars.iv1574.i, 1
  br label %.loopexit1250.i

bb.jy:                                            ; preds = %bb.jr
  %i.ckf = sub i32 %i.ath, %i.cjl
  %i.ckg = tail call i32 @llvm.abs.i32(i32 %i.cjl, i1 true)
  %i.ckh = zext i8 %i.cjs to i64                  ; 2 uses
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.cjk, i64 %i.ckh ; 2 uses
  %gep1305.i = getelementptr [4 x i8], ptr %invariant.gep1304.i, i64 %i.cjj ; 2 uses
  %i.ckj = select i1 %i.cjn, i32 %i.ckg, i32 %i.ckf ; 8 uses
  %i.ckk = add nsw i32 %i.ckj, 600
  %i.ckl = srem i32 %i.ckk, 6
  %i.ckm = sext i32 %i.ckl to i64                 ; 7 uses
  %i.ckn = getelementptr inbounds i8, ptr %i.chx, i64 %i.ckm
  %.not1141.not.i = icmp sgt i64 %indvars.iv1574.i, %i.aow
  %i.cko = add i32 %i.cjl, -1                     ; 2 uses
  %i.ckp = tail call i32 @llvm.abs.i32(i32 %i.cko, i1 true)
  %i.ckq = sub i32 %i.ath, %i.cko
  %i.ckr = add nsw i64 %indvars.iv1574.i, 1       ; 3 uses
  %.not1141.2.i = icmp slt i64 %i.ckr, %i.aow
  %i.cks = trunc nsw i64 %i.ckr to i32            ; 2 uses
  %i.ckt = sub i32 %i.ath, %i.cks
  %i.cku = tail call i32 @llvm.abs.i32(i32 %i.cks, i1 true)
  %i.ckv = add nsw i32 %i.ckj, %i.chy
  %i.ckw = sext i32 %i.ckv to i64
  %i.ckx = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.ckw
  %.2115.i = select i1 %.not1141.not.i, i32 %i.ckq, i32 %i.ckp ; 7 uses
  %i.cky = add nsw i32 %.2115.i, 600
  %i.ckz = srem i32 %i.cky, 6
  %i.cla = sext i32 %i.ckz to i64                 ; 6 uses
  %.2119.i = select i1 %.not1141.2.i, i32 %i.cku, i32 %i.ckt ; 4 uses
  %i.clb = add nsw i32 %.2119.i, 600
  %i.clc = srem i32 %i.clb, 6
  %i.cld = sext i32 %i.clc to i64                 ; 6 uses
  %i.cle = getelementptr inbounds i8, ptr %i.cid, i64 %i.cla
  %i.clf = add nsw i32 %i.cie, %.2115.i
  %i.clg = sext i32 %i.clf to i64
  %i.clh = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clg
  %i.cli = getelementptr inbounds i8, ptr %i.cid, i64 %i.ckm
  %i.clj = add nsw i32 %i.cie, %i.ckj
  %i.clk = sext i32 %i.clj to i64
  %i.cll = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clk
  %i.clm = getelementptr inbounds i8, ptr %i.cid, i64 %i.cld
  %i.cln = getelementptr inbounds i8, ptr %i.cij, i64 %i.cla
  %i.clo = add nsw i32 %i.cik, %.2115.i
  %i.clp = sext i32 %i.clo to i64
  %i.clq = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clp
  %i.clr = getelementptr inbounds i8, ptr %i.cij, i64 %i.ckm
  %i.cls = add nsw i32 %i.cik, %i.ckj
  %i.clt = sext i32 %i.cls to i64
  %i.clu = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clt
  %i.clv = getelementptr inbounds i8, ptr %i.cij, i64 %i.cld
  %i.clw = getelementptr inbounds i8, ptr %i.cio, i64 %i.cla
  %i.clx = add nsw i32 %i.cip, %.2115.i
  %i.cly = sext i32 %i.clx to i64
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.fpa = zext <8 x i8> %wide.load2112 to <8 x i32> ; 2 uses
  %i.fpb = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.foy, <8 x i32> %i.fpa)
  %i.fpc = getelementptr inbounds nuw i8, ptr %i.fox, i64 29768
  %wide.load2113 = load <8 x i8>, ptr %i.fpc, align 1, !tbaa !169, !alias.scope !223, !noalias !226
  %i.fpd = zext <8 x i8> %wide.load2113 to <8 x i32> ; 2 uses
  %i.fpe = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fpb, <8 x i32> %i.fpd)
  %i.fpf = getelementptr inbounds nuw i8, ptr %i.fox, i64 44652
  %wide.load2114 = load <8 x i8>, ptr %i.fpf, align 1, !tbaa !169, !alias.scope !223, !noalias !226
  %i.fpg = zext <8 x i8> %wide.load2114 to <8 x i32> ; 2 uses
  %i.fph = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fpe, <8 x i32> %i.fpg) ; 2 uses
  %i.fpi = lshr <8 x i32> %i.fph, splat (i32 3)
  %i.fpj = sub nsw <8 x i32> %i.fph, %i.fpi
  %i.fpk = and <8 x i32> %i.fpj, splat (i32 255)  ; 4 uses
  %wide.gep2115 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1486.i, <8 x i64> %vec.ind2109 ; 12 uses
  %i.fpl = icmp samesign ule <8 x i32> %i.fpk, %i.foy ; 4 uses
  %wide.masked.gather2116 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2115, <8 x i1> %i.fpl, <8 x float> zeroinitializer), !tbaa !22, !alias.scope !228, !noalias !226 ; 2 uses
  %wide.gep2117 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 4
  %wide.masked.gather2118 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2117, <8 x i1> %i.fpl, <8 x float> zeroinitializer), !tbaa !22, !alias.scope !228, !noalias !226 ; 2 uses
  %wide.gep2119 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 8
  %wide.masked.gather2120 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2119, <8 x i1> %i.fpl, <8 x float> zeroinitializer), !tbaa !22, !alias.scope !228, !noalias !226 ; 2 uses
  %predphi2124 = select nsz <8 x i1> %i.fpl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer ; 2 uses
  %i.fpm = icmp samesign ule <8 x i32> %i.fpk, %i.fpa ; 7 uses
  %wide.gep2125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 178608
  %wide.masked.gather2126 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2125, <8 x i1> %i.fpm, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2126, %wide.masked.gather2116
  %wide.gep2127 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 178612
  %wide.masked.gather2128 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2127, <8 x i1> %i.fpm, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpo = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2128, %wide.masked.gather2118
  %wide.gep2129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 178616
  %wide.masked.gather2130 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2129, <8 x i1> %i.fpm, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpp = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2130, %wide.masked.gather2120
  %i.fpq = fadd reassoc nsz arcp contract afn <8 x float> %predphi2124, splat (float 1.000000e+00)
  %predphi2131 = select nsz <8 x i1> %i.fpm, <8 x float> %i.fpn, <8 x float> %wide.masked.gather2116 ; 2 uses
  %predphi2132 = select nsz <8 x i1> %i.fpm, <8 x float> %i.fpo, <8 x float> %wide.masked.gather2118 ; 2 uses
  %predphi2133 = select nsz <8 x i1> %i.fpm, <8 x float> %i.fpp, <8 x float> %wide.masked.gather2120 ; 2 uses
  %predphi2134 = select nsz <8 x i1> %i.fpm, <8 x float> %i.fpq, <8 x float> %predphi2124 ; 2 uses
  %i.fpr = icmp samesign ule <8 x i32> %i.fpk, %i.fpd ; 7 uses
  %wide.gep2135 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 357216
  %wide.masked.gather2136 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2135, <8 x i1> %i.fpr, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fps = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2136, %predphi2131
  %wide.gep2137 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 357220
  %wide.masked.gather2138 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2137, <8 x i1> %i.fpr, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpt = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2138, %predphi2132
  %wide.gep2139 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 357224
  %wide.masked.gather2140 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2139, <8 x i1> %i.fpr, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpu = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2140, %predphi2133
  %i.fpv = fadd reassoc nsz arcp contract afn <8 x float> %predphi2134, splat (float 1.000000e+00)
  %predphi2141 = select nsz <8 x i1> %i.fpr, <8 x float> %i.fps, <8 x float> %predphi2131 ; 2 uses
  %predphi2142 = select nsz <8 x i1> %i.fpr, <8 x float> %i.fpt, <8 x float> %predphi2132 ; 2 uses
  %predphi2143 = select nsz <8 x i1> %i.fpr, <8 x float> %i.fpu, <8 x float> %predphi2133 ; 2 uses
  %predphi2144 = select nsz <8 x i1> %i.fpr, <8 x float> %i.fpv, <8 x float> %predphi2134 ; 2 uses
  %i.fpw = icmp samesign ule <8 x i32> %i.fpk, %i.fpg ; 7 uses
  %wide.gep2145 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 535824
  %wide.masked.gather2146 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2145, <8 x i1> %i.fpw, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2146, %predphi2141
  %wide.gep2147 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 535828
  %wide.masked.gather2148 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2147, <8 x i1> %i.fpw, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpy = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2148, %predphi2142
  %wide.gep2149 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2115, i64 535832
  %wide.masked.gather2150 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2149, <8 x i1> %i.fpw, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fpz = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2150, %predphi2143
  %i.fqa = fadd reassoc nsz arcp contract afn <8 x float> %predphi2144, splat (float 1.000000e+00)
  %predphi2151 = select nsz <8 x i1> %i.fpw, <8 x float> %i.fpx, <8 x float> %predphi2141
  %predphi2152 = select nsz <8 x i1> %i.fpw, <8 x float> %i.fpy, <8 x float> %predphi2142
  %predphi2153 = select nsz <8 x i1> %i.fpw, <8 x float> %i.fpz, <8 x float> %predphi2143
  %predphi2154 = select nsz <8 x i1> %i.fpw, <8 x float> %i.fqa, <8 x float> %predphi2144 ; 3 uses
  %i.fqb = fdiv reassoc nsz arcp contract afn <8 x float> %predphi2151, %predphi2154 ; 2 uses
  %i.fqc = fdiv reassoc nsz arcp contract afn <8 x float> %predphi2153, %predphi2154 ; 2 uses
  %i.fqd = getelementptr inbounds nuw [4 x i8], ptr %i.fol, i64 %i.fow
  %wide.load2155 = load <8 x float>, ptr %i.fqd, align 4, !alias.scope !230, !noalias !226 ; 3 uses
  %i.fqe = getelementptr [4 x i8], ptr %i.fom, i64 %i.fow ; 3 uses
  %i.fqf = getelementptr i8, ptr %i.fqe, i64 -4
  %wide.load2156 = load <8 x float>, ptr %i.fqf, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %wide.load2157 = load <8 x float>, ptr %i.fqe, align 4, !alias.scope !232, !noalias !226 ; 3 uses
  %i.fqg = getelementptr i8, ptr %i.fqe, i64 4
  %wide.load2158 = load <8 x float>, ptr %i.fqg, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %i.fqh = getelementptr inbounds nuw [4 x i8], ptr %i.fon, i64 %i.fow
  %wide.load2159 = load <8 x float>, ptr %i.fqh, align 4, !alias.scope !234, !noalias !226 ; 3 uses
  %i.fqi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2155, %wide.load2156 ; 2 uses
  %i.fqj = select nsz <8 x i1> %i.fqi, <8 x float> %wide.load2155, <8 x float> %wide.load2156 ; 2 uses
  %i.fqk = select nsz <8 x i1> %i.fqi, <8 x float> %wide.load2156, <8 x float> %wide.load2155 ; 2 uses
  %i.fql = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2158, %wide.load2159 ; 2 uses
  %i.fqm = select nsz <8 x i1> %i.fql, <8 x float> %wide.load2158, <8 x float> %wide.load2159 ; 2 uses
  %i.fqn = select nsz <8 x i1> %i.fql, <8 x float> %wide.load2159, <8 x float> %wide.load2158 ; 2 uses
  %i.fqo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fqk, %i.fqn
  %i.fqp = select nsz <8 x i1> %i.fqo, <8 x float> %i.fqk, <8 x float> %i.fqn ; 2 uses
  %i.fqq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fqj, %i.fqm
  %i.fqr = select nsz <8 x i1> %i.fqq, <8 x float> %i.fqm, <8 x float> %i.fqj ; 3 uses
  %i.fqs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fqr, %wide.load2157 ; 2 uses
  %i.fqt = select nsz <8 x i1> %i.fqs, <8 x float> %i.fqr, <8 x float> %wide.load2157 ; 2 uses
  %i.fqu = select nsz <8 x i1> %i.fqs, <8 x float> %wide.load2157, <8 x float> %i.fqr ; 2 uses
  %i.fqv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fqt, %i.fqp
  %i.fqw = select nsz <8 x i1> %i.fqv, <8 x float> %i.fqp, <8 x float> %i.fqt ; 2 uses
  %i.fqx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fqu, %i.fqw
  %i.fqy = select nsz <8 x i1> %i.fqx, <8 x float> %i.fqu, <8 x float> %i.fqw ; 5 uses
  %i.fqz = getelementptr inbounds nuw [4 x i8], ptr %i.foo, i64 %i.fow
  %wide.load2160 = load <8 x float>, ptr %i.fqz, align 4, !alias.scope !230, !noalias !226 ; 3 uses
  %i.fra = getelementptr [4 x i8], ptr %i.fop, i64 %i.fow ; 3 uses
  %i.frb = getelementptr i8, ptr %i.fra, i64 -4
  %wide.load2161 = load <8 x float>, ptr %i.frb, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %wide.load2162 = load <8 x float>, ptr %i.fra, align 4, !alias.scope !232, !noalias !226 ; 3 uses
  %i.frc = getelementptr i8, ptr %i.fra, i64 4
  %wide.load2163 = load <8 x float>, ptr %i.frc, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %i.frd = getelementptr inbounds nuw [4 x i8], ptr %i.foq, i64 %i.fow
  %wide.load2164 = load <8 x float>, ptr %i.frd, align 4, !alias.scope !234, !noalias !226 ; 3 uses
  %i.fre = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2160, %wide.load2161 ; 2 uses
  %i.frf = select nsz <8 x i1> %i.fre, <8 x float> %wide.load2160, <8 x float> %wide.load2161 ; 2 uses
  %i.frg = select nsz <8 x i1> %i.fre, <8 x float> %wide.load2161, <8 x float> %wide.load2160 ; 2 uses
  %i.frh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2163, %wide.load2164 ; 2 uses
  %i.fri = select nsz <8 x i1> %i.frh, <8 x float> %wide.load2163, <8 x float> %wide.load2164 ; 2 uses
  %i.frj = select nsz <8 x i1> %i.frh, <8 x float> %wide.load2164, <8 x float> %wide.load2163 ; 2 uses
  %i.frk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frg, %i.frj
  %i.frl = select nsz <8 x i1> %i.frk, <8 x float> %i.frg, <8 x float> %i.frj ; 2 uses
  %i.frm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frf, %i.fri
  %i.frn = select nsz <8 x i1> %i.frm, <8 x float> %i.fri, <8 x float> %i.frf ; 3 uses
  %i.fro = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frn, %wide.load2162 ; 2 uses
  %i.frp = select nsz <8 x i1> %i.fro, <8 x float> %i.frn, <8 x float> %wide.load2162 ; 2 uses
  %i.frq = select nsz <8 x i1> %i.fro, <8 x float> %wide.load2162, <8 x float> %i.frn ; 2 uses
  %i.frr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frp, %i.frl
  %i.frs = select nsz <8 x i1> %i.frr, <8 x float> %i.frl, <8 x float> %i.frp ; 2 uses
  %i.frt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frq, %i.frs
  %i.fru = select nsz <8 x i1> %i.frt, <8 x float> %i.frq, <8 x float> %i.frs ; 5 uses
  %i.frv = fmul reassoc nsz arcp contract afn <8 x float> %i.fqb, splat (float 2.627000e-01)
  %i.frw = fmul reassoc nsz arcp contract afn <8 x float> %predphi2152, splat (float f0x3F2D9168)
  %i.frx = fdiv reassoc nsz arcp contract afn <8 x float> %i.frw, %predphi2154
  %i.fry = fadd reassoc nsz arcp contract afn <8 x float> %i.frv, %i.frx
  %i.frz = fmul reassoc nsz arcp contract afn <8 x float> %i.fqc, splat (float 5.930000e-02)
  %i.fsa = fadd reassoc nsz arcp contract afn <8 x float> %i.fry, %i.frz ; 5 uses
  %i.fsb = fsub reassoc nsz arcp contract afn <8 x float> %i.fqc, %i.fsa
  %i.fsc = fmul reassoc nsz arcp contract afn <8 x float> %i.fsb, splat (float 5.643300e-01) ; 2 uses
  %i.fsd = fsub reassoc nsz arcp contract afn <8 x float> %i.fqb, %i.fsa
  %i.fse = fmul reassoc nsz arcp contract afn <8 x float> %i.fsd, splat (float f0x3F2D9B3D) ; 4 uses
  %i.fsf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fqy, zeroinitializer
  %i.fsg = fneg reassoc nsz arcp contract afn <8 x float> %i.fqy
  %i.fsh = select reassoc nsz arcp contract afn <8 x i1> %i.fsf, <8 x float> %i.fsg, <8 x float> %i.fqy ; 2 uses
  %i.fsi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fsc)
  %i.fsj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsh, %i.fsi
  %i.fsk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fru, zeroinitializer
  %i.fsl = fneg reassoc nsz arcp contract afn <8 x float> %i.fru
  %i.fsm = select reassoc nsz arcp contract afn <8 x i1> %i.fsk, <8 x float> %i.fsl, <8 x float> %i.fru ; 2 uses
  %i.fsn = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fse, zeroinitializer
  %i.fso = fneg reassoc nsz arcp contract afn <8 x float> %i.fse
  %i.fsp = select reassoc nsz arcp contract afn <8 x i1> %i.fsn, <8 x float> %i.fso, <8 x float> %i.fse ; 2 uses
  %i.fsq = fmul reassoc nsz arcp contract afn <8 x float> %i.fsp, splat (float 1.020000e+00) ; 2 uses
  %i.fsr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsm, %i.fsq
  %i.fss = and <8 x i1> %i.fsj, %i.fsr
  %i.fst = select reassoc nsz arcp contract afn <8 x i1> %i.fss, <8 x float> %i.fqy, <8 x float> %i.fsc
  %i.fsu = fmul reassoc nsz arcp contract afn <8 x float> %i.fst, %broadcast.splat2104
  %i.fsv = fmul reassoc nsz arcp contract afn <8 x float> %i.fqy, %broadcast.splat2106.a
  %i.fsw = fadd reassoc nsz arcp contract afn <8 x float> %i.fsu, %i.fsv ; 2 uses
  %i.fsx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsm, %i.fsp
  %i.fsy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsh, %i.fsq
  %i.fsz = and <8 x i1> %i.fsy, %i.fsx
  %i.fta = select reassoc nsz arcp contract afn <8 x i1> %i.fsz, <8 x float> %i.fru, <8 x float> %i.fse
  %i.ftb = fmul reassoc nsz arcp contract afn <8 x float> %i.fta, %broadcast.splat2104
  %i.ftc = fmul reassoc nsz arcp contract afn <8 x float> %i.fru, %broadcast.splat2106.a
  %i.ftd = fadd reassoc nsz arcp contract afn <8 x float> %i.ftb, %i.ftc ; 2 uses
  %i.fte = fmul reassoc nsz arcp contract afn <8 x float> %i.ftd, splat (float 1.474600e+00)
  %i.ftf = fadd reassoc nsz arcp contract afn <8 x float> %i.fte, %i.fsa ; 2 uses
  %i.ftg = fmul reassoc nsz arcp contract afn <8 x float> %i.fsw, splat (float f0xBE1EB498)
  %i.fth = fmul reassoc nsz arcp contract afn <8 x float> %i.ftd, splat (float f0x3F124433)
  %i.fti = fsub reassoc nsz arcp contract afn <8 x float> %i.fsa, %i.fth
  %i.ftj = fadd reassoc nsz arcp contract afn <8 x float> %i.fti, %i.ftg ; 2 uses
  %i.ftk = fmul reassoc nsz arcp contract afn <8 x float> %i.fsw, splat (float f0x3FE2D151)
  %i.ftl = fadd reassoc nsz arcp contract afn <8 x float> %i.ftk, %i.fsa ; 2 uses
  %i.ftm = add <8 x i32> %broadcast.splat2102, %vec.ind2110
  %i.ftn = shl nsw <8 x i32> %i.ftm, splat (i32 2)
  %i.fto = sext <8 x i32> %i.ftn to <8 x i64>
  %i.ftp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ftf, zeroinitializer
  %i.ftq = select reassoc nsz arcp contract afn <8 x i1> %i.ftp, <8 x float> zeroinitializer, <8 x float> %i.ftf
  %wide.gep2165 = getelementptr inbounds [4 x i8], ptr %i.aop, <8 x i64> %i.fto ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ftq, <8 x ptr> align 4 %wide.gep2165, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !226
  %i.ftr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ftj, zeroinitializer
  %i.fts = select reassoc nsz arcp contract afn <8 x i1> %i.ftr, <8 x float> zeroinitializer, <8 x float> %i.ftj
  %wide.gep2166 = getelementptr i8, <8 x ptr> %wide.gep2165, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fts, <8 x ptr> align 4 %wide.gep2166, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !226
  %i.ftt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ftl, zeroinitializer
  %i.ftu = select reassoc nsz arcp contract afn <8 x i1> %i.ftt, <8 x float> zeroinitializer, <8 x float> %i.ftl
  %wide.gep2167 = getelementptr i8, <8 x ptr> %wide.gep2165, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ftu, <8 x ptr> align 4 %wide.gep2167, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !226
  %index.next2168 = add nuw i64 %index2108, 8     ; 2 uses
  %vec.ind.next2169 = add nuw nsw <8 x i64> %vec.ind2109, splat (i64 8)
  %vec.ind.next2170 = add <8 x i32> %vec.ind2110, splat (i32 8)
  %i.ftv = icmp eq i64 %index.next2168, %n.vec2100
  br i1 %i.ftv, label %middle.block2171, label %vector.body2107, !llvm.loop !236

middle.block2171:                                 ; preds = %vector.body2107
  br i1 %cmp.n2172, label %._crit_edge1495.i, label %scalar.ph2097.preheader

scalar.ph2097.preheader:                          ; preds = %vector.memcheck2046, %vector.scevcheck2038, %.preheader1251.i, %middle.block2171
  %indvars.iv1878.i.ph = phi i64 [ 13, %vector.memcheck2046 ], [ 13, %vector.scevcheck2038 ], [ 13, %.preheader1251.i ], [ %i.erj, %middle.block2171 ]
  br label %scalar.ph2097

._crit_edge1497.split.i:                          ; preds = %._crit_edge1495.i, %.preheader1252.lr.ph.i, %.preheader1258.i, %.preheader1259.split.i
  %indvars.iv.next1573.i = add nsw i64 %indvars.iv1572.i, 96 ; 2 uses
  %i.ftw = icmp slt i64 %indvars.iv.next1573.i, %i.arb
  %indvars.iv.next1598.i = add nsw i64 %indvars.iv1597.i, 96
  %indvars.iv.next1626.i = add nsw i64 %indvars.iv1625.i, 96
  %indvars.iv.next1650.i = add nsw i64 %indvars.iv1649.i, 96
  %indvars.iv.next1717.i = add nuw i32 %indvars.iv1716.i, 96
  %indvars.iv.next1719.i = add i32 %indvars.iv1718.i, -96
  %indvars.iv.next1193 = add i32 %indvars.iv1192, -96
  %indvars.iv.next1203 = add i32 %indvars.iv1202, -96
  %indvars.iv.next1213 = add i32 %indvars.iv1212, -96
  %indvars.iv.next1223 = add i32 %indvars.iv1222, -96
  %indvar.next2040 = add i32 %indvar2039, 1
  br i1 %i.ftw, label %bb.jq, label %._crit_edge1503.i

._crit_edge1495.i:                                ; preds = %bb.me, %middle.block2171
  %indvars.iv.next1882.i = add nuw nsw i64 %indvars.iv1881.i, 1 ; 2 uses
  %exitcond1236.not = icmp eq i64 %indvars.iv.next1882.i, %i.cfx
  %indvar.next2042 = add i32 %indvar2041, 1
  br i1 %exitcond1236.not, label %._crit_edge1497.split.i, label %.preheader1251.i

scalar.ph2097:                                    ; preds = %scalar.ph2097.preheader, %bb.me
  %indvars.iv1878.i = phi i64 [ %indvars.iv.next1879.i, %bb.me ], [ %indvars.iv1878.i.ph, %scalar.ph2097.preheader ] ; 10 uses
  %invariant.gep1480.i = getelementptr inbounds nuw i8, ptr %invariant.gep1478.i, i64 %indvars.iv1878.i ; 4 uses
  %i.ftx = load i8, ptr %invariant.gep1480.i, align 1, !tbaa !169
  %i.fty = zext i8 %i.ftx to i32                  ; 2 uses
  %gep1481.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1480.i, i64 14884
  %i.ftz = load i8, ptr %gep1481.1.i, align 1, !tbaa !169
  %i.fua = zext i8 %i.ftz to i32                  ; 2 uses
  %..0968.1.i = tail call i32 @llvm.umax.i32(i32 %i.fty, i32 %i.fua)
  %gep1481.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1480.i, i64 29768
  %i.fub = load i8, ptr %gep1481.2.i, align 1, !tbaa !169
  %i.fuc = zext i8 %i.fub to i32                  ; 2 uses
  %..0968.2.i = tail call i32 @llvm.umax.i32(i32 %..0968.1.i, i32 %i.fuc)
  %gep1481.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1480.i, i64 44652
  %i.fud = load i8, ptr %gep1481.3.i, align 1, !tbaa !169
  %i.fue = zext i8 %i.fud to i32                  ; 2 uses
  %..0968.3.i = tail call i32 @llvm.umax.i32(i32 %..0968.2.i, i32 %i.fue) ; 2 uses
  %i.fuf = lshr i32 %..0968.3.i, 3
  %i.fug = sub nsw i32 %..0968.3.i, %i.fuf
  %i.fuh = and i32 %i.fug, 255                    ; 4 uses
  %invariant.gep1488.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1486.i, i64 %indvars.iv1878.i ; 8 uses
  %.not1124.i = icmp samesign ugt i32 %i.fuh, %i.fty
  br i1 %.not1124.i, label %bb.mb, label %.preheader1229.i

.preheader1229.i:                                 ; preds = %scalar.ph2097
  %i.fui = load <2 x float>, ptr %invariant.gep1488.i, align 4, !tbaa !22
  %i.fuj = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 8
  %i.fuk = load float, ptr %i.fuj, align 4, !tbaa !22
  %i.ful = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fuk, i64 2
  %i.fum = shufflevector <2 x float> %i.fui, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fun = shufflevector <4 x float> %i.fum, <4 x float> %i.ful, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.mb

bb.mb:                                            ; preds = %.preheader1229.i, %scalar.ph2097
  %i.fuo = phi <4 x float> [ zeroinitializer, %scalar.ph2097 ], [ %i.fun, %.preheader1229.i ] ; 2 uses
  %.not1124.1.i = icmp samesign ugt i32 %i.fuh, %i.fua
  br i1 %.not1124.1.i, label %bb.mc, label %.preheader1229.1.i

.preheader1229.1.i:                               ; preds = %bb.mb
  %gep1489.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 178608
  %i.fup = load <2 x float>, ptr %gep1489.1.i, align 4, !tbaa !22
  %i.fuq = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 178616
  %i.fur = load float, ptr %i.fuq, align 4, !tbaa !22
  %i.fus = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fur, i64 2
  %i.fut = shufflevector <2 x float> %i.fup, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fuu = shufflevector <4 x float> %i.fut, <4 x float> %i.fus, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fuv = fadd reassoc nsz arcp contract afn <4 x float> %i.fuo, %i.fuu
  br label %bb.mc

bb.mc:                                            ; preds = %.preheader1229.1.i, %bb.mb
  %i.fuw = phi <4 x float> [ %i.fuo, %bb.mb ], [ %i.fuv, %.preheader1229.1.i ] ; 2 uses
  %.not1124.2.i = icmp samesign ugt i32 %i.fuh, %i.fuc
  br i1 %.not1124.2.i, label %bb.md, label %.preheader1229.2.i

.preheader1229.2.i:                               ; preds = %bb.mc
  %gep1489.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 357216
  %i.fux = load <2 x float>, ptr %gep1489.2.i, align 4, !tbaa !22
  %i.fuy = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 357224
  %i.fuz = load float, ptr %i.fuy, align 4, !tbaa !22
  %i.fva = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fuz, i64 2
  %i.fvb = shufflevector <2 x float> %i.fux, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvc = shufflevector <4 x float> %i.fvb, <4 x float> %i.fva, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fvd = fadd reassoc nsz arcp contract afn <4 x float> %i.fuw, %i.fvc
  br label %bb.md

bb.md:                                            ; preds = %.preheader1229.2.i, %bb.mc
  %i.fve = phi <4 x float> [ %i.fuw, %bb.mc ], [ %i.fvd, %.preheader1229.2.i ] ; 2 uses
  %.not1124.3.i = icmp samesign ugt i32 %i.fuh, %i.fue
  br i1 %.not1124.3.i, label %bb.me, label %.preheader1229.3.i

.preheader1229.3.i:                               ; preds = %bb.md
  %gep1489.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 535824
  %i.fvf = load <2 x float>, ptr %gep1489.3.i, align 4, !tbaa !22
  %i.fvg = getelementptr inbounds nuw i8, ptr %invariant.gep1488.i, i64 535832
  %i.fvh = load float, ptr %i.fvg, align 4, !tbaa !22
  %i.fvi = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fvh, i64 2
  %i.fvj = shufflevector <2 x float> %i.fvf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvk = shufflevector <4 x float> %i.fvj, <4 x float> %i.fvi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fvl = fadd reassoc nsz arcp contract afn <4 x float> %i.fve, %i.fvk
  br label %bb.me

bb.me:                                            ; preds = %.preheader1229.3.i, %bb.md
  %i.fvm = phi <4 x float> [ %i.fve, %bb.md ], [ %i.fvl, %.preheader1229.3.i ] ; 4 uses
  %i.fvn = extractelement <4 x float> %i.fvm, i64 3
  %i.fvo = getelementptr inbounds nuw [4 x i8], ptr %i.fol, i64 %indvars.iv1878.i
  %.sroa.014.0.copyload.i = load float, ptr %i.fvo, align 4 ; 3 uses
  %i.fvp = getelementptr [4 x i8], ptr %i.fom, i64 %indvars.iv1878.i ; 3 uses
  %i.fvq = getelementptr i8, ptr %i.fvp, i64 -4
  %.sroa.9.4.copyload.i = load float, ptr %i.fvq, align 4 ; 3 uses
  %.sroa.22.4.copyload.i = load float, ptr %i.fvp, align 4 ; 3 uses
  %.sroa.32.4..sroa_idx.i = getelementptr i8, ptr %i.fvp, i64 4
  %.sroa.32.4.copyload.i = load float, ptr %.sroa.32.4..sroa_idx.i, align 4 ; 3 uses
  %i.fvr = getelementptr inbounds nuw [4 x i8], ptr %i.fon, i64 %indvars.iv1878.i
  %.sroa.41.16.copyload.i = load float, ptr %i.fvr, align 4 ; 3 uses
  %i.fvs = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.copyload.i, %.sroa.9.4.copyload.i ; 2 uses
  %.sroa.9.0.i = select nsz i1 %i.fvs, float %.sroa.014.0.copyload.i, float %.sroa.9.4.copyload.i ; 2 uses
  %.sroa.014.0.i = select nsz i1 %i.fvs, float %.sroa.9.4.copyload.i, float %.sroa.014.0.copyload.i ; 2 uses
  %i.fvt = fcmp reassoc nsz arcp contract afn ogt float %.sroa.32.4.copyload.i, %.sroa.41.16.copyload.i ; 2 uses
  %.sroa.41.0.i = select nsz i1 %i.fvt, float %.sroa.32.4.copyload.i, float %.sroa.41.16.copyload.i ; 2 uses
  %.sroa.32.0.i = select nsz i1 %i.fvt, float %.sroa.41.16.copyload.i, float %.sroa.32.4.copyload.i ; 2 uses
  %i.fvu = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.i, %.sroa.32.0.i
  %.sroa.32.1.i = select nsz i1 %i.fvu, float %.sroa.014.0.i, float %.sroa.32.0.i ; 2 uses
  %i.fvv = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.0.i, %.sroa.41.0.i
  %.sroa.9.1.i = select nsz i1 %i.fvv, float %.sroa.41.0.i, float %.sroa.9.0.i ; 3 uses
  %i.fvw = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.1.i, %.sroa.22.4.copyload.i ; 2 uses
  %.sroa.22.0.i = select nsz i1 %i.fvw, float %.sroa.9.1.i, float %.sroa.22.4.copyload.i ; 2 uses
  %.sroa.9.2.i = select nsz i1 %i.fvw, float %.sroa.22.4.copyload.i, float %.sroa.9.1.i ; 2 uses
  %i.fvx = fcmp reassoc nsz arcp contract afn ogt float %.sroa.22.0.i, %.sroa.32.1.i
  %.sroa.22.1.i = select nsz i1 %i.fvx, float %.sroa.32.1.i, float %.sroa.22.0.i ; 2 uses
  %i.fvy = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.2.i, %.sroa.22.1.i
  %.sroa.22.2.i = select nsz i1 %i.fvy, float %.sroa.9.2.i, float %.sroa.22.1.i ; 5 uses
  %i.fvz = getelementptr inbounds nuw [4 x i8], ptr %i.foo, i64 %indvars.iv1878.i
  %.sroa.014.0.copyload.1.i = load float, ptr %i.fvz, align 4 ; 3 uses
  %i.fwa = getelementptr [4 x i8], ptr %i.fop, i64 %indvars.iv1878.i ; 3 uses
  %i.fwb = getelementptr i8, ptr %i.fwa, i64 -4
  %.sroa.9.4.copyload.1.i = load float, ptr %i.fwb, align 4 ; 3 uses
  %.sroa.22.4.copyload.1.i = load float, ptr %i.fwa, align 4 ; 3 uses
  %.sroa.32.4..sroa_idx.1.i = getelementptr i8, ptr %i.fwa, i64 4
  %.sroa.32.4.copyload.1.i = load float, ptr %.sroa.32.4..sroa_idx.1.i, align 4 ; 3 uses
  %i.fwc = getelementptr inbounds nuw [4 x i8], ptr %i.foq, i64 %indvars.iv1878.i
  %.sroa.41.16.copyload.1.i = load float, ptr %i.fwc, align 4 ; 3 uses
  %i.fwd = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.copyload.1.i, %.sroa.9.4.copyload.1.i ; 2 uses
  %.sroa.9.0.1.i = select nsz i1 %i.fwd, float %.sroa.014.0.copyload.1.i, float %.sroa.9.4.copyload.1.i ; 2 uses
  %.sroa.014.0.1.i = select nsz i1 %i.fwd, float %.sroa.9.4.copyload.1.i, float %.sroa.014.0.copyload.1.i ; 2 uses
  %i.fwe = fcmp reassoc nsz arcp contract afn ogt float %.sroa.32.4.copyload.1.i, %.sroa.41.16.copyload.1.i ; 2 uses
  %.sroa.41.0.1.i = select nsz i1 %i.fwe, float %.sroa.32.4.copyload.1.i, float %.sroa.41.16.copyload.1.i ; 2 uses
  %.sroa.32.0.1.i = select nsz i1 %i.fwe, float %.sroa.41.16.copyload.1.i, float %.sroa.32.4.copyload.1.i ; 2 uses
  %i.fwf = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.1.i, %.sroa.32.0.1.i
  %.sroa.32.1.1.i = select nsz i1 %i.fwf, float %.sroa.014.0.1.i, float %.sroa.32.0.1.i ; 2 uses
  %i.fwg = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.0.1.i, %.sroa.41.0.1.i
  %.sroa.9.1.1.i = select nsz i1 %i.fwg, float %.sroa.41.0.1.i, float %.sroa.9.0.1.i ; 3 uses
  %i.fwh = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.1.1.i, %.sroa.22.4.copyload.1.i ; 2 uses
  %.sroa.22.0.1.i = select nsz i1 %i.fwh, float %.sroa.9.1.1.i, float %.sroa.22.4.copyload.1.i ; 2 uses
  %.sroa.9.2.1.i = select nsz i1 %i.fwh, float %.sroa.22.4.copyload.1.i, float %.sroa.9.1.1.i ; 2 uses
  %i.fwi = fcmp reassoc nsz arcp contract afn ogt float %.sroa.22.0.1.i, %.sroa.32.1.1.i
  %.sroa.22.1.1.i = select nsz i1 %i.fwi, float %.sroa.32.1.1.i, float %.sroa.22.0.1.i ; 2 uses
  %i.fwj = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.2.1.i, %.sroa.22.1.1.i
  %.sroa.22.2.1.i = select nsz i1 %i.fwj, float %.sroa.9.2.1.i, float %.sroa.22.1.1.i ; 5 uses
  %i.fwk = extractelement <4 x float> %i.fvm, i64 1
  %i.fwl = fmul reassoc nsz arcp contract afn float %i.fwk, f0x3F2D9168
  %i.fwm = fdiv reassoc nsz arcp contract afn float %i.fwl, %i.fvn
  %i.fwn = shufflevector <4 x float> %i.fvm, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fwo = shufflevector <4 x float> %i.fvm, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fwp = fdiv reassoc nsz arcp contract afn <2 x float> %i.fwn, %i.fwo ; 3 uses
  %i.fwq = fmul reassoc nsz arcp contract afn <2 x float> %i.fwp, <float 2.627000e-01, float 5.930000e-02> ; 2 uses
  %i.fwr = extractelement <2 x float> %i.fwq, i64 0
  %i.fws = fadd reassoc nsz arcp contract afn float %i.fwr, %i.fwm
  %i.fwt = extractelement <2 x float> %i.fwq, i64 1
  %i.fwu = fadd reassoc nsz arcp contract afn float %i.fws, %i.fwt ; 5 uses
  %i.fwv = extractelement <2 x float> %i.fwp, i64 1
  %i.fww = fsub reassoc nsz arcp contract afn float %i.fwv, %i.fwu
  %i.fwx = fmul reassoc nsz arcp contract afn float %i.fww, 5.643300e-01 ; 2 uses
  %i.fwy = extractelement <2 x float> %i.fwp, i64 0
  %i.fwz = fsub reassoc nsz arcp contract afn float %i.fwy, %i.fwu
  %i.fxa = fmul reassoc nsz arcp contract afn float %i.fwz, f0x3F2D9B3D ; 4 uses
  %i.fxb = fcmp reassoc nsz arcp contract afn olt float %.sroa.22.2.i, 0.000000e+00
  %i.fxc = fneg reassoc nsz arcp contract afn float %.sroa.22.2.i
  %i.fxd = select reassoc nsz arcp contract afn i1 %i.fxb, float %i.fxc, float %.sroa.22.2.i ; 2 uses
  %i.fxe = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fwx)
  %i.fxf = fcmp reassoc nsz arcp contract afn olt float %i.fxd, %i.fxe
  %i.fxg = fcmp reassoc nsz arcp contract afn olt float %.sroa.22.2.1.i, 0.000000e+00
  %i.fxh = fneg reassoc nsz arcp contract afn float %.sroa.22.2.1.i
  %i.fxi = select reassoc nsz arcp contract afn i1 %i.fxg, float %i.fxh, float %.sroa.22.2.1.i ; 2 uses
  %i.fxj = fcmp reassoc nsz arcp contract afn olt float %i.fxa, 0.000000e+00
  %i.fxk = fneg reassoc nsz arcp contract afn float %i.fxa
  %i.fxl = select reassoc nsz arcp contract afn i1 %i.fxj, float %i.fxk, float %i.fxa ; 2 uses
  %i.fxm = fmul reassoc nsz arcp contract afn float %i.fxl, 1.020000e+00 ; 2 uses
  %i.fxn = fcmp reassoc nsz arcp contract afn olt float %i.fxi, %i.fxm
  %i.fxo = and i1 %i.fxf, %i.fxn
  %i.fxp = select reassoc nsz arcp contract afn i1 %i.fxo, float %.sroa.22.2.i, float %i.fwx
  %i.fxq = fmul reassoc nsz arcp contract afn float %i.fxp, %spec.select1142.i
  %i.fxr = fmul reassoc nsz arcp contract afn float %.sroa.22.2.i, %spec.select.i486
  %i.fxs = fadd reassoc nsz arcp contract afn float %i.fxq, %i.fxr ; 2 uses
  %i.fxt = fcmp reassoc nsz arcp contract afn olt float %i.fxi, %i.fxl
  %i.fxu = fcmp reassoc nsz arcp contract afn olt float %i.fxd, %i.fxm
  %i.fxv = and i1 %i.fxu, %i.fxt
  %i.fxw = select reassoc nsz arcp contract afn i1 %i.fxv, float %.sroa.22.2.1.i, float %i.fxa
  %i.fxx = fmul reassoc nsz arcp contract afn float %i.fxw, %spec.select1142.i
  %i.fxy = fmul reassoc nsz arcp contract afn float %.sroa.22.2.1.i, %spec.select.i486
  %i.fxz = fadd reassoc nsz arcp contract afn float %i.fxx, %i.fxy ; 2 uses
  %i.fya = fmul reassoc nsz arcp contract afn float %i.fxz, 1.474600e+00
  %i.fyb = fadd reassoc nsz arcp contract afn float %i.fya, %i.fwu ; 2 uses
  %.neg1151.i = fmul reassoc nsz arcp contract afn float %i.fxs, f0xBE1EB498
  %.neg1152.i = fmul reassoc nsz arcp contract afn float %i.fxz, f0x3F124433
  %i.fyc = fsub reassoc nsz arcp contract afn float %i.fwu, %.neg1152.i
  %i.fyd = fadd reassoc nsz arcp contract afn float %i.fyc, %.neg1151.i ; 2 uses
  %i.fye = fmul reassoc nsz arcp contract afn float %i.fxs, f0x3FE2D151
  %i.fyf = fadd reassoc nsz arcp contract afn float %i.fye, %i.fwu ; 2 uses
  %i.fyg = trunc nuw nsw i64 %indvars.iv1878.i to i32
  %i.fyh = add i32 %i.fok, %i.fyg
  %i.fyi = shl nsw i32 %i.fyh, 2
  %i.fyj = sext i32 %i.fyi to i64
end_hunk_1
