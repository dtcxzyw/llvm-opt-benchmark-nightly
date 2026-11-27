Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 157
begin_hunk_0_@process:bb.a
  switch i16 %.31013.4.fr.i, label %bb.is [
    i16 2, label %.preheader1269.i
    i16 3, label %.preheader1269.i.fold.split
  ]

bb.is:                                            ; preds = %bb.ir
  %i.bwg = add i16 %.31013.4.fr.i, -2
  %.cmp2108.i = icmp ult i16 %i.bwg, 3
  %i.bwh = select i1 %.cmp2108.i, i32 4, i32 1
  %.not1121.4.i = icmp eq i32 %i.bwh, %i.bnk
  br i1 %.not1121.4.i, label %.preheader1269.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bwi = add i16 %.31013.4.fr.i, -6
  %.cmp2111.inv.i = icmp ult i16 %i.bwi, -3
  %i.bwj = select i1 %.cmp2111.inv.i, i32 2, i32 5
  %.not1121.5.i = icmp eq i32 %i.bwj, %i.bnk
  br i1 %.not1121.5.i, label %.preheader1269.i, label %.loopexit1270.i

.loopexit1270.i:                                  ; preds = %bb.it, %bb.ip, %bb.io, %bb.if
  %.11087.i = phi i64 [ 0, %bb.io ], [ %i.bvi, %bb.if ], [ 0, %bb.ip ], [ 0, %bb.it ]
  %.11085.i = phi i64 [ 0, %bb.io ], [ %.010821295.lcssa.neg.i, %bb.if ], [ 0, %bb.ip ], [ 0, %bb.it ]
  %i.bwk = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.209) #27
  %i.bwl = icmp slt i32 %i.bwk, %i.en             ; 2 uses
  %spec.select.i489 = select nsz i1 %i.bwl, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %spec.select1142.i = select nsz i1 %i.bwl, float 0.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bwm = add nsw i32 %i.aws, -13
  %i.bwn = icmp sgt i32 %i.aws, 0
  br i1 %i.bwn, label %.lr.ph1512.i, label %._crit_edge1513.split.i

.lr.ph1512.i:                                     ; preds = %.loopexit1270.i
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bmo, i64 714432 ; 8 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 893040 ; 4 uses
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bmo, i64 773968 ; 7 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bmo, i64 1131184 ; 10 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bmo, i64 1250256 ; 4 uses
  %i.bwt = add nuw i32 %i.aws, 13                 ; 4 uses
  %i.bwu = shl nuw nsw i32 %i.aws, 1
  %i.bwv = add nsw i32 %i.bwu, -2                 ; 3 uses
  %i.bww = zext nneg i16 %.31019.4.fr.i to i32
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bmo, i64 833504
  br i1 %i.aqi, label %.lr.ph1508.preheader.i, label %._crit_edge1513.split.i

.lr.ph1508.preheader.i:                           ; preds = %.lr.ph1512.i
  %i.bwy = zext nneg i32 %i.aws to i64
  %i.bwz = zext i16 %.31013.4.fr.i to i64         ; 4 uses
  %i.bxa = zext i16 %.31019.4.fr.i to i64         ; 2 uses
  %i.bxb = sext i32 %i.bwm to i64
  %i.bxc = sext i32 %i.bwt to i64
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bmo, i64 178608
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bmo, i64 357216
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bmo, i64 535824
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bmo, i64 1071648 ; 3 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bmo, i64 952576 ; 3 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bmo, i64 1012112 ; 3 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bmo, i64 788852
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bmo, i64 729316
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bmo, i64 803736
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bmo, i64 744200
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bmo, i64 818620
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bmo, i64 759084
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 1309792 ; 3 uses
  %scevgep2219 = getelementptr i8, ptr %i.bmo, i64 818498
  %scevgep2226 = getelementptr i8, ptr %i.bmo, i64 775567
  %scevgep2227 = getelementptr i8, ptr %i.bmo, i64 534360
  %scevgep2230 = getelementptr i8, ptr %i.bmo, i64 19188
  %scevgep2231 = getelementptr i8, ptr %i.bmo, i64 1309796
  %scevgep2233 = getelementptr i8, ptr %i.bmo, i64 1250304
  %scevgep2236 = getelementptr i8, ptr %i.bmo, i64 1309792
  %scevgep2238 = getelementptr i8, ptr %i.bmo, i64 1250308 ; 2 uses
  %broadcast.splatinsert2265 = insertelement <8 x float> poison, float %spec.select1142.i, i64 0
  %broadcast.splat2266 = shufflevector <8 x float> %broadcast.splatinsert2265, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2267 = insertelement <8 x float> poison, float %spec.select.i489, i64 0
  %broadcast.splat2268 = shufflevector <8 x float> %broadcast.splatinsert2267, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph1508.i

._crit_edge1513.split.i:                          ; preds = %._crit_edge1509.i, %.lr.ph1512.i, %.loopexit1270.i
  tail call void @free(ptr noundef %i.bmo) #27
  br label %xtrans_fdc_interpolate.exit

.lr.ph1508.i:                                     ; preds = %._crit_edge1509.i, %.lr.ph1508.preheader.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1509.i ], [ 0, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1209 = phi i32 [ %indvars.iv.next1210, %._crit_edge1509.i ], [ 5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1727.i = phi i32 [ %indvars.iv.next1728.i, %._crit_edge1509.i ], [ 109, %.lr.ph1508.preheader.i ] ; 3 uses
  %indvars.iv1660.i = phi i64 [ %indvars.iv.next1661.i, %._crit_edge1509.i ], [ -5, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1636.i = phi i64 [ %indvars.iv.next1637.i, %._crit_edge1509.i ], [ -7, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1608.i = phi i64 [ %indvars.iv.next1609.i, %._crit_edge1509.i ], [ -10, %.lr.ph1508.preheader.i ] ; 2 uses
  %indvars.iv1583.i = phi i64 [ %indvars.iv.next1584.i, %._crit_edge1509.i ], [ -13, %.lr.ph1508.preheader.i ] ; 15 uses
  %i.bxq = phi <4 x i32> [ %i.cad, %._crit_edge1509.i ], [ <i32 7, i32 3, i32 4, i32 0>, %.lr.ph1508.preheader.i ] ; 3 uses
  %i.bxr = extractelement <4 x i32> %i.bxq, i64 3 ; 2 uses
  %smin2220 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.bwt)
  %i.bxs = add i32 %smin2220, %i.bxr
  %smax2221 = call i32 @llvm.smax.i32(i32 %i.bxs, i32 14)
  %i.bxt = zext nneg i32 %smax2221 to i64         ; 2 uses
  %i.bxu = mul nuw nsw i64 %i.bxt, 122
  %i.bxv = mul nuw nsw i64 %i.bxt, 1464
  %i.bxw = mul i32 %i.atx, %indvar
  %i.bxx = mul i32 %i.atv, %indvar
  %smin1246 = call i32 @llvm.smin.i32(i32 %indvars.iv1727.i, i32 %i.bwt) ; 6 uses
  %i.bxy = insertelement <4 x i32> poison, i32 %smin1246, i64 0
  %i.bxz = shufflevector <4 x i32> %i.bxy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bya = add <4 x i32> %i.bxz, %i.bxq
  %i.byb = add i32 %smin1246, %i.bxr
  %i.byc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bya, <4 x i32> <i32 7, i32 11, i32 10, i32 14>) ; 4 uses
  %i.byd = add i32 %smin1246, %indvars.iv1209
  %i.bye = call i32 @llvm.smax.i32(i32 %i.byd, i32 9)
  %smax1211 = zext nneg i32 %i.bye to i64
  %i.byf = add i32 %smin1246, -8
  %i.byg = sext i32 %i.byf to i64
  %i.byh = add i32 %smin1246, -6
  %i.byi = sext i32 %i.byh to i64
  %i.byj = add i32 %smin1246, -3
  %i.byk = sext i32 %i.byj to i64
  %i.byl = tail call i32 @llvm.smax.i32(i32 %i.byb, i32 14)
  %smax1762.i = zext nneg i32 %i.byl to i64       ; 8 uses
  %i.bym = trunc i64 %indvars.iv1583.i to i32     ; 2 uses
  %i.byn = add i32 %i.bym, 122
  %i.byo = tail call i32 @llvm.smin.i32(i32 %i.byn, i32 %i.bwt) ; 6 uses
  %i.byp = icmp slt i64 %indvars.iv1583.i, %i.bxc
  %i.byq = add nuw nsw i64 %indvars.iv1583.i, 3   ; 3 uses
  %i.byr = add nsw i32 %i.byo, -3                 ; 2 uses
  %i.bys = sext i32 %i.byr to i64
  %i.byt = icmp slt i64 %i.byq, %i.bys
  %i.byu = add nsw i32 %i.byo, -4
  %i.byv = sub i64 %indvars.iv1583.i, %i.bwz
  %i.byw = trunc i64 %i.byv to i32
  %i.byx = add i32 %i.byw, 8                      ; 2 uses
  %i.byy = srem i32 %i.byx, 3
  %i.byz = add i32 %i.byx, %i.bnk
  %i.bza = sub i32 %i.byz, %i.byy                 ; 2 uses
  %i.bzb = add nsw i32 %i.byo, -6                 ; 2 uses
  %i.bzc = icmp slt i32 %i.bza, %i.bzb
  %i.bzd = add nuw nsw i64 %indvars.iv1583.i, 6
  %i.bze = sext i32 %i.bzb to i64                 ; 2 uses
  %i.bzf = icmp slt i64 %i.bzd, %i.bze
  %i.bzg = add nuw nsw i64 %indvars.iv1583.i, 8
  %i.bzh = add nsw i32 %i.byo, -8
  %i.bzi = sext i32 %i.bzh to i64
  %i.bzj = icmp slt i64 %i.bzg, %i.bzi
  %i.bzk = sub nsw i32 %i.byo, %i.bym             ; 5 uses
  %i.bzl = icmp sgt i32 %i.bzk, 16
  %i.bzm = icmp sgt i32 %i.bzk, 18
  %i.bzn = icmp sgt i32 %i.bzk, 20
  %i.bzo = icmp sgt i32 %i.bzk, 26                ; 2 uses
  %i.bzp = icmp sgt i32 %i.bzk, 12
  %i.bzq = sext i32 %i.byo to i64
  %i.bzr = sext i32 %i.bza to i64
  %i.bzs = trunc nsw i64 %i.byq to i32
  %i.bzt = extractelement <4 x i32> %i.byc, i64 0
  %i.bzu = zext nneg i32 %i.bzt to i64
  %i.bzv = add nsw i64 %i.bzu, -7
  %scevgep2222 = getelementptr i8, ptr %scevgep2219, i64 %i.bxu
  %scevgep2228 = getelementptr i8, ptr %scevgep2227, i64 %i.bxv
  %i.bzw = extractelement <4 x i32> %i.byc, i64 2
  %i.bzx = zext nneg i32 %i.bzw to i64
  %i.bzy = extractelement <4 x i32> %i.byc, i64 1
  %i.bzz = zext nneg i32 %i.bzy to i64
  %i.caa = extractelement <4 x i32> %i.byc, i64 3
  %i.cab = zext nneg i32 %i.caa to i64
  br label %bb.iu

._crit_edge1509.i:                                ; preds = %._crit_edge1503.split.i
  %indvars.iv.next1584.i = add nsw i64 %indvars.iv1583.i, 96 ; 2 uses
  %i.cac = icmp slt i64 %indvars.iv.next1584.i, %i.bxb
  %indvars.iv.next1609.i = add nsw i64 %indvars.iv1608.i, 96
  %indvars.iv.next1637.i = add nsw i64 %indvars.iv1636.i, 96
  %indvars.iv.next1661.i = add nsw i64 %indvars.iv1660.i, 96
  %indvars.iv.next1728.i = add nuw i32 %indvars.iv1727.i, 96
  %indvars.iv.next1210 = add i32 %indvars.iv1209, -96
  %i.cad = add <4 x i32> %i.bxq, splat (i32 -96)
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cac, label %.lr.ph1508.i, label %._crit_edge1513.split.i

bb.iu:                                            ; preds = %._crit_edge1503.split.i, %.lr.ph1508.i
  %indvar2161 = phi i32 [ %indvar.next2162, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 3 uses
  %indvars.iv1234 = phi i32 [ %indvars.iv.next1235, %._crit_edge1503.split.i ], [ 7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1224 = phi i32 [ %indvars.iv.next1225, %._crit_edge1503.split.i ], [ 3, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1214 = phi i32 [ %indvars.iv.next1215, %._crit_edge1503.split.i ], [ 4, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1204 = phi i32 [ %indvars.iv.next1205, %._crit_edge1503.split.i ], [ 5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1724.i = phi i32 [ %indvars.iv.next1725.i, %._crit_edge1503.split.i ], [ 0, %.lr.ph1508.i ] ; 4 uses
  %indvars.iv1722.i = phi i32 [ %indvars.iv.next1723.i, %._crit_edge1503.split.i ], [ 109, %.lr.ph1508.i ] ; 4 uses
  %indvars.iv1655.i = phi i64 [ %indvars.iv.next1656.i, %._crit_edge1503.split.i ], [ -5, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1631.i = phi i64 [ %indvars.iv.next1632.i, %._crit_edge1503.split.i ], [ -7, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1603.i = phi i64 [ %indvars.iv.next1604.i, %._crit_edge1503.split.i ], [ -10, %.lr.ph1508.i ] ; 2 uses
  %indvars.iv1578.i = phi i64 [ %indvars.iv.next1579.i, %._crit_edge1503.split.i ], [ -13, %.lr.ph1508.i ] ; 15 uses
  %smin2223 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqj)
  %i.cae = add i32 %smin2223, %indvars.iv1724.i
  %i.caf = call i32 @llvm.umax.i32(i32 %i.cae, i32 14)
  %umax2224 = zext i32 %i.caf to i64              ; 4 uses
  %scevgep2225 = getelementptr i8, ptr %scevgep2222, i64 %umax2224
  %i.cag = mul nuw nsw i64 %umax2224, 12
  %scevgep2229 = getelementptr i8, ptr %scevgep2228, i64 %i.cag
  %i.cah = shl nuw nsw i64 %umax2224, 2           ; 2 uses
  %scevgep2232 = getelementptr i8, ptr %scevgep2231, i64 %i.cah
  %i.cai = shl nuw nsw i64 %umax2224, 4
  %scevgep2235 = getelementptr i8, ptr %scevgep2234, i64 %i.cai
  %i.caj = mul i32 %indvar2161, 384
  %i.cak = add i32 %i.bxw, %i.caj
  %scevgep2237 = getelementptr i8, ptr %scevgep2236, i64 %i.cah ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqj)
  %i.cal = add i32 %smin, %indvars.iv1724.i
  %i.cam = zext i32 %i.cal to i64
  %i.can = call i64 @llvm.usub.sat.i64(i64 %i.cam, i64 14) ; 2 uses
  %i.cao = mul i32 %indvar2161, 384
  %i.cap = add i32 %i.bxx, %i.cao
  %smin1243 = call i32 @llvm.smin.i32(i32 %indvars.iv1722.i, i32 %i.aqj) ; 8 uses
  %i.caq = add i32 %smin1243, %indvars.iv1724.i   ; 3 uses
  %i.car = call i32 @llvm.umax.i32(i32 %i.caq, i32 14)
  %umax1244 = zext i32 %i.car to i64              ; 2 uses
  %i.cas = add i32 %smin1243, %indvars.iv1234
  %i.cat = call i32 @llvm.umax.i32(i32 %i.cas, i32 7)
  %umax1236 = zext i32 %i.cat to i64
  %i.cau = add i32 %smin1243, %indvars.iv1224
  %i.cav = call i32 @llvm.umax.i32(i32 %i.cau, i32 11)
  %umax1226 = zext i32 %i.cav to i64
  %i.caw = add i32 %smin1243, %indvars.iv1214     ; 2 uses
  %i.cax = call i32 @llvm.smax.i32(i32 %i.caw, i32 10)
  %smax1216 = zext nneg i32 %i.cax to i64         ; 2 uses
  %i.cay = add i32 %smin1243, %indvars.iv1204
  %i.caz = call i32 @llvm.smax.i32(i32 %i.cay, i32 9)
  %smax1206 = zext nneg i32 %i.caz to i64
  %i.cba = add i32 %smin1243, -8
  %i.cbb = sext i32 %i.cba to i64
  %i.cbc = add i32 %smin1243, -6
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = add i32 %smin1243, -3
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = tail call i32 @llvm.smax.i32(i32 %i.caq, i32 10)
  %smax1756.i = zext nneg i32 %i.cbg to i64       ; 4 uses
  %i.cbh = trunc i64 %indvars.iv1578.i to i32     ; 3 uses
  %i.cbi = add i32 %i.cbh, 122
  %i.cbj = tail call i32 @llvm.smin.i32(i32 %i.cbi, i32 %i.aqj) ; 7 uses
  %i.cbk = icmp slt i64 %indvars.iv1578.i, %i.aqm
  %or.cond1515.i = and i1 %i.byp, %i.cbk
  br i1 %or.cond1515.i, label %.preheader1263.preheader.i, label %.preheader1268.i

.preheader1263.preheader.i:                       ; preds = %bb.iu
  %i.cbl = sext i32 %i.cbj to i64
  br label %.preheader1263.i

.preheader1268.i:                                 ; preds = %._crit_edge.i495, %bb.iu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.bxd, ptr noundef nonnull align 64 dereferenceable(178608) %i.bmo, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(178608) %i.bxe, ptr noundef nonnull align 64 dereferenceable(178608) %i.bmo, i64 178608, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178608) %i.bxf, ptr noundef nonnull align 64 dereferenceable(178608) %i.bmo, i64 178608, i1 false)
  br i1 %i.byt, label %.lr.ph1325.i, label %._crit_edge1343.split.i

.preheader1263.i:                                 ; preds = %._crit_edge.i495, %.preheader1263.preheader.i
  %indvars.iv1585.i = phi i64 [ %indvars.iv1583.i, %.preheader1263.preheader.i ], [ %indvars.iv.next1586.i, %._crit_edge.i495 ] ; 5 uses
  %i.cbm = sub nsw i64 %indvars.iv1585.i, %indvars.iv1583.i ; 2 uses
  %i.cbn = getelementptr inbounds [1464 x i8], ptr %i.bmo, i64 %i.cbm
  %i.cbo = icmp slt i64 %indvars.iv1585.i, %i.bwy ; 2 uses
  %i.cbp = trunc i64 %indvars.iv1585.i to i32     ; 7 uses
  %i.cbq = sub i32 %i.bwv, %i.cbp                 ; 3 uses
  %i.cbr = tail call i32 @llvm.abs.i32(i32 %i.cbp, i1 true) ; 3 uses
  %invariant.gep1310.idx.i = mul nuw nsw i64 %i.cbm, 488
  %invariant.gep1310.i = getelementptr i8, ptr %i.bwr, i64 %invariant.gep1310.idx.i ; 2 uses
  %i.cbs = mul nuw nsw i64 %indvars.iv1585.i, %i.aoe
  %i.cbt = add i32 %i.cbp, -1                     ; 3 uses
  %.1514.i = select i1 %i.cbo, i32 %i.cbr, i32 %i.cbq ; 2 uses
  %i.cbu = mul nsw i32 %.1514.i, %i.bo
  %invariant.gep.i493 = getelementptr [4 x i8], ptr %i.axc, i64 %i.cbs
  %.not1140.i = icmp slt i32 %i.cbt, %i.aws
  %i.cbv = sub nsw i32 %i.bwv, %i.cbt             ; 2 uses
  %i.cbw = mul nsw i32 %i.cbv, %i.bo              ; 3 uses
  %i.cbx = tail call i32 @llvm.abs.i32(i32 %i.cbt, i1 true) ; 2 uses
  %i.cby = add nuw nsw i32 %i.cbx, 600
  %i.cbz = urem i32 %i.cby, 6
  %i.cca = zext nneg i32 %i.cbz to i64
  %i.ccb = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cca ; 3 uses
  %i.ccc = mul nuw nsw i32 %i.cbx, %i.bo          ; 3 uses
  %.not1140.i.1 = icmp sgt i32 %i.aws, %i.cbp
  %i.ccd = insertelement <4 x i32> poison, i32 %i.cbp, i64 0
  %i.cce = insertelement <4 x i32> %i.ccd, i32 %.1514.i, i64 1
  %i.ccf = insertelement <4 x i32> %i.cce, i32 %i.cbv, i64 2
  %i.ccg = insertelement <4 x i32> %i.ccf, i32 %i.cbq, i64 3
  %i.cch = add <4 x i32> %i.ccg, splat (i32 600)
  %i.cci = srem <4 x i32> %i.cch, splat (i32 6)   ; 4 uses
  %i.ccj = extractelement <4 x i32> %i.cci, i64 0
  %i.cck = sext i32 %i.ccj to i64
  %i.ccl = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cck
  %i.ccm = extractelement <4 x i32> %i.cci, i64 1
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ccn
  %i.ccp = extractelement <4 x i32> %i.cci, i64 2
  %i.ccq = sext i32 %i.ccp to i64
  %i.ccr = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ccq ; 3 uses
  %i.ccs = extractelement <4 x i32> %i.cci, i64 3
  %i.cct = sext i32 %i.ccs to i64
  %i.ccu = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cct ; 3 uses
  %i.ccv = mul nsw i32 %i.cbq, %i.bo              ; 3 uses
  %i.ccw = add nuw nsw i32 %i.cbr, 600
  %i.ccx = urem i32 %i.ccw, 6
  %i.ccy = zext nneg i32 %i.ccx to i64
  %i.ccz = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.ccy ; 3 uses
  %i.cda = mul nuw nsw i32 %i.cbr, %i.bo          ; 3 uses
  %i.cdb = add i32 %i.cbp, 1                      ; 3 uses
  %.not1140.i.2 = icmp slt i32 %i.cdb, %i.aws
  %i.cdc = sub nsw i32 %i.bwv, %i.cdb             ; 2 uses
  %i.cdd = add nsw i32 %i.cdc, 600
  %i.cde = srem i32 %i.cdd, 6
  %i.cdf = sext i32 %i.cde to i64
  %i.cdg = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.cdf ; 3 uses
  %i.cdh = mul nsw i32 %i.cdc, %i.bo              ; 3 uses
  %i.cdi = tail call i32 @llvm.abs.i32(i32 %i.cdb, i1 true) ; 2 uses
  %i.cdj = add nuw nsw i32 %i.cdi, 600
  %i.cdk = urem i32 %i.cdj, 6
  %i.cdl = zext nneg i32 %i.cdk to i64
  %i.cdm = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.cdl ; 3 uses
  %i.cdn = mul nuw nsw i32 %i.cdi, %i.bo          ; 3 uses
  br label %bb.iv

._crit_edge.i495:                                 ; preds = %.loopexit1256.i
  %indvars.iv.next1586.i = add nsw i64 %indvars.iv1585.i, 1 ; 2 uses
  %i.cdo = icmp slt i64 %indvars.iv.next1586.i, %i.bzq
  br i1 %i.cdo, label %.preheader1263.i, label %.preheader1268.i

bb.iv:                                            ; preds = %.loopexit1256.i, %.preheader1263.i
  %indvars.iv1580.i = phi i64 [ %indvars.iv1578.i, %.preheader1263.i ], [ %indvars.iv.next1581.i.pre-phi, %.loopexit1256.i ] ; 7 uses
  %i.cdp = sub nsw i64 %indvars.iv1580.i, %indvars.iv1578.i ; 3 uses
  %i.cdq = getelementptr inbounds [12 x i8], ptr %i.cbn, i64 %i.cdp ; 7 uses
  %i.cdr = trunc i64 %indvars.iv1580.i to i32     ; 5 uses
  %i.cds = or i32 %i.cdr, %i.cbp
  %or.cond.i494 = icmp sgt i32 %i.cds, -1
  %i.cdt = icmp slt i64 %indvars.iv1580.i, %i.aoe ; 2 uses
  %or.cond1143.i = and i1 %i.cdt, %or.cond.i494
  %or.cond1144.i = and i1 %i.cbo, %or.cond1143.i
  %i.cdu = add i32 %i.cdr, 600
  %i.cdv = srem i32 %i.cdu, 6
  %i.cdw = sext i32 %i.cdv to i64
  %i.cdx = getelementptr inbounds i8, ptr %i.ccl, i64 %i.cdw
  %i.cdy = load i8, ptr %i.cdx, align 1, !tbaa !133 ; 23 uses
  br i1 %or.cond1144.i, label %bb.iw, label %bb.jc

bb.iw:                                            ; preds = %bb.iv
  %gep.i497 = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv1580.i ; 4 uses
  %i.cdz = icmp eq i8 %i.cdy, 0
  br i1 %i.cdz, label %.thread.i, label %bb.ix

.thread.i:                                        ; preds = %bb.iw
  %i.cea = load float, ptr %gep.i497, align 4, !tbaa !12
  store float %i.cea, ptr %i.cdq, align 4, !tbaa !12
  br label %.thread2090.i

bb.ix:                                            ; preds = %bb.iw
  store float 0.000000e+00, ptr %i.cdq, align 4, !tbaa !12
  %i.ceb = icmp eq i8 %i.cdy, 1
  br i1 %i.ceb, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cec = load float, ptr %gep.i497, align 4, !tbaa !12
  br label %.thread2090.i

.thread2090.i:                                    ; preds = %bb.iy, %.thread.i
  %.ph.i = phi float [ 0.000000e+00, %.thread.i ], [ %i.cec, %bb.iy ]
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdq, i64 4
  store float %.ph.i, ptr %i.ced, align 4, !tbaa !12
  br label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cdq, i64 4
  store float 0.000000e+00, ptr %i.cee, align 4, !tbaa !12
  %i.cef = icmp eq i8 %i.cdy, 2
  br i1 %i.cef, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.ceg = load float, ptr %gep.i497, align 4, !tbaa !12
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %.thread2090.i
  %i.ceh = phi reassoc nsz arcp contract afn float [ %i.ceg, %bb.ja ], [ 0.000000e+00, %bb.iz ], [ 0.000000e+00, %.thread2090.i ]
  %i.cei = getelementptr inbounds nuw i8, ptr %i.cdq, i64 8
  store float %i.ceh, ptr %i.cei, align 4, !tbaa !12
  %i.cej = load float, ptr %gep.i497, align 4, !tbaa !12
  %i.cek = getelementptr inbounds [4 x i8], ptr %invariant.gep1310.i, i64 %i.cdp
  store float %i.cej, ptr %i.cek, align 4, !tbaa !12
  %.pre1267 = add nsw i64 %indvars.iv1580.i, 1
  br label %.loopexit1256.i

bb.jc:                                            ; preds = %bb.iv
  %i.cel = sub i32 %i.app, %i.cdr
  %i.cem = tail call i32 @llvm.abs.i32(i32 %i.cdr, i1 true)
  %i.cen = zext i8 %i.cdy to i64                  ; 2 uses
  %i.ceo = getelementptr inbounds nuw [4 x i8], ptr %i.cdq, i64 %i.cen ; 2 uses
  %gep1311.i = getelementptr [4 x i8], ptr %invariant.gep1310.i, i64 %i.cdp ; 2 uses
  %i.cep = select i1 %i.cdt, i32 %i.cem, i32 %i.cel ; 8 uses
  %i.ceq = add nsw i32 %i.cep, 600
  %i.cer = srem i32 %i.ceq, 6
  %i.ces = sext i32 %i.cer to i64                 ; 7 uses
  %i.cet = getelementptr inbounds i8, ptr %i.cco, i64 %i.ces
  %i.ceu = add i32 %i.cdr, -1                     ; 2 uses
  %i.cev = tail call i32 @llvm.abs.i32(i32 %i.ceu, i1 true)
  %i.cew = sub i32 %i.app, %i.ceu
  %i.cex = add nsw i64 %indvars.iv1580.i, 1       ; 3 uses
  %i.cey = trunc nsw i64 %i.cex to i32            ; 2 uses
  %i.cez = sub i32 %i.app, %i.cey
  %i.cfa = tail call i32 @llvm.abs.i32(i32 %i.cey, i1 true)
  %i.cfb = add nsw i32 %i.cep, %i.cbu
  %i.cfc = sext i32 %i.cfb to i64
  %i.cfd = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.cfc
  %.not1141.not.i = icmp sgt i64 %indvars.iv1580.i, %i.aoe
  %.not1141.2.i = icmp slt i64 %i.cex, %i.aoe
  %.2127.i = select i1 %.not1141.not.i, i32 %i.cew, i32 %i.cev ; 7 uses
  %.2131.i = select i1 %.not1141.2.i, i32 %i.cfa, i32 %i.cez ; 4 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.edr = getelementptr inbounds nuw [122 x i8], ptr %i.bxj, i64 %indvars.iv1712.1.i ; 2 uses
  %i.eds = getelementptr inbounds nuw i8, ptr %i.edr, i64 8
  store i8 0, ptr %i.eds, align 2, !tbaa !133
  %i.edt = add nuw nsw i64 %indvars.iv1712.1.i, 1 ; 3 uses
  %load_initial5203 = load i8, ptr %scevgep5202, align 2
  br label %.preheader1237.us.1.i

.preheader1237.us.1.i:                            ; preds = %.preheader1237.us.1.i, %.preheader1237.lr.ph.us.1.i
  %store_forwarded5204 = phi i8 [ %load_initial5203, %.preheader1237.lr.ph.us.1.i ], [ %i.eeq, %.preheader1237.us.1.i ]
  %indvars.iv1709.1.i = phi i64 [ 9, %.preheader1237.lr.ph.us.1.i ], [ %indvars.iv.next1710.1.i, %.preheader1237.us.1.i ] ; 4 uses
  %invariant.gep1420.us.1.i = getelementptr i8, ptr %i.bxk, i64 %indvars.iv1709.1.i ; 2 uses
  %i.edu = getelementptr [122 x i8], ptr %invariant.gep1420.us.1.i, i64 %indvars.iv1712.1.i ; 4 uses
  %i.edv = getelementptr i8, ptr %i.edu, i64 -242
  %i.edw = load i8, ptr %i.edv, align 1, !tbaa !133
  %i.edx = getelementptr i8, ptr %i.edu, i64 -120
  %i.edy = load i8, ptr %i.edx, align 1, !tbaa !133
  %i.edz = add i8 %i.edy, %i.edw
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edu, i64 2
  %i.eeb = load i8, ptr %i.eea, align 1, !tbaa !133
  %i.eec = add i8 %i.edz, %i.eeb
  %gep1421.us.3.1.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.1.i, i64 %i.edt
  %i.eed = getelementptr inbounds nuw i8, ptr %gep1421.us.3.1.i, i64 2
  %i.eee = load i8, ptr %i.eed, align 1, !tbaa !133
  %i.eef = add i8 %i.eec, %i.eee
  %i.eeg = getelementptr i8, ptr %i.edu, i64 246
  %i.eeh = load i8, ptr %i.eeg, align 1, !tbaa !133
  %i.eei = add i8 %i.eef, %i.eeh                  ; 2 uses
  %i.eej = getelementptr i8, ptr %i.edr, i64 %indvars.iv1709.1.i
  %i.eek = trunc nuw nsw i64 %indvars.iv1709.1.i to i32
  %i.eel = urem i32 %i.eek, 5
  %i.eem = zext nneg i32 %i.eel to i64
  %i.een = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eem ; 2 uses
  %i.eeo = load i8, ptr %i.een, align 1, !tbaa !133
  %i.eep = add i8 %store_forwarded5204, %i.eei
  %i.eeq = sub i8 %i.eep, %i.eeo                  ; 2 uses
  store i8 %i.eeq, ptr %i.eej, align 1, !tbaa !133
  store i8 %i.eei, ptr %i.een, align 1, !tbaa !133
  %indvars.iv.next1710.1.i = add nuw nsw i64 %indvars.iv1709.1.i, 1 ; 2 uses
  %exitcond1748.not.i = icmp eq i64 %indvars.iv.next1710.1.i, %smax1756.i
  br i1 %exitcond1748.not.i, label %._crit_edge1425.us.1.i, label %.preheader1237.us.1.i

._crit_edge1425.us.1.i:                           ; preds = %.preheader1237.us.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1751.not.i = icmp eq i64 %i.edt, %smax1762.i
  %indvar.next5201 = add i64 %indvar5200, 1
  br i1 %exitcond1751.not.i, label %.preheader1237.lr.ph.us.2.i, label %.preheader1237.lr.ph.us.1.i

.lr.ph1427.split.2.i:                             ; preds = %.lr.ph1427.split.1.i, %.lr.ph1427.split.2.i
  %indvars.iv1703.2.i = phi i64 [ %indvars.iv.next1704.2.i, %.lr.ph1427.split.2.i ], [ 13, %.lr.ph1427.split.1.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eer = getelementptr inbounds nuw [122 x i8], ptr %i.bmo, i64 %indvars.iv1703.2.i
  %i.ees = getelementptr inbounds nuw i8, ptr %i.eer, i64 803744
  store i8 0, ptr %i.ees, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.2.i = add nuw nsw i64 %indvars.iv1703.2.i, 1 ; 2 uses
  %exitcond1745.not.i = icmp eq i64 %indvars.iv.next1704.2.i, %smax1762.i
  br i1 %exitcond1745.not.i, label %.lr.ph1427.split.3.i, label %.lr.ph1427.split.2.i

.preheader1237.lr.ph.us.2.i:                      ; preds = %._crit_edge1425.us.1.i, %._crit_edge1425.us.2.i
  %indvar5205 = phi i64 [ %indvar.next5206, %._crit_edge1425.us.2.i ], [ 0, %._crit_edge1425.us.1.i ] ; 2 uses
  %indvars.iv1712.2.i = phi i64 [ %i.eex, %._crit_edge1425.us.2.i ], [ 13, %._crit_edge1425.us.1.i ] ; 3 uses
  %i.eet = mul nuw nsw i64 %indvar5205, 122
  %i.eeu = getelementptr i8, ptr %i.bmo, i64 %i.eet
  %scevgep5207 = getelementptr i8, ptr %i.eeu, i64 805330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.eev = getelementptr inbounds nuw [122 x i8], ptr %i.bxl, i64 %indvars.iv1712.2.i ; 2 uses
  %i.eew = getelementptr inbounds nuw i8, ptr %i.eev, i64 8
  store i8 0, ptr %i.eew, align 2, !tbaa !133
  %i.eex = add nuw nsw i64 %indvars.iv1712.2.i, 1 ; 3 uses
  %load_initial5208 = load i8, ptr %scevgep5207, align 2
  br label %.preheader1237.us.2.i

.preheader1237.us.2.i:                            ; preds = %.preheader1237.us.2.i, %.preheader1237.lr.ph.us.2.i
  %store_forwarded5209 = phi i8 [ %load_initial5208, %.preheader1237.lr.ph.us.2.i ], [ %i.efu, %.preheader1237.us.2.i ]
  %indvars.iv1709.2.i = phi i64 [ 9, %.preheader1237.lr.ph.us.2.i ], [ %indvars.iv.next1710.2.i, %.preheader1237.us.2.i ] ; 4 uses
  %invariant.gep1420.us.2.i = getelementptr i8, ptr %i.bxm, i64 %indvars.iv1709.2.i ; 2 uses
  %i.eey = getelementptr [122 x i8], ptr %invariant.gep1420.us.2.i, i64 %indvars.iv1712.2.i ; 4 uses
  %i.eez = getelementptr i8, ptr %i.eey, i64 -242
  %i.efa = load i8, ptr %i.eez, align 1, !tbaa !133
  %i.efb = getelementptr i8, ptr %i.eey, i64 -120
  %i.efc = load i8, ptr %i.efb, align 1, !tbaa !133
  %i.efd = add i8 %i.efc, %i.efa
  %i.efe = getelementptr inbounds nuw i8, ptr %i.eey, i64 2
  %i.eff = load i8, ptr %i.efe, align 1, !tbaa !133
  %i.efg = add i8 %i.efd, %i.eff
  %gep1421.us.3.2.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.2.i, i64 %i.eex
  %i.efh = getelementptr inbounds nuw i8, ptr %gep1421.us.3.2.i, i64 2
  %i.efi = load i8, ptr %i.efh, align 1, !tbaa !133
  %i.efj = add i8 %i.efg, %i.efi
  %i.efk = getelementptr i8, ptr %i.eey, i64 246
  %i.efl = load i8, ptr %i.efk, align 1, !tbaa !133
  %i.efm = add i8 %i.efj, %i.efl                  ; 2 uses
  %i.efn = getelementptr i8, ptr %i.eev, i64 %indvars.iv1709.2.i
  %i.efo = trunc nuw nsw i64 %indvars.iv1709.2.i to i32
  %i.efp = urem i32 %i.efo, 5
  %i.efq = zext nneg i32 %i.efp to i64
  %i.efr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.efq ; 2 uses
  %i.efs = load i8, ptr %i.efr, align 1, !tbaa !133
  %i.eft = add i8 %store_forwarded5209, %i.efm
  %i.efu = sub i8 %i.eft, %i.efs                  ; 2 uses
  store i8 %i.efu, ptr %i.efn, align 1, !tbaa !133
  store i8 %i.efm, ptr %i.efr, align 1, !tbaa !133
  %indvars.iv.next1710.2.i = add nuw nsw i64 %indvars.iv1709.2.i, 1 ; 2 uses
  %exitcond1739.not.i = icmp eq i64 %indvars.iv.next1710.2.i, %smax1756.i
  br i1 %exitcond1739.not.i, label %._crit_edge1425.us.2.i, label %.preheader1237.us.2.i

._crit_edge1425.us.2.i:                           ; preds = %.preheader1237.us.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1742.not.i = icmp eq i64 %i.eex, %smax1762.i
  %indvar.next5206 = add i64 %indvar5205, 1
  br i1 %exitcond1742.not.i, label %.preheader1237.lr.ph.us.3.i, label %.preheader1237.lr.ph.us.2.i

.lr.ph1427.split.3.i:                             ; preds = %.lr.ph1427.split.2.i, %.lr.ph1427.split.3.i
  %indvars.iv1703.3.i = phi i64 [ %indvars.iv.next1704.3.i, %.lr.ph1427.split.3.i ], [ 13, %.lr.ph1427.split.2.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.efv = getelementptr inbounds nuw [122 x i8], ptr %i.bmo, i64 %indvars.iv1703.3.i
  %i.efw = getelementptr inbounds nuw i8, ptr %i.efv, i64 818628
  store i8 0, ptr %i.efw, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.3.i = add nuw nsw i64 %indvars.iv1703.3.i, 1 ; 2 uses
  %exitcond1736.not.i = icmp eq i64 %indvars.iv.next1704.3.i, %smax1762.i
  br i1 %exitcond1736.not.i, label %.preheader1258.lr.ph.i, label %.lr.ph1427.split.3.i

.preheader1237.lr.ph.us.3.i:                      ; preds = %._crit_edge1425.us.2.i, %._crit_edge1425.us.3.i
  %indvar5210 = phi i64 [ %indvar.next5211, %._crit_edge1425.us.3.i ], [ 0, %._crit_edge1425.us.2.i ] ; 2 uses
  %indvars.iv1712.3.i = phi i64 [ %i.egb, %._crit_edge1425.us.3.i ], [ 13, %._crit_edge1425.us.2.i ] ; 3 uses
  %i.efx = mul nuw nsw i64 %indvar5210, 122
  %i.efy = getelementptr i8, ptr %i.bmo, i64 %i.efx
  %scevgep5212 = getelementptr i8, ptr %i.efy, i64 820214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.efz = getelementptr inbounds nuw [122 x i8], ptr %i.bxn, i64 %indvars.iv1712.3.i ; 2 uses
  %i.ega = getelementptr inbounds nuw i8, ptr %i.efz, i64 8
  store i8 0, ptr %i.ega, align 2, !tbaa !133
  %i.egb = add nuw nsw i64 %indvars.iv1712.3.i, 1 ; 3 uses
  %load_initial5213 = load i8, ptr %scevgep5212, align 2
  br label %.preheader1237.us.3.i

.preheader1237.us.3.i:                            ; preds = %.preheader1237.us.3.i, %.preheader1237.lr.ph.us.3.i
  %store_forwarded5214 = phi i8 [ %load_initial5213, %.preheader1237.lr.ph.us.3.i ], [ %i.egy, %.preheader1237.us.3.i ]
  %indvars.iv1709.3.i = phi i64 [ 9, %.preheader1237.lr.ph.us.3.i ], [ %indvars.iv.next1710.3.i, %.preheader1237.us.3.i ] ; 4 uses
  %invariant.gep1420.us.3.i = getelementptr i8, ptr %i.bxo, i64 %indvars.iv1709.3.i ; 2 uses
  %i.egc = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %indvars.iv1712.3.i ; 4 uses
  %i.egd = getelementptr i8, ptr %i.egc, i64 -242
  %i.ege = load i8, ptr %i.egd, align 1, !tbaa !133
  %i.egf = getelementptr i8, ptr %i.egc, i64 -120
  %i.egg = load i8, ptr %i.egf, align 1, !tbaa !133
  %i.egh = add i8 %i.egg, %i.ege
  %i.egi = getelementptr inbounds nuw i8, ptr %i.egc, i64 2
  %i.egj = load i8, ptr %i.egi, align 1, !tbaa !133
  %i.egk = add i8 %i.egh, %i.egj
  %gep1421.us.3.3.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %i.egb
  %i.egl = getelementptr inbounds nuw i8, ptr %gep1421.us.3.3.i, i64 2
  %i.egm = load i8, ptr %i.egl, align 1, !tbaa !133
  %i.egn = add i8 %i.egk, %i.egm
  %i.ego = getelementptr i8, ptr %i.egc, i64 246
  %i.egp = load i8, ptr %i.ego, align 1, !tbaa !133
  %i.egq = add i8 %i.egn, %i.egp                  ; 2 uses
  %i.egr = getelementptr i8, ptr %i.efz, i64 %indvars.iv1709.3.i
  %i.egs = trunc nuw nsw i64 %indvars.iv1709.3.i to i32
  %i.egt = urem i32 %i.egs, 5
  %i.egu = zext nneg i32 %i.egt to i64
  %i.egv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.egu ; 2 uses
  %i.egw = load i8, ptr %i.egv, align 1, !tbaa !133
  %i.egx = add i8 %store_forwarded5214, %i.egq
  %i.egy = sub i8 %i.egx, %i.egw                  ; 2 uses
  store i8 %i.egy, ptr %i.egr, align 1, !tbaa !133
  store i8 %i.egq, ptr %i.egv, align 1, !tbaa !133
  %indvars.iv.next1710.3.i = add nuw nsw i64 %indvars.iv1709.3.i, 1 ; 2 uses
  %exitcond1726.not.i = icmp eq i64 %indvars.iv.next1710.3.i, %smax1756.i
  br i1 %exitcond1726.not.i, label %._crit_edge1425.us.3.i, label %.preheader1237.us.3.i

._crit_edge1425.us.3.i:                           ; preds = %.preheader1237.us.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1733.not.i = icmp eq i64 %i.egb, %smax1762.i
  %indvar.next5211 = add i64 %indvar5210, 1
  br i1 %exitcond1733.not.i, label %.preheader1265.split.i, label %.preheader1237.lr.ph.us.3.i

.lr.ph1427.split.i:                               ; preds = %.preheader1259.preheader.i, %.lr.ph1427.split.i
  %indvars.iv1703.i = phi i64 [ %indvars.iv.next1704.i, %.lr.ph1427.split.i ], [ 13, %.preheader1259.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.egz = getelementptr inbounds nuw [122 x i8], ptr %i.bwq, i64 %indvars.iv1703.i
  %i.eha = getelementptr inbounds nuw i8, ptr %i.egz, i64 8
  store i8 0, ptr %i.eha, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i = add nuw nsw i64 %indvars.iv1703.i, 1 ; 2 uses
  %exitcond1763.not.i = icmp eq i64 %indvars.iv.next1704.i, %smax1762.i
  br i1 %exitcond1763.not.i, label %.lr.ph1427.split.1.i, label %.lr.ph1427.split.i

.preheader1264.i:                                 ; preds = %._crit_edge1482.i
  %i.ehb = icmp sgt i32 %i.dlo, 26
  %or.cond2135.i = select i1 %i.bzo, i1 %i.ehb, i1 false
  br i1 %or.cond2135.i, label %.preheader1257.i.preheader, label %._crit_edge1503.split.i

.preheader1257.i.preheader:                       ; preds = %.preheader1264.i
  %i.ehc = add nsw i64 %umax1244, -13             ; 2 uses
  %min.iters.check2240 = icmp ult i32 %i.caq, 21
  %i.ehd = trunc nuw i64 %i.can to i32
  %mul.result2166 = shl i32 %i.ehd, 2
  %mul.overflow2167 = icmp samesign ugt i64 %i.can, 1073741823
  %n.vec2262 = and i64 %i.ehc, -8                 ; 3 uses
  %i.ehe = add nsw i64 %n.vec2262, 13
  %cmp.n2334 = icmp eq i64 %i.ehc, %n.vec2262
  br label %.preheader1257.i

.preheader1258.i:                                 ; preds = %._crit_edge1482.i, %.preheader1258.preheader.i
  %indvars.iv1858.i = phi i64 [ 6, %.preheader1258.preheader.i ], [ %indvars.iv.next1859.i, %._crit_edge1482.i ] ; 4 uses
  %indvars.iv1784.i = phi i64 [ 0, %.preheader1258.preheader.i ], [ %indvars.iv.next1785.i, %._crit_edge1482.i ] ; 6 uses
  %invariant.gep1430.i = getelementptr inbounds nuw [122 x i8], ptr %i.bwq, i64 %indvars.iv1858.i
  %i.ehf = add nuw nsw i64 %indvars.iv1858.i, %.11087.i
  %i.ehg = trunc nuw i64 %i.ehf to i32
  %i.ehh = urem i32 %i.ehg, 6
  %i.ehi = zext nneg i32 %i.ehh to i64
  %i.ehj = getelementptr inbounds nuw [384 x i8], ptr @xtrans_fdc_interpolate.modarr, i64 %i.ehi
  %i.ehk = mul nuw nsw i64 %indvars.iv1858.i, 122 ; 2 uses
  %i.ehl = getelementptr inbounds nuw [4 x i8], ptr %i.bwr, i64 %i.ehk
  %invariant.gep1475.i = getelementptr inbounds nuw [4 x i8], ptr %i.bws, i64 %i.ehk
  %broadcast.splatinsert2338 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2339 = shufflevector <8 x i64> %broadcast.splatinsert2338, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ehm = mul nuw <8 x i64> %broadcast.splat2339, splat (i64 488)
  %i.ehn = add nuw <8 x i64> %i.ehm, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2348 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.ehn ; 13 uses
  %broadcast.splatinsert2432 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2433 = shufflevector <8 x i64> %broadcast.splatinsert2432, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eho = mul nuw <8 x i64> %broadcast.splat2433, splat (i64 488)
  %i.ehp = add nuw <8 x i64> %i.eho, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2442.1 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.ehp ; 13 uses
  %broadcast.splatinsert2620 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2621 = shufflevector <8 x i64> %broadcast.splatinsert2620, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ehq = mul nuw <8 x i64> %broadcast.splat2621, splat (i64 488)
  %i.ehr = add nuw <8 x i64> %i.ehq, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2630 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.ehr ; 13 uses
  %i.ehs = mul nuw <8 x i64> %broadcast.splat2621, splat (i64 488)
  %i.eht = add nuw <8 x i64> %i.ehs, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2630.1 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.eht ; 13 uses
  %broadcast.splatinsert2526 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2527 = shufflevector <8 x i64> %broadcast.splatinsert2526, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ehu = mul nuw <8 x i64> %broadcast.splat2527, splat (i64 488)
  %i.ehv = add nuw <8 x i64> %i.ehu, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2536 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.ehv ; 13 uses
  %i.ehw = mul nuw <8 x i64> %broadcast.splat2527, splat (i64 488)
  %i.ehx = add nuw <8 x i64> %i.ehw, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2536.1 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.ehx ; 13 uses
  %i.ehy = mul nuw <8 x i64> %broadcast.splat2433, splat (i64 488)
  %i.ehz = add nuw <8 x i64> %i.ehy, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2442 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.ehz ; 13 uses
  %i.eia = mul nuw <8 x i64> %broadcast.splat2339, splat (i64 488)
  %i.eib = add nuw <8 x i64> %i.eia, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2348.1 = getelementptr inbounds nuw i8, ptr %i.bwr, <8 x i64> %i.eib ; 13 uses
  br label %vector.ph2619

._crit_edge1482.i:                                ; preds = %vector.ph2619
  %indvars.iv.next1859.i = add nuw nsw i64 %indvars.iv1858.i, 1
  %indvars.iv.next1785.i = add nuw nsw i64 %indvars.iv1784.i, 1
  %exitcond1242.not = icmp eq i64 %indvars.iv1784.i, %i.bzv
  br i1 %exitcond1242.not, label %.preheader1264.i, label %.preheader1258.i

vector.ph2619:                                    ; preds = %vector.ph2619, %.preheader1258.i
  %indvars.iv1855.i = phi i64 [ 6, %.preheader1258.i ], [ %indvars.iv.next1856.i, %vector.ph2619 ] ; 5 uses
  %indvars.iv1774.i = phi i64 [ 0, %.preheader1258.i ], [ %indvars.iv.next1777.i, %vector.ph2619 ] ; 21 uses
  %invariant.gep1432.i = getelementptr inbounds nuw i8, ptr %invariant.gep1430.i, i64 %indvars.iv1855.i ; 4 uses
  %i.eic = load i8, ptr %invariant.gep1432.i, align 1, !tbaa !133
  %gep1433.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 14884
  %i.eid = load i8, ptr %gep1433.1.i, align 1, !tbaa !133
  %gep1433.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 29768
  %i.eie = load i8, ptr %gep1433.2.i, align 1, !tbaa !133
  %gep1433.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 44652
  %i.eif = load i8, ptr %gep1433.3.i, align 1, !tbaa !133
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
  %wide.masked.gather2632 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 96)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2634 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 100)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2635 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv1774.i
  %wide.masked.gather2636 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2635, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eig = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2636, %wide.masked.gather2632
  %i.eih = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2636, %wide.masked.gather2634
  %wide.masked.gather2638 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 88)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2640 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 92)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2641 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.i
  %wide.masked.gather2642 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2641, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eii = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2642, %wide.masked.gather2638
  %i.eij = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2642, %wide.masked.gather2640
  %i.eik = fadd reassoc nsz arcp contract afn <8 x float> %i.eii, %i.eig
  %i.eil = fadd reassoc nsz arcp contract afn <8 x float> %i.eij, %i.eih
  %wide.masked.gather2644 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 80)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2646 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 84)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2647 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.1.i
  %wide.masked.gather2648 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2647, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eim = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2648, %wide.masked.gather2644
  %i.ein = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2648, %wide.masked.gather2646
  %i.eio = fadd reassoc nsz arcp contract afn <8 x float> %i.eik, %i.eim
  %i.eip = fadd reassoc nsz arcp contract afn <8 x float> %i.eil, %i.ein
  %wide.masked.gather2650 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 72)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2652 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 76)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2653 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.2.i
  %wide.masked.gather2654 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2653, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eiq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2654, %wide.masked.gather2650
  %i.eir = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2654, %wide.masked.gather2652
  %i.eis = fadd reassoc nsz arcp contract afn <8 x float> %i.eio, %i.eiq
  %i.eit = fadd reassoc nsz arcp contract afn <8 x float> %i.eip, %i.eir
  %wide.masked.gather2656 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 64)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2658 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 68)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2659 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.3.i
  %wide.masked.gather2660 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2659, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eiu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2660, %wide.masked.gather2656
  %i.eiv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2660, %wide.masked.gather2658
  %i.eiw = fadd reassoc nsz arcp contract afn <8 x float> %i.eis, %i.eiu
  %i.eix = fadd reassoc nsz arcp contract afn <8 x float> %i.eit, %i.eiv
  %wide.masked.gather2662 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 56)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2664 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 60)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2665 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.4.i
  %wide.masked.gather2666 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2665, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eiy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2666, %wide.masked.gather2662
  %i.eiz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2666, %wide.masked.gather2664
  %i.eja = fadd reassoc nsz arcp contract afn <8 x float> %i.eiw, %i.eiy
  %i.ejb = fadd reassoc nsz arcp contract afn <8 x float> %i.eix, %i.eiz
  %wide.masked.gather2668 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 48)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2670 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 52)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2671 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.5.i
  %wide.masked.gather2672 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2671, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ejc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2672, %wide.masked.gather2668
  %i.ejd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2672, %wide.masked.gather2670
  %i.eje = fadd reassoc nsz arcp contract afn <8 x float> %i.eja, %i.ejc
  %i.ejf = fadd reassoc nsz arcp contract afn <8 x float> %i.ejb, %i.ejd
  %wide.masked.gather2674 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 40)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2676 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 44)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2677 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.6.i
  %wide.masked.gather2678 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2677, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ejg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2678, %wide.masked.gather2674
  %i.ejh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2678, %wide.masked.gather2676
  %i.eji = fadd reassoc nsz arcp contract afn <8 x float> %i.eje, %i.ejg
  %i.ejj = fadd reassoc nsz arcp contract afn <8 x float> %i.ejf, %i.ejh
  %wide.masked.gather2680 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 32)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2682 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 36)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2683 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.7.i
  %wide.masked.gather2684 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2683, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ejk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2684, %wide.masked.gather2680
  %i.ejl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2684, %wide.masked.gather2682
  %i.ejm = fadd reassoc nsz arcp contract afn <8 x float> %i.eji, %i.ejk
  %i.ejn = fadd reassoc nsz arcp contract afn <8 x float> %i.ejj, %i.ejl
  %wide.masked.gather2686 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 24)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2688 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 28)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2689 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.8.i
  %wide.masked.gather2690 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2689, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ejo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2690, %wide.masked.gather2686
  %i.ejp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2690, %wide.masked.gather2688
  %i.ejq = fadd reassoc nsz arcp contract afn <8 x float> %i.ejm, %i.ejo
  %i.ejr = fadd reassoc nsz arcp contract afn <8 x float> %i.ejn, %i.ejp
  %wide.masked.gather2692 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 16)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2694 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 20)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2695 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.9.i
  %wide.masked.gather2696 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2695, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ejs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2696, %wide.masked.gather2692
  %i.ejt = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2696, %wide.masked.gather2694
  %i.eju = fadd reassoc nsz arcp contract afn <8 x float> %i.ejq, %i.ejs
  %i.ejv = fadd reassoc nsz arcp contract afn <8 x float> %i.ejr, %i.ejt
  %wide.masked.gather2698 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 8)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2700 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 12)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2701 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.10.i
  %wide.masked.gather2702 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2701, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ejw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2702, %wide.masked.gather2698
  %i.ejx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2702, %wide.masked.gather2700
  %i.ejy = fadd reassoc nsz arcp contract afn <8 x float> %i.eju, %i.ejw
  %i.ejz = fadd reassoc nsz arcp contract afn <8 x float> %i.ejv, %i.ejx
  %wide.masked.gather2703 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2705 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 4)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2706 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630, i64 %indvars.iv.next1777.11.i
  %wide.masked.gather2707 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2706, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eka = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2707, %wide.masked.gather2703
  %i.ekb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2707, %wide.masked.gather2705
  %i.ekc = fadd reassoc nsz arcp contract afn <8 x float> %i.ejy, %i.eka ; 2 uses
  %i.ekd = fadd reassoc nsz arcp contract afn <8 x float> %i.ejz, %i.ekb ; 2 uses
  %wide.masked.gather2632.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 96)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2634.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 100)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.gep2635.1 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630.1, i64 %indvars.iv1774.i
  %wide.masked.gather2636.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2635.1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eke = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2636.1, %wide.masked.gather2632.1
  %i.ekf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2636.1, %wide.masked.gather2634.1
  %i.ekg = fadd reassoc nsz arcp contract afn <8 x float> %i.ekc, %i.eke
  %i.ekh = fadd reassoc nsz arcp contract afn <8 x float> %i.ekd, %i.ekf
  %wide.masked.gather2638.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 88)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2640.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 92)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.gep2641.1 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2630.1, i64 %indvars.iv.next1777.i
  %wide.masked.gather2642.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2641.1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eki = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2642.1, %wide.masked.gather2638.1
  %i.ekj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2642.1, %wide.masked.gather2640.1
  %i.ekk = fadd reassoc nsz arcp contract afn <8 x float> %i.eki, %i.ekg
  %i.ekl = fadd reassoc nsz arcp contract afn <8 x float> %i.ekj, %i.ekh
  %wide.masked.gather2644.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 80)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
  %wide.masked.gather2646.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 416, i64 312, i64 208, i64 104, i64 0, i64 -104, i64 -208, i64 -312>), <8 x i64> splat (i64 84)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison)
end_hunk_1
