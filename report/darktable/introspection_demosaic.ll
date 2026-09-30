Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  br i1 %exitcond.not.i486, label %bb.id, label %.preheader1275.i

.preheader1269.i.fold.split:                      ; preds = %bb.ir
  br label %.preheader1269.i

.preheader1269.i:                                 ; preds = %bb.ir, %.preheader1269.i.fold.split, %bb.it, %bb.is, %bb.iq, %.preheader1271.i
  %.010831294.lcssa.i = phi i32 [ 0, %.preheader1271.i ], [ 1, %bb.iq ], [ 2, %bb.ir ], [ 5, %bb.it ], [ 4, %bb.is ], [ 3, %.preheader1269.i.fold.split ] ; 2 uses
  %i.bzi = zext i16 %.31019.4.fr.i to i32         ; 4 uses
  %i.bzj = trunc nuw nsw i32 %.010831294.lcssa.i to i16
  %.lhs.trunc2092.i = or disjoint i16 %i.bzj, 600
  %i.bzk = urem i16 %.lhs.trunc2092.i, 6
  %i.bzl = zext nneg i16 %i.bzk to i64
  %i.bzm = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bzl ; 6 uses
  %i.bzn = urem i16 %.31019.4.fr.i, 3
  %.not1122.i = icmp eq i16 %i.bzn, 0
  br i1 %.not1122.i, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %.preheader1269.i
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzm, i64 1
  %i.bzp = load i8, ptr %i.bzo, align 1, !tbaa !133
  %i.bzq = icmp eq i8 %i.bzp, 0
  br i1 %i.bzq, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ip, %bb.in, %bb.il, %bb.ij, %bb.ih, %bb.ie
  %.010821295.lcssa.neg.i = phi i64 [ 24, %bb.ie ], [ 23, %bb.ih ], [ 22, %bb.ij ], [ 21, %bb.il ], [ 20, %bb.in ], [ 19, %bb.ip ]
  %i.bzr = sub nuw nsw i32 24, %.010831294.lcssa.i
  %i.bzs = zext nneg i32 %i.bzr to i64
  br label %.loopexit1270.i

bb.ig:                                            ; preds = %bb.ie, %.preheader1269.i
  %i.bzt = sub nsw i32 1, %i.bzi
  %i.bzu = srem i32 %i.bzt, 3
  %.not1122.1.i = icmp eq i32 %i.bzu, 0
  br i1 %.not1122.1.i, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzm, i64 2
  %i.bzw = load i8, ptr %i.bzv, align 1, !tbaa !133
  %i.bzx = icmp eq i8 %i.bzw, 0
  br i1 %i.bzx, label %bb.if, label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.not1122.2.i = icmp eq i16 %.31019.4.fr.i, 2
  br i1 %.not1122.2.i, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzm, i64 3
  %i.bzz = load i8, ptr %i.bzy, align 1, !tbaa !133
  %i.caa = icmp eq i8 %i.bzz, 0
  br i1 %i.caa, label %bb.if, label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.cab = add i16 %.31019.4.fr.i, -1
  %.cmp.i = icmp ult i16 %i.cab, 3
  %i.cac = select i1 %.cmp.i, i32 3, i32 0
  %.not1122.3.i = icmp eq i32 %i.cac, %i.bzi
  br i1 %.not1122.3.i, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.cad = getelementptr inbounds nuw i8, ptr %i.bzm, i64 4
  %i.cae = load i8, ptr %i.cad, align 1, !tbaa !133
  %i.caf = icmp eq i8 %i.cae, 0
  br i1 %i.caf, label %bb.if, label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.cag = add i16 %.31019.4.fr.i, -2
  %.cmp2099.i = icmp ult i16 %i.cag, 3
  %i.cah = select i1 %.cmp2099.i, i32 4, i32 1
  %.not1122.4.i = icmp eq i32 %i.cah, %i.bzi
  br i1 %.not1122.4.i, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.cai = getelementptr inbounds nuw i8, ptr %i.bzm, i64 5
  %i.caj = load i8, ptr %i.cai, align 1, !tbaa !133
  %i.cak = icmp eq i8 %i.caj, 0
  br i1 %i.cak, label %bb.if, label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.cal = add i16 %.31019.4.fr.i, -6
  %.cmp2102.inv.i = icmp ult i16 %i.cal, -3
  %i.cam = select i1 %.cmp2102.inv.i, i32 2, i32 5
  %.not1122.5.i = icmp eq i32 %i.cam, %i.bzi
  br i1 %.not1122.5.i, label %bb.ip, label %.loopexit1270.i

bb.ip:                                            ; preds = %bb.io
  %i.can = load i8, ptr %i.bzm, align 1, !tbaa !133
  %i.cao = icmp eq i8 %i.can, 0
  br i1 %i.cao, label %bb.if, label %.loopexit1270.i

bb.iq:                                            ; preds = %.preheader1271.i
  %.neg2139.i = add i16 %.31013.4.fr.i, -1
  %i.cap = urem i16 %.neg2139.i, 3
  %.not1121.1.i = icmp eq i16 %i.cap, 0
  br i1 %.not1121.1.i, label %.preheader1269.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  switch i16 %.31013.4.fr.i, label %bb.is [
    i16 2, label %.preheader1269.i
    i16 3, label %.preheader1269.i.fold.split
  ]

bb.is:                                            ; preds = %bb.ir
  %i.caq = add i16 %.31013.4.fr.i, -2
  %.cmp2108.i = icmp ult i16 %i.caq, 3
  %i.car = select i1 %.cmp2108.i, i32 4, i32 1
  %.not1121.4.i = icmp eq i32 %i.car, %i.bru
  br i1 %.not1121.4.i, label %.preheader1269.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.cas = add i16 %.31013.4.fr.i, -6
  %.cmp2111.inv.i = icmp ult i16 %i.cas, -3
  %i.cat = select i1 %.cmp2111.inv.i, i32 2, i32 5
  %.not1121.5.i = icmp eq i32 %i.cat, %i.bru
  br i1 %.not1121.5.i, label %.preheader1269.i, label %.loopexit1270.i

.loopexit1270.i:                                  ; preds = %bb.it, %bb.ip, %bb.io, %bb.if
  %.11087.i = phi i64 [ 0, %bb.io ], [ %i.bzs, %bb.if ], [ 0, %bb.ip ], [ 0, %bb.it ]
  %.11085.i = phi i64 [ 0, %bb.io ], [ %.010821295.lcssa.neg.i, %bb.if ], [ 0, %bb.ip ], [ 0, %bb.it ]
  %i.cau = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.209) #27
  %i.cav = icmp slt i32 %i.cau, %i.en             ; 2 uses
  %spec.select.i487 = select nsz i1 %i.cav, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %spec.select1142.i = select nsz i1 %i.cav, float 0.000000e+00, float 1.000000e+00 ; 3 uses
  %i.caw = add nsw i32 %i.axl, -13
  %i.cax = icmp sgt i32 %i.axl, 0
  br i1 %i.cax, label %.lr.ph1512.i, label %._crit_edge1513.split.i

.lr.ph1512.i:                                     ; preds = %.loopexit1270.i
  %i.cay = getelementptr inbounds nuw i8, ptr %i.bqy, i64 714432 ; 8 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 893040 ; 4 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %i.bqy, i64 773968 ; 15 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.bqy, i64 1131184 ; 10 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.bqy, i64 1250256 ; 4 uses
  %i.cbd = add nuw i32 %i.axl, 13                 ; 4 uses
  %i.cbe = shl nuw nsw i32 %i.axl, 1
  %i.cbf = add nsw i32 %i.cbe, -2                 ; 3 uses
  %i.cbg = zext nneg i16 %.31019.4.fr.i to i32
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.bqy, i64 833504
  br i1 %i.aqj, label %.lr.ph1508.preheader.i, label %._crit_edge1513.split.i

.lr.ph1508.preheader.i:                           ; preds = %.lr.ph1512.i
  %i.cbi = zext nneg i32 %i.axl to i64
  %i.cbj = zext i16 %.31013.4.fr.i to i64         ; 4 uses
  %i.cbk = zext i16 %.31019.4.fr.i to i64         ; 2 uses
  %i.cbl = sext i32 %i.caw to i64
  %i.cbm = sext i32 %i.cbd to i64
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.bqy, i64 178608
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.bqy, i64 357216
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.bqy, i64 535824
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.bqy, i64 1071648 ; 3 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.bqy, i64 952576 ; 3 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.bqy, i64 1012112 ; 3 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.bqy, i64 788852
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.bqy, i64 729316
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.bqy, i64 803736
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.bqy, i64 744200
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.bqy, i64 818620
  %i.cby = getelementptr inbounds nuw i8, ptr %i.bqy, i64 759084
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 1309792 ; 3 uses
  %scevgep2027 = getelementptr i8, ptr %i.bqy, i64 1250308
  %scevgep2029 = getelementptr i8, ptr %i.bqy, i64 1309792
  %scevgep2038 = getelementptr i8, ptr %i.bqy, i64 1250304
  %scevgep2040 = getelementptr i8, ptr %i.bqy, i64 1309796
  %scevgep2043 = getelementptr i8, ptr %i.bqy, i64 1250308
  %scevgep2045 = getelementptr i8, ptr %i.bqy, i64 1309792
  %scevgep2048 = getelementptr i8, ptr %i.bqy, i64 19188
  %scevgep2049 = getelementptr i8, ptr %i.bqy, i64 534360
  %scevgep2054 = getelementptr i8, ptr %i.bqy, i64 775567
  %scevgep2055 = getelementptr i8, ptr %i.bqy, i64 818498
  %broadcast.splatinsert2083 = insertelement <8 x float> poison, float %spec.select1142.i, i64 0
  %broadcast.splat2084 = shufflevector <8 x float> %broadcast.splatinsert2083, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2085 = insertelement <8 x float> poison, float %spec.select.i487, i64 0
  %broadcast.splat2086 = shufflevector <8 x float> %broadcast.splatinsert2085, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1508.i

._crit_edge1513.split.i:                          ; preds = %._crit_edge1509.i, %.lr.ph1512.i, %.loopexit1270.i
  tail call void @free(ptr noundef %i.bqy) #27
  br label %xtrans_fdc_interpolate.exit

.lr.ph1508.i:                                     ; preds = %._crit_edge1509.i, %.lr.ph1508.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1509.i ], [ 0, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1201 = phi i32 [ %indvars.iv.next1202, %._crit_edge1509.i ], [ 5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1727.i = phi i32 [ %indvars.iv.next1728.i, %._crit_edge1509.i ], [ 109, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1660.i = phi i64 [ %indvars.iv.next1661.i, %._crit_edge1509.i ], [ -5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1636.i = phi i64 [ %indvars.iv.next1637.i, %._crit_edge1509.i ], [ -7, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1608.i = phi i64 [ %indvars.iv.next1609.i, %._crit_edge1509.i ], [ -10, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1583.i = phi i64 [ %indvars.iv.next1584.i, %._crit_edge1509.i ], [ -13, %.lr.ph1508.preheader.i ] ; 15 uses
  %i.cca = phi <4 x i32> [ %i.ceo, %._crit_edge1509.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1508.preheader.i ] ; 3 uses
  %i.ccb = extractelement <4 x i32> %i.cca, i64 3 ; 2 uses
  %i.ccc = mul i32 %i.auh, %indvar
  %smin2050 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.cbd)
  %i.ccd = add i32 %smin2050, %i.ccb
  %smax2051 = call i32 @llvm.smax.i32(i32 %i.ccd, i32 14)
  %i.cce = zext nneg i32 %smax2051 to i64         ; 2 uses
  %i.ccf = mul nuw nsw i64 %i.cce, 1464
  %i.ccg = mul nuw nsw i64 %i.cce, 122
  %i.cch = mul i32 %i.auf, %indvar
  %smin1238 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.cbd) ; 6 uses
  %i.cci = insertelement <4 x i32> poison, i32 %smin1238, i64 0
  %i.ccj = shufflevector <4 x i32> %i.cci, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cck = add <4 x i32> %i.ccj, %i.cca
  %i.ccl = add i32 %smin1238, %i.ccb              ; 5 uses
  %i.ccm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cck, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.ccn = add i32 %smin1238, %indvars.iv1201
  %i.cco = call i32 @llvm.smax.i32(i32 %i.ccn, i32 9)
  %smax1203 = zext nneg i32 %i.cco to i64
  %i.ccp = add i32 %smin1238, -8
  %i.ccq = sext i32 %i.ccp to i64
  %i.ccr = add i32 %smin1238, -6
  %i.ccs = sext i32 %i.ccr to i64
  %i.cct = add i32 %smin1238, -3
  %i.ccu = sext i32 %i.cct to i64
  %i.ccv = tail call i32 @llvm.smax.i32(i32 %i.ccl, i32 14)
  %smax1762.i = zext nneg i32 %i.ccv to i64       ; 5 uses
  %i.ccw = trunc i64 %indvars.iv1583.i to i32     ; 2 uses
  %i.ccx = add i32 %i.ccw, 122
  %i.ccy = tail call i32 @llvm.smin.i32(i32 %i.ccx, i32 %i.cbd) ; 6 uses
  %i.ccz = icmp slt i64 %indvars.iv1583.i, %i.cbm
  %i.cda = add nuw nsw i64 %indvars.iv1583.i, 3   ; 3 uses
  %i.cdb = add nsw i32 %i.ccy, -3                 ; 2 uses
  %i.cdc = sext i32 %i.cdb to i64
  %i.cdd = icmp slt i64 %i.cda, %i.cdc
  %i.cde = add nsw i32 %i.ccy, -4
  %i.cdf = sub i64 %indvars.iv1583.i, %i.cbj
  %i.cdg = trunc i64 %i.cdf to i32
  %i.cdh = add i32 %i.cdg, 8                      ; 2 uses
  %i.cdi = srem i32 %i.cdh, 3
  %i.cdj = add i32 %i.cdh, %i.bru
  %i.cdk = sub i32 %i.cdj, %i.cdi                 ; 2 uses
  %i.cdl = add nsw i32 %i.ccy, -6                 ; 2 uses
  %i.cdm = icmp slt i32 %i.cdk, %i.cdl
  %i.cdn = add nuw nsw i64 %indvars.iv1583.i, 6
  %i.cdo = sext i32 %i.cdl to i64                 ; 2 uses
  %i.cdp = icmp slt i64 %i.cdn, %i.cdo
  %i.cdq = add nuw nsw i64 %indvars.iv1583.i, 8
  %i.cdr = add nsw i32 %i.ccy, -8
  %i.cds = sext i32 %i.cdr to i64
  %i.cdt = icmp slt i64 %i.cdq, %i.cds
  %i.cdu = sub nsw i32 %i.ccy, %i.ccw             ; 5 uses
  %i.cdv = icmp sgt i32 %i.cdu, 16
  %i.cdw = icmp sgt i32 %i.cdu, 18
  %i.cdx = icmp sgt i32 %i.cdu, 20
  %i.cdy = icmp sgt i32 %i.cdu, 26                ; 2 uses
  %i.cdz = icmp sgt i32 %i.cdu, 12
  %i.cea = sext i32 %i.ccy to i64
  %i.ceb = sext i32 %i.cdk to i64
  %i.cec = trunc nsw i64 %i.cda to i32
  %i.ced = extractelement <4 x i32> %i.ccm, i64 0
  %i.cee = zext nneg i32 %i.ced to i64
  %i.cef = add nsw i64 %i.cee, -7
  %scevgep2052 = getelementptr i8, ptr %scevgep2049, i64 %i.ccf
  %scevgep2056 = getelementptr i8, ptr %scevgep2055, i64 %i.ccg
  %i.ceg = add nsw i64 %smax1762.i, -13           ; 8 uses
  %i.ceh = extractelement <4 x i32> %i.ccm, i64 2
  %i.cei = zext nneg i32 %i.ceh to i64
  %i.cej = extractelement <4 x i32> %i.ccm, i64 1
  %i.cek = zext nneg i32 %i.cej to i64
  %xtraiter4755 = and i64 %i.ceg, 7               ; 3 uses
  %6 = icmp slt i32 %i.ccl, 21
  %unroll_iter4759 = and i64 %i.ceg, -8
  %lcmp.mod4757.not = icmp eq i64 %xtraiter4755, 0
  %lcmp.mod4758 = icmp ne i64 %xtraiter4755, 0
  %xtraiter4761 = and i64 %i.ceg, 7               ; 3 uses
  %7 = icmp slt i32 %i.ccl, 21
  %unroll_iter4765 = and i64 %i.ceg, -8
  %lcmp.mod4763.not = icmp eq i64 %xtraiter4761, 0
  %lcmp.mod4764 = icmp ne i64 %xtraiter4761, 0
  %xtraiter4767 = and i64 %i.ceg, 7               ; 3 uses
  %8 = icmp slt i32 %i.ccl, 21
  %unroll_iter4771 = and i64 %i.ceg, -8
  %lcmp.mod4769.not = icmp eq i64 %xtraiter4767, 0
  %lcmp.mod4770 = icmp ne i64 %xtraiter4767, 0
  %xtraiter4773 = and i64 %i.ceg, 7               ; 3 uses
  %9 = icmp slt i32 %i.ccl, 21
  %unroll_iter4777 = and i64 %i.ceg, -8
  %lcmp.mod4775.not = icmp eq i64 %xtraiter4773, 0
  %lcmp.mod4776 = icmp ne i64 %xtraiter4773, 0
  %i.cel = extractelement <4 x i32> %i.ccm, i64 3
  %i.cem = zext nneg i32 %i.cel to i64
  br label %bb.iu

._crit_edge1509.i:                                ; preds = %._crit_edge1503.split.i
  %indvars.iv.next1584.i = add nsw i64 %indvars.iv1583.i, 96 ; 2 uses
  %i.cen = icmp slt i64 %indvars.iv.next1584.i, %i.cbl
  %indvars.iv.next1609.i = add nsw i64 %indvars.iv1608.i, 96
  %indvars.iv.next1637.i = add nsw i64 %indvars.iv1636.i, 96
  %indvars.iv.next1661.i = add nsw i64 %indvars.iv1660.i, 96
  %indvars.iv.next1728.i = add nuw i32 %indvars.iv1727.i, 96
  %indvars.iv.next1202 = add i32 %indvars.iv1201, -96
  %i.ceo = add <4 x i32> %i.cca, splat (i32 -96)
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cen, label %.lr.ph1508.i, label %._crit_edge1513.split.i

bb.iu:                                            ; preds = %._crit_edge1503.split.i, %.lr.ph1508.i
  %indvar2019 = phi i32 [ %indvar.next2020, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 3 uses
  %indvars.iv1226 = phi i32 [ %indvars.iv.next1227, %._crit_edge1503.split.i ], [ 7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1216 = phi i32 [ %indvars.iv.next1217, %._crit_edge1503.split.i ], [ 3, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1206 = phi i32 [ %indvars.iv.next1207, %._crit_edge1503.split.i ], [ 4, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1196 = phi i32 [ %indvars.iv.next1197, %._crit_edge1503.split.i ], [ 5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1724.i = phi i32 [ %indvars.iv.next1725.i, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 4 uses
  %indvars.iv1722.i = phi i32 [ %indvars.iv.next1723.i, %._crit_edge1503.split.i ], [ 109, %.lr.ph1508.i ] ; 5 uses
  %indvars.iv1655.i = phi i64 [ %indvars.iv.next1656.i, %._crit_edge1503.split.i ], [ -5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1631.i = phi i64 [ %indvars.iv.next1632.i, %._crit_edge1503.split.i ], [ -7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1603.i = phi i64 [ %indvars.iv.next1604.i, %._crit_edge1503.split.i ], [ -10, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1578.i = phi i64 [ %indvars.iv.next1579.i, %._crit_edge1503.split.i ], [ -13, %.lr.ph1508.i ] ; 15 uses
  %smin4747 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqk)
  %i.cep = add i32 %smin4747, %indvars.iv1196     ; 2 uses
  %smax4748 = call i32 @llvm.smax.i32(i32 %i.cep, i32 9) ; 2 uses
  %i.ceq = zext nneg i32 %smax4748 to i64         ; 2 uses
  %smin2030 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqk)
  %i.cer = add i32 %smin2030, %indvars.iv1724.i
  %i.ces = call i32 @llvm.umax.i32(i32 %i.cer, i32 14)
  %umax2031 = zext i32 %i.ces to i64              ; 4 uses
  %i.cet = shl nuw nsw i64 %umax2031, 2           ; 3 uses
  %i.ceu = mul i32 %indvar2019, 384
  %i.cev = add i32 %i.ccc, %i.ceu
  %i.cew = shl nuw nsw i64 %umax2031, 4
  %i.cex = mul nuw nsw i64 %umax2031, 12
  %scevgep2053 = getelementptr i8, ptr %scevgep2052, i64 %i.cex
  %scevgep2057 = getelementptr i8, ptr %scevgep2056, i64 %umax2031
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqk)
  %i.cey = add i32 %smin, %indvars.iv1724.i
  %i.cez = zext i32 %i.cey to i64
  %i.cfa = call i64 @llvm.usub.sat.i64(i64 %i.cez, i64 14) ; 2 uses
  %i.cfb = mul i32 %indvar2019, 384
  %i.cfc = add i32 %i.cch, %i.cfb
  %smin1235 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqk) ; 7 uses
  %i.cfd = add i32 %smin1235, %indvars.iv1724.i   ; 4 uses
  %i.cfe = call i32 @llvm.umax.i32(i32 %i.cfd, i32 14)
  %umax1236 = zext i32 %i.cfe to i64
  %i.cff = add i32 %smin1235, %indvars.iv1226
  %i.cfg = call i32 @llvm.umax.i32(i32 %i.cff, i32 7)
  %umax1228 = zext i32 %i.cfg to i64
  %i.cfh = add i32 %smin1235, %indvars.iv1216
  %i.cfi = call i32 @llvm.umax.i32(i32 %i.cfh, i32 11)
  %umax1218 = zext i32 %i.cfi to i64
  %i.cfj = add i32 %smin1235, %indvars.iv1206     ; 3 uses
  %i.cfk = call i32 @llvm.smax.i32(i32 %i.cfj, i32 10)
  %smax1208 = zext nneg i32 %i.cfk to i64
  %i.cfl = add i32 %smin1235, -8
  %i.cfm = sext i32 %i.cfl to i64
  %i.cfn = add i32 %smin1235, -6
  %i.cfo = sext i32 %i.cfn to i64
  %i.cfp = add i32 %smin1235, -3
  %i.cfq = sext i32 %i.cfp to i64
  %i.cfr = tail call i32 @llvm.smax.i32(i32 %i.cfd, i32 10)
  %smax1756.i = zext nneg i32 %i.cfr to i64       ; 4 uses
  %i.cfs = trunc i64 %indvars.iv1578.i to i32     ; 3 uses
  %i.cft = add i32 %i.cfs, 122
  %i.cfu = tail call i32 @llvm.smin.i32(i32 %i.cft, i32 %i.aqk) ; 7 uses
  %i.cfv = icmp slt i64 %indvars.iv1578.i, %i.aqn
  %or.cond1515.i = and i1 %i.ccz, %i.cfv
  br i1 %or.cond1515.i, label %.preheader1263.preheader.i, label %.preheader1268.i

.preheader1263.preheader.i:                       ; preds = %bb.iu
  %i.cfw = sext i32 %i.cfu to i64
  br label %.preheader1263.i

.preheader1268.i:                                 ; preds = %._crit_edge.i493, %bb.iu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cbn, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqy, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.cbo, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqy, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.cbp, ptr noundef nonnull align 64 dereferenceable(178608) %i.bqy, i64 178608, i1 false)
  br i1 %i.cdd, label %.lr.ph1325.i, label %._crit_edge1343.split.i

.preheader1263.i:                                 ; preds = %._crit_edge.i493, %.preheader1263.preheader.i
  %indvars.iv1585.i = phi i64 [ %indvars.iv1583.i, %.preheader1263.preheader.i ], [ %indvars.iv.next1586.i, %._crit_edge.i493 ] ; 5 uses
  %i.cfx = sub nsw i64 %indvars.iv1585.i, %indvars.iv1583.i ; 2 uses
  %i.cfy = getelementptr inbounds [1464 x i8], ptr %i.bqy, i64 %i.cfx
  %i.cfz = icmp slt i64 %indvars.iv1585.i, %i.cbi ; 2 uses
  %i.cga = trunc i64 %indvars.iv1585.i to i32     ; 7 uses
  %i.cgb = sub i32 %i.cbf, %i.cga                 ; 3 uses
  %i.cgc = tail call i32 @llvm.abs.i32(i32 %i.cga, i1 true) ; 3 uses
  %invariant.gep1310.idx.i = mul nuw nsw i64 %i.cfx, 488
  %invariant.gep1310.i = getelementptr i8, ptr %i.cbb, i64 %invariant.gep1310.idx.i ; 2 uses
  %i.cgd = mul nuw nsw i64 %indvars.iv1585.i, %i.aof
  %i.cge = add i32 %i.cga, -1                     ; 3 uses
  %.1514.i = select i1 %i.cfz, i32 %i.cgc, i32 %i.cgb ; 2 uses
  %i.cgf = mul nsw i32 %.1514.i, %i.bo
  %invariant.gep.i491 = getelementptr [4 x i8], ptr %i.axv, i64 %i.cgd
  %.not1140.i = icmp slt i32 %i.cge, %i.axl
  %i.cgg = sub nsw i32 %i.cbf, %i.cge             ; 2 uses
  %i.cgh = mul nsw i32 %i.cgg, %i.bo              ; 3 uses
  %i.cgi = tail call i32 @llvm.abs.i32(i32 %i.cge, i1 true) ; 2 uses
  %i.cgj = add nuw nsw i32 %i.cgi, 600
  %i.cgk = urem i32 %i.cgj, 6
  %i.cgl = zext nneg i32 %i.cgk to i64
  %i.cgm = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cgl ; 3 uses
  %i.cgn = mul nuw nsw i32 %i.cgi, %i.bo          ; 3 uses
  %.not1140.i.1 = icmp sgt i32 %i.axl, %i.cga
  %i.cgo = insertelement <4 x i32> poison, i32 %i.cga, i64 0
  %i.cgp = insertelement <4 x i32> %i.cgo, i32 %.1514.i, i64 1
  %i.cgq = insertelement <4 x i32> %i.cgp, i32 %i.cgg, i64 2
  %i.cgr = insertelement <4 x i32> %i.cgq, i32 %i.cgb, i64 3
  %i.cgs = add <4 x i32> %i.cgr, splat (i32 600)
  %i.cgt = srem <4 x i32> %i.cgs, splat (i32 6)   ; 4 uses
  %i.cgu = extractelement <4 x i32> %i.cgt, i64 0
  %i.cgv = sext i32 %i.cgu to i64
  %i.cgw = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgv
  %i.cgx = extractelement <4 x i32> %i.cgt, i64 1
  %i.cgy = sext i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cgy
  %i.cha = extractelement <4 x i32> %i.cgt, i64 2
  %i.chb = sext i32 %i.cha to i64
  %i.chc = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chb ; 3 uses
  %i.chd = extractelement <4 x i32> %i.cgt, i64 3
  %i.che = sext i32 %i.chd to i64
  %i.chf = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.che ; 3 uses
  %i.chg = mul nsw i32 %i.cgb, %i.bo              ; 3 uses
  %i.chh = add nuw nsw i32 %i.cgc, 600
  %i.chi = urem i32 %i.chh, 6
  %i.chj = zext nneg i32 %i.chi to i64
  %i.chk = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.chj ; 3 uses
  %i.chl = mul nuw nsw i32 %i.cgc, %i.bo          ; 3 uses
  %i.chm = add i32 %i.cga, 1                      ; 3 uses
  %.not1140.i.2 = icmp slt i32 %i.chm, %i.axl
  %i.chn = sub nsw i32 %i.cbf, %i.chm             ; 2 uses
  %i.cho = add nsw i32 %i.chn, 600
  %i.chp = srem i32 %i.cho, 6
  %i.chq = sext i32 %i.chp to i64
  %i.chr = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.chq ; 3 uses
  %i.chs = mul nsw i32 %i.chn, %i.bo              ; 3 uses
  %i.cht = tail call i32 @llvm.abs.i32(i32 %i.chm, i1 true) ; 2 uses
  %i.chu = add nuw nsw i32 %i.cht, 600
  %i.chv = urem i32 %i.chu, 6
  %i.chw = zext nneg i32 %i.chv to i64
  %i.chx = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.chw ; 3 uses
  %i.chy = mul nuw nsw i32 %i.cht, %i.bo          ; 3 uses
  br label %bb.iv

._crit_edge.i493:                                 ; preds = %.loopexit1256.i
  %indvars.iv.next1586.i = add nsw i64 %indvars.iv1585.i, 1 ; 2 uses
  %i.chz = icmp slt i64 %indvars.iv.next1586.i, %i.cea
  br i1 %i.chz, label %.preheader1263.i, label %.preheader1268.i

bb.iv:                                            ; preds = %.loopexit1256.i, %.preheader1263.i
  %indvars.iv1580.i = phi i64 [ %indvars.iv1578.i, %.preheader1263.i ], [ %indvars.iv.next1581.i.pre-phi, %.loopexit1256.i ] ; 7 uses
  %i.cia = sub nsw i64 %indvars.iv1580.i, %indvars.iv1578.i ; 3 uses
  %i.cib = getelementptr inbounds [12 x i8], ptr %i.cfy, i64 %i.cia ; 7 uses
  %i.cic = trunc i64 %indvars.iv1580.i to i32     ; 5 uses
  %i.cid = or i32 %i.cic, %i.cga
  %or.cond.i492 = icmp sgt i32 %i.cid, -1
  %i.cie = icmp slt i64 %indvars.iv1580.i, %i.aof ; 2 uses
  %or.cond1143.i = and i1 %i.cie, %or.cond.i492
  %or.cond1144.i = and i1 %i.cfz, %or.cond1143.i
  %i.cif = add i32 %i.cic, 600
  %i.cig = srem i32 %i.cif, 6
  %i.cih = sext i32 %i.cig to i64
  %i.cii = getelementptr inbounds i8, ptr %i.cgw, i64 %i.cih
  %i.cij = load i8, ptr %i.cii, align 1, !tbaa !133 ; 23 uses
  br i1 %or.cond1144.i, label %bb.iw, label %bb.jc

bb.iw:                                            ; preds = %bb.iv
  %gep.i495 = getelementptr [4 x i8], ptr %invariant.gep.i491, i64 %indvars.iv1580.i ; 4 uses
  %i.cik = icmp eq i8 %i.cij, 0
  br i1 %i.cik, label %.thread.i, label %bb.ix

.thread.i:                                        ; preds = %bb.iw
  %i.cil = load float, ptr %gep.i495, align 4, !tbaa !12
  store float %i.cil, ptr %i.cib, align 4, !tbaa !12
  br label %.thread2090.i

bb.ix:                                            ; preds = %bb.iw
  store float 0.000000e+00, ptr %i.cib, align 4, !tbaa !12
  %i.cim = icmp eq i8 %i.cij, 1
  br i1 %i.cim, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cin = load float, ptr %gep.i495, align 4, !tbaa !12
  br label %.thread2090.i

.thread2090.i:                                    ; preds = %bb.iy, %.thread.i
  %.ph.i = phi float [ 0.000000e+00, %.thread.i ], [ %i.cin, %bb.iy ]
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cib, i64 4
  store float %.ph.i, ptr %i.cio, align 4, !tbaa !12
  br label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cib, i64 4
  store float 0.000000e+00, ptr %i.cip, align 4, !tbaa !12
  %i.ciq = icmp eq i8 %i.cij, 2
  br i1 %i.ciq, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.cir = load float, ptr %gep.i495, align 4, !tbaa !12
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %.thread2090.i
  %i.cis = phi reassoc nsz arcp contract afn float [ %i.cir, %bb.ja ], [ 0.000000e+00, %bb.iz ], [ 0.000000e+00, %.thread2090.i ]
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cib, i64 8
  store float %i.cis, ptr %i.cit, align 4, !tbaa !12
  %i.ciu = load float, ptr %gep.i495, align 4, !tbaa !12
  %i.civ = getelementptr inbounds [4 x i8], ptr %invariant.gep1310.i, i64 %i.cia
  store float %i.ciu, ptr %i.civ, align 4, !tbaa !12
  %.pre1258 = add nsw i64 %indvars.iv1580.i, 1
  br label %.loopexit1256.i

bb.jc:                                            ; preds = %bb.iv
  %i.ciw = sub i32 %i.apq, %i.cic
  %i.cix = tail call i32 @llvm.abs.i32(i32 %i.cic, i1 true)
  %i.ciy = zext i8 %i.cij to i64                  ; 2 uses
  %i.ciz = getelementptr inbounds nuw [4 x i8], ptr %i.cib, i64 %i.ciy ; 2 uses
  %gep1311.i = getelementptr [4 x i8], ptr %invariant.gep1310.i, i64 %i.cia ; 2 uses
  %i.cja = select i1 %i.cie, i32 %i.cix, i32 %i.ciw ; 8 uses
  %i.cjb = add nsw i32 %i.cja, 600
  %i.cjc = srem i32 %i.cjb, 6
  %i.cjd = sext i32 %i.cjc to i64                 ; 7 uses
  %i.cje = getelementptr inbounds i8, ptr %i.cgz, i64 %i.cjd
  %i.cjf = add i32 %i.cic, -1                     ; 2 uses
  %i.cjg = tail call i32 @llvm.abs.i32(i32 %i.cjf, i1 true)
  %i.cjh = sub i32 %i.apq, %i.cjf
  %i.cji = add nsw i64 %indvars.iv1580.i, 1       ; 3 uses
  %i.cjj = trunc nsw i64 %i.cji to i32            ; 2 uses
  %i.cjk = sub i32 %i.apq, %i.cjj
  %i.cjl = tail call i32 @llvm.abs.i32(i32 %i.cjj, i1 true)
  %i.cjm = add nsw i32 %i.cja, %i.cgf
  %i.cjn = sext i32 %i.cjm to i64
  %i.cjo = getelementptr inbounds [4 x i8], ptr %i.axv, i64 %i.cjn
  %.not1141.not.i = icmp sgt i64 %indvars.iv1580.i, %i.aof
  %.not1141.2.i = icmp slt i64 %i.cji, %i.aof
  %.2127.i = select i1 %.not1141.not.i, i32 %i.cjh, i32 %i.cjg ; 7 uses
  %.2131.i = select i1 %.not1141.2.i, i32 %i.cjl, i32 %i.cjk ; 4 uses
  %i.cjp = insertelement <2 x i32> poison, i32 %.2127.i, i64 0
  %i.cjq = insertelement <2 x i32> %i.cjp, i32 %.2131.i, i64 1
  %i.cjr = add nsw <2 x i32> %i.cjq, splat (i32 600)
  %i.cjs = srem <2 x i32> %i.cjr, splat (i32 6)   ; 2 uses
  %i.cjt = extractelement <2 x i32> %i.cjs, i64 0
  %i.cju = sext i32 %i.cjt to i64                 ; 6 uses
  %i.cjv = extractelement <2 x i32> %i.cjs, i64 1
  %i.cjw = sext i32 %i.cjv to i64                 ; 6 uses
  %i.cjx = getelementptr inbounds i8, ptr %i.chc, i64 %i.cju
  %i.cjy = add nsw i32 %i.cgh, %.2127.i
  %i.cjz = sext i32 %i.cjy to i64
  %i.cka = getelementptr inbounds [4 x i8], ptr %i.axv, i64 %i.cjz
  %i.ckb = getelementptr inbounds i8, ptr %i.chc, i64 %i.cjd
  %i.ckc = add nsw i32 %i.cgh, %i.cja
  %i.ckd = sext i32 %i.ckc to i64
  %i.cke = getelementptr inbounds [4 x i8], ptr %i.axv, i64 %i.ckd
end_hunk_0
begin_hunk_1_@process:bb.a
  br label %bb.kv

._crit_edge1369.i:                                ; preds = %.loopexit1252.i
  %indvars.iv.next1639.i = add nsw i64 %indvars.iv1638.i, 1 ; 2 uses
  %exitcond1190.not = icmp eq i64 %indvars.iv.next1639.i, %i.ccs
  br i1 %exitcond1190.not, label %._crit_edge1373.split.i, label %.lr.ph1368.i

bb.kv:                                            ; preds = %.loopexit1252.i, %.lr.ph1368.i
  %indvars.iv1633.i = phi i64 [ %indvars.iv1631.i, %.lr.ph1368.i ], [ %indvars.iv.next1634.i, %.loopexit1252.i ] ; 3 uses
  %i.dli = trunc i64 %indvars.iv1633.i to i32
  %i.dlj = add i32 %i.dli, 600
  %i.dlk = srem i32 %i.dlj, 6
  %i.dll = sext i32 %i.dlk to i64
  %i.dlm = getelementptr inbounds i8, ptr %i.dkv, i64 %i.dll
  %i.dln = load i8, ptr %i.dlm, align 1, !tbaa !133 ; 2 uses
  %i.dlo = zext i8 %i.dln to i64
  %i.dlp = sub nsw i64 2, %i.dlo                  ; 12 uses
  %i.dlq = icmp eq i8 %i.dln, 1
  br i1 %i.dlq, label %.loopexit1252.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.dlr = sub nsw i64 %indvars.iv1633.i, %indvars.iv1578.i
  %i.dls = getelementptr inbounds [12 x i8], ptr %i.dkx, i64 %i.dlr ; 14 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dls, i64 4
  %i.dlu = load float, ptr %i.dlt, align 4, !tbaa !12 ; 5 uses
  %i.dlv = getelementptr inbounds nuw [12 x i8], ptr %i.dls, i64 %i.dle
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dlv, i64 4
  %i.dlx = load float, ptr %i.dlw, align 4, !tbaa !12 ; 3 uses
  br i1 %.not1130.i, label %bb.kx, label %._crit_edge2012.i

bb.kx:                                            ; preds = %bb.kw
  %i.dly = fsub reassoc nsz arcp contract afn float %i.dlu, %i.dlx
  %i.dlz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dly)
  %i.dma = getelementptr inbounds [12 x i8], ptr %i.dls, i64 %.neg.i489
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 4
  %i.dmc = load float, ptr %i.dmb, align 4, !tbaa !12
  %i.dmd = fsub reassoc nsz arcp contract afn float %i.dlu, %i.dmc
  %i.dme = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dmd)
  %i.dmf = fadd reassoc nsz arcp contract afn float %i.dme, %i.dlz
  %i.dmg = getelementptr inbounds nuw [12 x i8], ptr %i.dls, i64 %i.dlf
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dmg, i64 4
  %i.dmi = load float, ptr %i.dmh, align 4, !tbaa !12 ; 2 uses
  %i.dmj = fsub reassoc nsz arcp contract afn float %i.dlu, %i.dmi
  %i.dmk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dmj)
  %i.dml = getelementptr inbounds [12 x i8], ptr %i.dls, i64 %i.dlh
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 4
  %i.dmn = load float, ptr %i.dmm, align 4, !tbaa !12
  %i.dmo = fsub reassoc nsz arcp contract afn float %i.dlu, %i.dmn
  %i.dmp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dmo)
  %i.dmq = fadd reassoc nsz arcp contract afn float %i.dmp, %i.dmk
  %i.dmr = fmul reassoc nsz arcp contract afn float %i.dmq, 2.000000e+00
  %i.dms = fcmp reassoc nsz arcp contract afn olt float %i.dmf, %i.dmr ; 2 uses
  %spec.select1155.i = select i1 %i.dms, i32 %i.dlb, i32 %i.dld ; 2 uses
  %i.dmt = select i1 %i.dms, float %i.dlx, float %i.dmi
  %.pre2035.i = zext nneg i32 %spec.select1155.i to i64
  br label %._crit_edge2012.i

._crit_edge2012.i:                                ; preds = %bb.kx, %bb.kw
  %.pre-phi.i = phi i64 [ %.pre2035.i, %bb.kx ], [ %i.dle, %bb.kw ]
  %i.dmu = phi float [ %i.dmt, %bb.kx ], [ %i.dlx, %bb.kw ]
  %i.dmv = phi i32 [ %spec.select1155.i, %bb.kx ], [ %i.dlb, %bb.kw ]
  %i.dmw = getelementptr inbounds nuw [12 x i8], ptr %i.dls, i64 %.pre-phi.i
  %i.dmx = getelementptr inbounds [4 x i8], ptr %i.dmw, i64 %i.dlp
  %i.dmy = load float, ptr %i.dmx, align 4, !tbaa !12
  %i.dmz = sub nsw i32 0, %i.dmv
  %i.dna = sext i32 %i.dmz to i64
  %i.dnb = getelementptr inbounds [12 x i8], ptr %i.dls, i64 %i.dna ; 2 uses
  %i.dnc = getelementptr inbounds [4 x i8], ptr %i.dnb, i64 %i.dlp
  %i.dnd = load float, ptr %i.dnc, align 4, !tbaa !12
  %i.dne = fmul reassoc nsz arcp contract afn float %i.dlu, 2.000000e+00
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dnb, i64 4
  %i.dng = load float, ptr %i.dnf, align 4, !tbaa !12
  %.neg920 = fsub reassoc nsz arcp contract afn float %i.dne, %i.dmu
  %.neg1224.i = fadd reassoc nsz arcp contract afn float %i.dmy, %.neg920
  %i.dnh = fadd reassoc nsz arcp contract afn float %.neg1224.i, %i.dnd
  %i.dni = fsub reassoc nsz arcp contract afn float %i.dnh, %i.dng
  %i.dnj = fmul reassoc nsz arcp contract afn float %i.dni, 5.000000e-01
  %i.dnk = getelementptr inbounds [4 x i8], ptr %i.dls, i64 %i.dlp
  store float %i.dnj, ptr %i.dnk, align 4, !tbaa !12
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.dls, i64 178608 ; 7 uses
  %.phi.trans.insert2017.i = getelementptr inbounds nuw i8, ptr %i.dls, i64 178612
  %.pre2018.i = load float, ptr %.phi.trans.insert2017.i, align 4, !tbaa !12 ; 5 uses
  %.phi.trans.insert2019.i = getelementptr inbounds nuw [12 x i8], ptr %i.dnl, i64 %i.dle
  %.phi.trans.insert2020.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2019.i, i64 4
  %.pre2021.i = load float, ptr %.phi.trans.insert2020.i, align 4, !tbaa !12 ; 3 uses
  br i1 %.not1130.i, label %.loopexit1252.loopexit.i, label %bb.ky

bb.ky:                                            ; preds = %._crit_edge2012.i
  %i.dnm = fsub reassoc nsz arcp contract afn float %.pre2018.i, %.pre2021.i
  %i.dnn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dnm)
  %i.dno = getelementptr inbounds [12 x i8], ptr %i.dnl, i64 %.neg.i489
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.dno, i64 4
  %i.dnq = load float, ptr %i.dnp, align 4, !tbaa !12
  %i.dnr = fsub reassoc nsz arcp contract afn float %.pre2018.i, %i.dnq
  %i.dns = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dnr)
  %i.dnt = fadd reassoc nsz arcp contract afn float %i.dns, %i.dnn
  %i.dnu = getelementptr inbounds nuw [12 x i8], ptr %i.dnl, i64 %i.dlf
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnu, i64 4
  %i.dnw = load float, ptr %i.dnv, align 4, !tbaa !12 ; 2 uses
  %i.dnx = fsub reassoc nsz arcp contract afn float %.pre2018.i, %i.dnw
  %i.dny = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dnx)
  %i.dnz = getelementptr inbounds [12 x i8], ptr %i.dnl, i64 %i.dlh
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 4
  %i.dob = load float, ptr %i.doa, align 4, !tbaa !12
  %i.doc = fsub reassoc nsz arcp contract afn float %.pre2018.i, %i.dob
  %i.dod = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.doc)
  %i.doe = fadd reassoc nsz arcp contract afn float %i.dod, %i.dny
  %i.dof = fmul reassoc nsz arcp contract afn float %i.doe, 2.000000e+00
  %i.dog = fcmp reassoc nsz arcp contract afn olt float %i.dnt, %i.dof ; 2 uses
  %spec.select1155.1.i = select i1 %i.dog, i32 %i.dlb, i32 %i.dld ; 2 uses
  %i.doh = select i1 %i.dog, float %.pre2021.i, float %i.dnw
  %.pre2036.i = zext nneg i32 %spec.select1155.1.i to i64
  br label %.loopexit1252.loopexit.i

.loopexit1252.loopexit.i:                         ; preds = %bb.ky, %._crit_edge2012.i
  %.pre-phi2037.i = phi i64 [ %.pre2036.i, %bb.ky ], [ %i.dle, %._crit_edge2012.i ]
  %i.doi = phi float [ %i.doh, %bb.ky ], [ %.pre2021.i, %._crit_edge2012.i ]
  %i.doj = phi i32 [ %spec.select1155.1.i, %bb.ky ], [ %i.dlb, %._crit_edge2012.i ]
  %i.dok = getelementptr inbounds nuw [12 x i8], ptr %i.dnl, i64 %.pre-phi2037.i
  %i.dol = getelementptr inbounds [4 x i8], ptr %i.dok, i64 %i.dlp
  %i.dom = load float, ptr %i.dol, align 4, !tbaa !12
  %i.don = sub nsw i32 0, %i.doj
  %i.doo = sext i32 %i.don to i64
  %i.dop = getelementptr inbounds [12 x i8], ptr %i.dnl, i64 %i.doo ; 2 uses
  %i.doq = getelementptr inbounds [4 x i8], ptr %i.dop, i64 %i.dlp
  %i.dor = load float, ptr %i.doq, align 4, !tbaa !12
  %i.dos = fmul reassoc nsz arcp contract afn float %.pre2018.i, 2.000000e+00
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dop, i64 4
  %i.dou = load float, ptr %i.dot, align 4, !tbaa !12
  %.neg923 = fsub reassoc nsz arcp contract afn float %i.dos, %i.doi
  %.neg1224.1.i = fadd reassoc nsz arcp contract afn float %i.dom, %.neg923
  %i.dov = fadd reassoc nsz arcp contract afn float %.neg1224.1.i, %i.dor
  %i.dow = fsub reassoc nsz arcp contract afn float %i.dov, %i.dou
  %i.dox = fmul reassoc nsz arcp contract afn float %i.dow, 5.000000e-01
  %i.doy = getelementptr inbounds [4 x i8], ptr %i.dnl, i64 %i.dlp
  store float %i.dox, ptr %i.doy, align 4, !tbaa !12
  %i.doz = getelementptr inbounds nuw i8, ptr %i.dls, i64 357216 ; 3 uses
  %.phi.trans.insert2025.i = getelementptr inbounds nuw [12 x i8], ptr %i.doz, i64 %i.dle ; 2 uses
  %.phi.trans.insert2026.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2025.i, i64 4
  %.pre2027.i = load float, ptr %.phi.trans.insert2026.i, align 4, !tbaa !12
  %.phi.trans.insert2023.i = getelementptr inbounds nuw i8, ptr %i.dls, i64 357220
  %.pre2024.i = load float, ptr %.phi.trans.insert2023.i, align 4, !tbaa !12
  %i.dpa = getelementptr inbounds [4 x i8], ptr %.phi.trans.insert2025.i, i64 %i.dlp
  %i.dpb = load float, ptr %i.dpa, align 4, !tbaa !12
  %i.dpc = getelementptr inbounds [12 x i8], ptr %i.doz, i64 %.neg.i489 ; 2 uses
  %i.dpd = getelementptr inbounds [4 x i8], ptr %i.dpc, i64 %i.dlp
  %i.dpe = load float, ptr %i.dpd, align 4, !tbaa !12
  %i.dpf = fmul reassoc nsz arcp contract afn float %.pre2024.i, 2.000000e+00
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpc, i64 4
  %i.dph = load float, ptr %i.dpg, align 4, !tbaa !12
  %.neg925 = fsub reassoc nsz arcp contract afn float %i.dpb, %.pre2027.i
  %.neg1224.2.i = fadd reassoc nsz arcp contract afn float %.neg925, %i.dpf
  %i.dpi = fadd reassoc nsz arcp contract afn float %.neg1224.2.i, %i.dpe
  %i.dpj = fsub reassoc nsz arcp contract afn float %i.dpi, %i.dph
  %i.dpk = fmul reassoc nsz arcp contract afn float %i.dpj, 5.000000e-01
  %i.dpl = getelementptr inbounds [4 x i8], ptr %i.doz, i64 %i.dlp
  store float %i.dpk, ptr %i.dpl, align 4, !tbaa !12
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.dls, i64 535824 ; 3 uses
  %.phi.trans.insert2030.i = getelementptr inbounds nuw [12 x i8], ptr %i.dpm, i64 %i.dle ; 2 uses
  %.phi.trans.insert2031.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2030.i, i64 4
  %.pre2032.i = load float, ptr %.phi.trans.insert2031.i, align 4, !tbaa !12
  %.phi.trans.insert2028.i = getelementptr inbounds nuw i8, ptr %i.dls, i64 535828
  %.pre2029.i = load float, ptr %.phi.trans.insert2028.i, align 4, !tbaa !12
  %i.dpn = getelementptr inbounds [4 x i8], ptr %.phi.trans.insert2030.i, i64 %i.dlp
  %i.dpo = load float, ptr %i.dpn, align 4, !tbaa !12
  %i.dpp = getelementptr inbounds [12 x i8], ptr %i.dpm, i64 %.neg.i489 ; 2 uses
  %i.dpq = getelementptr inbounds [4 x i8], ptr %i.dpp, i64 %i.dlp
  %i.dpr = load float, ptr %i.dpq, align 4, !tbaa !12
  %i.dps = fmul reassoc nsz arcp contract afn float %.pre2029.i, 2.000000e+00
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dpp, i64 4
  %i.dpu = load float, ptr %i.dpt, align 4, !tbaa !12
  %.neg927 = fsub reassoc nsz arcp contract afn float %i.dpo, %.pre2032.i
  %.neg1224.3.i = fadd reassoc nsz arcp contract afn float %.neg927, %i.dps
  %i.dpv = fadd reassoc nsz arcp contract afn float %.neg1224.3.i, %i.dpr
  %i.dpw = fsub reassoc nsz arcp contract afn float %i.dpv, %i.dpu
  %i.dpx = fmul reassoc nsz arcp contract afn float %i.dpw, 5.000000e-01
  %i.dpy = getelementptr inbounds [4 x i8], ptr %i.dpm, i64 %i.dlp
  store float %i.dpx, ptr %i.dpy, align 4, !tbaa !12
  br label %.loopexit1252.i

.loopexit1252.i:                                  ; preds = %.loopexit1252.loopexit.i, %bb.kv
  %indvars.iv.next1634.i = add nsw i64 %indvars.iv1633.i, 1 ; 2 uses
  %exitcond1188.not = icmp eq i64 %indvars.iv.next1634.i, %i.cfo
  br i1 %exitcond1188.not, label %._crit_edge1369.i, label %bb.kv

._crit_edge1388.i:                                ; preds = %.loopexit1262.i, %._crit_edge1373.split.i
  %i.dpz = sub nsw i32 %i.cfu, %i.cfs             ; 7 uses
  %i.dqa = icmp sgt i32 %i.dpz, 16
  %i.dqb = icmp sgt i32 %i.dpz, 18
  br i1 %i.cdv, label %.preheader1261.i.preheader, label %.split1046.thread

.preheader1261.i.preheader:                       ; preds = %._crit_edge1388.i
  %xtraiter4749 = and i64 %i.ceq, 1
  %i.dqc = icmp slt i32 %i.cep, 10
  %i.dqd = and i64 %i.ceq, 2147483646
  %i.dqe = add nsw i64 %i.dqd, -10
  %lcmp.mod4751.not = icmp eq i64 %xtraiter4749, 0
  %lcmp.mod4752 = trunc i32 %smax4748 to i1
  %i.dqf = call i32 @llvm.smax.i32(i32 %i.cfj, i32 10)
  %i.dqg = zext nneg i32 %i.dqf to i64
  %i.dqh = add nsw i64 %i.dqg, -9                 ; 2 uses
  %min.iters.check2547 = icmp slt i32 %i.cfj, 17
  %n.vec2549 = and i64 %i.dqh, -8                 ; 3 uses
  %i.dqi = add nsw i64 %n.vec2549, 9
  %cmp.n2563 = icmp eq i64 %i.dqh, %n.vec2549
  br label %.preheader1261.i

.split1046.thread:                                ; preds = %._crit_edge1388.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(59536) %i.cay, i8 0, i64 59536, i1 false)
  br label %.preheader1265.split.i

bb.kz:                                            ; preds = %.loopexit1262.i, %.lr.ph1387.i
  %indvars.iv1662.i = phi i64 [ %indvars.iv1660.i, %.lr.ph1387.i ], [ %indvars.iv.next1663.i, %.loopexit1262.i ] ; 4 uses
  %i.dqj = sub nsw i64 %indvars.iv1662.i, %i.cbj
  %i.dqk = trunc nsw i64 %i.dqj to i32
  %i.dql = srem i32 %i.dqk, 3
  %.not1126.i = icmp eq i32 %i.dql, 0
  %brmerge.i = select i1 %.not1126.i, i1 true, i1 %i.dkq
  br i1 %brmerge.i, label %.loopexit1262.i, label %.lr.ph1383.i

.lr.ph1383.i:                                     ; preds = %bb.kz
  %i.dqm = sub nsw i64 %indvars.iv1662.i, %indvars.iv1583.i
  %i.dqn = getelementptr inbounds [1464 x i8], ptr %i.bqy, i64 %i.dqm
  %i.dqo = trunc i64 %indvars.iv1662.i to i32
  %i.dqp = add i32 %i.dqo, 600
  %i.dqq = srem i32 %i.dqp, 3
  %i.dqr = sext i32 %i.dqq to i64
  %i.dqs = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.dqr
  br label %bb.la

bb.la:                                            ; preds = %bb.lc, %.lr.ph1383.i
  %indvars.iv1657.i = phi i64 [ %indvars.iv1655.i, %.lr.ph1383.i ], [ %indvars.iv.next1658.i, %bb.lc ] ; 4 uses
  %i.dqt = sub nsw i64 %indvars.iv1657.i, %i.cbk
  %i.dqu = trunc nsw i64 %i.dqt to i32
  %i.dqv = srem i32 %i.dqu, 3
  %.not1127.i = icmp eq i32 %i.dqv, 0
  br i1 %.not1127.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.dqw = sub nsw i64 %indvars.iv1657.i, %indvars.iv1578.i
  %i.dqx = getelementptr inbounds [12 x i8], ptr %i.dqn, i64 %i.dqw ; 12 uses
  %i.dqy = trunc i64 %indvars.iv1657.i to i32
  %i.dqz = add i32 %i.dqy, 600
  %i.dra = srem i32 %i.dqz, 3
  %i.drb = sext i32 %i.dra to i64
  %i.drc = getelementptr inbounds [16 x i8], ptr %i.dqs, i64 %i.drb ; 4 uses
  %i.drd = load i16, ptr %i.drc, align 16, !tbaa !481 ; 2 uses
  %i.dre = sext i16 %i.drd to i32
  %i.drf = getelementptr inbounds nuw i8, ptr %i.drc, i64 2
  %i.drg = load i16, ptr %i.drf, align 2, !tbaa !481 ; 2 uses
  %i.drh = sext i16 %i.drg to i32
  %i.dri = sub nsw i32 0, %i.drh
  %.not1128.i = icmp eq i32 %i.dre, %i.dri
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dqx, i64 4
  %i.drk = load float, ptr %i.drj, align 4, !tbaa !12 ; 2 uses
  %i.drl = sext i16 %i.drd to i64
  %i.drm = getelementptr inbounds [12 x i8], ptr %i.dqx, i64 %i.drl ; 5 uses
  %i.drn = getelementptr inbounds nuw i8, ptr %i.drm, i64 4
  %i.dro = load float, ptr %i.drn, align 4, !tbaa !12 ; 3 uses
  %i.drp = sext i16 %i.drg to i64
  %i.drq = getelementptr inbounds [12 x i8], ptr %i.dqx, i64 %i.drp ; 5 uses
  %i.drr = getelementptr inbounds nuw i8, ptr %i.drq, i64 4
  %i.drs = load float, ptr %i.drr, align 4, !tbaa !12 ; 2 uses
  br i1 %.not1128.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit1518.i

.loopexit.loopexit1518.i:                         ; preds = %bb.lb
  %i.drt = fmul reassoc nsz arcp contract afn float %i.drk, 3.000000e+00
  %i.dru = fsub reassoc nsz arcp contract afn float %i.drt, %i.drs ; 2 uses
  %i.drv = load float, ptr %i.drm, align 4, !tbaa !12
  %i.drw = load float, ptr %i.drq, align 4, !tbaa !12
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.drv, %i.dro
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, 2.000000e+00
  %i.drx = fadd reassoc nsz arcp contract afn float %i.drw, %i.dru
  %i.dry = fadd reassoc nsz arcp contract afn float %i.drx, %reass.mul.i
  %i.drz = fmul reassoc nsz arcp contract afn float %i.dry, f0x3EAAAAAB
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.drm, i64 8
  %i.dsb = load float, ptr %i.dsa, align 4, !tbaa !12
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.drq, i64 8
  %i.dsd = load float, ptr %i.dsc, align 4, !tbaa !12
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.dsb, %i.dro
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, 2.000000e+00
  %i.dse = fadd reassoc nsz arcp contract afn float %i.dsd, %i.dru
  %i.dsf = fadd reassoc nsz arcp contract afn float %i.dse, %reass.mul.1.i
  %i.dsg = fmul reassoc nsz arcp contract afn float %i.dsf, f0x3EAAAAAB
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.lb
  %i.dsh = fmul reassoc nsz arcp contract afn float %i.drk, 2.000000e+00
  %i.dsi = fadd reassoc nsz arcp contract afn float %i.dro, %i.drs
  %i.dsj = fsub reassoc nsz arcp contract afn float %i.dsh, %i.dsi ; 2 uses
  %i.dsk = load float, ptr %i.drm, align 4, !tbaa !12
  %i.dsl = load float, ptr %i.drq, align 4, !tbaa !12
  %i.dsm = fadd reassoc nsz arcp contract afn float %i.dsk, %i.dsj
  %i.dsn = fadd reassoc nsz arcp contract afn float %i.dsm, %i.dsl
  %i.dso = fmul reassoc nsz arcp contract afn float %i.dsn, 5.000000e-01
  %i.dsp = getelementptr inbounds nuw i8, ptr %i.drm, i64 8
  %i.dsq = load float, ptr %i.dsp, align 4, !tbaa !12
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.drq, i64 8
  %i.dss = load float, ptr %i.dsr, align 4, !tbaa !12
  %i.dst = fadd reassoc nsz arcp contract afn float %i.dsq, %i.dsj
  %i.dsu = fadd reassoc nsz arcp contract afn float %i.dst, %i.dss
  %i.dsv = fmul reassoc nsz arcp contract afn float %i.dsu, 5.000000e-01
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit1518.i
  %.sink = phi float [ %i.dso, %.loopexit.loopexit.i ], [ %i.drz, %.loopexit.loopexit1518.i ] ; 2 uses
  %.sink.i = phi float [ %i.dsv, %.loopexit.loopexit.i ], [ %i.dsg, %.loopexit.loopexit1518.i ] ; 2 uses
  store float %.sink, ptr %i.dqx, align 4, !tbaa !12
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.dqx, i64 8
  store float %.sink.i, ptr %i.dsw, align 4, !tbaa !12
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.dqx, i64 178608 ; 3 uses
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.drc, i64 4
  %i.dsz = load i16, ptr %i.dsy, align 4, !tbaa !481 ; 2 uses
  %i.dta = sext i16 %i.dsz to i32
  %i.dtb = getelementptr inbounds nuw i8, ptr %i.drc, i64 6
  %i.dtc = load i16, ptr %i.dtb, align 2, !tbaa !481 ; 2 uses
  %i.dtd = sext i16 %i.dtc to i32
  %i.dte = sub nsw i32 0, %i.dtd
  %.not1128.1.i = icmp eq i32 %i.dta, %i.dte
  %i.dtf = getelementptr inbounds nuw i8, ptr %i.dqx, i64 178612
  %i.dtg = load float, ptr %i.dtf, align 4, !tbaa !12 ; 2 uses
  %i.dth = sext i16 %i.dsz to i64
  %i.dti = getelementptr inbounds [12 x i8], ptr %i.dsx, i64 %i.dth ; 5 uses
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dti, i64 4
  %i.dtk = load float, ptr %i.dtj, align 4, !tbaa !12 ; 3 uses
  %i.dtl = sext i16 %i.dtc to i64
  %i.dtm = getelementptr inbounds [12 x i8], ptr %i.dsx, i64 %i.dtl ; 5 uses
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtm, i64 4
  %i.dto = load float, ptr %i.dtn, align 4, !tbaa !12 ; 2 uses
  br i1 %.not1128.1.i, label %.loopexit.loopexit.1.i, label %.loopexit.loopexit1518.1.i

.loopexit.loopexit1518.1.i:                       ; preds = %.loopexit.i
  %i.dtp = fmul reassoc nsz arcp contract afn float %i.dtg, 3.000000e+00
  %i.dtq = fsub reassoc nsz arcp contract afn float %i.dtp, %i.dto ; 2 uses
  %i.dtr = load float, ptr %i.dti, align 4, !tbaa !12
  %i.dts = load float, ptr %i.dtm, align 4, !tbaa !12
  %reass.add.11650.i = fsub reassoc nsz arcp contract afn float %i.dtr, %i.dtk
  %reass.mul.11651.i = fmul reassoc nsz arcp contract afn float %reass.add.11650.i, 2.000000e+00
  %i.dtt = fadd reassoc nsz arcp contract afn float %i.dts, %i.dtq
  %i.dtu = fadd reassoc nsz arcp contract afn float %i.dtt, %reass.mul.11651.i
  %i.dtv = fmul reassoc nsz arcp contract afn float %i.dtu, f0x3EAAAAAB
  %i.dtw = getelementptr inbounds nuw i8, ptr %i.dti, i64 8
  %i.dtx = load float, ptr %i.dtw, align 4, !tbaa !12
  %i.dty = getelementptr inbounds nuw i8, ptr %i.dtm, i64 8
  %i.dtz = load float, ptr %i.dty, align 4, !tbaa !12
  %reass.add.1.1.i = fsub reassoc nsz arcp contract afn float %i.dtx, %i.dtk
  %reass.mul.1.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.1.i, 2.000000e+00
  %i.dua = fadd reassoc nsz arcp contract afn float %i.dtz, %i.dtq
  %i.dub = fadd reassoc nsz arcp contract afn float %i.dua, %reass.mul.1.1.i
  %i.duc = fmul reassoc nsz arcp contract afn float %i.dub, f0x3EAAAAAB
  br label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.dud = fmul reassoc nsz arcp contract afn float %i.dtg, 2.000000e+00
  %i.due = fadd reassoc nsz arcp contract afn float %i.dtk, %i.dto
  %i.duf = fsub reassoc nsz arcp contract afn float %i.dud, %i.due ; 2 uses
  %i.dug = load float, ptr %i.dti, align 4, !tbaa !12
  %i.duh = load float, ptr %i.dtm, align 4, !tbaa !12
  %i.dui = fadd reassoc nsz arcp contract afn float %i.dug, %i.duf
  %i.duj = fadd reassoc nsz arcp contract afn float %i.dui, %i.duh
  %i.duk = fmul reassoc nsz arcp contract afn float %i.duj, 5.000000e-01
  %i.dul = getelementptr inbounds nuw i8, ptr %i.dti, i64 8
  %i.dum = load float, ptr %i.dul, align 4, !tbaa !12
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dtm, i64 8
  %i.duo = load float, ptr %i.dun, align 4, !tbaa !12
  %i.dup = fadd reassoc nsz arcp contract afn float %i.dum, %i.duf
  %i.duq = fadd reassoc nsz arcp contract afn float %i.dup, %i.duo
  %i.dur = fmul reassoc nsz arcp contract afn float %i.duq, 5.000000e-01
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.loopexit1518.1.i
  %.sink1246 = phi float [ %i.duk, %.loopexit.loopexit.1.i ], [ %i.dtv, %.loopexit.loopexit1518.1.i ] ; 2 uses
  %.sink2133.i = phi float [ %i.dur, %.loopexit.loopexit.1.i ], [ %i.duc, %.loopexit.loopexit1518.1.i ] ; 2 uses
  store float %.sink1246, ptr %i.dsx, align 4, !tbaa !12
  %i.dus = getelementptr inbounds nuw i8, ptr %i.dqx, i64 178616
  store float %.sink2133.i, ptr %i.dus, align 4, !tbaa !12
  %i.dut = getelementptr inbounds nuw i8, ptr %i.dqx, i64 357216
  %i.duu = fadd reassoc nsz arcp contract afn float %.sink1246, %.sink
  %i.duv = fmul reassoc nsz arcp contract afn float %i.duu, 5.000000e-01 ; 2 uses
  store float %i.duv, ptr %i.dut, align 4, !tbaa !12
  %i.duw = fadd reassoc nsz arcp contract afn float %.sink2133.i, %.sink.i
  %i.dux = fmul reassoc nsz arcp contract afn float %i.duw, 5.000000e-01 ; 2 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %i.dqx, i64 357224
  store float %i.dux, ptr %i.duy, align 4, !tbaa !12
  %i.duz = getelementptr inbounds nuw i8, ptr %i.dqx, i64 535824
  store float %i.duv, ptr %i.duz, align 4, !tbaa !12
  %i.dva = getelementptr inbounds nuw i8, ptr %i.dqx, i64 535832
  store float %i.dux, ptr %i.dva, align 4, !tbaa !12
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.1.i, %bb.la
  %indvars.iv.next1658.i = add nsw i64 %indvars.iv1657.i, 1 ; 2 uses
  %exitcond1192.not = icmp eq i64 %indvars.iv.next1658.i, %i.cfm
  br i1 %exitcond1192.not, label %.loopexit1262.i, label %bb.la

.loopexit1262.i:                                  ; preds = %bb.lc, %bb.kz
  %indvars.iv.next1663.i = add nsw i64 %indvars.iv1662.i, 1 ; 2 uses
  %exitcond1194.not = icmp eq i64 %indvars.iv.next1663.i, %i.ccq
  br i1 %exitcond1194.not, label %._crit_edge1388.i, label %bb.kz

.preheader1261.i:                                 ; preds = %.preheader1261.i.preheader, %._crit_edge1398.split.i
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %._crit_edge1398.split.i ], [ 0, %.preheader1261.i.preheader ] ; 5 uses
end_hunk_1
begin_hunk_2_@process:bb.a
.epil.preheader4746:                              ; preds = %._crit_edge1391.i.unr-lcssa, %.preheader1250.i
  %indvars.iv1665.i.epil.init = phi i64 [ 8, %.preheader1250.i ], [ %indvars.iv.next1666.i.1, %._crit_edge1391.i.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod4752)
  %i.dwf = getelementptr inbounds nuw [12 x i8], ptr %i.dvk, i64 %indvars.iv1665.i.epil.init ; 4 uses
  %i.dwg = load float, ptr %i.dwf, align 4, !tbaa !12
  %i.dwh = fmul reassoc nsz arcp contract afn float %i.dwg, 2.627000e-01
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwf, i64 4
  %i.dwj = load float, ptr %i.dwi, align 4, !tbaa !12
  %i.dwk = fmul reassoc nsz arcp contract afn float %i.dwj, f0x3F2D9168
  %i.dwl = fadd reassoc nsz arcp contract afn float %i.dwk, %i.dwh
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwf, i64 8 ; 2 uses
  %i.dwn = load float, ptr %i.dwm, align 4, !tbaa !12
  %i.dwo = fmul reassoc nsz arcp contract afn float %i.dwn, 5.930000e-02
  %i.dwp = fadd reassoc nsz arcp contract afn float %i.dwl, %i.dwo ; 3 uses
  %i.dwq = getelementptr inbounds nuw [4 x i8], ptr %i.dvl, i64 %indvars.iv1665.i.epil.init
  store float %i.dwp, ptr %i.dwq, align 4, !tbaa !12
  %i.dwr = load float, ptr %i.dwm, align 4, !tbaa !12
  %i.dws = fsub reassoc nsz arcp contract afn float %i.dwr, %i.dwp
  %i.dwt = fmul reassoc nsz arcp contract afn float %i.dws, 5.643300e-01
  %i.dwu = getelementptr inbounds nuw [4 x i8], ptr %i.dvm, i64 %indvars.iv1665.i.epil.init
  store float %i.dwt, ptr %i.dwu, align 4, !tbaa !12
  %i.dwv = load float, ptr %i.dwf, align 4, !tbaa !12
  %i.dww = fsub reassoc nsz arcp contract afn float %i.dwv, %i.dwp
  %i.dwx = fmul reassoc nsz arcp contract afn float %i.dww, f0x3F2D9B3D
  %i.dwy = getelementptr inbounds nuw [4 x i8], ptr %i.dvn, i64 %indvars.iv1665.i.epil.init
  store float %i.dwx, ptr %i.dwy, align 4, !tbaa !12
  br label %._crit_edge1391.i

._crit_edge1391.i:                                ; preds = %._crit_edge1391.i.unr-lcssa, %.epil.preheader4746
  %indvars.iv.next1669.i = add nuw nsw i64 %indvars.iv1668.i, 1 ; 2 uses
  %exitcond1204.not = icmp eq i64 %indvars.iv.next1669.i, %smax1203
  br i1 %exitcond1204.not, label %._crit_edge1393.split.i, label %.preheader1250.i

.preheader1250.i.new:                             ; preds = %.preheader1250.i, %.preheader1250.i.new
  %indvars.iv1665.i = phi i64 [ %indvars.iv.next1666.i.1, %.preheader1250.i.new ], [ 8, %.preheader1250.i ] ; 6 uses
  %niter4754 = phi i64 [ %niter4754.next.1, %.preheader1250.i.new ], [ 0, %.preheader1250.i ] ; 2 uses
  %i.dwz = getelementptr inbounds nuw [12 x i8], ptr %i.dvk, i64 %indvars.iv1665.i ; 4 uses
  %i.dxa = load float, ptr %i.dwz, align 8, !tbaa !12
  %i.dxb = fmul reassoc nsz arcp contract afn float %i.dxa, 2.627000e-01
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dwz, i64 4
  %i.dxd = load float, ptr %i.dxc, align 4, !tbaa !12
  %i.dxe = fmul reassoc nsz arcp contract afn float %i.dxd, f0x3F2D9168
  %i.dxf = fadd reassoc nsz arcp contract afn float %i.dxe, %i.dxb
  %i.dxg = getelementptr inbounds nuw i8, ptr %i.dwz, i64 8
  %i.dxh = load float, ptr %i.dxg, align 8, !tbaa !12 ; 2 uses
  %i.dxi = fmul reassoc nsz arcp contract afn float %i.dxh, 5.930000e-02
  %i.dxj = fadd reassoc nsz arcp contract afn float %i.dxf, %i.dxi ; 3 uses
  %i.dxk = getelementptr inbounds nuw [4 x i8], ptr %i.dvl, i64 %indvars.iv1665.i
  store float %i.dxj, ptr %i.dxk, align 8, !tbaa !12
  %i.dxl = fsub reassoc nsz arcp contract afn float %i.dxh, %i.dxj
  %i.dxm = fmul reassoc nsz arcp contract afn float %i.dxl, 5.643300e-01
  %i.dxn = getelementptr inbounds nuw [4 x i8], ptr %i.dvm, i64 %indvars.iv1665.i
  store float %i.dxm, ptr %i.dxn, align 8, !tbaa !12
  %i.dxo = load float, ptr %i.dwz, align 8, !tbaa !12
  %i.dxp = fsub reassoc nsz arcp contract afn float %i.dxo, %i.dxj
  %i.dxq = fmul reassoc nsz arcp contract afn float %i.dxp, f0x3F2D9B3D
  %i.dxr = getelementptr inbounds nuw [4 x i8], ptr %i.dvn, i64 %indvars.iv1665.i
  store float %i.dxq, ptr %i.dxr, align 8, !tbaa !12
  %indvars.iv.next1666.i = or disjoint i64 %indvars.iv1665.i, 1 ; 4 uses
  %i.dxs = getelementptr inbounds nuw [12 x i8], ptr %i.dvk, i64 %indvars.iv.next1666.i ; 4 uses
  %i.dxt = load float, ptr %i.dxs, align 4, !tbaa !12
  %i.dxu = fmul reassoc nsz arcp contract afn float %i.dxt, 2.627000e-01
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxs, i64 4
  %i.dxw = load float, ptr %i.dxv, align 8, !tbaa !12
  %i.dxx = fmul reassoc nsz arcp contract afn float %i.dxw, f0x3F2D9168
  %i.dxy = fadd reassoc nsz arcp contract afn float %i.dxx, %i.dxu
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dxs, i64 8 ; 2 uses
  %i.dya = load float, ptr %i.dxz, align 4, !tbaa !12
  %i.dyb = fmul reassoc nsz arcp contract afn float %i.dya, 5.930000e-02
  %i.dyc = fadd reassoc nsz arcp contract afn float %i.dxy, %i.dyb ; 3 uses
  %i.dyd = getelementptr inbounds nuw [4 x i8], ptr %i.dvl, i64 %indvars.iv.next1666.i
  store float %i.dyc, ptr %i.dyd, align 4, !tbaa !12
  %i.dye = load float, ptr %i.dxz, align 4, !tbaa !12
  %i.dyf = fsub reassoc nsz arcp contract afn float %i.dye, %i.dyc
  %i.dyg = fmul reassoc nsz arcp contract afn float %i.dyf, 5.643300e-01
  %i.dyh = getelementptr inbounds nuw [4 x i8], ptr %i.dvm, i64 %indvars.iv.next1666.i
  store float %i.dyg, ptr %i.dyh, align 4, !tbaa !12
  %i.dyi = load float, ptr %i.dxs, align 4, !tbaa !12
  %i.dyj = fsub reassoc nsz arcp contract afn float %i.dyi, %i.dyc
  %i.dyk = fmul reassoc nsz arcp contract afn float %i.dyj, f0x3F2D9B3D
  %i.dyl = getelementptr inbounds nuw [4 x i8], ptr %i.dvn, i64 %indvars.iv.next1666.i
  store float %i.dyk, ptr %i.dyl, align 4, !tbaa !12
  %indvars.iv.next1666.i.1 = add nuw nsw i64 %indvars.iv1665.i, 2 ; 2 uses
  %niter4754.next.1 = add i64 %niter4754, 2
  %niter4754.ncmp.1 = icmp eq i64 %niter4754, %i.dqe
  br i1 %niter4754.ncmp.1, label %._crit_edge1391.i.unr-lcssa, label %.preheader1250.i.new

.preheader1249.i:                                 ; preds = %.preheader1249.i.preheader, %._crit_edge1396.i
  %indvars.iv1674.i = phi i64 [ %indvars.iv.next1675.i, %._crit_edge1396.i ], [ 9, %.preheader1249.i.preheader ] ; 3 uses
  %i.dym = getelementptr inbounds nuw [488 x i8], ptr %i.cay, i64 %indvars.iv1674.i ; 2 uses
  %i.dyn = getelementptr inbounds nuw [488 x i8], ptr %i.dvs, i64 %indvars.iv1674.i ; 2 uses
  %brmerge4880 = select i1 %min.iters.check2547, i1 true, i1 %op.rdx4592
  br i1 %brmerge4880, label %scalar.ph2546.preheader, label %vector.body2550

vector.body2550:                                  ; preds = %.preheader1249.i, %vector.body2550
  %index2551 = phi i64 [ %index.next2561, %vector.body2550 ], [ 0, %.preheader1249.i ] ; 2 uses
  %i.dyo = add nuw i64 %index2551, 9              ; 2 uses
  %i.dyp = getelementptr inbounds nuw [4 x i8], ptr %i.dym, i64 %i.dyo ; 5 uses
  %wide.load2552 = load <8 x float>, ptr %i.dyp, align 4, !tbaa !12
  %i.dyq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2552, splat (float 2.000000e+00)
  %i.dyr = getelementptr inbounds [4 x i8], ptr %i.dyp, i64 %i.dvq
  %wide.load2553 = load <8 x float>, ptr %i.dyr, align 4, !tbaa !12
  %i.dys = getelementptr inbounds [4 x i8], ptr %i.dyp, i64 %i.dvr
  %wide.load2554 = load <8 x float>, ptr %i.dys, align 4, !tbaa !12
  %i.dyt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2553, %wide.load2554
  %i.dyu = fsub reassoc nsz arcp contract afn <8 x float> %i.dyq, %i.dyt ; 2 uses
  %i.dyv = fmul reassoc nsz arcp contract afn <8 x float> %i.dyu, %i.dyu
  %i.dyw = getelementptr inbounds nuw i8, ptr %i.dyp, i64 59536 ; 3 uses
  %wide.load2555 = load <8 x float>, ptr %i.dyw, align 4, !tbaa !12
  %i.dyx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2555, splat (float 2.000000e+00)
  %i.dyy = getelementptr inbounds [4 x i8], ptr %i.dyw, i64 %i.dvq
  %wide.load2556 = load <8 x float>, ptr %i.dyy, align 4, !tbaa !12
  %i.dyz = getelementptr inbounds [4 x i8], ptr %i.dyw, i64 %i.dvr
  %wide.load2557 = load <8 x float>, ptr %i.dyz, align 4, !tbaa !12
  %i.dza = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2556, %wide.load2557
  %i.dzb = fsub reassoc nsz arcp contract afn <8 x float> %i.dyx, %i.dza ; 2 uses
  %i.dzc = fmul reassoc nsz arcp contract afn <8 x float> %i.dzb, %i.dzb
  %i.dzd = fadd reassoc nsz arcp contract afn <8 x float> %i.dzc, %i.dyv
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dyp, i64 119072 ; 3 uses
  %wide.load2558 = load <8 x float>, ptr %i.dze, align 4, !tbaa !12
  %i.dzf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2558, splat (float 2.000000e+00)
  %i.dzg = getelementptr inbounds [4 x i8], ptr %i.dze, i64 %i.dvq
  %wide.load2559 = load <8 x float>, ptr %i.dzg, align 4, !tbaa !12
  %i.dzh = getelementptr inbounds [4 x i8], ptr %i.dze, i64 %i.dvr
  %wide.load2560 = load <8 x float>, ptr %i.dzh, align 4, !tbaa !12
  %i.dzi = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2559, %wide.load2560
  %i.dzj = fsub reassoc nsz arcp contract afn <8 x float> %i.dzf, %i.dzi ; 2 uses
  %i.dzk = fmul reassoc nsz arcp contract afn <8 x float> %i.dzj, %i.dzj
  %i.dzl = fadd reassoc nsz arcp contract afn <8 x float> %i.dzd, %i.dzk
  %i.dzm = getelementptr inbounds nuw [4 x i8], ptr %i.dyn, i64 %i.dyo
  store <8 x float> %i.dzl, ptr %i.dzm, align 4, !tbaa !12
  %index.next2561 = add nuw i64 %index2551, 8     ; 2 uses
  %i.dzn = icmp eq i64 %index.next2561, %n.vec2549
  br i1 %i.dzn, label %middle.block2562, label %vector.body2550, !llvm.loop !214

middle.block2562:                                 ; preds = %vector.body2550
  br i1 %cmp.n2563, label %._crit_edge1396.i, label %scalar.ph2546.preheader

scalar.ph2546.preheader:                          ; preds = %.preheader1249.i, %middle.block2562
  %indvars.iv1671.i.ph = phi i64 [ %i.dqi, %middle.block2562 ], [ 9, %.preheader1249.i ]
  br label %scalar.ph2546

._crit_edge1398.split.i:                          ; preds = %._crit_edge1396.i, %.preheader1249.lr.ph.i, %._crit_edge1393.split.i
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1680.not.i = icmp eq i64 %indvars.iv.next1678.i, 4
  br i1 %exitcond1680.not.i, label %.split1046, label %.preheader1261.i

._crit_edge1396.i:                                ; preds = %scalar.ph2546, %middle.block2562
  %indvars.iv.next1675.i = add nuw nsw i64 %indvars.iv1674.i, 1 ; 2 uses
  %exitcond1214.not = icmp eq i64 %indvars.iv.next1675.i, %i.cei
  br i1 %exitcond1214.not, label %._crit_edge1398.split.i, label %.preheader1249.i

scalar.ph2546:                                    ; preds = %scalar.ph2546.preheader, %scalar.ph2546
  %indvars.iv1671.i = phi i64 [ %indvars.iv.next1672.i, %scalar.ph2546 ], [ %indvars.iv1671.i.ph, %scalar.ph2546.preheader ] ; 3 uses
  %i.dzo = getelementptr inbounds nuw [4 x i8], ptr %i.dym, i64 %indvars.iv1671.i ; 5 uses
  %i.dzp = load float, ptr %i.dzo, align 4, !tbaa !12
  %i.dzq = fmul reassoc nsz arcp contract afn float %i.dzp, 2.000000e+00
  %i.dzr = getelementptr inbounds [4 x i8], ptr %i.dzo, i64 %i.dvq
  %i.dzs = load float, ptr %i.dzr, align 4, !tbaa !12
  %i.dzt = getelementptr inbounds [4 x i8], ptr %i.dzo, i64 %i.dvr
  %i.dzu = load float, ptr %i.dzt, align 4, !tbaa !12
  %i.dzv = fadd reassoc nsz arcp contract afn float %i.dzs, %i.dzu
  %i.dzw = fsub reassoc nsz arcp contract afn float %i.dzq, %i.dzv ; 2 uses
  %i.dzx = fmul reassoc nsz arcp contract afn float %i.dzw, %i.dzw
  %i.dzy = getelementptr inbounds nuw i8, ptr %i.dzo, i64 59536 ; 3 uses
  %i.dzz = load float, ptr %i.dzy, align 4, !tbaa !12
  %i.eaa = fmul reassoc nsz arcp contract afn float %i.dzz, 2.000000e+00
  %i.eab = getelementptr inbounds [4 x i8], ptr %i.dzy, i64 %i.dvq
  %i.eac = load float, ptr %i.eab, align 4, !tbaa !12
  %i.ead = getelementptr inbounds [4 x i8], ptr %i.dzy, i64 %i.dvr
  %i.eae = load float, ptr %i.ead, align 4, !tbaa !12
  %i.eaf = fadd reassoc nsz arcp contract afn float %i.eac, %i.eae
  %i.eag = fsub reassoc nsz arcp contract afn float %i.eaa, %i.eaf ; 2 uses
  %i.eah = fmul reassoc nsz arcp contract afn float %i.eag, %i.eag
  %i.eai = fadd reassoc nsz arcp contract afn float %i.eah, %i.dzx
  %i.eaj = getelementptr inbounds nuw i8, ptr %i.dzo, i64 119072 ; 3 uses
  %i.eak = load float, ptr %i.eaj, align 4, !tbaa !12
  %i.eal = fmul reassoc nsz arcp contract afn float %i.eak, 2.000000e+00
  %i.eam = getelementptr inbounds [4 x i8], ptr %i.eaj, i64 %i.dvq
  %i.ean = load float, ptr %i.eam, align 4, !tbaa !12
  %i.eao = getelementptr inbounds [4 x i8], ptr %i.eaj, i64 %i.dvr
  %i.eap = load float, ptr %i.eao, align 4, !tbaa !12
  %i.eaq = fadd reassoc nsz arcp contract afn float %i.ean, %i.eap
  %i.ear = fsub reassoc nsz arcp contract afn float %i.eal, %i.eaq ; 2 uses
  %i.eas = fmul reassoc nsz arcp contract afn float %i.ear, %i.ear
  %i.eat = fadd reassoc nsz arcp contract afn float %i.eai, %i.eas
  %i.eau = getelementptr inbounds nuw [4 x i8], ptr %i.dyn, i64 %indvars.iv1671.i
  store float %i.eat, ptr %i.eau, align 4, !tbaa !12
  %indvars.iv.next1672.i = add nuw nsw i64 %indvars.iv1671.i, 1 ; 2 uses
  %exitcond1209.not = icmp eq i64 %indvars.iv.next1672.i, %smax1208
  br i1 %exitcond1209.not, label %._crit_edge1396.i, label %scalar.ph2546, !llvm.loop !215

.preheader1266.i:                                 ; preds = %._crit_edge1418.i, %.preheader1260.lr.ph.i
  br i1 %i.cdy, label %.preheader1259.preheader.i, label %.preheader1265.split.i

.preheader1259.preheader.i:                       ; preds = %.preheader1266.i
  %i.eav = icmp sgt i32 %i.dpz, 22
  br i1 %i.eav, label %.preheader1237.lr.ph.us.i, label %.lr.ph1427.split.i.preheader

.lr.ph1427.split.i.preheader:                     ; preds = %.preheader1259.preheader.i
  br i1 %6, label %.lr.ph1427.split.i.epil.preheader, label %.lr.ph1427.split.i

.preheader1260.i:                                 ; preds = %.preheader1260.lr.ph.i, %._crit_edge1418.i
  %indvars.iv1700.i = phi i64 [ %i.eaw, %._crit_edge1418.i ], [ 10, %.preheader1260.lr.ph.i ] ; 7 uses
  %invariant.gep1400.i = getelementptr inbounds nuw [488 x i8], ptr %i.caz, i64 %indvars.iv1700.i ; 3 uses
  %invariant.gep1412.i = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1700.i
  %i.eaw = add nuw nsw i64 %indvars.iv1700.i, 1   ; 6 uses
  %i.eax = getelementptr inbounds nuw [488 x i8], ptr %i.cbq, i64 %i.eaw ; 3 uses
  %i.eay = add nsw i64 %indvars.iv1700.i, -1      ; 4 uses
  %i.eaz = getelementptr inbounds [488 x i8], ptr %i.caz, i64 %i.eay ; 3 uses
  %i.eba = getelementptr inbounds nuw [488 x i8], ptr %i.caz, i64 %i.eaw ; 3 uses
  %i.ebb = getelementptr inbounds [488 x i8], ptr %i.cbr, i64 %i.eay ; 3 uses
  %i.ebc = getelementptr inbounds nuw [488 x i8], ptr %i.cbr, i64 %indvars.iv1700.i ; 3 uses
  %i.ebd = getelementptr inbounds nuw [488 x i8], ptr %i.cbr, i64 %i.eaw ; 3 uses
  %i.ebe = getelementptr inbounds [488 x i8], ptr %i.cbs, i64 %i.eay ; 3 uses
  %i.ebf = getelementptr inbounds nuw [488 x i8], ptr %i.cbs, i64 %indvars.iv1700.i ; 3 uses
  %i.ebg = getelementptr inbounds nuw [488 x i8], ptr %i.cbs, i64 %i.eaw ; 3 uses
  %i.ebh = getelementptr inbounds [488 x i8], ptr %i.cbq, i64 %i.eay ; 3 uses
  %i.ebi = getelementptr inbounds nuw [488 x i8], ptr %i.cbq, i64 %indvars.iv1700.i ; 3 uses
  br label %.preheader1248.i

.preheader1248.i:                                 ; preds = %.preheader1248.i, %.preheader1260.i
  %indvars.iv1697.i = phi i64 [ 10, %.preheader1260.i ], [ %i.ecd, %.preheader1248.i ] ; 15 uses
  %invariant.gep1402.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1400.i, i64 %indvars.iv1697.i ; 5 uses
  %i.ebj = load float, ptr %invariant.gep1402.i, align 4, !tbaa !12 ; 2 uses
  %i.ebk = fcmp reassoc nsz arcp contract afn olt float %i.ebj, f0x7F7FFFFF
  %spec.select1150.i = select nsz i1 %i.ebk, float %i.ebj, float f0x7F7FFFFF ; 2 uses
  %gep1403.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1402.i, i64 59536
  %i.ebl = load float, ptr %gep1403.1.i, align 4, !tbaa !12 ; 2 uses
  %i.ebm = fcmp reassoc nsz arcp contract afn ogt float %spec.select1150.i, %i.ebl
  %spec.select1150.1.i = select nsz i1 %i.ebm, float %i.ebl, float %spec.select1150.i ; 2 uses
  %gep1403.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1402.i, i64 119072
  %i.ebn = load float, ptr %gep1403.2.i, align 4, !tbaa !12 ; 2 uses
  %i.ebo = fcmp reassoc nsz arcp contract afn ogt float %spec.select1150.1.i, %i.ebn
  %spec.select1150.2.i = select nsz i1 %i.ebo, float %i.ebn, float %spec.select1150.1.i ; 2 uses
  %gep1403.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1402.i, i64 178608
  %i.ebp = load float, ptr %gep1403.3.i, align 4, !tbaa !12 ; 2 uses
  %i.ebq = fcmp reassoc nsz arcp contract afn ogt float %spec.select1150.2.i, %i.ebp
  %spec.select1150.3.i = select nsz i1 %i.ebq, float %i.ebp, float %spec.select1150.2.i
  %i.ebr = fmul reassoc nsz arcp contract afn float %spec.select1150.3.i, 8.000000e+00 ; 36 uses
  %invariant.gep1414.i = getelementptr inbounds nuw i8, ptr %invariant.gep1412.i, i64 %indvars.iv1697.i ; 9 uses
  %.promoted1407.i = load i8, ptr %invariant.gep1414.i, align 1, !tbaa !133
  %i.ebs = add nsw i64 %indvars.iv1697.i, -1      ; 12 uses
  %i.ebt = getelementptr inbounds [4 x i8], ptr %i.eaz, i64 %i.ebs
  %i.ebu = load float, ptr %i.ebt, align 4, !tbaa !12
  %i.ebv = fcmp reassoc nsz arcp contract afn ole float %i.ebu, %i.ebr
  %i.ebw = zext i1 %i.ebv to i8
  %i.ebx = add i8 %.promoted1407.i, %i.ebw        ; 2 uses
  store i8 %i.ebx, ptr %invariant.gep1414.i, align 1, !tbaa !133
  %i.eby = getelementptr inbounds nuw [4 x i8], ptr %i.eaz, i64 %indvars.iv1697.i
  %i.ebz = load float, ptr %i.eby, align 4, !tbaa !12
  %i.eca = fcmp reassoc nsz arcp contract afn ole float %i.ebz, %i.ebr
  %i.ecb = zext i1 %i.eca to i8
  %i.ecc = add i8 %i.ebx, %i.ecb                  ; 2 uses
  store i8 %i.ecc, ptr %invariant.gep1414.i, align 1, !tbaa !133
  %i.ecd = add nuw nsw i64 %indvars.iv1697.i, 1   ; 14 uses
  %i.ece = getelementptr inbounds nuw [4 x i8], ptr %i.eaz, i64 %i.ecd
  %i.ecf = load float, ptr %i.ece, align 4, !tbaa !12
  %i.ecg = fcmp reassoc nsz arcp contract afn ole float %i.ecf, %i.ebr
  %i.ech = zext i1 %i.ecg to i8
  %i.eci = add i8 %i.ecc, %i.ech                  ; 2 uses
  store i8 %i.eci, ptr %invariant.gep1414.i, align 1, !tbaa !133
  %i.ecj = getelementptr inbounds [4 x i8], ptr %invariant.gep1400.i, i64 %i.ebs
  %i.eck = load float, ptr %i.ecj, align 4, !tbaa !12
  %i.ecl = fcmp reassoc nsz arcp contract afn ole float %i.eck, %i.ebr
  %i.ecm = zext i1 %i.ecl to i8
  %i.ecn = add i8 %i.eci, %i.ecm
  %i.eco = load float, ptr %invariant.gep1402.i, align 4, !tbaa !12
  %i.ecp = fcmp reassoc nsz arcp contract afn ole float %i.eco, %i.ebr
  %i.ecq = zext i1 %i.ecp to i8
  %i.ecr = add i8 %i.ecn, %i.ecq
  %i.ecs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1400.i, i64 %i.ecd
  %i.ect = load float, ptr %i.ecs, align 4, !tbaa !12
  %i.ecu = fcmp reassoc nsz arcp contract afn ole float %i.ect, %i.ebr
  %i.ecv = zext i1 %i.ecu to i8
  %i.ecw = add i8 %i.ecr, %i.ecv                  ; 2 uses
  store i8 %i.ecw, ptr %invariant.gep1414.i, align 1, !tbaa !133
  %i.ecx = getelementptr inbounds [4 x i8], ptr %i.eba, i64 %i.ebs
  %i.ecy = load float, ptr %i.ecx, align 4, !tbaa !12
  %i.ecz = fcmp reassoc nsz arcp contract afn ole float %i.ecy, %i.ebr
  %i.eda = zext i1 %i.ecz to i8
  %i.edb = add i8 %i.ecw, %i.eda
  %i.edc = getelementptr inbounds nuw [4 x i8], ptr %i.eba, i64 %indvars.iv1697.i
  %i.edd = load float, ptr %i.edc, align 4, !tbaa !12
  %i.ede = fcmp reassoc nsz arcp contract afn ole float %i.edd, %i.ebr
  %i.edf = zext i1 %i.ede to i8
  %i.edg = add i8 %i.edb, %i.edf
  %i.edh = getelementptr inbounds nuw [4 x i8], ptr %i.eba, i64 %i.ecd
  %i.edi = load float, ptr %i.edh, align 4, !tbaa !12
  %i.edj = fcmp reassoc nsz arcp contract afn ole float %i.edi, %i.ebr
  %i.edk = zext i1 %i.edj to i8
  %i.edl = add i8 %i.edg, %i.edk
  store i8 %i.edl, ptr %invariant.gep1414.i, align 1, !tbaa !133
  %gep1415.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1414.i, i64 14884 ; 6 uses
  %.promoted1407.1.i = load i8, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.edm = getelementptr inbounds [4 x i8], ptr %i.ebb, i64 %i.ebs
  %i.edn = load float, ptr %i.edm, align 4, !tbaa !12
  %i.edo = fcmp reassoc nsz arcp contract afn ole float %i.edn, %i.ebr
  %i.edp = zext i1 %i.edo to i8
  %i.edq = add i8 %.promoted1407.1.i, %i.edp      ; 2 uses
  store i8 %i.edq, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.edr = getelementptr inbounds nuw [4 x i8], ptr %i.ebb, i64 %indvars.iv1697.i
  %i.eds = load float, ptr %i.edr, align 4, !tbaa !12
  %i.edt = fcmp reassoc nsz arcp contract afn ole float %i.eds, %i.ebr
  %i.edu = zext i1 %i.edt to i8
  %i.edv = add i8 %i.edq, %i.edu                  ; 2 uses
  store i8 %i.edv, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.edw = getelementptr inbounds nuw [4 x i8], ptr %i.ebb, i64 %i.ecd
  %i.edx = load float, ptr %i.edw, align 4, !tbaa !12
  %i.edy = fcmp reassoc nsz arcp contract afn ole float %i.edx, %i.ebr
  %i.edz = zext i1 %i.edy to i8
  %i.eea = add i8 %i.edv, %i.edz                  ; 2 uses
  store i8 %i.eea, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.eeb = getelementptr inbounds [4 x i8], ptr %i.ebc, i64 %i.ebs
  %i.eec = load float, ptr %i.eeb, align 4, !tbaa !12
  %i.eed = fcmp reassoc nsz arcp contract afn ole float %i.eec, %i.ebr
  %i.eee = zext i1 %i.eed to i8
  %i.eef = add i8 %i.eea, %i.eee
  %i.eeg = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %indvars.iv1697.i
  %i.eeh = load float, ptr %i.eeg, align 4, !tbaa !12
  %i.eei = fcmp reassoc nsz arcp contract afn ole float %i.eeh, %i.ebr
  %i.eej = zext i1 %i.eei to i8
  %i.eek = add i8 %i.eef, %i.eej
  %i.eel = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %i.ecd
  %i.eem = load float, ptr %i.eel, align 4, !tbaa !12
  %i.een = fcmp reassoc nsz arcp contract afn ole float %i.eem, %i.ebr
  %i.eeo = zext i1 %i.een to i8
  %i.eep = add i8 %i.eek, %i.eeo                  ; 2 uses
  store i8 %i.eep, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.eeq = getelementptr inbounds [4 x i8], ptr %i.ebd, i64 %i.ebs
  %i.eer = load float, ptr %i.eeq, align 4, !tbaa !12
  %i.ees = fcmp reassoc nsz arcp contract afn ole float %i.eer, %i.ebr
  %i.eet = zext i1 %i.ees to i8
  %i.eeu = add i8 %i.eep, %i.eet
  %i.eev = getelementptr inbounds nuw [4 x i8], ptr %i.ebd, i64 %indvars.iv1697.i
  %i.eew = load float, ptr %i.eev, align 4, !tbaa !12
  %i.eex = fcmp reassoc nsz arcp contract afn ole float %i.eew, %i.ebr
  %i.eey = zext i1 %i.eex to i8
  %i.eez = add i8 %i.eeu, %i.eey
  %i.efa = getelementptr inbounds nuw [4 x i8], ptr %i.ebd, i64 %i.ecd
  %i.efb = load float, ptr %i.efa, align 4, !tbaa !12
  %i.efc = fcmp reassoc nsz arcp contract afn ole float %i.efb, %i.ebr
  %i.efd = zext i1 %i.efc to i8
  %i.efe = add i8 %i.eez, %i.efd
  store i8 %i.efe, ptr %gep1415.1.i, align 1, !tbaa !133
  %gep1415.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1414.i, i64 29768 ; 6 uses
  %.promoted1407.2.i = load i8, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.eff = getelementptr inbounds [4 x i8], ptr %i.ebe, i64 %i.ebs
  %i.efg = load float, ptr %i.eff, align 4, !tbaa !12
  %i.efh = fcmp reassoc nsz arcp contract afn ole float %i.efg, %i.ebr
  %i.efi = zext i1 %i.efh to i8
  %i.efj = add i8 %.promoted1407.2.i, %i.efi      ; 2 uses
  store i8 %i.efj, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.efk = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %indvars.iv1697.i
  %i.efl = load float, ptr %i.efk, align 4, !tbaa !12
  %i.efm = fcmp reassoc nsz arcp contract afn ole float %i.efl, %i.ebr
  %i.efn = zext i1 %i.efm to i8
  %i.efo = add i8 %i.efj, %i.efn                  ; 2 uses
  store i8 %i.efo, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.efp = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %i.ecd
  %i.efq = load float, ptr %i.efp, align 4, !tbaa !12
  %i.efr = fcmp reassoc nsz arcp contract afn ole float %i.efq, %i.ebr
  %i.efs = zext i1 %i.efr to i8
  %i.eft = add i8 %i.efo, %i.efs                  ; 2 uses
  store i8 %i.eft, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.efu = getelementptr inbounds [4 x i8], ptr %i.ebf, i64 %i.ebs
  %i.efv = load float, ptr %i.efu, align 4, !tbaa !12
  %i.efw = fcmp reassoc nsz arcp contract afn ole float %i.efv, %i.ebr
  %i.efx = zext i1 %i.efw to i8
  %i.efy = add i8 %i.eft, %i.efx
  %i.efz = getelementptr inbounds nuw [4 x i8], ptr %i.ebf, i64 %indvars.iv1697.i
  %i.ega = load float, ptr %i.efz, align 4, !tbaa !12
  %i.egb = fcmp reassoc nsz arcp contract afn ole float %i.ega, %i.ebr
  %i.egc = zext i1 %i.egb to i8
  %i.egd = add i8 %i.efy, %i.egc
  %i.ege = getelementptr inbounds nuw [4 x i8], ptr %i.ebf, i64 %i.ecd
  %i.egf = load float, ptr %i.ege, align 4, !tbaa !12
  %i.egg = fcmp reassoc nsz arcp contract afn ole float %i.egf, %i.ebr
  %i.egh = zext i1 %i.egg to i8
  %i.egi = add i8 %i.egd, %i.egh                  ; 2 uses
  store i8 %i.egi, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.egj = getelementptr inbounds [4 x i8], ptr %i.ebg, i64 %i.ebs
  %i.egk = load float, ptr %i.egj, align 4, !tbaa !12
  %i.egl = fcmp reassoc nsz arcp contract afn ole float %i.egk, %i.ebr
  %i.egm = zext i1 %i.egl to i8
  %i.egn = add i8 %i.egi, %i.egm
  %i.ego = getelementptr inbounds nuw [4 x i8], ptr %i.ebg, i64 %indvars.iv1697.i
  %i.egp = load float, ptr %i.ego, align 4, !tbaa !12
  %i.egq = fcmp reassoc nsz arcp contract afn ole float %i.egp, %i.ebr
  %i.egr = zext i1 %i.egq to i8
  %i.egs = add i8 %i.egn, %i.egr
  %i.egt = getelementptr inbounds nuw [4 x i8], ptr %i.ebg, i64 %i.ecd
  %i.egu = load float, ptr %i.egt, align 4, !tbaa !12
  %i.egv = fcmp reassoc nsz arcp contract afn ole float %i.egu, %i.ebr
  %i.egw = zext i1 %i.egv to i8
  %i.egx = add i8 %i.egs, %i.egw
  store i8 %i.egx, ptr %gep1415.2.i, align 1, !tbaa !133
  %gep1415.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1414.i, i64 44652 ; 6 uses
  %.promoted1407.3.i = load i8, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.egy = getelementptr inbounds [4 x i8], ptr %i.ebh, i64 %i.ebs
  %i.egz = load float, ptr %i.egy, align 4, !tbaa !12
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.ehn = getelementptr inbounds [4 x i8], ptr %i.ebi, i64 %i.ebs
  %i.eho = load float, ptr %i.ehn, align 4, !tbaa !12
  %i.ehp = fcmp reassoc nsz arcp contract afn ole float %i.eho, %i.ebr
  %i.ehq = zext i1 %i.ehp to i8
  %i.ehr = add i8 %i.ehm, %i.ehq
  %i.ehs = getelementptr inbounds nuw [4 x i8], ptr %i.ebi, i64 %indvars.iv1697.i
  %i.eht = load float, ptr %i.ehs, align 4, !tbaa !12
  %i.ehu = fcmp reassoc nsz arcp contract afn ole float %i.eht, %i.ebr
  %i.ehv = zext i1 %i.ehu to i8
  %i.ehw = add i8 %i.ehr, %i.ehv
  %i.ehx = getelementptr inbounds nuw [4 x i8], ptr %i.ebi, i64 %i.ecd
  %i.ehy = load float, ptr %i.ehx, align 4, !tbaa !12
  %i.ehz = fcmp reassoc nsz arcp contract afn ole float %i.ehy, %i.ebr
  %i.eia = zext i1 %i.ehz to i8
  %i.eib = add i8 %i.ehw, %i.eia                  ; 2 uses
  store i8 %i.eib, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.eic = getelementptr inbounds [4 x i8], ptr %i.eax, i64 %i.ebs
  %i.eid = load float, ptr %i.eic, align 4, !tbaa !12
  %i.eie = fcmp reassoc nsz arcp contract afn ole float %i.eid, %i.ebr
  %i.eif = zext i1 %i.eie to i8
  %i.eig = add i8 %i.eib, %i.eif
  %i.eih = getelementptr inbounds nuw [4 x i8], ptr %i.eax, i64 %indvars.iv1697.i
  %i.eii = load float, ptr %i.eih, align 4, !tbaa !12
  %i.eij = fcmp reassoc nsz arcp contract afn ole float %i.eii, %i.ebr
  %i.eik = zext i1 %i.eij to i8
  %i.eil = add i8 %i.eig, %i.eik
  %i.eim = getelementptr inbounds nuw [4 x i8], ptr %i.eax, i64 %i.ecd
  %i.ein = load float, ptr %i.eim, align 4, !tbaa !12
  %i.eio = fcmp reassoc nsz arcp contract afn ole float %i.ein, %i.ebr
  %i.eip = zext i1 %i.eio to i8
  %i.eiq = add i8 %i.eil, %i.eip
  store i8 %i.eiq, ptr %gep1415.3.i, align 1, !tbaa !133
  %exitcond1219.not = icmp eq i64 %i.ecd, %umax1218
  br i1 %exitcond1219.not, label %._crit_edge1418.i, label %.preheader1248.i

._crit_edge1418.i:                                ; preds = %.preheader1248.i
  %exitcond1224.not = icmp eq i64 %i.eaw, %i.cek
  br i1 %exitcond1224.not, label %.preheader1266.i, label %.preheader1260.i

.preheader1265.split.i:                           ; preds = %._crit_edge1425.us.3.i, %.split1046.thread, %.preheader1266.i, %.split1046
  %i.eir = icmp sgt i32 %i.dpz, 12
  %or.cond725 = select i1 %i.cdz, i1 %i.eir, i1 false
  br i1 %or.cond725, label %.preheader1258.preheader.i, label %._crit_edge1503.split.i

.preheader1258.lr.ph.i.unr-lcssa:                 ; preds = %.lr.ph1427.split.3.i
  br i1 %lcmp.mod4775.not, label %.preheader1258.lr.ph.i, label %.lr.ph1427.split.3.i.epil.preheader

.lr.ph1427.split.3.i.epil.preheader:              ; preds = %.preheader1258.lr.ph.i.unr-lcssa, %.lr.ph1427.split.3.i.preheader
  %indvars.iv1703.3.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.3.i.preheader ], [ %indvars.iv.next1704.3.i.7, %.preheader1258.lr.ph.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4776)
  br label %.lr.ph1427.split.3.i.epil

.lr.ph1427.split.3.i.epil:                        ; preds = %.lr.ph1427.split.3.i.epil, %.lr.ph1427.split.3.i.epil.preheader
  %indvars.iv1703.3.i.epil = phi i64 [ %indvars.iv.next1704.3.i.epil, %.lr.ph1427.split.3.i.epil ], [ %indvars.iv1703.3.i.epil.init, %.lr.ph1427.split.3.i.epil.preheader ] ; 2 uses
  %epil.iter4774 = phi i64 [ %epil.iter4774.next, %.lr.ph1427.split.3.i.epil ], [ 0, %.lr.ph1427.split.3.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eis = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i.epil
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eis, i64 818628
  store i8 0, ptr %i.eit, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.3.i.epil = add nuw nsw i64 %indvars.iv1703.3.i.epil, 1
  %epil.iter4774.next = add i64 %epil.iter4774, 1 ; 2 uses
  %epil.iter4774.cmp.not = icmp eq i64 %epil.iter4774.next, %xtraiter4773
  br i1 %epil.iter4774.cmp.not, label %.preheader1258.lr.ph.i, label %.lr.ph1427.split.3.i.epil, !llvm.loop !216

.preheader1258.lr.ph.i:                           ; preds = %.lr.ph1427.split.3.i.epil, %.preheader1258.lr.ph.i.unr-lcssa
  %.old = icmp sgt i32 %i.dpz, 12
  br i1 %.old, label %.preheader1258.preheader.i, label %._crit_edge1503.split.i

.preheader1258.preheader.i:                       ; preds = %.preheader1265.split.i, %.preheader1258.lr.ph.i
  %i.eiu = add nsw i64 %umax1228, -7
  br label %.preheader1258.i

.preheader1237.lr.ph.us.i:                        ; preds = %.preheader1259.preheader.i, %._crit_edge1425.us.i
  %indvar4533 = phi i64 [ %indvar.next4534, %._crit_edge1425.us.i ], [ 0, %.preheader1259.preheader.i ] ; 2 uses
  %indvars.iv1712.i = phi i64 [ %i.eiz, %._crit_edge1425.us.i ], [ 13, %.preheader1259.preheader.i ] ; 3 uses
  %i.eiv = mul nuw nsw i64 %indvar4533, 122
  %i.eiw = getelementptr i8, ptr %i.bqy, i64 %i.eiv
  %scevgep4535 = getelementptr i8, ptr %i.eiw, i64 775562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.eix = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1712.i ; 2 uses
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.eix, i64 8
  store i8 0, ptr %i.eiy, align 2, !tbaa !133
  %i.eiz = add nuw nsw i64 %indvars.iv1712.i, 1   ; 3 uses
  %load_initial4536 = load i8, ptr %scevgep4535, align 2
  br label %.preheader1237.us.i

.preheader1237.us.i:                              ; preds = %.preheader1237.us.i, %.preheader1237.lr.ph.us.i
  %store_forwarded4537 = phi i8 [ %load_initial4536, %.preheader1237.lr.ph.us.i ], [ %i.ejx, %.preheader1237.us.i ]
  %indvars.iv1709.i = phi i64 [ 9, %.preheader1237.lr.ph.us.i ], [ %indvars.iv.next1710.i, %.preheader1237.us.i ] ; 4 uses
  %invariant.gep1420.us.i = getelementptr i8, ptr %i.cay, i64 %indvars.iv1709.i ; 2 uses
  %i.eja = getelementptr [122 x i8], ptr %invariant.gep1420.us.i, i64 %indvars.iv1712.i ; 4 uses
  %i.ejb = getelementptr i8, ptr %i.eja, i64 -242
  %i.ejc = load i8, ptr %i.ejb, align 1, !tbaa !133
  %i.ejd = getelementptr i8, ptr %i.eja, i64 -120
  %i.eje = load i8, ptr %i.ejd, align 1, !tbaa !133
  %i.ejf = getelementptr inbounds nuw i8, ptr %i.eja, i64 2
  %i.ejg = load i8, ptr %i.ejf, align 1, !tbaa !133
  %gep1421.us.3.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.i, i64 %i.eiz
  %i.ejh = getelementptr inbounds nuw i8, ptr %gep1421.us.3.i, i64 2
  %i.eji = load i8, ptr %i.ejh, align 1, !tbaa !133
  %i.ejj = getelementptr i8, ptr %i.eja, i64 246
  %i.ejk = load i8, ptr %i.ejj, align 1, !tbaa !133
  %i.ejl = insertelement <4 x i8> poison, i8 %i.eje, i64 0
  %i.ejm = insertelement <4 x i8> %i.ejl, i8 %i.ejc, i64 1
  %i.ejn = insertelement <4 x i8> %i.ejm, i8 %i.ejg, i64 2
  %i.ejo = insertelement <4 x i8> %i.ejn, i8 %i.eji, i64 3
  %i.ejp = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ejo)
  %op.rdx4590 = add i8 %i.ejp, %i.ejk             ; 2 uses
  %i.ejq = getelementptr i8, ptr %i.eix, i64 %indvars.iv1709.i
  %i.ejr = trunc nuw nsw i64 %indvars.iv1709.i to i32
  %i.ejs = urem i32 %i.ejr, 5
  %i.ejt = zext nneg i32 %i.ejs to i64
  %i.eju = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ejt ; 2 uses
  %i.ejv = load i8, ptr %i.eju, align 1, !tbaa !133
  %i.ejw = add i8 %store_forwarded4537, %op.rdx4590
  %i.ejx = sub i8 %i.ejw, %i.ejv                  ; 2 uses
  store i8 %i.ejx, ptr %i.ejq, align 1, !tbaa !133
  store i8 %op.rdx4590, ptr %i.eju, align 1, !tbaa !133
  %indvars.iv.next1710.i = add nuw nsw i64 %indvars.iv1709.i, 1 ; 2 uses
  %exitcond1757.not.i = icmp eq i64 %indvars.iv.next1710.i, %smax1756.i
  br i1 %exitcond1757.not.i, label %._crit_edge1425.us.i, label %.preheader1237.us.i

._crit_edge1425.us.i:                             ; preds = %.preheader1237.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1760.not.i = icmp eq i64 %i.eiz, %smax1762.i
  %indvar.next4534 = add i64 %indvar4533, 1
  br i1 %exitcond1760.not.i, label %.preheader1237.lr.ph.us.1.i, label %.preheader1237.lr.ph.us.i

.lr.ph1427.split.1.i:                             ; preds = %.lr.ph1427.split.1.i.preheader, %.lr.ph1427.split.1.i
  %indvars.iv1703.1.i = phi i64 [ %indvars.iv.next1704.1.i.7, %.lr.ph1427.split.1.i ], [ 13, %.lr.ph1427.split.1.i.preheader ] ; 9 uses
  %niter4766 = phi i64 [ %niter4766.next.7, %.lr.ph1427.split.1.i ], [ 0, %.lr.ph1427.split.1.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejy = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ejz = getelementptr inbounds nuw i8, ptr %i.ejy, i64 788860
  store i8 0, ptr %i.ejz, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eka = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekb = getelementptr inbounds nuw i8, ptr %i.eka, i64 788982
  store i8 0, ptr %i.ekb, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekc = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekd = getelementptr inbounds nuw i8, ptr %i.ekc, i64 789104
  store i8 0, ptr %i.ekd, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eke = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekf = getelementptr inbounds nuw i8, ptr %i.eke, i64 789226
  store i8 0, ptr %i.ekf, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekg = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekh = getelementptr inbounds nuw i8, ptr %i.ekg, i64 789348
  store i8 0, ptr %i.ekh, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eki = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.eki, i64 789470
  store i8 0, ptr %i.ekj, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekk = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ekk, i64 789592
  store i8 0, ptr %i.ekl, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekm = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.ekm, i64 789714
  store i8 0, ptr %i.ekn, align 4, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.1.i.7 = add nuw nsw i64 %indvars.iv1703.1.i, 8 ; 2 uses
  %niter4766.next.7 = add i64 %niter4766, 8       ; 2 uses
  %niter4766.ncmp.7 = icmp eq i64 %niter4766.next.7, %unroll_iter4765
  br i1 %niter4766.ncmp.7, label %.lr.ph1427.split.2.i.preheader.unr-lcssa, label %.lr.ph1427.split.1.i

.lr.ph1427.split.2.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.1.i
  br i1 %lcmp.mod4763.not, label %.lr.ph1427.split.2.i.preheader, label %.lr.ph1427.split.1.i.epil.preheader

.lr.ph1427.split.1.i.epil.preheader:              ; preds = %.lr.ph1427.split.2.i.preheader.unr-lcssa, %.lr.ph1427.split.1.i.preheader
  %indvars.iv1703.1.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.1.i.preheader ], [ %indvars.iv.next1704.1.i.7, %.lr.ph1427.split.2.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4764)
  br label %.lr.ph1427.split.1.i.epil

.lr.ph1427.split.1.i.epil:                        ; preds = %.lr.ph1427.split.1.i.epil, %.lr.ph1427.split.1.i.epil.preheader
  %indvars.iv1703.1.i.epil = phi i64 [ %indvars.iv.next1704.1.i.epil, %.lr.ph1427.split.1.i.epil ], [ %indvars.iv1703.1.i.epil.init, %.lr.ph1427.split.1.i.epil.preheader ] ; 2 uses
  %epil.iter4762 = phi i64 [ %epil.iter4762.next, %.lr.ph1427.split.1.i.epil ], [ 0, %.lr.ph1427.split.1.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eko = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.1.i.epil
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.eko, i64 788860
  store i8 0, ptr %i.ekp, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.1.i.epil = add nuw nsw i64 %indvars.iv1703.1.i.epil, 1
  %epil.iter4762.next = add i64 %epil.iter4762, 1 ; 2 uses
  %epil.iter4762.cmp.not = icmp eq i64 %epil.iter4762.next, %xtraiter4761
  br i1 %epil.iter4762.cmp.not, label %.lr.ph1427.split.2.i.preheader, label %.lr.ph1427.split.1.i.epil, !llvm.loop !217

.lr.ph1427.split.2.i.preheader:                   ; preds = %.lr.ph1427.split.1.i.epil, %.lr.ph1427.split.2.i.preheader.unr-lcssa
  br i1 %8, label %.lr.ph1427.split.2.i.epil.preheader, label %.lr.ph1427.split.2.i

.preheader1237.lr.ph.us.1.i:                      ; preds = %._crit_edge1425.us.i, %._crit_edge1425.us.1.i
  %indvar4538 = phi i64 [ %indvar.next4539, %._crit_edge1425.us.1.i ], [ 0, %._crit_edge1425.us.i ] ; 2 uses
  %indvars.iv1712.1.i = phi i64 [ %i.eku, %._crit_edge1425.us.1.i ], [ 13, %._crit_edge1425.us.i ] ; 3 uses
  %i.ekq = mul nuw nsw i64 %indvar4538, 122
  %i.ekr = getelementptr i8, ptr %i.bqy, i64 %i.ekq
  %scevgep4540 = getelementptr i8, ptr %i.ekr, i64 790446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.eks = getelementptr inbounds nuw [122 x i8], ptr %i.cbt, i64 %indvars.iv1712.1.i ; 2 uses
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.eks, i64 8
  store i8 0, ptr %i.ekt, align 2, !tbaa !133
  %i.eku = add nuw nsw i64 %indvars.iv1712.1.i, 1 ; 3 uses
  %load_initial4541 = load i8, ptr %scevgep4540, align 2
  br label %.preheader1237.us.1.i

.preheader1237.us.1.i:                            ; preds = %.preheader1237.us.1.i, %.preheader1237.lr.ph.us.1.i
  %store_forwarded4542 = phi i8 [ %load_initial4541, %.preheader1237.lr.ph.us.1.i ], [ %i.els, %.preheader1237.us.1.i ]
  %indvars.iv1709.1.i = phi i64 [ 9, %.preheader1237.lr.ph.us.1.i ], [ %indvars.iv.next1710.1.i, %.preheader1237.us.1.i ] ; 4 uses
  %invariant.gep1420.us.1.i = getelementptr i8, ptr %i.cbu, i64 %indvars.iv1709.1.i ; 2 uses
  %i.ekv = getelementptr [122 x i8], ptr %invariant.gep1420.us.1.i, i64 %indvars.iv1712.1.i ; 4 uses
  %i.ekw = getelementptr i8, ptr %i.ekv, i64 -242
  %i.ekx = load i8, ptr %i.ekw, align 1, !tbaa !133
  %i.eky = getelementptr i8, ptr %i.ekv, i64 -120
  %i.ekz = load i8, ptr %i.eky, align 1, !tbaa !133
  %i.ela = getelementptr inbounds nuw i8, ptr %i.ekv, i64 2
  %i.elb = load i8, ptr %i.ela, align 1, !tbaa !133
  %gep1421.us.3.1.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.1.i, i64 %i.eku
  %i.elc = getelementptr inbounds nuw i8, ptr %gep1421.us.3.1.i, i64 2
  %i.eld = load i8, ptr %i.elc, align 1, !tbaa !133
  %i.ele = getelementptr i8, ptr %i.ekv, i64 246
  %i.elf = load i8, ptr %i.ele, align 1, !tbaa !133
  %i.elg = insertelement <4 x i8> poison, i8 %i.ekz, i64 0
  %i.elh = insertelement <4 x i8> %i.elg, i8 %i.ekx, i64 1
  %i.eli = insertelement <4 x i8> %i.elh, i8 %i.elb, i64 2
  %i.elj = insertelement <4 x i8> %i.eli, i8 %i.eld, i64 3
  %i.elk = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.elj)
  %op.rdx4589 = add i8 %i.elk, %i.elf             ; 2 uses
  %i.ell = getelementptr i8, ptr %i.eks, i64 %indvars.iv1709.1.i
  %i.elm = trunc nuw nsw i64 %indvars.iv1709.1.i to i32
  %i.eln = urem i32 %i.elm, 5
  %i.elo = zext nneg i32 %i.eln to i64
  %i.elp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.elo ; 2 uses
  %i.elq = load i8, ptr %i.elp, align 1, !tbaa !133
  %i.elr = add i8 %store_forwarded4542, %op.rdx4589
  %i.els = sub i8 %i.elr, %i.elq                  ; 2 uses
  store i8 %i.els, ptr %i.ell, align 1, !tbaa !133
  store i8 %op.rdx4589, ptr %i.elp, align 1, !tbaa !133
  %indvars.iv.next1710.1.i = add nuw nsw i64 %indvars.iv1709.1.i, 1 ; 2 uses
  %exitcond1748.not.i = icmp eq i64 %indvars.iv.next1710.1.i, %smax1756.i
  br i1 %exitcond1748.not.i, label %._crit_edge1425.us.1.i, label %.preheader1237.us.1.i

._crit_edge1425.us.1.i:                           ; preds = %.preheader1237.us.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1751.not.i = icmp eq i64 %i.eku, %smax1762.i
  %indvar.next4539 = add i64 %indvar4538, 1
  br i1 %exitcond1751.not.i, label %.preheader1237.lr.ph.us.2.i, label %.preheader1237.lr.ph.us.1.i

.lr.ph1427.split.2.i:                             ; preds = %.lr.ph1427.split.2.i.preheader, %.lr.ph1427.split.2.i
  %indvars.iv1703.2.i = phi i64 [ %indvars.iv.next1704.2.i.7, %.lr.ph1427.split.2.i ], [ 13, %.lr.ph1427.split.2.i.preheader ] ; 9 uses
  %niter4772 = phi i64 [ %niter4772.next.7, %.lr.ph1427.split.2.i ], [ 0, %.lr.ph1427.split.2.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elt = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.elu = getelementptr inbounds nuw i8, ptr %i.elt, i64 803744
  store i8 0, ptr %i.elu, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elv = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elv, i64 803866
  store i8 0, ptr %i.elw, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elx = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.ely = getelementptr inbounds nuw i8, ptr %i.elx, i64 803988
  store i8 0, ptr %i.ely, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elz = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.ema = getelementptr inbounds nuw i8, ptr %i.elz, i64 804110
  store i8 0, ptr %i.ema, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emb = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.emc = getelementptr inbounds nuw i8, ptr %i.emb, i64 804232
  store i8 0, ptr %i.emc, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emd = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.eme = getelementptr inbounds nuw i8, ptr %i.emd, i64 804354
  store i8 0, ptr %i.eme, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emf = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.emg = getelementptr inbounds nuw i8, ptr %i.emf, i64 804476
  store i8 0, ptr %i.emg, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emh = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i
  %i.emi = getelementptr inbounds nuw i8, ptr %i.emh, i64 804598
  store i8 0, ptr %i.emi, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.2.i.7 = add nuw nsw i64 %indvars.iv1703.2.i, 8 ; 2 uses
  %niter4772.next.7 = add i64 %niter4772, 8       ; 2 uses
  %niter4772.ncmp.7 = icmp eq i64 %niter4772.next.7, %unroll_iter4771
  br i1 %niter4772.ncmp.7, label %.lr.ph1427.split.3.i.preheader.unr-lcssa, label %.lr.ph1427.split.2.i

.lr.ph1427.split.3.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.2.i
  br i1 %lcmp.mod4769.not, label %.lr.ph1427.split.3.i.preheader, label %.lr.ph1427.split.2.i.epil.preheader

.lr.ph1427.split.2.i.epil.preheader:              ; preds = %.lr.ph1427.split.3.i.preheader.unr-lcssa, %.lr.ph1427.split.2.i.preheader
  %indvars.iv1703.2.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.2.i.preheader ], [ %indvars.iv.next1704.2.i.7, %.lr.ph1427.split.3.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4770)
  br label %.lr.ph1427.split.2.i.epil

.lr.ph1427.split.2.i.epil:                        ; preds = %.lr.ph1427.split.2.i.epil, %.lr.ph1427.split.2.i.epil.preheader
  %indvars.iv1703.2.i.epil = phi i64 [ %indvars.iv.next1704.2.i.epil, %.lr.ph1427.split.2.i.epil ], [ %indvars.iv1703.2.i.epil.init, %.lr.ph1427.split.2.i.epil.preheader ] ; 2 uses
  %epil.iter4768 = phi i64 [ %epil.iter4768.next, %.lr.ph1427.split.2.i.epil ], [ 0, %.lr.ph1427.split.2.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emj = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.2.i.epil
  %i.emk = getelementptr inbounds nuw i8, ptr %i.emj, i64 803744
  store i8 0, ptr %i.emk, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.2.i.epil = add nuw nsw i64 %indvars.iv1703.2.i.epil, 1
  %epil.iter4768.next = add i64 %epil.iter4768, 1 ; 2 uses
  %epil.iter4768.cmp.not = icmp eq i64 %epil.iter4768.next, %xtraiter4767
  br i1 %epil.iter4768.cmp.not, label %.lr.ph1427.split.3.i.preheader, label %.lr.ph1427.split.2.i.epil, !llvm.loop !218

.lr.ph1427.split.3.i.preheader:                   ; preds = %.lr.ph1427.split.2.i.epil, %.lr.ph1427.split.3.i.preheader.unr-lcssa
  br i1 %9, label %.lr.ph1427.split.3.i.epil.preheader, label %.lr.ph1427.split.3.i

.preheader1237.lr.ph.us.2.i:                      ; preds = %._crit_edge1425.us.1.i, %._crit_edge1425.us.2.i
  %indvar4543 = phi i64 [ %indvar.next4544, %._crit_edge1425.us.2.i ], [ 0, %._crit_edge1425.us.1.i ] ; 2 uses
  %indvars.iv1712.2.i = phi i64 [ %i.emp, %._crit_edge1425.us.2.i ], [ 13, %._crit_edge1425.us.1.i ] ; 3 uses
  %i.eml = mul nuw nsw i64 %indvar4543, 122
  %i.emm = getelementptr i8, ptr %i.bqy, i64 %i.eml
  %scevgep4545 = getelementptr i8, ptr %i.emm, i64 805330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.emn = getelementptr inbounds nuw [122 x i8], ptr %i.cbv, i64 %indvars.iv1712.2.i ; 2 uses
  %i.emo = getelementptr inbounds nuw i8, ptr %i.emn, i64 8
  store i8 0, ptr %i.emo, align 2, !tbaa !133
  %i.emp = add nuw nsw i64 %indvars.iv1712.2.i, 1 ; 3 uses
  %load_initial4546 = load i8, ptr %scevgep4545, align 2
  br label %.preheader1237.us.2.i

.preheader1237.us.2.i:                            ; preds = %.preheader1237.us.2.i, %.preheader1237.lr.ph.us.2.i
  %store_forwarded4547 = phi i8 [ %load_initial4546, %.preheader1237.lr.ph.us.2.i ], [ %i.enn, %.preheader1237.us.2.i ]
  %indvars.iv1709.2.i = phi i64 [ 9, %.preheader1237.lr.ph.us.2.i ], [ %indvars.iv.next1710.2.i, %.preheader1237.us.2.i ] ; 4 uses
  %invariant.gep1420.us.2.i = getelementptr i8, ptr %i.cbw, i64 %indvars.iv1709.2.i ; 2 uses
  %i.emq = getelementptr [122 x i8], ptr %invariant.gep1420.us.2.i, i64 %indvars.iv1712.2.i ; 4 uses
  %i.emr = getelementptr i8, ptr %i.emq, i64 -242
  %i.ems = load i8, ptr %i.emr, align 1, !tbaa !133
  %i.emt = getelementptr i8, ptr %i.emq, i64 -120
  %i.emu = load i8, ptr %i.emt, align 1, !tbaa !133
  %i.emv = getelementptr inbounds nuw i8, ptr %i.emq, i64 2
  %i.emw = load i8, ptr %i.emv, align 1, !tbaa !133
  %gep1421.us.3.2.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.2.i, i64 %i.emp
  %i.emx = getelementptr inbounds nuw i8, ptr %gep1421.us.3.2.i, i64 2
  %i.emy = load i8, ptr %i.emx, align 1, !tbaa !133
  %i.emz = getelementptr i8, ptr %i.emq, i64 246
  %i.ena = load i8, ptr %i.emz, align 1, !tbaa !133
  %i.enb = insertelement <4 x i8> poison, i8 %i.emu, i64 0
  %i.enc = insertelement <4 x i8> %i.enb, i8 %i.ems, i64 1
  %i.end = insertelement <4 x i8> %i.enc, i8 %i.emw, i64 2
  %i.ene = insertelement <4 x i8> %i.end, i8 %i.emy, i64 3
  %i.enf = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ene)
  %op.rdx4588 = add i8 %i.enf, %i.ena             ; 2 uses
  %i.eng = getelementptr i8, ptr %i.emn, i64 %indvars.iv1709.2.i
  %i.enh = trunc nuw nsw i64 %indvars.iv1709.2.i to i32
  %i.eni = urem i32 %i.enh, 5
  %i.enj = zext nneg i32 %i.eni to i64
  %i.enk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.enj ; 2 uses
  %i.enl = load i8, ptr %i.enk, align 1, !tbaa !133
  %i.enm = add i8 %store_forwarded4547, %op.rdx4588
  %i.enn = sub i8 %i.enm, %i.enl                  ; 2 uses
  store i8 %i.enn, ptr %i.eng, align 1, !tbaa !133
  store i8 %op.rdx4588, ptr %i.enk, align 1, !tbaa !133
  %indvars.iv.next1710.2.i = add nuw nsw i64 %indvars.iv1709.2.i, 1 ; 2 uses
  %exitcond1739.not.i = icmp eq i64 %indvars.iv.next1710.2.i, %smax1756.i
  br i1 %exitcond1739.not.i, label %._crit_edge1425.us.2.i, label %.preheader1237.us.2.i

._crit_edge1425.us.2.i:                           ; preds = %.preheader1237.us.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1742.not.i = icmp eq i64 %i.emp, %smax1762.i
  %indvar.next4544 = add i64 %indvar4543, 1
  br i1 %exitcond1742.not.i, label %.preheader1237.lr.ph.us.3.i, label %.preheader1237.lr.ph.us.2.i

.lr.ph1427.split.3.i:                             ; preds = %.lr.ph1427.split.3.i.preheader, %.lr.ph1427.split.3.i
  %indvars.iv1703.3.i = phi i64 [ %indvars.iv.next1704.3.i.7, %.lr.ph1427.split.3.i ], [ 13, %.lr.ph1427.split.3.i.preheader ] ; 9 uses
  %niter4778 = phi i64 [ %niter4778.next.7, %.lr.ph1427.split.3.i ], [ 0, %.lr.ph1427.split.3.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eno = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.enp = getelementptr inbounds nuw i8, ptr %i.eno, i64 818628
  store i8 0, ptr %i.enp, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enq = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.enr = getelementptr inbounds nuw i8, ptr %i.enq, i64 818750
  store i8 0, ptr %i.enr, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ens = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ens, i64 818872
  store i8 0, ptr %i.ent, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enu = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.env = getelementptr inbounds nuw i8, ptr %i.enu, i64 818994
  store i8 0, ptr %i.env, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enw = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.enx = getelementptr inbounds nuw i8, ptr %i.enw, i64 819116
  store i8 0, ptr %i.enx, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eny = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.enz = getelementptr inbounds nuw i8, ptr %i.eny, i64 819238
  store i8 0, ptr %i.enz, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eoa = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.eob = getelementptr inbounds nuw i8, ptr %i.eoa, i64 819360
  store i8 0, ptr %i.eob, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eoc = getelementptr inbounds nuw [122 x i8], ptr %i.bqy, i64 %indvars.iv1703.3.i
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 819482
  store i8 0, ptr %i.eod, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.3.i.7 = add nuw nsw i64 %indvars.iv1703.3.i, 8 ; 2 uses
  %niter4778.next.7 = add i64 %niter4778, 8       ; 2 uses
  %niter4778.ncmp.7 = icmp eq i64 %niter4778.next.7, %unroll_iter4777
  br i1 %niter4778.ncmp.7, label %.preheader1258.lr.ph.i.unr-lcssa, label %.lr.ph1427.split.3.i

.preheader1237.lr.ph.us.3.i:                      ; preds = %._crit_edge1425.us.2.i, %._crit_edge1425.us.3.i
  %indvar4548 = phi i64 [ %indvar.next4549, %._crit_edge1425.us.3.i ], [ 0, %._crit_edge1425.us.2.i ] ; 2 uses
  %indvars.iv1712.3.i = phi i64 [ %i.eoi, %._crit_edge1425.us.3.i ], [ 13, %._crit_edge1425.us.2.i ] ; 3 uses
  %i.eoe = mul nuw nsw i64 %indvar4548, 122
  %i.eof = getelementptr i8, ptr %i.bqy, i64 %i.eoe
  %scevgep4550 = getelementptr i8, ptr %i.eof, i64 820214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.eog = getelementptr inbounds nuw [122 x i8], ptr %i.cbx, i64 %indvars.iv1712.3.i ; 2 uses
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eog, i64 8
  store i8 0, ptr %i.eoh, align 2, !tbaa !133
  %i.eoi = add nuw nsw i64 %indvars.iv1712.3.i, 1 ; 3 uses
  %load_initial4551 = load i8, ptr %scevgep4550, align 2
  br label %.preheader1237.us.3.i

.preheader1237.us.3.i:                            ; preds = %.preheader1237.us.3.i, %.preheader1237.lr.ph.us.3.i
  %store_forwarded4552 = phi i8 [ %load_initial4551, %.preheader1237.lr.ph.us.3.i ], [ %i.epg, %.preheader1237.us.3.i ]
  %indvars.iv1709.3.i = phi i64 [ 9, %.preheader1237.lr.ph.us.3.i ], [ %indvars.iv.next1710.3.i, %.preheader1237.us.3.i ] ; 4 uses
  %invariant.gep1420.us.3.i = getelementptr i8, ptr %i.cby, i64 %indvars.iv1709.3.i ; 2 uses
  %i.eoj = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %indvars.iv1712.3.i ; 4 uses
  %i.eok = getelementptr i8, ptr %i.eoj, i64 -242
  %i.eol = load i8, ptr %i.eok, align 1, !tbaa !133
  %i.eom = getelementptr i8, ptr %i.eoj, i64 -120
  %i.eon = load i8, ptr %i.eom, align 1, !tbaa !133
  %i.eoo = getelementptr inbounds nuw i8, ptr %i.eoj, i64 2
  %i.eop = load i8, ptr %i.eoo, align 1, !tbaa !133
  %gep1421.us.3.3.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %i.eoi
  %i.eoq = getelementptr inbounds nuw i8, ptr %gep1421.us.3.3.i, i64 2
  %i.eor = load i8, ptr %i.eoq, align 1, !tbaa !133
  %i.eos = getelementptr i8, ptr %i.eoj, i64 246
  %i.eot = load i8, ptr %i.eos, align 1, !tbaa !133
  %i.eou = insertelement <4 x i8> poison, i8 %i.eon, i64 0
  %i.eov = insertelement <4 x i8> %i.eou, i8 %i.eol, i64 1
  %i.eow = insertelement <4 x i8> %i.eov, i8 %i.eop, i64 2
  %i.eox = insertelement <4 x i8> %i.eow, i8 %i.eor, i64 3
  %i.eoy = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.eox)
  %op.rdx4587 = add i8 %i.eoy, %i.eot             ; 2 uses
  %i.eoz = getelementptr i8, ptr %i.eog, i64 %indvars.iv1709.3.i
  %i.epa = trunc nuw nsw i64 %indvars.iv1709.3.i to i32
  %i.epb = urem i32 %i.epa, 5
  %i.epc = zext nneg i32 %i.epb to i64
  %i.epd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.epc ; 2 uses
  %i.epe = load i8, ptr %i.epd, align 1, !tbaa !133
  %i.epf = add i8 %store_forwarded4552, %op.rdx4587
  %i.epg = sub i8 %i.epf, %i.epe                  ; 2 uses
  store i8 %i.epg, ptr %i.eoz, align 1, !tbaa !133
  store i8 %op.rdx4587, ptr %i.epd, align 1, !tbaa !133
  %indvars.iv.next1710.3.i = add nuw nsw i64 %indvars.iv1709.3.i, 1 ; 2 uses
  %exitcond1726.not.i = icmp eq i64 %indvars.iv.next1710.3.i, %smax1756.i
  br i1 %exitcond1726.not.i, label %._crit_edge1425.us.3.i, label %.preheader1237.us.3.i

._crit_edge1425.us.3.i:                           ; preds = %.preheader1237.us.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1733.not.i = icmp eq i64 %i.eoi, %smax1762.i
  %indvar.next4549 = add i64 %indvar4548, 1
  br i1 %exitcond1733.not.i, label %.preheader1265.split.i, label %.preheader1237.lr.ph.us.3.i

.lr.ph1427.split.i:                               ; preds = %.lr.ph1427.split.i.preheader, %.lr.ph1427.split.i
  %indvars.iv1703.i = phi i64 [ %indvars.iv.next1704.i.7, %.lr.ph1427.split.i ], [ 13, %.lr.ph1427.split.i.preheader ] ; 9 uses
  %niter4760 = phi i64 [ %niter4760.next.7, %.lr.ph1427.split.i ], [ 0, %.lr.ph1427.split.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eph = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epi = getelementptr inbounds nuw i8, ptr %i.eph, i64 8
  store i8 0, ptr %i.epi, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epj = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epk = getelementptr inbounds nuw i8, ptr %i.epj, i64 130
  store i8 0, ptr %i.epk, align 4, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epl = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epm = getelementptr inbounds nuw i8, ptr %i.epl, i64 252
  store i8 0, ptr %i.epm, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epn = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epo = getelementptr inbounds nuw i8, ptr %i.epn, i64 374
  store i8 0, ptr %i.epo, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epp = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epq = getelementptr inbounds nuw i8, ptr %i.epp, i64 496
  store i8 0, ptr %i.epq, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epr = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epr, i64 618
  store i8 0, ptr %i.eps, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ept = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epu = getelementptr inbounds nuw i8, ptr %i.ept, i64 740
  store i8 0, ptr %i.epu, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epv = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i
  %i.epw = getelementptr inbounds nuw i8, ptr %i.epv, i64 862
  store i8 0, ptr %i.epw, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i.7 = add nuw nsw i64 %indvars.iv1703.i, 8 ; 2 uses
  %niter4760.next.7 = add i64 %niter4760, 8       ; 2 uses
  %niter4760.ncmp.7 = icmp eq i64 %niter4760.next.7, %unroll_iter4759
  br i1 %niter4760.ncmp.7, label %.lr.ph1427.split.1.i.preheader.unr-lcssa, label %.lr.ph1427.split.i

.lr.ph1427.split.1.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.i
  br i1 %lcmp.mod4757.not, label %.lr.ph1427.split.1.i.preheader, label %.lr.ph1427.split.i.epil.preheader

.lr.ph1427.split.i.epil.preheader:                ; preds = %.lr.ph1427.split.1.i.preheader.unr-lcssa, %.lr.ph1427.split.i.preheader
  %indvars.iv1703.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.i.preheader ], [ %indvars.iv.next1704.i.7, %.lr.ph1427.split.1.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4758)
  br label %.lr.ph1427.split.i.epil

.lr.ph1427.split.i.epil:                          ; preds = %.lr.ph1427.split.i.epil, %.lr.ph1427.split.i.epil.preheader
  %indvars.iv1703.i.epil = phi i64 [ %indvars.iv.next1704.i.epil, %.lr.ph1427.split.i.epil ], [ %indvars.iv1703.i.epil.init, %.lr.ph1427.split.i.epil.preheader ] ; 2 uses
  %epil.iter4756 = phi i64 [ %epil.iter4756.next, %.lr.ph1427.split.i.epil ], [ 0, %.lr.ph1427.split.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.epx = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1703.i.epil
  %i.epy = getelementptr inbounds nuw i8, ptr %i.epx, i64 8
  store i8 0, ptr %i.epy, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i.epil = add nuw nsw i64 %indvars.iv1703.i.epil, 1
  %epil.iter4756.next = add i64 %epil.iter4756, 1 ; 2 uses
  %epil.iter4756.cmp.not = icmp eq i64 %epil.iter4756.next, %xtraiter4755
  br i1 %epil.iter4756.cmp.not, label %.lr.ph1427.split.1.i.preheader, label %.lr.ph1427.split.i.epil, !llvm.loop !219

.lr.ph1427.split.1.i.preheader:                   ; preds = %.lr.ph1427.split.i.epil, %.lr.ph1427.split.1.i.preheader.unr-lcssa
  br i1 %7, label %.lr.ph1427.split.1.i.epil.preheader, label %.lr.ph1427.split.1.i

.preheader1264.i:                                 ; preds = %._crit_edge1482.i
  %i.epz = icmp sgt i32 %i.dpz, 26
  %or.cond2135.i = select i1 %i.cdy, i1 %i.epz, i1 false
  br i1 %or.cond2135.i, label %.preheader1257.i.preheader, label %._crit_edge1503.split.i

.preheader1257.i.preheader:                       ; preds = %.preheader1264.i
  %scevgep2032 = getelementptr i8, ptr %scevgep2029, i64 %i.cet
  %scevgep2036 = getelementptr i8, ptr %scevgep2035, i64 %i.cew
  %scevgep2041 = getelementptr i8, ptr %scevgep2040, i64 %i.cet
  %scevgep2046 = getelementptr i8, ptr %scevgep2045, i64 %i.cet
  %i.eqa = call i32 @llvm.umax.i32(i32 %i.cfd, i32 14)
  %i.eqb = zext i32 %i.eqa to i64
  %i.eqc = add nsw i64 %i.eqb, -13                ; 2 uses
  %min.iters.check2078 = icmp ult i32 %i.cfd, 21
  %i.eqd = trunc nuw i64 %i.cfa to i32
  %mul.result2024 = shl i32 %i.eqd, 2
  %mul.overflow2025 = icmp samesign ugt i64 %i.cfa, 1073741823
  %n.vec2080 = and i64 %i.eqc, -8                 ; 3 uses
  %i.eqe = add nsw i64 %n.vec2080, 13
  %cmp.n2151 = icmp eq i64 %i.eqc, %n.vec2080
  br label %.preheader1257.i

.preheader1258.i:                                 ; preds = %._crit_edge1482.i, %.preheader1258.preheader.i
  %indvars.iv1858.i = phi i64 [ 6, %.preheader1258.preheader.i ], [ %indvars.iv.next1859.i, %._crit_edge1482.i ] ; 4 uses
  %indvars.iv1784.i = phi i64 [ 0, %.preheader1258.preheader.i ], [ %indvars.iv.next1785.i, %._crit_edge1482.i ] ; 6 uses
  %invariant.gep1430.i = getelementptr inbounds nuw [122 x i8], ptr %i.cba, i64 %indvars.iv1858.i
  %i.eqf = add nuw nsw i64 %indvars.iv1858.i, %.11087.i
  %i.eqg = trunc nuw i64 %i.eqf to i32
  %i.eqh = urem i32 %i.eqg, 6
  %i.eqi = zext nneg i32 %i.eqh to i64
  %i.eqj = getelementptr inbounds nuw [384 x i8], ptr @xtrans_fdc_interpolate.modarr, i64 %i.eqi
  %i.eqk = mul nuw nsw i64 %indvars.iv1858.i, 122 ; 2 uses
  %i.eql = getelementptr inbounds nuw [4 x i8], ptr %i.cbb, i64 %i.eqk
  %invariant.gep1475.i = getelementptr inbounds nuw [4 x i8], ptr %i.cbc, i64 %i.eqk
  %broadcast.splatinsert2155 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2156 = shufflevector <8 x i64> %broadcast.splatinsert2155, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqm = mul nuw <8 x i64> %broadcast.splat2156, splat (i64 488)
  %i.eqn = add nuw <8 x i64> %i.eqm, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2165 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqn ; 13 uses
  %broadcast.splatinsert2249 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2250 = shufflevector <8 x i64> %broadcast.splatinsert2249, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqo = mul nuw <8 x i64> %broadcast.splat2250, splat (i64 488)
  %i.eqp = add nuw <8 x i64> %i.eqo, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2259.1 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqp ; 13 uses
  %broadcast.splatinsert2437 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2438 = shufflevector <8 x i64> %broadcast.splatinsert2437, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eqq = mul nuw <8 x i64> %broadcast.splat2438, splat (i64 488)
  %i.eqr = add nuw <8 x i64> %i.eqq, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2447 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqr ; 13 uses
  %i.eqs = mul nuw <8 x i64> %broadcast.splat2438, splat (i64 488)
  %i.eqt = add nuw <8 x i64> %i.eqs, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2447.1 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqt ; 13 uses
  %broadcast.splatinsert2343 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2344 = shufflevector <8 x i64> %broadcast.splatinsert2343, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.equ = mul nuw <8 x i64> %broadcast.splat2344, splat (i64 488)
  %i.eqv = add nuw <8 x i64> %i.equ, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2353 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqv ; 13 uses
  %i.eqw = mul nuw <8 x i64> %broadcast.splat2344, splat (i64 488)
  %i.eqx = add nuw <8 x i64> %i.eqw, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2353.1 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqx ; 13 uses
  %i.eqy = mul nuw <8 x i64> %broadcast.splat2250, splat (i64 488)
  %i.eqz = add nuw <8 x i64> %i.eqy, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2259 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.eqz ; 13 uses
  %i.era = mul nuw <8 x i64> %broadcast.splat2156, splat (i64 488)
  %i.erb = add nuw <8 x i64> %i.era, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2165.1 = getelementptr inbounds nuw i8, ptr %i.cbb, <8 x i64> %i.erb ; 13 uses
  br label %vector.ph2436

._crit_edge1482.i:                                ; preds = %vector.ph2436
  %indvars.iv.next1859.i = add nuw nsw i64 %indvars.iv1858.i, 1
  %indvars.iv.next1785.i = add nuw nsw i64 %indvars.iv1784.i, 1
  %exitcond1234.not = icmp eq i64 %indvars.iv1784.i, %i.cef
  br i1 %exitcond1234.not, label %.preheader1264.i, label %.preheader1258.i

vector.ph2436:                                    ; preds = %vector.ph2436, %.preheader1258.i
  %indvars.iv1855.i = phi i64 [ 6, %.preheader1258.i ], [ %indvars.iv.next1856.i, %vector.ph2436 ] ; 5 uses
  %indvars.iv1774.i = phi i64 [ 0, %.preheader1258.i ], [ %indvars.iv.next1777.i, %vector.ph2436 ] ; 21 uses
  %invariant.gep1432.i = getelementptr inbounds nuw i8, ptr %invariant.gep1430.i, i64 %indvars.iv1855.i ; 4 uses
  %i.erc = load i8, ptr %invariant.gep1432.i, align 1, !tbaa !133
  %gep1433.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 14884
  %i.erd = load i8, ptr %gep1433.1.i, align 1, !tbaa !133
  %gep1433.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 29768
  %i.ere = load i8, ptr %gep1433.2.i, align 1, !tbaa !133
  %gep1433.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 44652
  %i.erf = load i8, ptr %gep1433.3.i, align 1, !tbaa !133
  %indvars.iv.next1777.i = add nuw nsw i64 %indvars.iv1774.i, 1 ; 9 uses
  %indvars.iv.next1777.1.i = add nuw nsw i64 %indvars.iv1774.i, 2 ; 8 uses
  %indvars.iv.next1777.2.i = add nuw nsw i64 %indvars.iv1774.i, 3 ; 8 uses
  %indvars.iv.next1777.3.i = add nuw nsw i64 %indvars.iv1774.i, 4 ; 8 uses
  %indvars.iv.next1777.4.i = add nuw nsw i64 %indvars.iv1774.i, 5 ; 8 uses
  %indvars.iv.next1777.5.i = add nuw nsw i64 %indvars.iv1774.i, 6 ; 8 uses
  %indvars.iv.next1777.6.i = add nuw nsw i64 %indvars.iv1774.i, 7 ; 8 uses
  %indvars.iv.next1777.7.i = add nuw nsw i64 %indvars.iv1774.i, 8 ; 8 uses
  %indvars.iv.next1777.8.i = add nuw nsw i64 %indvars.iv1774.i, 9 ; 8 uses
  %indvars.iv.next1777.9.i = add nuw nsw i64 %indvars.iv1774.i, 10 ; 8 uses
  %indvars.iv.next1777.10.i = add nuw nsw i64 %indvars.iv1774.i, 11 ; 8 uses
  %indvars.iv.next1777.11.i = add nuw nsw i64 %indvars.iv1774.i, 12 ; 8 uses
  %wide.masked.gather2449 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 96)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2451 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 100)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2452 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv1774.i
  %wide.masked.gather2453 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2452, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2453, %wide.masked.gather2449
  %i.erh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2453, %wide.masked.gather2451
  %wide.masked.gather2455 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 88)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2457 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 92)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2458 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.i
  %wide.masked.gather2459 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2458, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eri = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2459, %wide.masked.gather2455
  %i.erj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2459, %wide.masked.gather2457
  %i.erk = fadd reassoc nsz arcp contract afn <8 x float> %i.eri, %i.erg
  %i.erl = fadd reassoc nsz arcp contract afn <8 x float> %i.erj, %i.erh
  %wide.masked.gather2461 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 80)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2463 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 84)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2464 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.1.i
  %wide.masked.gather2465 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2464, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2465, %wide.masked.gather2461
  %i.ern = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2465, %wide.masked.gather2463
  %i.ero = fadd reassoc nsz arcp contract afn <8 x float> %i.erk, %i.erm
  %i.erp = fadd reassoc nsz arcp contract afn <8 x float> %i.erl, %i.ern
  %wide.masked.gather2467 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 72)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2469 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 76)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2470 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.2.i
  %wide.masked.gather2471 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2470, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.erq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2471, %wide.masked.gather2467
  %i.err = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2471, %wide.masked.gather2469
  %i.ers = fadd reassoc nsz arcp contract afn <8 x float> %i.ero, %i.erq
  %i.ert = fadd reassoc nsz arcp contract afn <8 x float> %i.erp, %i.err
  %wide.masked.gather2473 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 64)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2475 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 68)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2476 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.3.i
  %wide.masked.gather2477 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2476, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eru = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2477, %wide.masked.gather2473
  %i.erv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2477, %wide.masked.gather2475
  %i.erw = fadd reassoc nsz arcp contract afn <8 x float> %i.ers, %i.eru
  %i.erx = fadd reassoc nsz arcp contract afn <8 x float> %i.ert, %i.erv
  %wide.masked.gather2479 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 56)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2481 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 60)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2482 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.4.i
  %wide.masked.gather2483 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2482, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ery = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2483, %wide.masked.gather2479
  %i.erz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2483, %wide.masked.gather2481
  %i.esa = fadd reassoc nsz arcp contract afn <8 x float> %i.erw, %i.ery
  %i.esb = fadd reassoc nsz arcp contract afn <8 x float> %i.erx, %i.erz
  %wide.masked.gather2485 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 48)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2487 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 52)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2488 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.5.i
  %wide.masked.gather2489 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2488, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2489, %wide.masked.gather2485
  %i.esd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2489, %wide.masked.gather2487
  %i.ese = fadd reassoc nsz arcp contract afn <8 x float> %i.esa, %i.esc
  %i.esf = fadd reassoc nsz arcp contract afn <8 x float> %i.esb, %i.esd
  %wide.masked.gather2491 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 40)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2493 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 44)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2494 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.6.i
  %wide.masked.gather2495 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2494, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2495, %wide.masked.gather2491
  %i.esh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2495, %wide.masked.gather2493
  %i.esi = fadd reassoc nsz arcp contract afn <8 x float> %i.ese, %i.esg
  %i.esj = fadd reassoc nsz arcp contract afn <8 x float> %i.esf, %i.esh
  %wide.masked.gather2497 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 32)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2499 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 36)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2500 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.7.i
  %wide.masked.gather2501 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2500, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2501, %wide.masked.gather2497
  %i.esl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2501, %wide.masked.gather2499
  %i.esm = fadd reassoc nsz arcp contract afn <8 x float> %i.esi, %i.esk
  %i.esn = fadd reassoc nsz arcp contract afn <8 x float> %i.esj, %i.esl
  %wide.masked.gather2503 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 24)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2505 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 28)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2506 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.8.i
  %wide.masked.gather2507 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2506, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eso = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2507, %wide.masked.gather2503
  %i.esp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2507, %wide.masked.gather2505
  %i.esq = fadd reassoc nsz arcp contract afn <8 x float> %i.esm, %i.eso
  %i.esr = fadd reassoc nsz arcp contract afn <8 x float> %i.esn, %i.esp
  %wide.masked.gather2509 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 16)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2511 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 20)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2512 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.9.i
  %wide.masked.gather2513 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2512, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ess = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2513, %wide.masked.gather2509
  %i.est = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2513, %wide.masked.gather2511
  %i.esu = fadd reassoc nsz arcp contract afn <8 x float> %i.esq, %i.ess
  %i.esv = fadd reassoc nsz arcp contract afn <8 x float> %i.esr, %i.est
  %wide.masked.gather2515 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 8)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2517 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 12)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2518 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.10.i
  %wide.masked.gather2519 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2518, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.esw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2519, %wide.masked.gather2515
  %i.esx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2519, %wide.masked.gather2517
  %i.esy = fadd reassoc nsz arcp contract afn <8 x float> %i.esu, %i.esw
  %i.esz = fadd reassoc nsz arcp contract afn <8 x float> %i.esv, %i.esx
  %wide.masked.gather2520 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2522 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 4)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2523 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447, i64 %indvars.iv.next1777.11.i
  %wide.masked.gather2524 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2523, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eta = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2524, %wide.masked.gather2520
  %i.etb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2524, %wide.masked.gather2522
  %i.etc = fadd reassoc nsz arcp contract afn <8 x float> %i.esy, %i.eta ; 2 uses
  %i.etd = fadd reassoc nsz arcp contract afn <8 x float> %i.esz, %i.etb ; 2 uses
  %wide.masked.gather2449.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 96)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2451.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 100)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.gep2452.1 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447.1, i64 %indvars.iv1774.i
  %wide.masked.gather2453.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2452.1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ete = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2453.1, %wide.masked.gather2449.1
  %i.etf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2453.1, %wide.masked.gather2451.1
  %i.etg = fadd reassoc nsz arcp contract afn <8 x float> %i.etc, %i.ete
  %i.eth = fadd reassoc nsz arcp contract afn <8 x float> %i.etd, %i.etf
  %wide.masked.gather2455.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 88)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2457.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 92)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.gep2458.1 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2447.1, i64 %indvars.iv.next1777.i
  %wide.masked.gather2459.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2458.1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eti = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2459.1, %wide.masked.gather2455.1
  %i.etj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2459.1, %wide.masked.gather2457.1
  %i.etk = fadd reassoc nsz arcp contract afn <8 x float> %i.eti, %i.etg
end_hunk_3
begin_hunk_4_@demosaic_ppg:bb.a
._crit_edge411.split:                             ; preds = %._crit_edge, %.preheader402.lr.ph, %bb.a
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %5, 0.000000e+00 ; 2 uses
  br i1 %i.al, label %bb.x, label %pre_median.exit

bb.b:                                             ; preds = %.preheader402, %bb.w
  %.0322408 = phi i32 [ 0, %.preheader402 ], [ %i.hk, %bb.w ] ; 2 uses
  %i.am = icmp eq i32 %.0322408, 3
  %or.cond = select i1 %i.am, i1 %i.q, i1 false
  %.1323 = select i1 %or.cond, i32 %spec.select, i32 %.0322408 ; 5 uses
  %i.an = icmp eq i32 %.1323, %2
  br i1 %i.an, label %.._crit_edge_crit_edge, label %.split.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = add nuw nsw i64 %indvars.iv452, 1
  br label %._crit_edge

.split.preheader:                                 ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.ao = add i32 %.1323, -1                      ; 10 uses
  %i.ap = sext i32 %i.ao to i64                   ; 9 uses
  %i.aq = or i32 %i.ao, %i.x
  %or.cond3 = icmp sgt i32 %i.aq, -1
  %i.ar = icmp slt i32 %i.ao, %2
  %or.cond354 = and i1 %i.ar, %or.cond3
  br i1 %or.cond354, label %bb.i, label %.split.1

.split.preheader.1:                               ; preds = %bb.k, %.split.2
  %i.as = or i32 %i.ao, %i.ad
  %or.cond3.1440 = icmp sgt i32 %i.as, -1
  %i.at = icmp slt i32 %i.ao, %2
  %or.cond354.1441 = and i1 %i.at, %or.cond3.1440
  br i1 %or.cond354.1441, label %bb.c, label %.split.1.1

bb.c:                                             ; preds = %.split.preheader.1
  %i.au = and i32 %i.ao, 1
  %.tr.i365.1443 = or disjoint i32 %i.au, %i.u
  %i.av = shl nuw nsw i32 %.tr.i365.1443, 1
  %i.aw = lshr i32 %4, %i.av
  %i.ax = and i32 %i.aw, 3
  %i.ay = getelementptr [4 x i8], ptr %i.ac, i64 %i.ap
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba ; 3 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  store float %i.bd, ptr %i.bb, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, 1.000000e+00
  store float %i.bg, ptr %i.be, align 4, !tbaa !12
  br label %.split.1.1

.split.1.1:                                       ; preds = %bb.c, %.split.preheader.1
  %indvars.iv.next.1444 = add nsw i64 %i.ap, 1    ; 3 uses
  %i.bh = trunc nsw i64 %indvars.iv.next.1444 to i32 ; 2 uses
  %i.bi = or i32 %i.bh, %i.ad
  %or.cond3.1.1 = icmp sgt i32 %i.bi, -1
  %i.bj = icmp slt i64 %indvars.iv.next.1444, %i.g
  %or.cond354.1.1 = and i1 %i.bj, %or.cond3.1.1
  br i1 %or.cond354.1.1, label %bb.d, label %.split.2.1

bb.d:                                             ; preds = %.split.1.1
  %i.bk = and i32 %i.bh, 1
  %.tr.i365.1.1 = or disjoint i32 %i.bk, %i.u
  %i.bl = shl nuw nsw i32 %.tr.i365.1.1, 1
  %i.bm = lshr i32 %4, %i.bl
  %i.bn = and i32 %i.bm, 3
  %i.bo = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1444
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq ; 3 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bp
  store float %i.bt, ptr %i.br, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, 1.000000e+00
  store float %i.bw, ptr %i.bu, align 4, !tbaa !12
  br label %.split.2.1

.split.2.1:                                       ; preds = %bb.d, %.split.1.1
  %indvars.iv.next.1.1 = add nsw i64 %i.ap, 2     ; 3 uses
  %i.bx = trunc nsw i64 %indvars.iv.next.1.1 to i32 ; 2 uses
  %i.by = or i32 %i.bx, %i.ad
  %or.cond3.2.1 = icmp sgt i32 %i.by, -1
  %i.bz = icmp slt i64 %indvars.iv.next.1.1, %i.g
  %or.cond354.2.1 = and i1 %i.bz, %or.cond3.2.1
  br i1 %or.cond354.2.1, label %bb.e, label %.split405.us.1

bb.e:                                             ; preds = %.split.2.1
  %i.ca = and i32 %i.bx, 1
  %.tr.i365.2.1 = or disjoint i32 %i.ca, %i.u
  %i.cb = shl nuw nsw i32 %.tr.i365.2.1, 1
  %i.cc = lshr i32 %4, %i.cb
  %i.cd = and i32 %i.cc, 3
  %i.ce = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1.1
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cg ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cf
  store float %i.cj, ptr %i.ch, align 4, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !12
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, 1.000000e+00
  store float %i.cm, ptr %i.ck, align 4, !tbaa !12
  br label %.split405.us.1

.split405.us.1:                                   ; preds = %.split.2.1, %bb.e
  br i1 %i.af, label %.split.preheader.2, label %.split405.us.2

.split.preheader.2:                               ; preds = %.split405.us.1
  %i.cn = or i32 %i.ao, %i.ak
  %or.cond3.2445 = icmp sgt i32 %i.cn, -1
  %i.co = icmp slt i32 %i.ao, %2
  %or.cond354.2446 = and i1 %i.co, %or.cond3.2445
  br i1 %or.cond354.2446, label %bb.f, label %.split.1.2

bb.f:                                             ; preds = %.split.preheader.2
  %i.cp = and i32 %i.ao, 1
  %.tr.i365.2448 = or disjoint i32 %i.cp, %i.ah
  %i.cq = shl nuw nsw i32 %.tr.i365.2448, 1
  %i.cr = lshr i32 %4, %i.cq
  %i.cs = and i32 %i.cr, 3
  %i.ct = getelementptr [4 x i8], ptr %i.aj, i64 %i.ap
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cv = zext nneg i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cv ; 3 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, 1.000000e+00
  store float %i.db, ptr %i.cz, align 4, !tbaa !12
  br label %.split.1.2

.split.1.2:                                       ; preds = %bb.f, %.split.preheader.2
  %indvars.iv.next.2 = add nsw i64 %i.ap, 1       ; 3 uses
  %i.dc = trunc nsw i64 %indvars.iv.next.2 to i32 ; 2 uses
  %i.dd = or i32 %i.dc, %i.ak
  %or.cond3.1.2 = icmp sgt i32 %i.dd, -1
  %i.de = icmp slt i64 %indvars.iv.next.2, %i.g
  %or.cond354.1.2 = and i1 %i.de, %or.cond3.1.2
  br i1 %or.cond354.1.2, label %bb.g, label %.split.2.2

bb.g:                                             ; preds = %.split.1.2
  %i.df = and i32 %i.dc, 1
  %.tr.i365.1.2 = or disjoint i32 %i.df, %i.ah
  %i.dg = shl nuw nsw i32 %.tr.i365.1.2, 1
  %i.dh = lshr i32 %4, %i.dg
  %i.di = and i32 %i.dh, 3
  %i.dj = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !12
  %i.dl = zext nneg i32 %i.di to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dl ; 3 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dk
  store float %i.do, ptr %i.dm, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, 1.000000e+00
  store float %i.dr, ptr %i.dp, align 4, !tbaa !12
  br label %.split.2.2

.split.2.2:                                       ; preds = %bb.g, %.split.1.2
  %indvars.iv.next.1.2 = add nsw i64 %i.ap, 2     ; 3 uses
  %i.ds = trunc nsw i64 %indvars.iv.next.1.2 to i32 ; 2 uses
  %i.dt = or i32 %i.ds, %i.ak
  %or.cond3.2.2 = icmp sgt i32 %i.dt, -1
  %i.du = icmp slt i64 %indvars.iv.next.1.2, %i.g
  %or.cond354.2.2 = and i1 %i.du, %or.cond3.2.2
  br i1 %or.cond354.2.2, label %bb.h, label %.split405.us.2

bb.h:                                             ; preds = %.split.2.2
  %i.dv = and i32 %i.ds, 1
  %.tr.i365.2.2 = or disjoint i32 %i.dv, %i.ah
  %i.dw = shl nuw nsw i32 %.tr.i365.2.2, 1
  %i.dx = lshr i32 %4, %i.dw
  %i.dy = and i32 %i.dx, 3
  %i.dz = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.1.2
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = zext nneg i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eb ; 3 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %i.ea
  store float %i.ee, ptr %i.ec, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !12
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, 1.000000e+00
  store float %i.eh, ptr %i.ef, align 4, !tbaa !12
  br label %.split405.us.2

.split405.us.2:                                   ; preds = %.split.2.2, %bb.h, %.split405.us.1
  %i.ei = sext i32 %.1323 to i64                  ; 2 uses
  %i.ej = and i32 %.1323, 1
  %.tr.i = or disjoint i32 %i.ej, %i.u
  %i.ek = shl nuw nsw i32 %.tr.i, 1
  %i.el = lshr i32 %4, %i.ek
  %i.em = and i32 %i.el, 3                        ; 3 uses
  %i.en = add nsw i64 %i.v, %i.ei
  %.idx351 = shl i64 %i.en, 4                     ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %.idx351
  %i.ep = add nsw i64 %i.w, %i.ei                 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ep ; 3 uses
  %.idx350 = shl i64 %i.ep, 4                     ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.idx350
  %.not349 = icmp eq i32 %i.em, 0
  br i1 %.not349, label %bb.n, label %bb.l

bb.i:                                             ; preds = %.split.preheader
  %i.es = and i32 %i.ao, 1
  %.tr.i365 = or disjoint i32 %i.es, %i.z
  %i.et = shl nuw nsw i32 %.tr.i365, 1
  %i.eu = lshr i32 %4, %i.et
  %i.ev = and i32 %i.eu, 3
  %i.ew = getelementptr [4 x i8], ptr %i.ab, i64 %i.ap
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ey ; 3 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !12
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ex
  store float %i.fb, ptr %i.ez, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, 1.000000e+00
  store float %i.fe, ptr %i.fc, align 4, !tbaa !12
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.i
  %indvars.iv.next = add nsw i64 %i.ap, 1         ; 3 uses
  %i.ff = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.fg = or i32 %i.ff, %i.x
  %or.cond3.1 = icmp sgt i32 %i.fg, -1
  %i.fh = icmp slt i64 %indvars.iv.next, %i.g
  %or.cond354.1 = and i1 %i.fh, %or.cond3.1
  br i1 %or.cond354.1, label %bb.j, label %.split.2

bb.j:                                             ; preds = %.split.1
  %i.fi = and i32 %i.ff, 1
  %.tr.i365.1 = or disjoint i32 %i.fi, %i.z
  %i.fj = shl nuw nsw i32 %.tr.i365.1, 1
  %i.fk = lshr i32 %4, %i.fj
  %i.fl = and i32 %i.fk, 3
  %i.fm = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = zext nneg i32 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fo ; 3 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !12
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.fn
  store float %i.fr, ptr %i.fp, align 4, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, 1.000000e+00
  store float %i.fu, ptr %i.fs, align 4, !tbaa !12
  br label %.split.2

.split.2:                                         ; preds = %bb.j, %.split.1
  %indvars.iv.next.1 = add nsw i64 %i.ap, 2       ; 3 uses
  %i.fv = trunc nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  %i.fw = or i32 %i.fv, %i.x
  %or.cond3.2 = icmp sgt i32 %i.fw, -1
  %i.fx = icmp slt i64 %indvars.iv.next.1, %i.g
  %or.cond354.2 = and i1 %i.fx, %or.cond3.2
  br i1 %or.cond354.2, label %bb.k, label %.split.preheader.1

bb.k:                                             ; preds = %.split.2
  %i.fy = and i32 %i.fv, 1
  %.tr.i365.2 = or disjoint i32 %i.fy, %i.z
  %i.fz = shl nuw nsw i32 %.tr.i365.2, 1
  %i.ga = lshr i32 %4, %i.fz
  %i.gb = and i32 %i.ga, 3
  %i.gc = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !12
  %i.ge = zext nneg i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ge ; 3 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !12
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %i.gd
  store float %i.gh, ptr %i.gf, align 4, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !12
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, 1.000000e+00
  store float %i.gk, ptr %i.gi, align 4, !tbaa !12
  br label %.split.preheader.1

bb.l:                                             ; preds = %.split405.us.2
  %i.gl = load float, ptr %i.l, align 16, !tbaa !12 ; 2 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gn = load float, ptr %i.b, align 16, !tbaa !12
  %i.go = fdiv reassoc nsz arcp contract afn float %i.gn, %i.gl
  %i.gp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.go, float 0.000000e+00)
  store float %i.gp, ptr %i.eo, align 4, !tbaa !12
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %.split405.us.2
  %i.gq = load float, ptr %i.eq, align 4, !tbaa !12
  %i.gr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gq, float 0.000000e+00)
  store float %i.gr, ptr %i.er, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.not349.1 = icmp eq i32 %i.em, 1
  br i1 %.not349.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gs = load float, ptr %i.m, align 4, !tbaa !12 ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn ogt float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gu = load float, ptr %i.n, align 4, !tbaa !12
  %i.gv = fdiv reassoc nsz arcp contract afn float %i.gu, %i.gs
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.gw = load float, ptr %i.eq, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink557 = phi float [ %i.gw, %bb.r ], [ %i.gv, %bb.q ]
  %i.gx = phi i64 [ %.idx350, %bb.r ], [ %.idx351, %bb.q ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %i.gx
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink557, float 0.000000e+00)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.gz, ptr %i.ha, align 4, !tbaa !12
  %.not349.2 = icmp eq i32 %i.em, 2
  br i1 %.not349.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hb = load float, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hd = load float, ptr %i.p, align 8, !tbaa !12
  %i.he = fdiv reassoc nsz arcp contract afn float %i.hd, %i.hb
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.hf = load float, ptr %i.eq, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink560 = phi float [ %i.hf, %bb.v ], [ %i.he, %bb.u ]
  %i.hg = phi i64 [ %.idx350, %bb.v ], [ %.idx351, %bb.u ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 %i.hg
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink560, float 0.000000e+00)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %i.hi, ptr %i.hj, align 4, !tbaa !12
  %i.hk = add nsw i32 %.1323, 1                   ; 2 uses
  %i.hl = icmp slt i32 %i.hk, %2
  br i1 %i.hl, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %.._crit_edge_crit_edge
  %indvars.iv.next453.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ae, %bb.w ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next453.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge411.split, label %.preheader402

bb.x:                                             ; preds = %._crit_edge411.split
  %i.hm = sext i32 %3 to i64
  %i.hn = sext i32 %2 to i64                      ; 7 uses
  %i.ho = mul nsw i64 %i.hm, %i.hn                ; 2 uses
  %i.hp = shl i64 %i.ho, 2
  %i.hq = tail call ptr @dt_alloc_aligned(i64 noundef %i.hp) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hq, i64 64) ]
  tail call void @dt_iop_image_copy(ptr noundef %i.hq, ptr noundef %1, i64 noundef %i.ho) #27
  %i.hr = icmp sgt i32 %3, 6
  %i.hs = add nsw i32 %2, -3                      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  br i1 %i.hr, label %.preheader86.preheader.i.i, label %.preheader

.preheader86.preheader.i.i:                       ; preds = %bb.x
  %i.hu = add nsw i32 %3, -3
  %wide.trip.count.i.i = zext nneg i32 %i.hu to i64
  %.idx.i.i = mul nsw i64 %i.hn, -8
  %i.hv = xor i64 %i.hn, -1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 8 uses
  %i.hx = sub nsw i64 1, %i.hn
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 8 uses
  %.idx231.i.i = shl nsw i64 %i.hn, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 9 uses
  %i.ie = insertelement <8 x float> poison, float %5, i64 0
  %i.if = shufflevector <8 x float> %i.ie, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %._crit_edge103.i.i, %.preheader86.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 3, %.preheader86.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge103.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ig = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ih = shl i32 %i.ig, 2
  %i.ii = and i32 %i.ih, 28
  %i.ij = shl nuw nsw i32 4, %i.ii
  %i.ik = and i32 %i.ij, %4
  %.not.i.i = icmp eq i32 %i.ik, 0
end_hunk_4
