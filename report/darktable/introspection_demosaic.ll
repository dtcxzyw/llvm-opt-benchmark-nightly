Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
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
  br label %.loopexit1257.4.i

.loopexit1257.4.i:                                ; preds = %.preheader1256.4.i, %.loopexit1257.3.i
  %indvars.iv.next.i484 = add nuw nsw i64 %indvars.iv.i483, 1 ; 2 uses
  %exitcond.not.i485 = icmp eq i64 %indvars.iv.next.i484, 3
  br i1 %exitcond.not.i485, label %bb.iz, label %.preheader1258.i

.preheader1252.i.fold.split:                      ; preds = %bb.jn
  br label %.preheader1252.i

.preheader1252.i:                                 ; preds = %bb.jn, %.preheader1252.i.fold.split, %bb.jp, %bb.jo, %bb.jm, %.preheader1254.i
  %.010831277.lcssa.i = phi i32 [ 0, %.preheader1254.i ], [ 1, %bb.jm ], [ 2, %bb.jn ], [ 5, %bb.jp ], [ 4, %bb.jo ], [ 3, %.preheader1252.i.fold.split ] ; 2 uses
  %i.car = zext i16 %.31019.4.fr.i to i32         ; 4 uses
  %i.cas = trunc nuw nsw i32 %.010831277.lcssa.i to i16
  %.lhs.trunc2067.i = or disjoint i16 %i.cas, 600
  %i.cat = urem i16 %.lhs.trunc2067.i, 6
  %i.cau = zext nneg i16 %i.cat to i64
  %i.cav = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cau ; 6 uses
  %i.caw = urem i16 %.31019.4.fr.i, 3
  %.not1122.i = icmp eq i16 %i.caw, 0
  br i1 %.not1122.i, label %bb.ja, label %bb.jc

bb.ja:                                            ; preds = %.preheader1252.i
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cav, i64 1
  %i.cay = load i8, ptr %i.cax, align 1, !tbaa !169
  %i.caz = icmp eq i8 %i.cay, 0
  br i1 %i.caz, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.jl, %bb.jj, %bb.jh, %bb.jf, %bb.jd, %bb.ja
  %.010821278.lcssa.neg.i = phi i64 [ 24, %bb.ja ], [ 23, %bb.jd ], [ 22, %bb.jf ], [ 21, %bb.jh ], [ 20, %bb.jj ], [ 19, %bb.jl ]
  %i.cba = sub nuw nsw i32 24, %.010831277.lcssa.i
  %i.cbb = zext nneg i32 %i.cba to i64
  br label %.loopexit1253.i

bb.jc:                                            ; preds = %bb.ja, %.preheader1252.i
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
  %.cmp2074.i = icmp ult i16 %i.cbp, 3
  %i.cbq = select i1 %.cmp2074.i, i32 4, i32 1
  %.not1122.4.i = icmp eq i32 %i.cbq, %i.car
  br i1 %.not1122.4.i, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cav, i64 5
  %i.cbs = load i8, ptr %i.cbr, align 1, !tbaa !169
  %i.cbt = icmp eq i8 %i.cbs, 0
  br i1 %i.cbt, label %bb.jb, label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.cbu = add i16 %.31019.4.fr.i, -6
  %.cmp2077.inv.i = icmp ult i16 %i.cbu, -3
  %i.cbv = select i1 %.cmp2077.inv.i, i32 2, i32 5
  %.not1122.5.i = icmp eq i32 %i.cbv, %i.car
  br i1 %.not1122.5.i, label %bb.jl, label %.loopexit1253.i

bb.jl:                                            ; preds = %bb.jk
  %i.cbw = load i8, ptr %i.cav, align 1, !tbaa !169
  %i.cbx = icmp eq i8 %i.cbw, 0
  br i1 %i.cbx, label %bb.jb, label %.loopexit1253.i

bb.jm:                                            ; preds = %.preheader1254.i
  %.neg2124.i = add i16 %.31013.4.fr.i, -1
  %i.cby = urem i16 %.neg2124.i, 3
  %.not1121.1.i = icmp eq i16 %i.cby, 0
  br i1 %.not1121.1.i, label %.preheader1252.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  switch i16 %.31013.4.fr.i, label %bb.jo [
    i16 2, label %.preheader1252.i
    i16 3, label %.preheader1252.i.fold.split
  ]

bb.jo:                                            ; preds = %bb.jn
  %i.cbz = add i16 %.31013.4.fr.i, -2
  %.cmp2083.i = icmp ult i16 %i.cbz, 3
  %i.cca = select i1 %.cmp2083.i, i32 4, i32 1
  %.not1121.4.i = icmp eq i32 %i.cca, %i.btd
  br i1 %.not1121.4.i, label %.preheader1252.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ccb = add i16 %.31013.4.fr.i, -6
  %.cmp2086.inv.i = icmp ult i16 %i.ccb, -3
  %i.ccc = select i1 %.cmp2086.inv.i, i32 2, i32 5
  %.not1121.5.i = icmp eq i32 %i.ccc, %i.btd
  br i1 %.not1121.5.i, label %.preheader1252.i, label %.loopexit1253.i

.loopexit1253.i:                                  ; preds = %bb.jp, %bb.jl, %bb.jk, %bb.jb
  %.11087.i = phi i64 [ 0, %bb.jk ], [ %i.cbb, %bb.jb ], [ 0, %bb.jl ], [ 0, %bb.jp ]
  %.11085.i = phi i64 [ 0, %bb.jk ], [ %.010821278.lcssa.neg.i, %bb.jb ], [ 0, %bb.jl ], [ 0, %bb.jp ]
  %i.ccd = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.209) #27
  %i.cce = icmp slt i32 %i.ccd, %i.en             ; 2 uses
  %spec.select.i486 = select i1 %i.cce, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %spec.select1142.i = select i1 %i.cce, float 0.000000e+00, float 1.000000e+00 ; 3 uses
  %i.ccf = add nsw i32 %i.ayd, -13
  %i.ccg = icmp sgt i32 %i.ayd, 0
  br i1 %i.ccg, label %.lr.ph1495.i, label %._crit_edge1496.split.i

.lr.ph1495.i:                                     ; preds = %.loopexit1253.i
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
  br i1 %i.aqy, label %.lr.ph1491.preheader.i, label %._crit_edge1496.split.i

.lr.ph1491.preheader.i:                           ; preds = %.lr.ph1495.i
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
  %scevgep2035 = getelementptr i8, ptr %i.bsg, i64 1250308
  %scevgep2037.a = getelementptr i8, ptr %i.bsg, i64 1309792
  %scevgep2046.a = getelementptr i8, ptr %i.bsg, i64 1250304
  %scevgep2048.a = getelementptr i8, ptr %i.bsg, i64 1309796
  %scevgep2051.a = getelementptr i8, ptr %i.bsg, i64 1250308
  %scevgep2053.a = getelementptr i8, ptr %i.bsg, i64 1309792
  %scevgep2056.a = getelementptr i8, ptr %i.bsg, i64 19188
  %scevgep2057.a = getelementptr i8, ptr %i.bsg, i64 534360
  %scevgep2062 = getelementptr i8, ptr %i.bsg, i64 775567
  %scevgep2063 = getelementptr i8, ptr %i.bsg, i64 818498
  %broadcast.splatinsert2091 = insertelement <8 x float> poison, float %spec.select1142.i, i64 0
  %broadcast.splat2092 = shufflevector <8 x float> %broadcast.splatinsert2091, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2093 = insertelement <8 x float> poison, float %spec.select.i486, i64 0
  %broadcast.splat2094 = shufflevector <8 x float> %broadcast.splatinsert2093, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1491.i

._crit_edge1496.split.i:                          ; preds = %._crit_edge1492.i, %.lr.ph1495.i, %.loopexit1253.i
  tail call void @free(ptr noundef %i.bsg) #27
  br label %xtrans_fdc_interpolate.exit

.lr.ph1491.i:                                     ; preds = %._crit_edge1492.i, %.lr.ph1491.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1492.i ], [ 0, %.lr.ph1491.preheader.i ] ; 3 uses
  %indvars.iv1181.a = phi i32 [ %indvars.iv.next1182, %._crit_edge1492.i ], [ 5, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1711.i = phi i32 [ -96, %._crit_edge1492.i ], [ 0, %.lr.ph1491.preheader.i ]
  %indvars.iv1708.i = phi i32 [ %indvars.iv.next1709.i, %._crit_edge1492.i ], [ 109, %.lr.ph1491.preheader.i ] ; 3 uses
  %indvars.iv1641.i = phi i64 [ %indvars.iv.next1642.i, %._crit_edge1492.i ], [ -5, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1619.i = phi i64 [ %indvars.iv.next1620.i, %._crit_edge1492.i ], [ -7, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1591.i = phi i64 [ %indvars.iv.next1592.i, %._crit_edge1492.i ], [ -10, %.lr.ph1491.preheader.i ] ; 2 uses
  %indvars.iv1566.i = phi i64 [ %indvars.iv.next1567.i, %._crit_edge1492.i ], [ -13, %.lr.ph1491.preheader.i ] ; 15 uses
  %i.cdj = phi <4 x i32> [ %i.cfz, %._crit_edge1492.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1491.preheader.i ] ; 3 uses
  %6 = mul i32 %i.auy, %indvar
  %smin2058 = call i32 @llvm.smin.i32(i32 %indvars.iv1708.i, i32 %i.ccm)
  %7 = extractelement <4 x i32> %i.cdj, i64 3
  %i.cdk = add i32 %smin2058, %7
  %smax2059 = call i32 @llvm.smax.i32(i32 %i.cdk, i32 14)
  %i.cdl = zext nneg i32 %smax2059 to i64         ; 2 uses
  %i.cdm = mul nuw nsw i64 %i.cdl, 1464
  %i.cdn = mul nuw nsw i64 %i.cdl, 122
  %i.cdo = mul i32 %i.auw, %indvar
  %smin1220 = call i32 @llvm.smin.i32(i32 %indvars.iv1708.i, i32 %i.ccm) ; 6 uses
  %i.cdp = insertelement <4 x i32> poison, i32 %smin1220, i64 0
  %i.cdq = shufflevector <4 x i32> %i.cdp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdr = add <4 x i32> %i.cdq, %i.cdj
  %i.cds = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cdr, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.cdt = add i32 %smin1220, %indvars.iv1181.a
  %i.cdu = call i32 @llvm.smax.i32(i32 %i.cdt, i32 9)
  %smax1183 = zext nneg i32 %i.cdu to i64
  %i.cdv = add i32 %smin1220, -8
  %i.cdw = sext i32 %i.cdv to i64
  %i.cdx = add i32 %smin1220, -6
  %i.cdy = sext i32 %i.cdx to i64
  %i.cdz = add i32 %smin1220, -3
  %i.cea = sext i32 %i.cdz to i64
  %8 = add i32 %smin1220, %indvars.iv1711.i
  %i.ceb = tail call i32 @llvm.smax.i32(i32 %8, i32 14)
  %smax1743.i = zext nneg i32 %i.ceb to i64       ; 6 uses
  %i.cec = trunc i64 %indvars.iv1566.i to i32     ; 2 uses
  %i.ced = add i32 %i.cec, 122
  %i.cee = tail call i32 @llvm.smin.i32(i32 %i.ced, i32 %i.ccm) ; 6 uses
  %i.cef = icmp slt i64 %indvars.iv1566.i, %i.ccv
  %i.ceg = add nuw nsw i64 %indvars.iv1566.i, 3   ; 3 uses
  %i.ceh = add nsw i32 %i.cee, -3                 ; 2 uses
  %i.cei = sext i32 %i.ceh to i64
  %i.cej = icmp slt i64 %i.ceg, %i.cei
  %i.cek = add nsw i32 %i.cee, -4
  %i.cel = sub i64 %indvars.iv1566.i, %i.ccs
  %i.cem = trunc i64 %i.cel to i32
  %i.cen = add i32 %i.cem, 8                      ; 2 uses
  %i.ceo = srem i32 %i.cen, 3
  %i.cep = add i32 %i.cen, %i.btd
  %i.ceq = sub i32 %i.cep, %i.ceo                 ; 2 uses
  %i.cer = add nsw i32 %i.cee, -6                 ; 2 uses
  %i.ces = icmp slt i32 %i.ceq, %i.cer
  %i.cet = add nuw nsw i64 %indvars.iv1566.i, 6
  %i.ceu = sext i32 %i.cer to i64                 ; 2 uses
  %i.cev = icmp slt i64 %i.cet, %i.ceu
  %i.cew = add nuw nsw i64 %indvars.iv1566.i, 8
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
  %scevgep2060.a = getelementptr i8, ptr %scevgep2057.a, i64 %i.cdm
  %scevgep2064 = getelementptr i8, ptr %scevgep2063, i64 %i.cdn
  %i.cfm = add nsw i64 %smax1743.i, -13           ; 8 uses
  %i.cfn = add nsw i64 %smax1743.i, -14           ; 4 uses
  %i.cfo = extractelement <4 x i32> %i.cds, i64 2
  %i.cfp = zext nneg i32 %i.cfo to i64
  %i.cfq = extractelement <4 x i32> %i.cds, i64 1
  %i.cfr = zext nneg i32 %i.cfq to i64
  %xtraiter4791 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfs = icmp ult i64 %i.cfn, 7
  %unroll_iter4795 = and i64 %i.cfm, -8
  %lcmp.mod4793.not = icmp eq i64 %xtraiter4791, 0
  %lcmp.mod4794 = icmp ne i64 %xtraiter4791, 0
  %xtraiter4797 = and i64 %i.cfm, 7               ; 3 uses
  %i.cft = icmp ult i64 %i.cfn, 7
  %unroll_iter4801 = and i64 %i.cfm, -8
  %lcmp.mod4799.not = icmp eq i64 %xtraiter4797, 0
  %lcmp.mod4800 = icmp ne i64 %xtraiter4797, 0
  %xtraiter4803 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfu = icmp ult i64 %i.cfn, 7
  %unroll_iter4807 = and i64 %i.cfm, -8
  %lcmp.mod4805.not = icmp eq i64 %xtraiter4803, 0
  %lcmp.mod4806 = icmp ne i64 %xtraiter4803, 0
  %xtraiter4809 = and i64 %i.cfm, 7               ; 3 uses
  %i.cfv = icmp ult i64 %i.cfn, 7
  %unroll_iter4813 = and i64 %i.cfm, -8
  %lcmp.mod4811.not = icmp eq i64 %xtraiter4809, 0
  %lcmp.mod4812 = icmp ne i64 %xtraiter4809, 0
  %i.cfw = extractelement <4 x i32> %i.cds, i64 3
  %i.cfx = zext nneg i32 %i.cfw to i64
  br label %bb.jq

._crit_edge1492.i:                                ; preds = %._crit_edge1486.split.i
  %indvars.iv.next1567.i = add nsw i64 %indvars.iv1566.i, 96 ; 2 uses
  %i.cfy = icmp slt i64 %indvars.iv.next1567.i, %i.ccu
  %indvars.iv.next1592.i = add nsw i64 %indvars.iv1591.i, 96
  %indvars.iv.next1620.i = add nsw i64 %indvars.iv1619.i, 96
  %indvars.iv.next1642.i = add nsw i64 %indvars.iv1641.i, 96
  %indvars.iv.next1709.i = add nuw i32 %indvars.iv1708.i, 96
  %indvars.iv.next1182 = add i32 %indvars.iv1181.a, -96
  %i.cfz = add <4 x i32> %i.cdj, splat (i32 -96)
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cfy, label %.lr.ph1491.i, label %._crit_edge1496.split.i

bb.jq:                                            ; preds = %._crit_edge1486.split.i, %.lr.ph1491.i
  %indvar2027 = phi i32 [ %indvar.next2028, %._crit_edge1486.split.i ], [ 0, %.lr.ph1491.i ] ; 3 uses
  %indvars.iv1216 = phi i32 [ %indvars.iv.next1217, %._crit_edge1486.split.i ], [ 0, %.lr.ph1491.i ] ; 4 uses
  %indvars.iv1206 = phi i32 [ %indvars.iv.next1207, %._crit_edge1486.split.i ], [ 7, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1196 = phi i32 [ %indvars.iv.next1197, %._crit_edge1486.split.i ], [ 3, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1186 = phi i32 [ %indvars.iv.next1187, %._crit_edge1486.split.i ], [ 4, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1176 = phi i32 [ %indvars.iv.next1177, %._crit_edge1486.split.i ], [ 5, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1705.i = phi i32 [ -96, %._crit_edge1486.split.i ], [ 0, %.lr.ph1491.i ]
  %indvars.iv1703.i = phi i32 [ %indvars.iv.next1704.i, %._crit_edge1486.split.i ], [ 109, %.lr.ph1491.i ] ; 5 uses
  %indvars.iv1636.i = phi i64 [ %indvars.iv.next1637.i, %._crit_edge1486.split.i ], [ -5, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1614.i = phi i64 [ %indvars.iv.next1615.i, %._crit_edge1486.split.i ], [ -7, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1586.i = phi i64 [ %indvars.iv.next1587.i, %._crit_edge1486.split.i ], [ -10, %.lr.ph1491.i ] ; 2 uses
  %indvars.iv1561.i = phi i64 [ %indvars.iv.next1562.i, %._crit_edge1486.split.i ], [ -13, %.lr.ph1491.i ] ; 15 uses
  %smin4783 = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqz)
  %i.cga = add i32 %smin4783, %indvars.iv1176     ; 2 uses
  %smax4784 = call i32 @llvm.smax.i32(i32 %i.cga, i32 9) ; 2 uses
  %i.cgb = zext nneg i32 %smax4784 to i64         ; 2 uses
  %smin2038 = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqz)
  %i.cgc = add i32 %smin2038, %indvars.iv1216
  %i.cgd = call i32 @llvm.umax.i32(i32 %i.cgc, i32 14)
  %umax2039 = zext i32 %i.cgd to i64              ; 4 uses
  %i.cge = shl nuw nsw i64 %umax2039, 2           ; 3 uses
  %i.cgf = mul i32 %indvar2027, 384
  %i.cgg = add i32 %6, %i.cgf
  %i.cgh = shl nuw nsw i64 %umax2039, 4
  %i.cgi = mul nuw nsw i64 %umax2039, 12
  %scevgep2061.a = getelementptr i8, ptr %scevgep2060.a, i64 %i.cgi
  %scevgep2065 = getelementptr i8, ptr %scevgep2064, i64 %umax2039
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqz)
  %i.cgj = add i32 %smin, %indvars.iv1216
  %i.cgk = zext i32 %i.cgj to i64
  %i.cgl = call i64 @llvm.usub.sat.i64(i64 %i.cgk, i64 14) ; 2 uses
  %i.cgm = mul i32 %indvar2027, 384
  %i.cgn = add i32 %i.cdo, %i.cgm
  %smin1215 = call i32 @llvm.smin.i32(i32 %indvars.iv1703.i, i32 %i.aqz) ; 8 uses
  %i.cgo = add i32 %smin1215, %indvars.iv1216     ; 2 uses
  %i.cgp = call i32 @llvm.umax.i32(i32 %i.cgo, i32 14)
  %umax1218 = zext i32 %i.cgp to i64
  %i.cgq = add i32 %smin1215, %indvars.iv1206
  %i.cgr = call i32 @llvm.umax.i32(i32 %i.cgq, i32 7)
  %umax1208 = zext i32 %i.cgr to i64
  %i.cgs = add i32 %smin1215, %indvars.iv1196
  %i.cgt = call i32 @llvm.umax.i32(i32 %i.cgs, i32 11)
  %umax1198 = zext i32 %i.cgt to i64
  %i.cgu = add i32 %smin1215, %indvars.iv1186     ; 2 uses
  %i.cgv = call i32 @llvm.smax.i32(i32 %i.cgu, i32 10)
  %smax1188 = zext nneg i32 %i.cgv to i64
  %i.cgw = add i32 %smin1215, -8
  %i.cgx = sext i32 %i.cgw to i64
  %i.cgy = add i32 %smin1215, -6
  %i.cgz = sext i32 %i.cgy to i64
  %i.cha = add i32 %smin1215, -3
  %i.chb = sext i32 %i.cha to i64
  %9 = add i32 %smin1215, %indvars.iv1705.i
  %i.chc = tail call i32 @llvm.smax.i32(i32 %9, i32 10)
  %smax1737.i = zext nneg i32 %i.chc to i64       ; 4 uses
  %i.chd = trunc i64 %indvars.iv1561.i to i32     ; 3 uses
  %i.che = add i32 %i.chd, 122
  %i.chf = tail call i32 @llvm.smin.i32(i32 %i.che, i32 %i.aqz) ; 7 uses
  %i.chg = icmp slt i64 %indvars.iv1561.i, %i.arc
  %or.cond1498.i = and i1 %i.cef, %i.chg
  br i1 %or.cond1498.i, label %.preheader1246.preheader.i, label %.preheader1251.i

.preheader1246.preheader.i:                       ; preds = %bb.jq
  %i.chh = sext i32 %i.chf to i64
  br label %.preheader1246.i

.preheader1251.i:                                 ; preds = %._crit_edge.i492, %bb.jq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.ccw, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsg, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.ccx, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsg, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.ccy, ptr noundef nonnull align 64 dereferenceable(178608) %i.bsg, i64 178608, i1 false)
  br i1 %i.cej, label %.lr.ph1308.i, label %._crit_edge1326.split.i

.preheader1246.i:                                 ; preds = %._crit_edge.i492, %.preheader1246.preheader.i
  %indvars.iv1568.i = phi i64 [ %indvars.iv1566.i, %.preheader1246.preheader.i ], [ %indvars.iv.next1569.i, %._crit_edge.i492 ] ; 5 uses
  %i.chi = sub nsw i64 %indvars.iv1568.i, %indvars.iv1566.i ; 2 uses
  %i.chj = getelementptr inbounds [1464 x i8], ptr %i.bsg, i64 %i.chi
  %i.chk = icmp slt i64 %indvars.iv1568.i, %i.ccr ; 2 uses
  %i.chl = trunc i64 %indvars.iv1568.i to i32     ; 7 uses
  %i.chm = add i32 %i.chl, 600
  %i.chn = srem i32 %i.chm, 6
  %i.cho = sext i32 %i.chn to i64
  %i.chp = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cho
  %i.chq = sub i32 %i.cco, %i.chl                 ; 3 uses
  %i.chr = tail call i32 @llvm.abs.i32(i32 %i.chl, i1 true) ; 3 uses
  %invariant.gep1293.idx.i = mul nuw nsw i64 %i.chi, 488
  %invariant.gep1293.i = getelementptr i8, ptr %i.cck, i64 %invariant.gep1293.idx.i ; 2 uses
  %i.chs = mul nsw i64 %indvars.iv1568.i, %i.aow
  %i.cht = add i32 %i.chl, -1                     ; 3 uses
  %.1497.i = select i1 %i.chk, i32 %i.chr, i32 %i.chq ; 2 uses
  %i.chu = add nsw i32 %.1497.i, 600
  %i.chv = srem i32 %i.chu, 6
  %i.chw = sext i32 %i.chv to i64
  %i.chx = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chw
  %i.chy = mul nsw i32 %.1497.i, %i.bo
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

._crit_edge.i492:                                 ; preds = %.loopexit1239.i
  %indvars.iv.next1569.i = add nsw i64 %indvars.iv1568.i, 1 ; 2 uses
  %i.cji = icmp slt i64 %indvars.iv.next1569.i, %i.cfg
  br i1 %i.cji, label %.preheader1246.i, label %.preheader1251.i

bb.jr:                                            ; preds = %.loopexit1239.i, %.preheader1246.i
  %indvars.iv1563.i = phi i64 [ %indvars.iv1561.i, %.preheader1246.i ], [ %indvars.iv.next1564.i.pre-phi, %.loopexit1239.i ] ; 7 uses
  %i.cjj = sub nsw i64 %indvars.iv1563.i, %indvars.iv1561.i ; 3 uses
  %i.cjk = getelementptr inbounds [12 x i8], ptr %i.chj, i64 %i.cjj ; 7 uses
  %i.cjl = trunc i64 %indvars.iv1563.i to i32     ; 5 uses
  %i.cjm = or i32 %i.cjl, %i.chl
  %or.cond.i491 = icmp sgt i32 %i.cjm, -1
  %i.cjn = icmp slt i64 %indvars.iv1563.i, %i.aow ; 2 uses
  %or.cond1143.i = and i1 %i.cjn, %or.cond.i491
  %or.cond1144.i = and i1 %i.chk, %or.cond1143.i
  %i.cjo = add i32 %i.cjl, 600
  %i.cjp = srem i32 %i.cjo, 6
  %i.cjq = sext i32 %i.cjp to i64
  %i.cjr = getelementptr inbounds i8, ptr %i.chp, i64 %i.cjq
  %i.cjs = load i8, ptr %i.cjr, align 1, !tbaa !169 ; 23 uses
  br i1 %or.cond1144.i, label %bb.js, label %bb.jy

bb.js:                                            ; preds = %bb.jr
  %gep.i494 = getelementptr [4 x i8], ptr %invariant.gep.i490, i64 %indvars.iv1563.i ; 4 uses
  %i.cjt = icmp eq i8 %i.cjs, 0
  br i1 %i.cjt, label %.thread.i, label %bb.jt

.thread.i:                                        ; preds = %bb.js
  %i.cju = load float, ptr %gep.i494, align 4, !tbaa !22
  store float %i.cju, ptr %i.cjk, align 4, !tbaa !22
  br label %.thread2065.i

bb.jt:                                            ; preds = %bb.js
  store float 0.000000e+00, ptr %i.cjk, align 4, !tbaa !22
  %i.cjv = icmp eq i8 %i.cjs, 1
  br i1 %i.cjv, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.cjw = load float, ptr %gep.i494, align 4, !tbaa !22
  br label %.thread2065.i

.thread2065.i:                                    ; preds = %bb.ju, %.thread.i
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

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %.thread2065.i
  %i.ckb = phi reassoc nsz arcp contract afn float [ %i.cka, %bb.jw ], [ 0.000000e+00, %bb.jv ], [ 0.000000e+00, %.thread2065.i ]
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cjk, i64 8
  store float %i.ckb, ptr %i.ckc, align 4, !tbaa !22
  %i.ckd = load float, ptr %gep.i494, align 4, !tbaa !22
  %i.cke = getelementptr inbounds [4 x i8], ptr %invariant.gep1293.i, i64 %i.cjj
  store float %i.ckd, ptr %i.cke, align 4, !tbaa !22
  %.pre1242 = add nsw i64 %indvars.iv1563.i, 1
  br label %.loopexit1239.i

bb.jy:                                            ; preds = %bb.jr
  %i.ckf = sub i32 %i.ath, %i.cjl
  %i.ckg = tail call i32 @llvm.abs.i32(i32 %i.cjl, i1 true)
  %i.ckh = zext i8 %i.cjs to i64                  ; 2 uses
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.cjk, i64 %i.ckh ; 2 uses
  %gep1294.i = getelementptr [4 x i8], ptr %invariant.gep1293.i, i64 %i.cjj ; 2 uses
  %i.ckj = select i1 %i.cjn, i32 %i.ckg, i32 %i.ckf ; 8 uses
  %i.ckk = add nsw i32 %i.ckj, 600
  %i.ckl = srem i32 %i.ckk, 6
  %i.ckm = sext i32 %i.ckl to i64                 ; 7 uses
  %i.ckn = getelementptr inbounds i8, ptr %i.chx, i64 %i.ckm
  %.not1141.not.i = icmp sgt i64 %indvars.iv1563.i, %i.aow
  %i.cko = add i32 %i.cjl, -1                     ; 2 uses
  %i.ckp = tail call i32 @llvm.abs.i32(i32 %i.cko, i1 true)
  %i.ckq = sub i32 %i.ath, %i.cko
  %i.ckr = add nsw i64 %indvars.iv1563.i, 1       ; 3 uses
  %.not1141.2.i = icmp slt i64 %i.ckr, %i.aow
  %i.cks = trunc nsw i64 %i.ckr to i32            ; 2 uses
  %i.ckt = sub i32 %i.ath, %i.cks
  %i.cku = tail call i32 @llvm.abs.i32(i32 %i.cks, i1 true)
  %i.ckv = add nsw i32 %i.ckj, %i.chy
  %i.ckw = sext i32 %i.ckv to i64
  %i.ckx = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.ckw
  %.2102.i = select i1 %.not1141.not.i, i32 %i.ckq, i32 %i.ckp ; 7 uses
  %i.cky = add nsw i32 %.2102.i, 600
  %i.ckz = srem i32 %i.cky, 6
  %i.cla = sext i32 %i.ckz to i64                 ; 6 uses
  %.2106.i = select i1 %.not1141.2.i, i32 %i.cku, i32 %i.ckt ; 4 uses
  %i.clb = add nsw i32 %.2106.i, 600
  %i.clc = srem i32 %i.clb, 6
  %i.cld = sext i32 %i.clc to i64                 ; 6 uses
  %i.cle = getelementptr inbounds i8, ptr %i.cid, i64 %i.cla
  %i.clf = add nsw i32 %i.cie, %.2102.i
  %i.clg = sext i32 %i.clf to i64
  %i.clh = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clg
  %i.cli = getelementptr inbounds i8, ptr %i.cid, i64 %i.ckm
  %i.clj = add nsw i32 %i.cie, %i.ckj
  %i.clk = sext i32 %i.clj to i64
  %i.cll = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clk
  %i.clm = getelementptr inbounds i8, ptr %i.cid, i64 %i.cld
  %i.cln = getelementptr inbounds i8, ptr %i.cij, i64 %i.cla
  %i.clo = add nsw i32 %i.cik, %.2102.i
  %i.clp = sext i32 %i.clo to i64
  %i.clq = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clp
  %i.clr = getelementptr inbounds i8, ptr %i.cij, i64 %i.ckm
  %i.cls = add nsw i32 %i.cik, %i.ckj
  %i.clt = sext i32 %i.cls to i64
  %i.clu = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.clt
  %i.clv = getelementptr inbounds i8, ptr %i.cij, i64 %i.cld
  %i.clw = getelementptr inbounds i8, ptr %i.cio, i64 %i.cla
  %i.clx = add nsw i32 %i.cip, %.2102.i
  %i.cly = sext i32 %i.clx to i64
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.fps = zext <8 x i8> %wide.load2100 to <8 x i32> ; 2 uses
  %i.fpt = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fpq, <8 x i32> %i.fps)
  %i.fpu = getelementptr inbounds nuw i8, ptr %i.fpp, i64 29768
  %wide.load2101 = load <8 x i8>, ptr %i.fpu, align 1, !tbaa !169, !alias.scope !223, !noalias !226
  %i.fpv = zext <8 x i8> %wide.load2101 to <8 x i32> ; 2 uses
  %i.fpw = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fpt, <8 x i32> %i.fpv)
  %i.fpx = getelementptr inbounds nuw i8, ptr %i.fpp, i64 44652
  %wide.load2102 = load <8 x i8>, ptr %i.fpx, align 1, !tbaa !169, !alias.scope !223, !noalias !226
  %i.fpy = zext <8 x i8> %wide.load2102 to <8 x i32> ; 2 uses
  %i.fpz = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.fpw, <8 x i32> %i.fpy) ; 2 uses
  %i.fqa = lshr <8 x i32> %i.fpz, splat (i32 3)
  %i.fqb = sub nsw <8 x i32> %i.fpz, %i.fqa
  %i.fqc = and <8 x i32> %i.fqb, splat (i32 255)  ; 4 uses
  %wide.gep2103.a = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1475.i, <8 x i64> %vec.ind2097 ; 12 uses
  %i.fqd = icmp samesign ule <8 x i32> %i.fqc, %i.fpq ; 4 uses
  %wide.masked.gather2104.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2103.a, <8 x i1> %i.fqd, <8 x float> zeroinitializer), !tbaa !22, !alias.scope !228, !noalias !226 ; 2 uses
  %wide.gep2105 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 4
  %wide.masked.gather2106 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2105, <8 x i1> %i.fqd, <8 x float> zeroinitializer), !tbaa !22, !alias.scope !228, !noalias !226 ; 2 uses
  %wide.gep2107 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 8
  %wide.masked.gather2108 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2107, <8 x i1> %i.fqd, <8 x float> zeroinitializer), !tbaa !22, !alias.scope !228, !noalias !226 ; 2 uses
  %predphi2112 = select nsz <8 x i1> %i.fqd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer ; 2 uses
  %i.fqe = icmp samesign ule <8 x i32> %i.fqc, %i.fps ; 7 uses
  %wide.gep2113.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 178608
  %wide.masked.gather2114.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2113.a, <8 x i1> %i.fqe, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqf = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2114.a, %wide.masked.gather2104.a
  %wide.gep2115 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 178612
  %wide.masked.gather2116 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2115, <8 x i1> %i.fqe, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqg = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2116, %wide.masked.gather2106
  %wide.gep2117 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 178616
  %wide.masked.gather2118 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2117, <8 x i1> %i.fqe, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqh = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2118, %wide.masked.gather2108
  %i.fqi = fadd reassoc nsz arcp contract afn <8 x float> %predphi2112, splat (float 1.000000e+00)
  %predphi2119 = select nsz <8 x i1> %i.fqe, <8 x float> %i.fqf, <8 x float> %wide.masked.gather2104.a ; 2 uses
  %predphi2120 = select nsz <8 x i1> %i.fqe, <8 x float> %i.fqg, <8 x float> %wide.masked.gather2106 ; 2 uses
  %predphi2121 = select nsz <8 x i1> %i.fqe, <8 x float> %i.fqh, <8 x float> %wide.masked.gather2108 ; 2 uses
  %predphi2122 = select nsz <8 x i1> %i.fqe, <8 x float> %i.fqi, <8 x float> %predphi2112 ; 2 uses
  %i.fqj = icmp samesign ule <8 x i32> %i.fqc, %i.fpv ; 7 uses
  %wide.gep2123.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 357216
  %wide.masked.gather2124.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2123.a, <8 x i1> %i.fqj, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2124.a, %predphi2119
  %wide.gep2125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 357220
  %wide.masked.gather2126 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2125, <8 x i1> %i.fqj, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fql = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2126, %predphi2120
  %wide.gep2127 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 357224
  %wide.masked.gather2128 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2127, <8 x i1> %i.fqj, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2128, %predphi2121
  %i.fqn = fadd reassoc nsz arcp contract afn <8 x float> %predphi2122, splat (float 1.000000e+00)
  %predphi2129 = select nsz <8 x i1> %i.fqj, <8 x float> %i.fqk, <8 x float> %predphi2119 ; 2 uses
  %predphi2130 = select nsz <8 x i1> %i.fqj, <8 x float> %i.fql, <8 x float> %predphi2120 ; 2 uses
  %predphi2131 = select nsz <8 x i1> %i.fqj, <8 x float> %i.fqm, <8 x float> %predphi2121 ; 2 uses
  %predphi2132 = select nsz <8 x i1> %i.fqj, <8 x float> %i.fqn, <8 x float> %predphi2122 ; 2 uses
  %i.fqo = icmp samesign ule <8 x i32> %i.fqc, %i.fpy ; 7 uses
  %wide.gep2133.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 535824
  %wide.masked.gather2134.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2133.a, <8 x i1> %i.fqo, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqp = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2134.a, %predphi2129
  %wide.gep2135 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 535828
  %wide.masked.gather2136 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2135, <8 x i1> %i.fqo, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqq = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2136, %predphi2130
  %wide.gep2137 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep2103.a, i64 535832
  %wide.masked.gather2138 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2137, <8 x i1> %i.fqo, <8 x float> poison), !tbaa !22, !alias.scope !228, !noalias !226
  %i.fqr = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2138, %predphi2131
  %i.fqs = fadd reassoc nsz arcp contract afn <8 x float> %predphi2132, splat (float 1.000000e+00)
  %predphi2139 = select nsz <8 x i1> %i.fqo, <8 x float> %i.fqp, <8 x float> %predphi2129
  %predphi2140 = select nsz <8 x i1> %i.fqo, <8 x float> %i.fqq, <8 x float> %predphi2130
  %predphi2141 = select nsz <8 x i1> %i.fqo, <8 x float> %i.fqr, <8 x float> %predphi2131
  %predphi2142 = select nsz <8 x i1> %i.fqo, <8 x float> %i.fqs, <8 x float> %predphi2132 ; 3 uses
  %i.fqt = fdiv reassoc nsz arcp contract afn <8 x float> %predphi2139, %predphi2142 ; 2 uses
  %i.fqu = fdiv reassoc nsz arcp contract afn <8 x float> %predphi2141, %predphi2142 ; 2 uses
  %i.fqv = getelementptr inbounds nuw [4 x i8], ptr %i.fpd, i64 %i.fpo
  %wide.load2143.a = load <8 x float>, ptr %i.fqv, align 4, !alias.scope !230, !noalias !226 ; 3 uses
  %i.fqw = getelementptr [4 x i8], ptr %i.fpe, i64 %i.fpo ; 3 uses
  %i.fqx = getelementptr i8, ptr %i.fqw, i64 -4
  %wide.load2144.a = load <8 x float>, ptr %i.fqx, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %wide.load2145.a = load <8 x float>, ptr %i.fqw, align 4, !alias.scope !232, !noalias !226 ; 3 uses
  %i.fqy = getelementptr i8, ptr %i.fqw, i64 4
  %wide.load2146.a = load <8 x float>, ptr %i.fqy, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %i.fqz = getelementptr inbounds nuw [4 x i8], ptr %i.fpf, i64 %i.fpo
  %wide.load2147.a = load <8 x float>, ptr %i.fqz, align 4, !alias.scope !234, !noalias !226 ; 3 uses
  %i.fra = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2143.a, %wide.load2144.a ; 2 uses
  %i.frb = select nsz <8 x i1> %i.fra, <8 x float> %wide.load2143.a, <8 x float> %wide.load2144.a ; 2 uses
  %i.frc = select nsz <8 x i1> %i.fra, <8 x float> %wide.load2144.a, <8 x float> %wide.load2143.a ; 2 uses
  %i.frd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2146.a, %wide.load2147.a ; 2 uses
  %i.fre = select nsz <8 x i1> %i.frd, <8 x float> %wide.load2146.a, <8 x float> %wide.load2147.a ; 2 uses
  %i.frf = select nsz <8 x i1> %i.frd, <8 x float> %wide.load2147.a, <8 x float> %wide.load2146.a ; 2 uses
  %i.frg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frc, %i.frf
  %i.frh = select nsz <8 x i1> %i.frg, <8 x float> %i.frc, <8 x float> %i.frf ; 2 uses
  %i.fri = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frb, %i.fre
  %i.frj = select nsz <8 x i1> %i.fri, <8 x float> %i.fre, <8 x float> %i.frb ; 3 uses
  %i.frk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frj, %wide.load2145.a ; 2 uses
  %i.frl = select nsz <8 x i1> %i.frk, <8 x float> %i.frj, <8 x float> %wide.load2145.a ; 2 uses
  %i.frm = select nsz <8 x i1> %i.frk, <8 x float> %wide.load2145.a, <8 x float> %i.frj ; 2 uses
  %i.frn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frl, %i.frh
  %i.fro = select nsz <8 x i1> %i.frn, <8 x float> %i.frh, <8 x float> %i.frl ; 2 uses
  %i.frp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frm, %i.fro
  %i.frq = select nsz <8 x i1> %i.frp, <8 x float> %i.frm, <8 x float> %i.fro ; 5 uses
  %i.frr = getelementptr inbounds nuw [4 x i8], ptr %i.fpg, i64 %i.fpo
  %wide.load2148.a = load <8 x float>, ptr %i.frr, align 4, !alias.scope !230, !noalias !226 ; 3 uses
  %i.frs = getelementptr [4 x i8], ptr %i.fph, i64 %i.fpo ; 3 uses
  %i.frt = getelementptr i8, ptr %i.frs, i64 -4
  %wide.load2149 = load <8 x float>, ptr %i.frt, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %wide.load2150 = load <8 x float>, ptr %i.frs, align 4, !alias.scope !232, !noalias !226 ; 3 uses
  %i.fru = getelementptr i8, ptr %i.frs, i64 4
  %wide.load2151 = load <8 x float>, ptr %i.fru, align 8, !alias.scope !232, !noalias !226 ; 3 uses
  %i.frv = getelementptr inbounds nuw [4 x i8], ptr %i.fpi, i64 %i.fpo
  %wide.load2152 = load <8 x float>, ptr %i.frv, align 4, !alias.scope !234, !noalias !226 ; 3 uses
  %i.frw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2148.a, %wide.load2149 ; 2 uses
  %i.frx = select nsz <8 x i1> %i.frw, <8 x float> %wide.load2148.a, <8 x float> %wide.load2149 ; 2 uses
  %i.fry = select nsz <8 x i1> %i.frw, <8 x float> %wide.load2149, <8 x float> %wide.load2148.a ; 2 uses
  %i.frz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load2151, %wide.load2152 ; 2 uses
  %i.fsa = select nsz <8 x i1> %i.frz, <8 x float> %wide.load2151, <8 x float> %wide.load2152 ; 2 uses
  %i.fsb = select nsz <8 x i1> %i.frz, <8 x float> %wide.load2152, <8 x float> %wide.load2151 ; 2 uses
  %i.fsc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fry, %i.fsb
  %i.fsd = select nsz <8 x i1> %i.fsc, <8 x float> %i.fry, <8 x float> %i.fsb ; 2 uses
  %i.fse = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.frx, %i.fsa
  %i.fsf = select nsz <8 x i1> %i.fse, <8 x float> %i.fsa, <8 x float> %i.frx ; 3 uses
  %i.fsg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fsf, %wide.load2150 ; 2 uses
  %i.fsh = select nsz <8 x i1> %i.fsg, <8 x float> %i.fsf, <8 x float> %wide.load2150 ; 2 uses
  %i.fsi = select nsz <8 x i1> %i.fsg, <8 x float> %wide.load2150, <8 x float> %i.fsf ; 2 uses
  %i.fsj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fsh, %i.fsd
  %i.fsk = select nsz <8 x i1> %i.fsj, <8 x float> %i.fsd, <8 x float> %i.fsh ; 2 uses
  %i.fsl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fsi, %i.fsk
  %i.fsm = select nsz <8 x i1> %i.fsl, <8 x float> %i.fsi, <8 x float> %i.fsk ; 5 uses
  %i.fsn = fmul reassoc nsz arcp contract afn <8 x float> %i.fqt, splat (float 2.627000e-01)
  %i.fso = fmul reassoc nsz arcp contract afn <8 x float> %predphi2140, splat (float f0x3F2D9168)
  %i.fsp = fdiv reassoc nsz arcp contract afn <8 x float> %i.fso, %predphi2142
  %i.fsq = fadd reassoc nsz arcp contract afn <8 x float> %i.fsp, %i.fsn
  %i.fsr = fmul reassoc nsz arcp contract afn <8 x float> %i.fqu, splat (float 5.930000e-02)
  %i.fss = fadd reassoc nsz arcp contract afn <8 x float> %i.fsq, %i.fsr ; 5 uses
  %i.fst = fsub reassoc nsz arcp contract afn <8 x float> %i.fqu, %i.fss
  %i.fsu = fmul reassoc nsz arcp contract afn <8 x float> %i.fst, splat (float 5.643300e-01) ; 2 uses
  %i.fsv = fsub reassoc nsz arcp contract afn <8 x float> %i.fqt, %i.fss
  %i.fsw = fmul reassoc nsz arcp contract afn <8 x float> %i.fsv, splat (float f0x3F2D9B3D) ; 4 uses
  %i.fsx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.frq, zeroinitializer
  %i.fsy = fneg reassoc nsz arcp contract afn <8 x float> %i.frq
  %i.fsz = select reassoc nsz arcp contract afn <8 x i1> %i.fsx, <8 x float> %i.fsy, <8 x float> %i.frq ; 2 uses
  %i.fta = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fsu)
  %i.ftb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsz, %i.fta
  %i.ftc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsm, zeroinitializer
  %i.ftd = fneg reassoc nsz arcp contract afn <8 x float> %i.fsm
  %i.fte = select reassoc nsz arcp contract afn <8 x i1> %i.ftc, <8 x float> %i.ftd, <8 x float> %i.fsm ; 2 uses
  %i.ftf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsw, zeroinitializer
  %i.ftg = fneg reassoc nsz arcp contract afn <8 x float> %i.fsw
  %i.fth = select reassoc nsz arcp contract afn <8 x i1> %i.ftf, <8 x float> %i.ftg, <8 x float> %i.fsw ; 2 uses
  %i.fti = fmul reassoc nsz arcp contract afn <8 x float> %i.fth, splat (float 1.020000e+00) ; 2 uses
  %i.ftj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fte, %i.fti
  %i.ftk = and <8 x i1> %i.ftb, %i.ftj
  %i.ftl = select reassoc nsz arcp contract afn <8 x i1> %i.ftk, <8 x float> %i.frq, <8 x float> %i.fsu
  %i.ftm = fmul reassoc nsz arcp contract afn <8 x float> %i.ftl, %broadcast.splat2092
  %i.ftn = fmul reassoc nsz arcp contract afn <8 x float> %i.frq, %broadcast.splat2094
  %i.fto = fadd reassoc nsz arcp contract afn <8 x float> %i.ftm, %i.ftn ; 2 uses
  %i.ftp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fte, %i.fth
  %i.ftq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fsz, %i.fti
  %i.ftr = and <8 x i1> %i.ftq, %i.ftp
  %i.fts = select reassoc nsz arcp contract afn <8 x i1> %i.ftr, <8 x float> %i.fsm, <8 x float> %i.fsw
  %i.ftt = fmul reassoc nsz arcp contract afn <8 x float> %i.fts, %broadcast.splat2092
  %i.ftu = fmul reassoc nsz arcp contract afn <8 x float> %i.fsm, %broadcast.splat2094
  %i.ftv = fadd reassoc nsz arcp contract afn <8 x float> %i.ftt, %i.ftu ; 2 uses
  %i.ftw = fmul reassoc nsz arcp contract afn <8 x float> %i.ftv, splat (float 1.474600e+00)
  %i.ftx = fadd reassoc nsz arcp contract afn <8 x float> %i.ftw, %i.fss ; 2 uses
  %i.fty = fmul reassoc nsz arcp contract afn <8 x float> %i.fto, splat (float f0xBE1EB498)
  %i.ftz = fmul reassoc nsz arcp contract afn <8 x float> %i.ftv, splat (float f0x3F124433)
  %i.fua = fsub reassoc nsz arcp contract afn <8 x float> %i.fss, %i.ftz
  %i.fub = fadd reassoc nsz arcp contract afn <8 x float> %i.fua, %i.fty ; 2 uses
  %i.fuc = fmul reassoc nsz arcp contract afn <8 x float> %i.fto, splat (float f0x3FE2D151)
  %i.fud = fadd reassoc nsz arcp contract afn <8 x float> %i.fuc, %i.fss ; 2 uses
  %i.fue = add <8 x i32> %broadcast.splat2090, %vec.ind2098
  %i.fuf = shl nsw <8 x i32> %i.fue, splat (i32 2)
  %i.fug = sext <8 x i32> %i.fuf to <8 x i64>
  %i.fuh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ftx, zeroinitializer
  %i.fui = select reassoc nsz arcp contract afn <8 x i1> %i.fuh, <8 x float> zeroinitializer, <8 x float> %i.ftx
  %wide.gep2153 = getelementptr inbounds [4 x i8], ptr %i.aop, <8 x i64> %i.fug ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fui, <8 x ptr> align 4 %wide.gep2153, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !226
  %i.fuj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fub, zeroinitializer
  %i.fuk = select reassoc nsz arcp contract afn <8 x i1> %i.fuj, <8 x float> zeroinitializer, <8 x float> %i.fub
  %wide.gep2154 = getelementptr i8, <8 x ptr> %wide.gep2153, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fuk, <8 x ptr> align 4 %wide.gep2154, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !226
  %i.ful = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fud, zeroinitializer
  %i.fum = select reassoc nsz arcp contract afn <8 x i1> %i.ful, <8 x float> zeroinitializer, <8 x float> %i.fud
  %wide.gep2155 = getelementptr i8, <8 x ptr> %wide.gep2153, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fum, <8 x ptr> align 4 %wide.gep2155, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !226
  %index.next2156 = add nuw i64 %index2096, 8     ; 2 uses
  %vec.ind.next2157 = add nuw nsw <8 x i64> %vec.ind2097, splat (i64 8)
  %vec.ind.next2158 = add <8 x i32> %vec.ind2098, splat (i32 8)
  %i.fun = icmp eq i64 %index.next2156, %n.vec2088
  br i1 %i.fun, label %middle.block2159, label %vector.body2095, !llvm.loop !236

middle.block2159:                                 ; preds = %vector.body2095
  br i1 %cmp.n2160, label %._crit_edge1484.i, label %scalar.ph2085.preheader

scalar.ph2085.preheader:                          ; preds = %vector.memcheck2034, %vector.scevcheck2026, %.preheader1240.i, %middle.block2159
  %indvars.iv1865.i.ph = phi i64 [ 13, %vector.memcheck2034 ], [ 13, %vector.scevcheck2026 ], [ 13, %.preheader1240.i ], [ %i.ern, %middle.block2159 ]
  br label %scalar.ph2085

._crit_edge1486.split.i:                          ; preds = %._crit_edge1484.i, %.preheader1241.lr.ph.i, %.preheader1247.i, %.preheader1248.split.i
  %indvars.iv.next1562.i = add nsw i64 %indvars.iv1561.i, 96 ; 2 uses
  %i.fuo = icmp slt i64 %indvars.iv.next1562.i, %i.arb
  %indvars.iv.next1587.i = add nsw i64 %indvars.iv1586.i, 96
  %indvars.iv.next1615.i = add nsw i64 %indvars.iv1614.i, 96
  %indvars.iv.next1637.i = add nsw i64 %indvars.iv1636.i, 96
  %indvars.iv.next1704.i = add nuw i32 %indvars.iv1703.i, 96
  %indvars.iv.next1177 = add i32 %indvars.iv1176, -96
  %indvars.iv.next1187 = add i32 %indvars.iv1186, -96
  %indvars.iv.next1197 = add i32 %indvars.iv1196, -96
  %indvars.iv.next1207 = add i32 %indvars.iv1206, -96
  %indvars.iv.next1217 = add i32 %indvars.iv1216, -96
  %indvar.next2028 = add i32 %indvar2027, 1
  br i1 %i.fuo, label %bb.jq, label %._crit_edge1492.i

._crit_edge1484.i:                                ; preds = %bb.me, %middle.block2159
  %indvars.iv.next1869.i = add nuw nsw i64 %indvars.iv1868.i, 1 ; 2 uses
  %exitcond1224.not.a = icmp eq i64 %indvars.iv.next1869.i, %i.cfx
  %indvar.next2030 = add i32 %indvar2029, 1
  br i1 %exitcond1224.not.a, label %._crit_edge1486.split.i, label %.preheader1240.i

scalar.ph2085:                                    ; preds = %scalar.ph2085.preheader, %bb.me
  %indvars.iv1865.i = phi i64 [ %indvars.iv.next1866.i, %bb.me ], [ %indvars.iv1865.i.ph, %scalar.ph2085.preheader ] ; 10 uses
  %invariant.gep1469.i = getelementptr inbounds nuw i8, ptr %invariant.gep1467.i, i64 %indvars.iv1865.i ; 4 uses
  %i.fup = load i8, ptr %invariant.gep1469.i, align 1, !tbaa !169
  %i.fuq = zext i8 %i.fup to i32                  ; 2 uses
  %gep1470.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1469.i, i64 14884
  %i.fur = load i8, ptr %gep1470.1.i, align 1, !tbaa !169
  %i.fus = zext i8 %i.fur to i32                  ; 2 uses
  %..0968.1.i = tail call i32 @llvm.umax.i32(i32 %i.fuq, i32 %i.fus)
  %gep1470.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1469.i, i64 29768
  %i.fut = load i8, ptr %gep1470.2.i, align 1, !tbaa !169
  %i.fuu = zext i8 %i.fut to i32                  ; 2 uses
  %..0968.2.i = tail call i32 @llvm.umax.i32(i32 %..0968.1.i, i32 %i.fuu)
  %gep1470.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1469.i, i64 44652
  %i.fuv = load i8, ptr %gep1470.3.i, align 1, !tbaa !169
  %i.fuw = zext i8 %i.fuv to i32                  ; 2 uses
  %..0968.3.i = tail call i32 @llvm.umax.i32(i32 %..0968.2.i, i32 %i.fuw) ; 2 uses
  %i.fux = lshr i32 %..0968.3.i, 3
  %i.fuy = sub nsw i32 %..0968.3.i, %i.fux
  %i.fuz = and i32 %i.fuy, 255                    ; 4 uses
  %invariant.gep1477.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1475.i, i64 %indvars.iv1865.i ; 8 uses
  %.not1124.i = icmp samesign ugt i32 %i.fuz, %i.fuq
  br i1 %.not1124.i, label %bb.mb, label %.preheader1218.i

.preheader1218.i:                                 ; preds = %scalar.ph2085
  %i.fva = load <2 x float>, ptr %invariant.gep1477.i, align 4, !tbaa !22
  %i.fvb = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 8
  %i.fvc = load float, ptr %i.fvb, align 4, !tbaa !22
  %i.fvd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fvc, i64 2
  %i.fve = shufflevector <2 x float> %i.fva, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvf = shufflevector <4 x float> %i.fve, <4 x float> %i.fvd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.mb

bb.mb:                                            ; preds = %.preheader1218.i, %scalar.ph2085
  %i.fvg = phi <4 x float> [ zeroinitializer, %scalar.ph2085 ], [ %i.fvf, %.preheader1218.i ] ; 2 uses
  %.not1124.1.i = icmp samesign ugt i32 %i.fuz, %i.fus
  br i1 %.not1124.1.i, label %bb.mc, label %.preheader1218.1.i

.preheader1218.1.i:                               ; preds = %bb.mb
  %gep1478.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 178608
  %i.fvh = load <2 x float>, ptr %gep1478.1.i, align 4, !tbaa !22
  %i.fvi = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 178616
  %i.fvj = load float, ptr %i.fvi, align 4, !tbaa !22
  %i.fvk = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fvj, i64 2
  %i.fvl = shufflevector <2 x float> %i.fvh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvm = shufflevector <4 x float> %i.fvl, <4 x float> %i.fvk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fvn = fadd reassoc nsz arcp contract afn <4 x float> %i.fvg, %i.fvm
  br label %bb.mc

bb.mc:                                            ; preds = %.preheader1218.1.i, %bb.mb
  %i.fvo = phi <4 x float> [ %i.fvg, %bb.mb ], [ %i.fvn, %.preheader1218.1.i ] ; 2 uses
  %.not1124.2.i = icmp samesign ugt i32 %i.fuz, %i.fuu
  br i1 %.not1124.2.i, label %bb.md, label %.preheader1218.2.i

.preheader1218.2.i:                               ; preds = %bb.mc
  %gep1478.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 357216
  %i.fvp = load <2 x float>, ptr %gep1478.2.i, align 4, !tbaa !22
  %i.fvq = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 357224
  %i.fvr = load float, ptr %i.fvq, align 4, !tbaa !22
  %i.fvs = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fvr, i64 2
  %i.fvt = shufflevector <2 x float> %i.fvp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvu = shufflevector <4 x float> %i.fvt, <4 x float> %i.fvs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fvv = fadd reassoc nsz arcp contract afn <4 x float> %i.fvo, %i.fvu
  br label %bb.md

bb.md:                                            ; preds = %.preheader1218.2.i, %bb.mc
  %i.fvw = phi <4 x float> [ %i.fvo, %bb.mc ], [ %i.fvv, %.preheader1218.2.i ] ; 2 uses
  %.not1124.3.i = icmp samesign ugt i32 %i.fuz, %i.fuw
  br i1 %.not1124.3.i, label %bb.me, label %.preheader1218.3.i

.preheader1218.3.i:                               ; preds = %bb.md
  %gep1478.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 535824
  %i.fvx = load <2 x float>, ptr %gep1478.3.i, align 4, !tbaa !22
  %i.fvy = getelementptr inbounds nuw i8, ptr %invariant.gep1477.i, i64 535832
  %i.fvz = load float, ptr %i.fvy, align 4, !tbaa !22
  %i.fwa = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fvz, i64 2
  %i.fwb = shufflevector <2 x float> %i.fvx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fwc = shufflevector <4 x float> %i.fwb, <4 x float> %i.fwa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fwd = fadd reassoc nsz arcp contract afn <4 x float> %i.fvw, %i.fwc
  br label %bb.me

bb.me:                                            ; preds = %.preheader1218.3.i, %bb.md
  %i.fwe = phi <4 x float> [ %i.fvw, %bb.md ], [ %i.fwd, %.preheader1218.3.i ] ; 4 uses
  %i.fwf = extractelement <4 x float> %i.fwe, i64 3
  %i.fwg = getelementptr inbounds nuw [4 x i8], ptr %i.fpd, i64 %indvars.iv1865.i
  %.sroa.014.0.copyload.i = load float, ptr %i.fwg, align 4 ; 3 uses
  %i.fwh = getelementptr [4 x i8], ptr %i.fpe, i64 %indvars.iv1865.i ; 3 uses
  %i.fwi = getelementptr i8, ptr %i.fwh, i64 -4
  %.sroa.9.4.copyload.i = load float, ptr %i.fwi, align 4 ; 3 uses
  %.sroa.22.4.copyload.i = load float, ptr %i.fwh, align 4 ; 3 uses
  %.sroa.32.4..sroa_idx.i = getelementptr i8, ptr %i.fwh, i64 4
  %.sroa.32.4.copyload.i = load float, ptr %.sroa.32.4..sroa_idx.i, align 4 ; 3 uses
  %i.fwj = getelementptr inbounds nuw [4 x i8], ptr %i.fpf, i64 %indvars.iv1865.i
  %.sroa.41.16.copyload.i = load float, ptr %i.fwj, align 4 ; 3 uses
  %i.fwk = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.copyload.i, %.sroa.9.4.copyload.i ; 2 uses
  %.sroa.9.0.i = select nsz i1 %i.fwk, float %.sroa.014.0.copyload.i, float %.sroa.9.4.copyload.i ; 2 uses
  %.sroa.014.0.i = select nsz i1 %i.fwk, float %.sroa.9.4.copyload.i, float %.sroa.014.0.copyload.i ; 2 uses
  %i.fwl = fcmp reassoc nsz arcp contract afn ogt float %.sroa.32.4.copyload.i, %.sroa.41.16.copyload.i ; 2 uses
  %.sroa.41.0.i = select nsz i1 %i.fwl, float %.sroa.32.4.copyload.i, float %.sroa.41.16.copyload.i ; 2 uses
  %.sroa.32.0.i = select nsz i1 %i.fwl, float %.sroa.41.16.copyload.i, float %.sroa.32.4.copyload.i ; 2 uses
  %i.fwm = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.i, %.sroa.32.0.i
  %.sroa.32.1.i = select nsz i1 %i.fwm, float %.sroa.014.0.i, float %.sroa.32.0.i ; 2 uses
  %i.fwn = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.0.i, %.sroa.41.0.i
  %.sroa.9.1.i = select nsz i1 %i.fwn, float %.sroa.41.0.i, float %.sroa.9.0.i ; 3 uses
  %i.fwo = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.1.i, %.sroa.22.4.copyload.i ; 2 uses
  %.sroa.22.0.i = select nsz i1 %i.fwo, float %.sroa.9.1.i, float %.sroa.22.4.copyload.i ; 2 uses
  %.sroa.9.2.i = select nsz i1 %i.fwo, float %.sroa.22.4.copyload.i, float %.sroa.9.1.i ; 2 uses
  %i.fwp = fcmp reassoc nsz arcp contract afn ogt float %.sroa.22.0.i, %.sroa.32.1.i
  %.sroa.22.1.i = select nsz i1 %i.fwp, float %.sroa.32.1.i, float %.sroa.22.0.i ; 2 uses
  %i.fwq = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.2.i, %.sroa.22.1.i
  %.sroa.22.2.i = select nsz i1 %i.fwq, float %.sroa.9.2.i, float %.sroa.22.1.i ; 5 uses
  %i.fwr = getelementptr inbounds nuw [4 x i8], ptr %i.fpg, i64 %indvars.iv1865.i
  %.sroa.014.0.copyload.1.i = load float, ptr %i.fwr, align 4 ; 3 uses
  %i.fws = getelementptr [4 x i8], ptr %i.fph, i64 %indvars.iv1865.i ; 3 uses
  %i.fwt = getelementptr i8, ptr %i.fws, i64 -4
  %.sroa.9.4.copyload.1.i = load float, ptr %i.fwt, align 4 ; 3 uses
  %.sroa.22.4.copyload.1.i = load float, ptr %i.fws, align 4 ; 3 uses
  %.sroa.32.4..sroa_idx.1.i = getelementptr i8, ptr %i.fws, i64 4
  %.sroa.32.4.copyload.1.i = load float, ptr %.sroa.32.4..sroa_idx.1.i, align 4 ; 3 uses
  %i.fwu = getelementptr inbounds nuw [4 x i8], ptr %i.fpi, i64 %indvars.iv1865.i
  %.sroa.41.16.copyload.1.i = load float, ptr %i.fwu, align 4 ; 3 uses
  %i.fwv = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.copyload.1.i, %.sroa.9.4.copyload.1.i ; 2 uses
  %.sroa.9.0.1.i = select nsz i1 %i.fwv, float %.sroa.014.0.copyload.1.i, float %.sroa.9.4.copyload.1.i ; 2 uses
  %.sroa.014.0.1.i = select nsz i1 %i.fwv, float %.sroa.9.4.copyload.1.i, float %.sroa.014.0.copyload.1.i ; 2 uses
  %i.fww = fcmp reassoc nsz arcp contract afn ogt float %.sroa.32.4.copyload.1.i, %.sroa.41.16.copyload.1.i ; 2 uses
  %.sroa.41.0.1.i = select nsz i1 %i.fww, float %.sroa.32.4.copyload.1.i, float %.sroa.41.16.copyload.1.i ; 2 uses
  %.sroa.32.0.1.i = select nsz i1 %i.fww, float %.sroa.41.16.copyload.1.i, float %.sroa.32.4.copyload.1.i ; 2 uses
  %i.fwx = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.1.i, %.sroa.32.0.1.i
  %.sroa.32.1.1.i = select nsz i1 %i.fwx, float %.sroa.014.0.1.i, float %.sroa.32.0.1.i ; 2 uses
  %i.fwy = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.0.1.i, %.sroa.41.0.1.i
  %.sroa.9.1.1.i = select nsz i1 %i.fwy, float %.sroa.41.0.1.i, float %.sroa.9.0.1.i ; 3 uses
  %i.fwz = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.1.1.i, %.sroa.22.4.copyload.1.i ; 2 uses
  %.sroa.22.0.1.i = select nsz i1 %i.fwz, float %.sroa.9.1.1.i, float %.sroa.22.4.copyload.1.i ; 2 uses
  %.sroa.9.2.1.i = select nsz i1 %i.fwz, float %.sroa.22.4.copyload.1.i, float %.sroa.9.1.1.i ; 2 uses
  %i.fxa = fcmp reassoc nsz arcp contract afn ogt float %.sroa.22.0.1.i, %.sroa.32.1.1.i
  %.sroa.22.1.1.i = select nsz i1 %i.fxa, float %.sroa.32.1.1.i, float %.sroa.22.0.1.i ; 2 uses
  %i.fxb = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.2.1.i, %.sroa.22.1.1.i
  %.sroa.22.2.1.i = select nsz i1 %i.fxb, float %.sroa.9.2.1.i, float %.sroa.22.1.1.i ; 5 uses
  %i.fxc = extractelement <4 x float> %i.fwe, i64 1
  %i.fxd = fmul reassoc nsz arcp contract afn float %i.fxc, f0x3F2D9168
  %i.fxe = fdiv reassoc nsz arcp contract afn float %i.fxd, %i.fwf
  %i.fxf = shufflevector <4 x float> %i.fwe, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fxg = shufflevector <4 x float> %i.fwe, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fxh = fdiv reassoc nsz arcp contract afn <2 x float> %i.fxf, %i.fxg ; 3 uses
  %i.fxi = fmul reassoc nsz arcp contract afn <2 x float> %i.fxh, <float 2.627000e-01, float 5.930000e-02> ; 2 uses
  %i.fxj = extractelement <2 x float> %i.fxi, i64 0
  %i.fxk = fadd reassoc nsz arcp contract afn float %i.fxe, %i.fxj
  %i.fxl = extractelement <2 x float> %i.fxi, i64 1
  %i.fxm = fadd reassoc nsz arcp contract afn float %i.fxk, %i.fxl ; 5 uses
  %i.fxn = extractelement <2 x float> %i.fxh, i64 1
  %i.fxo = fsub reassoc nsz arcp contract afn float %i.fxn, %i.fxm
  %i.fxp = fmul reassoc nsz arcp contract afn float %i.fxo, 5.643300e-01 ; 2 uses
  %i.fxq = extractelement <2 x float> %i.fxh, i64 0
  %i.fxr = fsub reassoc nsz arcp contract afn float %i.fxq, %i.fxm
  %i.fxs = fmul reassoc nsz arcp contract afn float %i.fxr, f0x3F2D9B3D ; 4 uses
  %i.fxt = fcmp reassoc nsz arcp contract afn olt float %.sroa.22.2.i, 0.000000e+00
  %i.fxu = fneg reassoc nsz arcp contract afn float %.sroa.22.2.i
  %i.fxv = select reassoc nsz arcp contract afn i1 %i.fxt, float %i.fxu, float %.sroa.22.2.i ; 2 uses
  %i.fxw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fxp)
  %i.fxx = fcmp reassoc nsz arcp contract afn olt float %i.fxv, %i.fxw
  %i.fxy = fcmp reassoc nsz arcp contract afn olt float %.sroa.22.2.1.i, 0.000000e+00
  %i.fxz = fneg reassoc nsz arcp contract afn float %.sroa.22.2.1.i
  %i.fya = select reassoc nsz arcp contract afn i1 %i.fxy, float %i.fxz, float %.sroa.22.2.1.i ; 2 uses
  %i.fyb = fcmp reassoc nsz arcp contract afn olt float %i.fxs, 0.000000e+00
  %i.fyc = fneg reassoc nsz arcp contract afn float %i.fxs
  %i.fyd = select reassoc nsz arcp contract afn i1 %i.fyb, float %i.fyc, float %i.fxs ; 2 uses
  %i.fye = fmul reassoc nsz arcp contract afn float %i.fyd, 1.020000e+00 ; 2 uses
  %i.fyf = fcmp reassoc nsz arcp contract afn olt float %i.fya, %i.fye
  %i.fyg = and i1 %i.fxx, %i.fyf
  %i.fyh = select reassoc nsz arcp contract afn i1 %i.fyg, float %.sroa.22.2.i, float %i.fxp
  %i.fyi = fmul reassoc nsz arcp contract afn float %i.fyh, %spec.select1142.i
  %i.fyj = fmul reassoc nsz arcp contract afn float %.sroa.22.2.i, %spec.select.i486
  %i.fyk = fadd reassoc nsz arcp contract afn float %i.fyi, %i.fyj ; 2 uses
  %i.fyl = fcmp reassoc nsz arcp contract afn olt float %i.fya, %i.fyd
  %i.fym = fcmp reassoc nsz arcp contract afn olt float %i.fxv, %i.fye
  %i.fyn = and i1 %i.fym, %i.fyl
  %i.fyo = select reassoc nsz arcp contract afn i1 %i.fyn, float %.sroa.22.2.1.i, float %i.fxs
  %i.fyp = fmul reassoc nsz arcp contract afn float %i.fyo, %spec.select1142.i
  %i.fyq = fmul reassoc nsz arcp contract afn float %.sroa.22.2.1.i, %spec.select.i486
  %i.fyr = fadd reassoc nsz arcp contract afn float %i.fyp, %i.fyq ; 2 uses
  %i.fys = fmul reassoc nsz arcp contract afn float %i.fyr, 1.474600e+00
  %i.fyt = fadd reassoc nsz arcp contract afn float %i.fys, %i.fxm ; 2 uses
  %.neg1151.i = fmul reassoc nsz arcp contract afn float %i.fyk, f0xBE1EB498
  %.neg1152.i = fmul reassoc nsz arcp contract afn float %i.fyr, f0x3F124433
  %i.fyu = fsub reassoc nsz arcp contract afn float %i.fxm, %.neg1152.i
  %i.fyv = fadd reassoc nsz arcp contract afn float %i.fyu, %.neg1151.i ; 2 uses
  %i.fyw = fmul reassoc nsz arcp contract afn float %i.fyk, f0x3FE2D151
  %i.fyx = fadd reassoc nsz arcp contract afn float %i.fyw, %i.fxm ; 2 uses
  %i.fyy = trunc nuw nsw i64 %indvars.iv1865.i to i32
  %i.fyz = add i32 %i.fpc, %i.fyy
  %i.fza = shl nsw i32 %i.fyz, 2
  %i.fzb = sext i32 %i.fza to i64
end_hunk_1
