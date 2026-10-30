Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3VdbeExec:bb.a
  %.not.i4274 = icmp eq ptr %i.cvu, null
  br i1 %.not.i4274, label %sqlite3VdbeFreeCursor.exit, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  call fastcc void @sqlite3VdbeFreeCursorNN(ptr noundef nonnull readonly %0, ptr noundef %i.cvu), !inline_history !4742
  %.pre7223 = load ptr, ptr %i.bz, align 8, !tbaa !1240
  %.pre7224 = load i32, ptr %i.cvq, align 4, !tbaa !954
  %.pre7269 = sext i32 %.pre7224 to i64
  br label %sqlite3VdbeFreeCursor.exit

sqlite3VdbeFreeCursor.exit:                       ; preds = %bb.xt, %bb.xu
  %.pre-phi7270 = phi i64 [ %i.cvs, %bb.xt ], [ %.pre7269, %bb.xu ]
  %i.cvv = phi ptr [ %i.cvp, %bb.xt ], [ %.pre7223, %bb.xu ]
  %i.cvw = getelementptr inbounds [8 x i8], ptr %i.cvv, i64 %.pre-phi7270
  store ptr null, ptr %i.cvw, align 8, !tbaa !1242
  br label %.critedge

bb.xv:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.cvx = load ptr, ptr %i.bz, align 8, !tbaa !1240
  %i.cvy = getelementptr inbounds nuw i8, ptr %.02964, i64 4
  %i.cvz = load i32, ptr %i.cvy, align 4, !tbaa !954
  %i.cwa = sext i32 %i.cvz to i64
  %i.cwb = getelementptr inbounds [8 x i8], ptr %i.cvx, i64 %i.cwa
  %i.cwc = load ptr, ptr %i.cwb, align 8, !tbaa !1242 ; 12 uses
  %i.cwd = load i8, ptr %.02964, align 8, !tbaa !938 ; 3 uses
  %i.cwe = zext i8 %i.cwd to i32                  ; 6 uses
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwc, i64 2
  store i8 0, ptr %i.cwf, align 2, !tbaa !741
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cwc, i64 3
  store i8 0, ptr %i.cwg, align 1, !tbaa !741
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwc, i64 24
  store i32 0, ptr %i.cwh, align 8, !tbaa !576
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwc, i64 4
  %i.cwj = load i8, ptr %i.cwi, align 4, !tbaa !741
  %.not3684 = icmp eq i8 %i.cwj, 0
  br i1 %.not3684, label %bb.yt, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cwk = getelementptr inbounds nuw i8, ptr %.02964, i64 12
  %i.cwl = load i32, ptr %i.cwk, align 4, !tbaa !956
  %i.cwm = sext i32 %i.cwl to i64
  %i.cwn = getelementptr inbounds [56 x i8], ptr %.03065, i64 %i.cwm ; 13 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwn, i64 20 ; 6 uses
  %i.cwp = load i16, ptr %i.cwo, align 4, !tbaa !694 ; 3 uses
  %i.cwq = and i16 %i.cwp, 46
  %i.cwr = icmp eq i16 %i.cwq, 2
  br i1 %i.cwr, label %bb.xx, label %bb.yb

bb.xx:                                            ; preds = %bb.xw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #58
  %i.cws = call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.cwn, ptr noundef nonnull %i.p) ; 6 uses
  %i.cwt = load i32, ptr %i.p, align 4, !tbaa !576 ; 2 uses
  %i.cwu = icmp slt i32 %i.cwt, 1
  br i1 %i.cwu, label %applyNumericAffinity.exit, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.cwv = icmp eq i32 %i.cwt, 1
  br i1 %i.cwv, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  %i.cww = fcmp olt double %i.cws, f0xC3DFFFFFFFFFFFFF
  %i.cwx = fcmp ogt double %i.cws, f0x43DFFFFFFFFFFFFF
  %i.cwy = fptosi double %i.cws to i64
  %spec.select.i.i.i4275 = select i1 %i.cwx, i64 9223372036854775807, i64 %i.cwy
  %.0.i.i.i4276 = select i1 %i.cww, i64 -9223372036854775808, i64 %spec.select.i.i.i4275 ; 3 uses
  %i.cwz = fcmp oeq double %i.cws, 0.000000e+00
  br i1 %i.cwz, label %alsoAnInt.exit.thread.i, label %sqlite3RealSameAsInt.exit.i.i

sqlite3RealSameAsInt.exit.i.i:                    ; preds = %bb.xz
  %i.cxa = sitofp i64 %.0.i.i.i4276 to double
  %i.cxb = bitcast double %i.cws to i64
  %i.cxc = bitcast double %i.cxa to i64
  %.not.i.i.i = icmp ne i64 %i.cxb, %i.cxc
  %i.cxd = add i64 %.0.i.i.i4276, -2251799813685248
  %i.cxe = icmp ult i64 %i.cxd, -4503599627370496
  %.not11.i.i = or i1 %i.cxe, %.not.i.i.i
  br i1 %.not11.i.i, label %alsoAnInt.exit.i, label %alsoAnInt.exit.thread.i

alsoAnInt.exit.thread.i:                          ; preds = %sqlite3RealSameAsInt.exit.i.i, %bb.xz
  store i64 %.0.i.i.i4276, ptr %i.cwn, align 8, !tbaa !571
  br label %sqlite3VdbeIntegerAffinity.exit.i

alsoAnInt.exit.i:                                 ; preds = %sqlite3RealSameAsInt.exit.i.i
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cwn, i64 8
  %i.cxg = load ptr, ptr %i.cxf, align 8, !tbaa !768
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cwn, i64 16
  %i.cxi = load i32, ptr %i.cxh, align 8, !tbaa !934
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cwn, i64 22
  %i.cxk = load i8, ptr %i.cxj, align 2, !tbaa !795
  %i.cxl = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.cxg, ptr noundef nonnull %i.cwn, i32 noundef %i.cxi, i8 noundef zeroext %i.cxk)
  %.not.i4277 = icmp eq i32 %i.cxl, 0
  br i1 %.not.i4277, label %sqlite3VdbeIntegerAffinity.exit.i, label %bb.ya

bb.ya:                                            ; preds = %alsoAnInt.exit.i, %bb.xy
  store double %i.cws, ptr %i.cwn, align 8, !tbaa !741
  br label %sqlite3VdbeIntegerAffinity.exit.i

sqlite3VdbeIntegerAffinity.exit.i:                ; preds = %alsoAnInt.exit.thread.i, %alsoAnInt.exit.i, %bb.ya
  %.sink8597 = phi i16 [ 8, %bb.ya ], [ 4, %alsoAnInt.exit.i ], [ 4, %alsoAnInt.exit.thread.i ]
  %i.cxm = load i16, ptr %i.cwo, align 4, !tbaa !694
  %.masked = and i16 %i.cxm, -3
  %i.cxn = or i16 %.masked, %.sink8597
  store i16 %i.cxn, ptr %i.cwo, align 4, !tbaa !694
  br label %applyNumericAffinity.exit

applyNumericAffinity.exit:                        ; preds = %bb.xx, %sqlite3VdbeIntegerAffinity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #58
  %.pre7221 = load i16, ptr %i.cwo, align 4, !tbaa !694
  br label %bb.yb

bb.yb:                                            ; preds = %applyNumericAffinity.exit, %bb.xw
  %i.cxo = phi i16 [ %.pre7221, %applyNumericAffinity.exit ], [ %i.cwp, %bb.xw ] ; 5 uses
  %i.cxp = zext i16 %i.cxo to i32                 ; 7 uses
  %i.cxq = and i32 %i.cxp, 36
  %.not.i4278 = icmp eq i32 %i.cxq, 0
  br i1 %.not.i4278, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.cxr = load i64, ptr %i.cwn, align 8, !tbaa !741
  br label %sqlite3VdbeIntValue.exit4285

bb.yd:                                            ; preds = %bb.yb
  %i.cxs = and i32 %i.cxp, 8
  %.not8.i4280 = icmp eq i32 %i.cxs, 0
  br i1 %.not8.i4280, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.cxt = load double, ptr %i.cwn, align 8, !tbaa !741 ; 3 uses
  %i.cxu = fcmp olt double %i.cxt, f0xC3DFFFFFFFFFFFFF
  %i.cxv = fcmp ogt double %i.cxt, f0x43DFFFFFFFFFFFFF
  %i.cxw = fptosi double %i.cxt to i64
  %spec.select.i.i4281 = select i1 %i.cxv, i64 9223372036854775807, i64 %i.cxw
  %.0.i.i4282 = select i1 %i.cxu, i64 -9223372036854775808, i64 %spec.select.i.i4281
  br label %sqlite3VdbeIntValue.exit4285

bb.yf:                                            ; preds = %bb.yd
  %i.cxx = and i32 %i.cxp, 18
  %.not9.i4283 = icmp eq i32 %i.cxx, 0
  br i1 %.not9.i4283, label %sqlite3VdbeIntValue.exit4285, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cwn, i64 8
  %i.cxz = load ptr, ptr %i.cxy, align 8, !tbaa !768
  %.not10.i4284 = icmp eq ptr %i.cxz, null
  br i1 %.not10.i4284, label %sqlite3VdbeIntValue.exit4285, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %i.cya = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.cwn)
  %.pre7222 = load i16, ptr %i.cwo, align 4, !tbaa !694 ; 2 uses
  %.pre7271 = zext i16 %.pre7222 to i32
  br label %sqlite3VdbeIntValue.exit4285

sqlite3VdbeIntValue.exit4285:                     ; preds = %bb.yc, %bb.ye, %bb.yf, %bb.yg, %bb.yh
  %.pre-phi7272 = phi i32 [ %i.cxp, %bb.yc ], [ %i.cxp, %bb.ye ], [ %i.cxp, %bb.yf ], [ %i.cxp, %bb.yg ], [ %.pre7271, %bb.yh ] ; 2 uses
  %i.cyb = phi i16 [ %i.cxo, %bb.yc ], [ %i.cxo, %bb.ye ], [ %i.cxo, %bb.yf ], [ %i.cxo, %bb.yg ], [ %.pre7222, %bb.yh ]
  %.0.i4279 = phi i64 [ %i.cxr, %bb.yc ], [ %.0.i.i4282, %bb.ye ], [ 0, %bb.yf ], [ 0, %bb.yg ], [ %i.cya, %bb.yh ] ; 5 uses
  store i16 %i.cwp, ptr %i.cwo, align 4, !tbaa !694
  %i.cyc = and i32 %.pre-phi7272, 36
  %i.cyd = icmp eq i32 %i.cyc, 0
  br i1 %i.cyd, label %bb.yi, label %bb.ys

bb.yi:                                            ; preds = %sqlite3VdbeIntValue.exit4285
  %i.cye = and i32 %.pre-phi7272, 8
  %.not3690 = icmp eq i32 %i.cye, 0
  br i1 %.not3690, label %bb.yj, label %bb.ym

bb.yj:                                            ; preds = %bb.yi
  %i.cyf = trunc i16 %i.cyb to i1
  %i.cyg = icmp ugt i8 %i.cwd, 22
  %or.cond21 = select i1 %i.cyf, i1 true, i1 %i.cyg
  br i1 %or.cond21, label %.thread4900.thread, label %bb.yk

.thread4900.thread:                               ; preds = %bb.yj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #58
  br label %.thread4739

bb.yk:                                            ; preds = %bb.yj
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cwc, i64 40
  %i.cyi = load ptr, ptr %i.cyh, align 8, !tbaa !741 ; 3 uses
  %i.cyj = load i8, ptr %i.cyi, align 8, !tbaa !1130
  %i.cyk = icmp eq i8 %i.cyj, 0
  br i1 %i.cyk, label %bb.yl, label %sqlite3BtreeLast.exit

bb.yl:                                            ; preds = %bb.yk
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyi, i64 1
  %i.cym = load i8, ptr %i.cyl, align 1, !tbaa !1076
  %i.cyn = and i8 %i.cym, 8
  %.not.i4287 = icmp eq i8 %i.cyn, 0
  br i1 %.not.i4287, label %sqlite3BtreeLast.exit, label %.thread4931

sqlite3BtreeLast.exit:                            ; preds = %bb.yk, %bb.yl
  %i.cyo = call fastcc i32 @btreeLast(ptr noundef nonnull %i.cyi, ptr noundef nonnull %i.u)
  %.fr5446 = freeze i32 %i.cyo                    ; 2 uses
  %.not3689 = icmp eq i32 %.fr5446, 0
  br i1 %.not3689, label %thread-pre-split, label %.thread4900

bb.ym:                                            ; preds = %bb.yi
  %i.cyp = load double, ptr %i.cwn, align 8, !tbaa !741 ; 5 uses
  %or.cond.i4288 = fcmp ult double %i.cyp, f0xC3E0000000000000
  br i1 %or.cond.i4288, label %sqlite3IntFloatCompare.exit.thread4892, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.cyq = fcmp ult double %i.cyp, f0x43E0000000000000
  br i1 %i.cyq, label %bb.yo, label %bb.yr

bb.yo:                                            ; preds = %bb.yn
  %i.cyr = fptosi double %i.cyp to i64            ; 2 uses
  %i.cys = icmp slt i64 %.0.i4279, %i.cyr
  br i1 %i.cys, label %bb.yr, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.cyt = icmp sgt i64 %.0.i4279, %i.cyr
  br i1 %i.cyt, label %sqlite3IntFloatCompare.exit.thread4892, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.cyu = sitofp i64 %.0.i4279 to double         ; 2 uses
  %i.cyv = fcmp ogt double %i.cyp, %i.cyu
  br i1 %i.cyv, label %bb.yr, label %sqlite3IntFloatCompare.exit

sqlite3IntFloatCompare.exit:                      ; preds = %bb.yq
  %i.cyw = fcmp olt double %i.cyp, %i.cyu
  br i1 %i.cyw, label %sqlite3IntFloatCompare.exit.thread4892, label %sqlite3IntFloatCompare.exit.thread

sqlite3IntFloatCompare.exit.thread4892:           ; preds = %bb.yp, %bb.ym, %sqlite3IntFloatCompare.exit
  %i.cyx = and i32 %i.cwe, 1
  %sext5445 = add nsw i32 %i.cwe, -1
  %spec.select3924 = add nsw i32 %sext5445, %i.cyx
  br label %bb.ys

bb.yr:                                            ; preds = %bb.yn, %bb.yo, %bb.yq
  %i.cyy = and i8 %i.cwd, 1
  %i.cyz = zext nneg i8 %i.cyy to i32
  br label %sqlite3IntFloatCompare.exit.thread

sqlite3IntFloatCompare.exit.thread:               ; preds = %sqlite3IntFloatCompare.exit, %bb.yr
  %i.cza = phi i32 [ %i.cyz, %bb.yr ], [ 0, %sqlite3IntFloatCompare.exit ]
  %spec.select4003 = add nuw nsw i32 %i.cza, %i.cwe
  br label %bb.ys

bb.ys:                                            ; preds = %sqlite3IntFloatCompare.exit.thread4892, %sqlite3IntFloatCompare.exit.thread, %sqlite3VdbeIntValue.exit4285
  %.23061 = phi i32 [ %i.cwe, %sqlite3VdbeIntValue.exit4285 ], [ %spec.select4003, %sqlite3IntFloatCompare.exit.thread ], [ %spec.select3924, %sqlite3IntFloatCompare.exit.thread4892 ]
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cwc, i64 40
  %i.czc = load ptr, ptr %i.czb, align 8, !tbaa !741
  %i.czd = call fastcc i32 @sqlite3BtreeTableMoveto(ptr noundef %i.czc, i64 noundef %.0.i4279, i32 noundef 0, ptr noundef %i.u) ; 2 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cwc, i64 72
  store i64 %.0.i4279, ptr %i.cze, align 8, !tbaa !571
  %.not3691 = icmp eq i32 %i.czd, 0
  br i1 %.not3691, label %.thread4904, label %.thread4900

bb.yt:                                            ; preds = %bb.xv
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cwc, i64 40
  %i.czg = load ptr, ptr %i.czf, align 8, !tbaa !741 ; 2 uses
  %i.czh = getelementptr i8, ptr %i.czg, i64 3
  %.val4070 = load i8, ptr %i.czh, align 1, !tbaa !1947
  %i.czi = getelementptr inbounds nuw i8, ptr %.02964, i64 16
  %i.czj = load i32, ptr %i.czi, align 8, !tbaa !741
  %i.czk = getelementptr inbounds nuw i8, ptr %i.cwc, i64 48
  %i.czl = load ptr, ptr %i.czk, align 8, !tbaa !1946
  store ptr %i.czl, ptr %7, align 8, !tbaa !1183
  %i.czm = trunc i32 %i.czj to i16
  store i16 %i.czm, ptr %i.gm, align 4, !tbaa !1176
  %i.czn = and i32 %i.cwe, 1
  %.not3686.not = icmp eq i32 %i.czn, 0
  %i.czo = select i1 %.not3686.not, i8 -1, i8 1
  store i8 %i.czo, ptr %i.gn, align 2, !tbaa !1948
  %i.czp = getelementptr inbounds nuw i8, ptr %.02964, i64 12
  %i.czq = load i32, ptr %i.czp, align 4, !tbaa !956
  %i.czr = sext i32 %i.czq to i64
  %i.czs = getelementptr inbounds [56 x i8], ptr %.03065, i64 %i.czr
  store ptr %i.czs, ptr %i.go, align 8, !tbaa !1175
  store i8 0, ptr %i.gp, align 2, !tbaa !1949
  %i.czt = call fastcc i32 @sqlite3BtreeIndexMoveto(ptr noundef %i.czg, ptr noundef %7, ptr noundef nonnull %i.u) ; 2 uses
  %.not3687 = icmp eq i32 %i.czt, 0
  br i1 %.not3687, label %bb.yu, label %.thread4900

bb.yu:                                            ; preds = %bb.yt
  %i.czu = and i8 %.val4070, 2                    ; 2 uses
  %.not3685 = icmp ne i8 %i.czu, 0
  %.lobit5447 = lshr exact i8 %i.czu, 1
  %spec.select3928 = zext nneg i8 %.lobit5447 to i32
  %i.czv = load i8, ptr %i.gp, align 2
  %i.czw = icmp eq i8 %i.czv, 0
  %or.cond25 = select i1 %.not3685, i1 %i.czw, i1 false
  br i1 %or.cond25, label %thread-pre-split, label %.thread4904

.thread4904:                                      ; preds = %bb.ys, %bb.yu
  %.43063 = phi i32 [ %i.cwe, %bb.yu ], [ %.23061, %bb.ys ] ; 3 uses
  %.13057 = phi i32 [ %spec.select3928, %bb.yu ], [ 0, %bb.ys ] ; 5 uses
  %i.czx = icmp sgt i32 %.43063, 22
  %i.czy = load i32, ptr %i.u, align 4, !tbaa !576 ; 4 uses
  br i1 %i.czx, label %bb.yv, label %bb.yy

bb.yv:                                            ; preds = %.thread4904
  %i.czz = icmp slt i32 %i.czy, 0
  br i1 %i.czz, label %bb.yx, label %bb.yw

bb.yw:                                            ; preds = %bb.yv
  %i.daa = icmp eq i32 %i.czy, 0
  %i.dab = icmp eq i32 %.43063, 24
  %or.cond27 = and i1 %i.dab, %i.daa
  br i1 %or.cond27, label %bb.yx, label %.thread4915

bb.yx:                                            ; preds = %bb.yw, %bb.yv
  %i.dac = getelementptr inbounds nuw i8, ptr %i.cwc, i64 40
  %i.dad = load ptr, ptr %i.dac, align 8, !tbaa !741
  %i.dae = call fastcc i32 @sqlite3BtreeNext(ptr noundef %i.dad) ; 2 uses
  switch i32 %i.dae, label %.thread4900 [
    i32 0, label %.thread4915
    i32 101, label %.thread4927
  ]

bb.yy:                                            ; preds = %.thread4904
  %i.daf = icmp sgt i32 %i.czy, 0
  br i1 %i.daf, label %bb.za, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.dag = icmp eq i32 %i.czy, 0
  %i.dah = icmp eq i32 %.43063, 21
  %or.cond29 = and i1 %i.dah, %i.dag
  br i1 %or.cond29, label %bb.za, label %bb.zd

bb.za:                                            ; preds = %bb.yz, %bb.yy
  %i.dai = getelementptr inbounds nuw i8, ptr %i.cwc, i64 40
  %i.daj = load ptr, ptr %i.dai, align 8, !tbaa !741 ; 6 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daj, i64 1 ; 2 uses
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !1076
  %i.dam = and i8 %i.dal, -15
  store i8 %i.dam, ptr %i.dak, align 1, !tbaa !1076
  %i.dan = getelementptr inbounds nuw i8, ptr %i.daj, i64 70
  store i16 0, ptr %i.dan, align 2, !tbaa !1853
  %i.dao = load i8, ptr %i.daj, align 8, !tbaa !1130
  %.not.i8622 = icmp eq i8 %i.dao, 0
  br i1 %.not.i8622, label %bb.zb, label %sqlite3BtreePrevious.exit

bb.zb:                                            ; preds = %bb.za
  %i.dap = getelementptr inbounds nuw i8, ptr %i.daj, i64 86 ; 2 uses
  %i.daq = load i16, ptr %i.dap, align 2, !tbaa !1129 ; 2 uses
  %i.dar = icmp eq i16 %i.daq, 0
  br i1 %i.dar, label %sqlite3BtreePrevious.exit, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.das = getelementptr inbounds nuw i8, ptr %i.daj, i64 136
  %i.dat = load ptr, ptr %i.das, align 8, !tbaa !1125
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dat, i64 8
  %i.dav = load i8, ptr %i.dau, align 8, !tbaa !1126
  %i.daw = icmp eq i8 %i.dav, 0
  br i1 %i.daw, label %sqlite3BtreePrevious.exit, label %sqlite3BtreePrevious.exit.thread

sqlite3BtreePrevious.exit.thread:                 ; preds = %bb.zc
  %i.dax = add i16 %i.daq, -1
  store i16 %i.dax, ptr %i.dap, align 2, !tbaa !1129
  br label %.thread4915

sqlite3BtreePrevious.exit:                        ; preds = %bb.za, %bb.zb, %bb.zc
  %i.day = call fastcc i32 @btreePrevious(ptr noundef nonnull %i.daj), !inline_history !218 ; 2 uses
  switch i32 %i.day, label %.thread4900 [
    i32 0, label %.thread4915
    i32 101, label %.thread4927
  ]

thread-pre-split:                                 ; preds = %sqlite3BtreeLast.exit, %bb.yu
  %.23058.ph = phi i32 [ 1, %bb.yu ], [ 0, %sqlite3BtreeLast.exit ]
  %.pr = load i32, ptr %i.u, align 4, !tbaa !576
  %i.daz = icmp eq i32 %.pr, 0
  br i1 %i.daz, label %.thread4915, label %.thread4927

bb.zd:                                            ; preds = %bb.yz
  %i.dba = getelementptr inbounds nuw i8, ptr %i.cwc, i64 40
  %i.dbb = load ptr, ptr %i.dba, align 8, !tbaa !741
  %.val4071 = load i8, ptr %i.dbb, align 8, !tbaa !1130
  %.not8608 = icmp eq i8 %.val4071, 0
  br i1 %.not8608, label %.thread4915, label %.thread4927

.thread4915:                                      ; preds = %thread-pre-split, %sqlite3BtreePrevious.exit.thread, %bb.yw, %bb.yx, %sqlite3BtreePrevious.exit, %bb.zd
  %.230584919 = phi i32 [ %.13057, %bb.zd ], [ %.13057, %bb.yx ], [ %.13057, %sqlite3BtreePrevious.exit ], [ %.13057, %bb.yw ], [ %.13057, %sqlite3BtreePrevious.exit.thread ], [ %.23058.ph, %thread-pre-split ]
  %.230584919.fr = freeze i32 %.230584919
  %.not3695 = icmp eq i32 %.230584919.fr, 0
  %spec.select5429.idx = select i1 %.not3695, i64 0, i64 24
  %spec.select5429 = getelementptr inbounds nuw i8, ptr %.02964, i64 %spec.select5429.idx
  br label %.thread4931

.thread4931:                                      ; preds = %bb.yl, %.thread4915
  %i.dbc = phi ptr [ %spec.select5429, %.thread4915 ], [ %.02964, %bb.yl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #58
  br label %.critedge

.thread4927:                                      ; preds = %thread-pre-split, %sqlite3BtreePrevious.exit, %bb.yx, %bb.zd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #58
  br label %.thread4739

.thread4900:                                      ; preds = %sqlite3BtreeLast.exit, %bb.ys, %sqlite3BtreePrevious.exit, %bb.yx, %bb.yt
  %.51 = phi i32 [ %i.czd, %bb.ys ], [ %i.day, %sqlite3BtreePrevious.exit ], [ %i.dae, %bb.yx ], [ %i.czt, %bb.yt ], [ %.fr5446, %sqlite3BtreeLast.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #58
  br label %sqlite3VdbeSorterRowkey.exit

bb.ze:                                            ; preds = %bb.h
end_hunk_0
begin_hunk_1_@sqlite3VdbeMemCast:bb.a

bb.ag:                                            ; preds = %.split
  store i8 1, ptr %i.dk, align 2, !tbaa !795
  br label %sqlite3VdbeChangeEncoding.exit.thread

bb.ah:                                            ; preds = %.split
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !795
  %i.dm = icmp eq i8 %i.dl, 1
  br i1 %i.dm, label %sqlite3VdbeChangeEncoding.exit.thread, label %sqlite3VdbeChangeEncoding.exit

.split27:                                         ; preds = %applyAffinity.exit56.thread58, %applyAffinity.exit56
  %i.dn = phi i16 [ %i.df, %applyAffinity.exit56.thread58 ], [ %i.dh, %applyAffinity.exit56 ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !934
  %i.dq = and i32 %i.dp, -2
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !934
  %i.dr = and i16 %i.dn, 2
  %.not.i39 = icmp eq i16 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  br i1 %.not.i39, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.split27
  store i8 %2, ptr %i.ds, align 2, !tbaa !795
  br label %sqlite3VdbeChangeEncoding.exit.thread

bb.aj:                                            ; preds = %.split27
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !795
  %i.du = icmp eq i8 %2, %i.dt
  br i1 %i.du, label %sqlite3VdbeChangeEncoding.exit.thread, label %sqlite3VdbeChangeEncoding.exit

sqlite3VdbeChangeEncoding.exit:                   ; preds = %bb.aj, %bb.ah
  %.sink = phi i8 [ 1, %bb.ah ], [ %2, %bb.aj ]
  %i.dv = tail call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %0, i8 noundef zeroext %.sink) ; 2 uses
  %.not31.not = icmp eq i32 %i.dv, 0
  br i1 %.not31.not, label %sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge, label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge: ; preds = %sqlite3VdbeChangeEncoding.exit
  %.pre68 = load i16, ptr %i.c, align 4, !tbaa !694
  br label %sqlite3VdbeChangeEncoding.exit.thread

sqlite3VdbeChangeEncoding.exit.thread:            ; preds = %sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge, %bb.aj, %bb.ai, %bb.ag, %bb.ah
  %i.dw = phi i16 [ %.pre68, %sqlite3VdbeChangeEncoding.exit.sqlite3VdbeChangeEncoding.exit.thread_crit_edge ], [ %i.dn, %bb.aj ], [ %i.dn, %bb.ai ], [ %i.di, %bb.ag ], [ %i.di, %bb.ah ]
  %i.dx = zext i16 %i.dw to i32                   ; 2 uses
  %i.dy = and i32 %i.dx, 25090
  %.not.i42 = icmp eq i32 %i.dy, 2
  br i1 %.not.i42, label %bb.ak, label %sqlite3VdbeMemZeroTerminateIfAble.exit

bb.ak:                                            ; preds = %sqlite3VdbeChangeEncoding.exit.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !795
  %.not16.i = icmp eq i8 %i.ea, 1
  br i1 %.not16.i, label %bb.al, label %sqlite3VdbeMemZeroTerminateIfAble.exit

bb.al:                                            ; preds = %bb.ak
  %i.eb = and i32 %i.dx, 4096
  %.not17.i44 = icmp eq i32 %i.eb, 0
  br i1 %.not17.i44, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1115 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, @sqlite3_free
  br i1 %i.ee, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !768 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i45, label %sqlite3_msize.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ei = tail call i32 %i.eh(ptr noundef nonnull %i.eg) #58, !inline_history !69
  %i.ej = sext i32 %i.ei to i64
  br label %sqlite3_msize.exit.i

sqlite3_msize.exit.i:                             ; preds = %bb.ao, %bb.an
  %i.ek = phi i64 [ %i.ej, %bb.ao ], [ 0, %bb.an ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load i32, ptr %i.el, align 8, !tbaa !934 ; 2 uses
  %i.en = add nsw i32 %i.em, 1
  %i.eo = sext i32 %i.en to i64
  %.not19.i = icmp ult i64 %i.ek, %i.eo
  br i1 %.not19.i, label %thread-pre-split.i, label %.sink.split.sink.split.i

thread-pre-split.i:                               ; preds = %sqlite3_msize.exit.i
  %.pr.i = load ptr, ptr %i.ec, align 8, !tbaa !1115
  br label %bb.ap

bb.ap:                                            ; preds = %thread-pre-split.i, %bb.am
  %i.ep = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.ed, %bb.am ]
  %i.eq = icmp eq ptr %i.ep, @sqlite3RCStrUnref
  br i1 %i.eq, label %.sink.split.i, label %sqlite3VdbeMemZeroTerminateIfAble.exit

bb.aq:                                            ; preds = %bb.al
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !692
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !934 ; 2 uses
  %.not18.not.i = icmp sgt i32 %i.es, %i.eu
  br i1 %.not18.not.i, label %bb.ar, label %sqlite3VdbeMemZeroTerminateIfAble.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i, %bb.ar
  %.sink.i = phi i32 [ %i.eu, %bb.ar ], [ %i.em, %sqlite3_msize.exit.i ]
  %.sink24.in.i = phi ptr [ %i.ev, %bb.ar ], [ %i.ef, %sqlite3_msize.exit.i ]
  %.sink24.i = load ptr, ptr %.sink24.in.i, align 8, !tbaa !768
  %i.ew = sext i32 %.sink.i to i64
  %i.ex = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.ew
  store i8 0, ptr %i.ex, align 1, !tbaa !741
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.ap
  %i.ey = load i16, ptr %i.c, align 4, !tbaa !694
  %i.ez = or i16 %i.ey, 512
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit.sink.split

sqlite3VdbeMemZeroTerminateIfAble.exit.sink.split: ; preds = %bb.j, %bb.i, %sqlite3VdbeMemRealify.exit, %sqlite3VdbeMemIntegerify.exit, %sqlite3VdbeMemNumerify.exit, %.sink.split.i
  %.sink74 = phi i16 [ %i.ez, %.sink.split.i ], [ %i.bh, %sqlite3VdbeMemNumerify.exit ], [ %i.bv, %sqlite3VdbeMemIntegerify.exit ], [ %i.cf, %sqlite3VdbeMemRealify.exit ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  store i16 %.sink74, ptr %i.c, align 4, !tbaa !694
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.sink.split, %bb.aq, %bb.ap, %bb.ak, %sqlite3VdbeChangeEncoding.exit.thread, %applyAffinity.exit, %sqlite3VdbeChangeEncoding.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.dv, %sqlite3VdbeChangeEncoding.exit ], [ 0, %bb.aq ], [ 0, %sqlite3VdbeChangeEncoding.exit.thread ], [ 0, %bb.ak ], [ 0, %applyAffinity.exit ], [ 0, %bb.ap ], [ 0, %sqlite3VdbeMemZeroTerminateIfAble.exit.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3MemCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !694
  %i.c = zext i16 %i.b to i32                     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !694
  %i.f = zext i16 %i.e to i32                     ; 7 uses
  %i.g = or i32 %i.f, %i.c                        ; 3 uses
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 1
  %i.j = and i32 %i.c, 1
  %i.k = sub nsw i32 %i.i, %i.j
  br label %sqlite3IntFloatCompare.exit

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.g, 44
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.f, %i.c                       ; 2 uses
  %i.n = and i32 %i.m, 36
  %.not52 = icmp eq i32 %i.n, 0
  br i1 %.not52, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %0, align 8, !tbaa !741    ; 2 uses
  %i.p = load i64, ptr %1, align 8, !tbaa !741    ; 2 uses
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %sqlite3IntFloatCompare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp sgt i64 %i.o, %i.p
  %. = zext i1 %i.r to i32
  br label %sqlite3IntFloatCompare.exit

bb.g:                                             ; preds = %bb.d
  %i.s = and i32 %i.m, 8
  %.not53 = icmp eq i32 %i.s, 0
  br i1 %.not53, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load double, ptr %0, align 8, !tbaa !741 ; 2 uses
  %i.u = load double, ptr %1, align 8, !tbaa !741 ; 2 uses
  %i.v = fcmp olt double %i.t, %i.u
  br i1 %i.v, label %sqlite3IntFloatCompare.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = fcmp ogt double %i.t, %i.u
  %.59 = zext i1 %i.w to i32
  br label %sqlite3IntFloatCompare.exit

bb.j:                                             ; preds = %bb.g
  %i.x = and i32 %i.c, 36
  %.not54 = icmp eq i32 %i.x, 0
  br i1 %.not54, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i32 %i.f, 8
  %.not57 = icmp eq i32 %i.y, 0
  br i1 %.not57, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %0, align 8, !tbaa !741    ; 3 uses
  %i.aa = load double, ptr %1, align 8, !tbaa !741 ; 5 uses
  %or.cond.i = fcmp ult double %i.aa, f0xC3E0000000000000
  br i1 %or.cond.i, label %sqlite3IntFloatCompare.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = fcmp ult double %i.aa, f0x43E0000000000000
  br i1 %i.ab, label %bb.n, label %sqlite3IntFloatCompare.exit

bb.n:                                             ; preds = %bb.m
  %i.ac = fptosi double %i.aa to i64              ; 2 uses
  %i.ad = icmp slt i64 %i.z, %i.ac
  br i1 %i.ad, label %sqlite3IntFloatCompare.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp sgt i64 %i.z, %i.ac
  br i1 %i.ae, label %sqlite3IntFloatCompare.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = sitofp i64 %i.z to double               ; 2 uses
  %i.ag = fcmp ogt double %i.aa, %i.af
  %i.ah = fcmp olt double %i.aa, %i.af
  %i.ai = zext i1 %i.ah to i32
  %i.aj = select i1 %i.ag, i32 -1, i32 %i.ai
  br label %sqlite3IntFloatCompare.exit

bb.q:                                             ; preds = %bb.k
  %i.ak = and i32 %i.f, 36
  %.not58 = icmp eq i32 %i.ak, 0
  br i1 %.not58, label %sqlite3IntFloatCompare.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = load i64, ptr %0, align 8, !tbaa !741   ; 2 uses
  %i.am = load i64, ptr %1, align 8, !tbaa !741   ; 2 uses
  %i.an = icmp slt i64 %i.al, %i.am
  br i1 %i.an, label %sqlite3IntFloatCompare.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = icmp sgt i64 %i.al, %i.am
  %.60 = zext i1 %i.ao to i32
  br label %sqlite3IntFloatCompare.exit

bb.t:                                             ; preds = %bb.j
  %i.ap = and i32 %i.c, 8
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %sqlite3IntFloatCompare.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = and i32 %i.f, 36
  %.not56 = icmp eq i32 %i.aq, 0
  br i1 %.not56, label %sqlite3IntFloatCompare.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load i64, ptr %1, align 8, !tbaa !741   ; 3 uses
  %i.as = load double, ptr %0, align 8, !tbaa !741 ; 5 uses
  %or.cond.i61 = fcmp ult double %i.as, f0xC3E0000000000000
  br i1 %or.cond.i61, label %sqlite3IntFloatCompare.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = fcmp ult double %i.as, f0x43E0000000000000
  br i1 %i.at, label %bb.x, label %sqlite3IntFloatCompare.exit

bb.x:                                             ; preds = %bb.w
  %i.au = fptosi double %i.as to i64              ; 2 uses
  %i.av = icmp slt i64 %i.ar, %i.au
  br i1 %i.av, label %sqlite3IntFloatCompare.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = icmp sgt i64 %i.ar, %i.au
  br i1 %i.aw, label %sqlite3IntFloatCompare.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = sitofp i64 %i.ar to double              ; 2 uses
  %i.ay = fcmp ogt double %i.as, %i.ax
  %i.az = fcmp olt double %i.as, %i.ax
  %.neg = sext i1 %i.az to i32
  %.neg64 = select i1 %i.ay, i32 1, i32 %.neg
  br label %sqlite3IntFloatCompare.exit

bb.aa:                                            ; preds = %bb.c
  %i.ba = and i32 %i.g, 2
  %.not50 = icmp eq i32 %i.ba, 0
  br i1 %.not50, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = and i32 %i.c, 2
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %sqlite3IntFloatCompare.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = and i32 %i.f, 2
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %sqlite3IntFloatCompare.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not51 = icmp eq ptr %2, null
  br i1 %.not51, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bf = tail call fastcc i32 @vdbeCompareMemString(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null)
  br label %sqlite3IntFloatCompare.exit

bb.af:                                            ; preds = %bb.ad, %bb.aa
  %i.bg = tail call fastcc i32 @sqlite3BlobCompare(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %sqlite3IntFloatCompare.exit

sqlite3IntFloatCompare.exit:                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.ac, %bb.ab, %bb.t, %bb.u, %bb.q, %bb.s, %bb.r, %bb.i, %bb.h, %bb.f, %bb.e, %bb.af, %bb.ae, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.bg, %bb.af ], [ %., %bb.f ], [ -1, %bb.e ], [ %i.bf, %bb.ae ], [ %.59, %bb.i ], [ -1, %bb.h ], [ -1, %bb.ac ], [ 1, %bb.ab ], [ %.60, %bb.s ], [ -1, %bb.r ], [ 1, %bb.t ], [ -1, %bb.n ], [ -1, %bb.q ], [ -1, %bb.u ], [ 1, %bb.l ], [ %i.aj, %bb.p ], [ 1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.v ], [ %.neg64, %bb.z ], [ -1, %bb.y ], [ 1, %bb.w ], [ 1, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VdbeBooleanValue(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !694
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = and i32 %i.c, 36
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !741
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %i.c, 1
  %.not5 = icmp eq i32 %i.h, 0
  br i1 %.not5, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.c, 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load double, ptr %0, align 8, !tbaa !741
  br label %sqlite3VdbeRealValue.exit

bb.f:                                             ; preds = %bb.d
  %i.k = and i32 %i.c, 18
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %sqlite3VdbeRealValue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %0, ptr noundef null), !inline_history !66
  br label %sqlite3VdbeRealValue.exit

sqlite3VdbeRealValue.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi double [ %i.j, %bb.e ], [ 0.000000e+00, %bb.f ], [ %i.l, %bb.g ]
  %i.m = fcmp une double %.0.i, 0.000000e+00
  %i.n = zext i1 %i.m to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %sqlite3VdbeRealValue.exit, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.n, %sqlite3VdbeRealValue.exit ], [ %1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sqlite3VdbeFinishMoveto(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !741
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !571
  %i.f = call fastcc i32 @sqlite3BtreeTableMoveto(ptr noundef %i.c, i64 noundef %i.e, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !576
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 90956, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.h, align 1, !tbaa !741
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !576
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 11, %bb.c ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sqlite3VdbeHandleMovedCursor(ptr nofree noundef captures(none) initializes((24, 28)) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741  ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1130  ; 2 uses
  %i.d = icmp ugt i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %sqlite3BtreeCursorRestore.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @btreeRestoreCursorPosition(ptr noundef nonnull %i.b), !inline_history !87 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %..thread_crit_edge.i, label %sqlite3BtreeCursorRestore.exit.thread

sqlite3BtreeCursorRestore.exit.thread:            ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !576
  br label %bb.c

..thread_crit_edge.i:                             ; preds = %bb.b
  %.pre.i = load i8, ptr %i.b, align 8, !tbaa !1130
  br label %sqlite3BtreeCursorRestore.exit

sqlite3BtreeCursorRestore.exit:                   ; preds = %bb.a, %..thread_crit_edge.i
  %i.g = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %i.c, %bb.a ]
  %.not9.i.not = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.h, align 8, !tbaa !576
  br i1 %.not9.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %sqlite3BtreeCursorRestore.exit.thread, %sqlite3BtreeCursorRestore.exit
  %.0.i6 = phi i32 [ %i.e, %sqlite3BtreeCursorRestore.exit.thread ], [ 0, %sqlite3BtreeCursorRestore.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.i, align 2, !tbaa !741
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3BtreeCursorRestore.exit
  %.0.i7 = phi i32 [ %.0.i6, %bb.c ], [ 0, %sqlite3BtreeCursorRestore.exit ]
  ret i32 %.0.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 1, 10) i8 @sqlite3GetVarint32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #21 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !741   ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !741
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = or disjoint i32 %i.i, %i.d
  br label %bb.f

end_hunk_1
begin_hunk_2_@sqlite3VdbeRecordCompareWithSkip:bb.a
  %i.ad = or disjoint i32 %i.ac, %i.aa
  %i.ae = or disjoint i32 %i.ad, %i.x
  br label %select.unfold

bb.g:                                             ; preds = %bb.e
  %i.af = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.g, ptr noundef nonnull %i.d) ; 2 uses
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !571 ; 2 uses
  %.not.i = icmp ult i64 %i.ag, 4294967296
  %i.ah = trunc nuw i64 %i.ag to i32
  br i1 %.not.i, label %select.unfold, label %.thread234

.thread234:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  %narrow237 = add nuw nsw i8 %i.af, 1
  %i.ai = zext nneg i8 %narrow237 to i32
  %i.aj = load i8, ptr %1, align 1, !tbaa !741
  %i.ak = zext i8 %i.aj to i32
  br label %bb.h

select.unfold:                                    ; preds = %bb.g, %bb.f, %bb.d
  %storemerge.sink.i = phi i32 [ %i.t, %bb.d ], [ %i.ae, %bb.f ], [ %i.ah, %bb.g ] ; 3 uses
  %.0.i = phi i8 [ 2, %bb.d ], [ 3, %bb.f ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  %narrow = add nuw nsw i8 %.0.i, 1
  %i.al = zext nneg i8 %narrow to i32             ; 2 uses
  %i.am = load i8, ptr %1, align 1, !tbaa !741
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = icmp ugt i32 %storemerge.sink.i, 127
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread234, %select.unfold
  %i.ap = phi i32 [ %i.ak, %.thread234 ], [ %i.an, %select.unfold ]
  %i.aq = phi i32 [ %i.ai, %.thread234 ], [ %i.al, %select.unfold ]
  %storemerge.sink.i238 = phi i32 [ -1, %.thread234 ], [ %storemerge.sink.i, %select.unfold ]
  %i.ar = add i32 %storemerge.sink.i238, -12
  %i.as = lshr i32 %i.ar, 1
  br label %sqlite3VdbeSerialTypeLen.exit

bb.i:                                             ; preds = %.thread, %select.unfold
  %i.at = phi i32 [ %i.l, %.thread ], [ %i.an, %select.unfold ]
  %.0122233 = phi i32 [ 2, %.thread ], [ %i.al, %select.unfold ]
  %.0226231 = phi i32 [ %i.j, %.thread ], [ %storemerge.sink.i, %select.unfold ]
  %i.au = zext nneg i32 %.0226231 to i64
  %i.av = getelementptr inbounds nuw i8, ptr @sqlite3SmallTypeSizes, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !741
  %i.ax = zext i8 %i.aw to i32
  br label %sqlite3VdbeSerialTypeLen.exit

sqlite3VdbeSerialTypeLen.exit:                    ; preds = %bb.h, %bb.i
  %i.ay = phi i32 [ %i.ap, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.0122232 = phi i32 [ %i.aq, %bb.h ], [ %.0122233, %bb.i ]
  %.0.i182 = phi i32 [ %i.as, %bb.h ], [ %i.ax, %bb.i ]
  %i.az = add nuw i32 %.0.i182, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.bb = load i8, ptr %1, align 1, !tbaa !741    ; 4 uses
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = icmp sgt i8 %i.bb, -1
  br i1 %i.bd, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !741 ; 2 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp sgt i8 %i.bf, -1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = and i8 %i.bb, 127
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 7
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %sqlite3GetVarint32.exit187

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !741 ; 2 uses
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i8 %i.bn to i32
  %i.bq = and i8 %i.bb, 127
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 14
  %i.bt = shl nuw nsw i32 %i.bg, 7
  %i.bu = and i32 %i.bt, 16256
  %i.bv = or disjoint i32 %i.bu, %i.bs
  %i.bw = or disjoint i32 %i.bv, %i.bp
  br label %sqlite3GetVarint32.exit187

bb.o:                                             ; preds = %bb.m
  %i.bx = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.c)
  %i.by = load i64, ptr %i.c, align 8, !tbaa !571 ; 2 uses
  %.not.i183 = icmp ult i64 %i.by, 4294967296
  %i.bz = trunc nuw i64 %i.by to i32
  %storemerge.i184 = select i1 %.not.i183, i32 %i.bz, i32 -1
  %i.ca = zext nneg i8 %i.bx to i32
  br label %sqlite3GetVarint32.exit187

sqlite3GetVarint32.exit187:                       ; preds = %bb.l, %bb.n, %bb.o
  %storemerge.sink.i185 = phi i32 [ %storemerge.i184, %bb.o ], [ %i.bw, %bb.n ], [ %i.bl, %bb.l ] ; 2 uses
  %.0.i186 = phi i32 [ %i.ca, %bb.o ], [ 3, %bb.n ], [ 2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.p

bb.p:                                             ; preds = %sqlite3GetVarint32.exit187, %bb.j, %sqlite3VdbeSerialTypeLen.exit
  %.1228 = phi i32 [ %i.ay, %sqlite3VdbeSerialTypeLen.exit ], [ %i.bc, %bb.j ], [ %storemerge.sink.i185, %sqlite3GetVarint32.exit187 ]
  %.0130 = phi i32 [ %i.az, %sqlite3VdbeSerialTypeLen.exit ], [ %i.bc, %bb.j ], [ %storemerge.sink.i185, %sqlite3GetVarint32.exit187 ] ; 2 uses
  %.0127 = phi i64 [ 1, %sqlite3VdbeSerialTypeLen.exit ], [ 0, %bb.j ], [ 0, %sqlite3GetVarint32.exit187 ]
  %.2124 = phi i32 [ %.0122232, %sqlite3VdbeSerialTypeLen.exit ], [ 1, %bb.j ], [ %.0.i186, %sqlite3GetVarint32.exit187 ]
  %.0117 = phi ptr [ %i.ba, %sqlite3VdbeSerialTypeLen.exit ], [ %i.f, %bb.j ], [ %i.f, %sqlite3GetVarint32.exit187 ]
  %i.cb = icmp ugt i32 %.0130, %0
  br i1 %i.cb, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 91917, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 31
  store i8 11, ptr %i.cj, align 1, !tbaa !1966
  br label %.thread257

bb.r:                                             ; preds = %.preheader, %sqlite3VarintLen.exit
  %indvars.iv = phi i64 [ %.0127, %.preheader ], [ %indvars.iv.next, %sqlite3VarintLen.exit ] ; 4 uses
  %.1131 = phi i32 [ %.0130, %.preheader ], [ %i.ox, %sqlite3VarintLen.exit ] ; 12 uses
  %.3125 = phi i32 [ %.2124, %.preheader ], [ %i.oz, %sqlite3VarintLen.exit ] ; 5 uses
  %.1118 = phi ptr [ %.0117, %.preheader ], [ %i.op, %sqlite3VarintLen.exit ] ; 15 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1118, i64 20
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !694 ; 2 uses
  %i.cm = zext i16 %i.cl to i32                   ; 4 uses
  %i.cn = and i32 %i.cm, 36
  %.not162 = icmp eq i32 %i.cn, 0
  br i1 %.not162, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = zext i32 %.3125 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !741 ; 5 uses
  %i.cr = zext i8 %i.cq to i32                    ; 4 uses
  %i.cs = icmp ugt i8 %i.cq, 9
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = icmp eq i8 %i.cq, 10
  %i.cu = select i1 %i.ct, i32 -1, i32 1
  br label %sqlite3IntFloatCompare.exit196.thread

bb.u:                                             ; preds = %bb.s
  switch i8 %i.cq, label %bb.aa [
    i8 0, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377
    i8 7, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cv = zext i32 %.1131 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv ; 5 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !741
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !741
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 16
  %i.de = or disjoint i64 %i.dd, %i.cz            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !741
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !741
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = or disjoint i64 %i.dm, %i.de
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw i64 %i.dn, 32
  %op.rdx400 = or disjoint i64 %i.ds, %i.dr       ; 3 uses
  store i64 %op.rdx400, ptr %4, align 8
  %i.dt = and i64 %i.de, 2146435072
  %i.du = icmp eq i64 %i.dt, 2146435072
  %i.dv = and i64 %op.rdx400, 4503599627370495
  %.not.i188 = icmp ne i64 %i.dv, 0
  %or.cond.not.i = and i1 %i.du, %.not.i188
  %spec.select.i = select i1 %or.cond.not.i, i16 1, i16 8
  store i16 %spec.select.i, ptr %i.cc, align 4, !tbaa !694
  %i.dw = load i64, ptr %.1118, align 8, !tbaa !741 ; 3 uses
  %i.dx = bitcast i64 %op.rdx400 to double        ; 5 uses
  %or.cond.i = fcmp ult double %i.dx, f0xC3E0000000000000
  br i1 %or.cond.i, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = fcmp ult double %i.dx, f0x43E0000000000000
  br i1 %i.dy, label %bb.x, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377

bb.x:                                             ; preds = %bb.w
  %i.dz = fptosi double %i.dx to i64              ; 2 uses
  %i.ea = icmp slt i64 %i.dw, %i.dz
  br i1 %i.ea, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = icmp sgt i64 %i.dw, %i.dz
  br i1 %i.eb, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = sitofp i64 %i.dw to double              ; 2 uses
  %i.ed = fcmp ogt double %i.dx, %i.ec
  %i.ee = fcmp olt double %i.dx, %i.ec
  %.neg = sext i1 %i.ee to i32
  br i1 %i.ed, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %sqlite3IntFloatCompare.exit196

bb.aa:                                            ; preds = %bb.u
  %i.ef = zext i32 %.1131 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ef ; 12 uses
  switch i8 %i.cq, label %bb.ah [
    i8 6, label %bb.ag
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %bb.ae
    i8 5, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !741
  %i.ei = sext i8 %i.eh to i64
  br label %vdbeRecordDecodeInt.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ej = load i8, ptr %i.eg, align 1, !tbaa !741
  %i.ek = sext i8 %i.ej to i32
  %i.el = shl nsw i32 %i.ek, 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !741
  %i.eo = zext i8 %i.en to i32
  %i.ep = or disjoint i32 %i.el, %i.eo
  %i.eq = sext i32 %i.ep to i64
  br label %vdbeRecordDecodeInt.exit

bb.ad:                                            ; preds = %bb.aa
  %i.er = load i8, ptr %i.eg, align 1, !tbaa !741
  %i.es = sext i8 %i.er to i32
  %i.et = shl nsw i32 %i.es, 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !741
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = or disjoint i32 %i.ex, %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !741
  %i.fb = zext i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ey, %i.fb
  %i.fd = sext i32 %i.fc to i64
  br label %vdbeRecordDecodeInt.exit

bb.ae:                                            ; preds = %bb.aa
  %i.fe = load i32, ptr %i.eg, align 1
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = sext i32 %i.ff to i64
  br label %vdbeRecordDecodeInt.exit

bb.af:                                            ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = zext i32 %i.fj to i64
  %i.fl = load i8, ptr %i.eg, align 1, !tbaa !741
  %i.fm = sext i8 %i.fl to i32
  %i.fn = shl nsw i32 %i.fm, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !741
  %i.fq = zext i8 %i.fp to i32
  %i.fr = or disjoint i32 %i.fn, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 32
  %op.rdx398 = or disjoint i64 %i.ft, %i.fk
  br label %vdbeRecordDecodeInt.exit

bb.ag:                                            ; preds = %bb.aa
  %i.fu = load i32, ptr %i.eg, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.fw = load i32, ptr %i.fv, align 1
  %i.fx = zext i32 %i.fu to i64
  %i.fy = zext i32 %i.fw to i64
  %i.fz = shl nuw i64 %i.fy, 32
  %i.ga = or disjoint i64 %i.fz, %i.fx
  %op.rdx399 = tail call i64 @llvm.bswap.i64(i64 %i.ga)
  br label %vdbeRecordDecodeInt.exit

bb.ah:                                            ; preds = %bb.aa
  %i.gb = add nsw i32 %i.cr, -8
  %i.gc = zext i32 %i.gb to i64
  br label %vdbeRecordDecodeInt.exit

vdbeRecordDecodeInt.exit:                         ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.0.i189 = phi i64 [ %i.gc, %bb.ah ], [ %i.ei, %bb.ab ], [ %i.eq, %bb.ac ], [ %i.fd, %bb.ad ], [ %i.fg, %bb.ae ], [ %op.rdx398, %bb.af ], [ %op.rdx399, %bb.ag ] ; 2 uses
  %i.gd = load i64, ptr %.1118, align 8, !tbaa !741 ; 2 uses
  %i.ge = icmp slt i64 %.0.i189, %i.gd
  br i1 %i.ge, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.ai

bb.ai:                                            ; preds = %vdbeRecordDecodeInt.exit
  %i.gf = icmp sgt i64 %.0.i189, %i.gd
  br i1 %i.gf, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %sqlite3IntFloatCompare.exit196.thread275

bb.aj:                                            ; preds = %bb.r
  %i.gg = and i32 %i.cm, 8
  %.not163 = icmp eq i32 %i.gg, 0
  br i1 %.not163, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = zext i32 %.3125 to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !741 ; 4 uses
  %i.gk = zext i8 %i.gj to i32                    ; 7 uses
  %i.gl = icmp ugt i8 %i.gj, 9
  br i1 %i.gl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gm = icmp eq i8 %i.gj, 10
  %i.gn = select i1 %i.gm, i32 -1, i32 1
  br label %sqlite3IntFloatCompare.exit196.thread

bb.am:                                            ; preds = %bb.ak
  switch i8 %i.gj, label %bb.aq [
    i8 0, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377
    i8 7, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.go = zext i32 %.1131 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %i.go ; 5 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !741
  %i.gr = zext i8 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !741
  %i.gv = zext i8 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 16
  %i.gx = or disjoint i64 %i.gw, %i.gs            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !741
  %i.ha = zext i8 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !741
  %i.he = zext i8 %i.hd to i64
  %i.hf = or disjoint i64 %i.hb, %i.he
  %i.hg = or disjoint i64 %i.hf, %i.gx
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.hi = load i32, ptr %i.hh, align 1
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = zext i32 %i.hj to i64
  %i.hl = shl nuw i64 %i.hg, 32
  %op.rdx397 = or disjoint i64 %i.hl, %i.hk       ; 3 uses
  store i64 %op.rdx397, ptr %4, align 8
  %i.hm = and i64 %i.gx, 2146435072
  %i.hn = icmp ne i64 %i.hm, 2146435072
  %i.ho = and i64 %op.rdx397, 4503599627370495
  %.not.i190 = icmp eq i64 %i.ho, 0
  %or.cond.not.i191.not = or i1 %i.hn, %.not.i190 ; 2 uses
  %spec.select.i192 = select i1 %or.cond.not.i191.not, i16 8, i16 1
  store i16 %spec.select.i192, ptr %i.cc, align 4, !tbaa !694
  %i.hp = bitcast i64 %op.rdx397 to double        ; 2 uses
  br i1 %or.cond.not.i191.not, label %bb.ao, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377

bb.ao:                                            ; preds = %bb.an
  %i.hq = load double, ptr %.1118, align 8, !tbaa !741 ; 2 uses
  %i.hr = fcmp ogt double %i.hq, %i.hp
  br i1 %i.hr, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hs = fcmp olt double %i.hq, %i.hp
  br i1 %i.hs, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %sqlite3IntFloatCompare.exit196.thread275

bb.aq:                                            ; preds = %bb.am
  %i.ht = zext i32 %.1131 to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ht
  call fastcc void @sqlite3VdbeSerialGet(ptr noundef %i.hu, i32 noundef %i.gk, ptr noundef nonnull %4)
  %i.hv = load i64, ptr %4, align 8, !tbaa !741   ; 3 uses
  %i.hw = load double, ptr %.1118, align 8, !tbaa !741 ; 5 uses
  %or.cond.i194 = fcmp ult double %i.hw, f0xC3E0000000000000
  br i1 %or.cond.i194, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hx = fcmp ult double %i.hw, f0x43E0000000000000
  br i1 %i.hx, label %bb.as, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377

bb.as:                                            ; preds = %bb.ar
  %i.hy = fptosi double %i.hw to i64              ; 2 uses
  %i.hz = icmp slt i64 %i.hv, %i.hy
  br i1 %i.hz, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ia = icmp sgt i64 %i.hv, %i.hy
  br i1 %i.ia, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ib = sitofp i64 %i.hv to double              ; 2 uses
  %i.ic = fcmp ogt double %i.hw, %i.ib
  %i.id = fcmp olt double %i.hw, %i.ib
  %i.ie = zext i1 %i.id to i32
  br i1 %i.ic, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %sqlite3IntFloatCompare.exit196

bb.av:                                            ; preds = %bb.aj
  %i.if = and i32 %i.cm, 2
  %.not164 = icmp eq i32 %i.if, 0
  br i1 %.not164, label %bb.bn, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ig = zext i32 %.3125 to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %i.ig ; 4 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !741 ; 4 uses
  %i.ij = zext nneg i8 %i.ii to i32
  %i.ik = icmp slt i8 %i.ii, 0
  br i1 %i.ik, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !741 ; 2 uses
  %i.in = zext i8 %i.im to i32                    ; 2 uses
  %i.io = icmp sgt i8 %i.im, -1
  br i1 %i.io, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ip = and i8 %i.ii, 127
  %i.iq = zext nneg i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 7
  %i.is = or disjoint i32 %i.ir, %i.in
  br label %sqlite3GetVarint32.exit201

bb.az:                                            ; preds = %bb.ax
  %i.it = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !741 ; 2 uses
  %i.iv = icmp sgt i8 %i.iu, -1
  br i1 %i.iv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iw = zext nneg i8 %i.iu to i32
  %i.ix = and i8 %i.ii, 127
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = shl nuw nsw i32 %i.iy, 14
  %i.ja = shl nuw nsw i32 %i.in, 7
  %i.jb = and i32 %i.ja, 16256
  %i.jc = or disjoint i32 %i.jb, %i.iz
  %i.jd = or disjoint i32 %i.jc, %i.iw
  br label %sqlite3GetVarint32.exit201

bb.bb:                                            ; preds = %bb.az
  %i.je = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.ih, ptr noundef nonnull %i.b) ; 0 uses
  %i.jf = load i64, ptr %i.b, align 8, !tbaa !571 ; 2 uses
  %.not.i197 = icmp ult i64 %i.jf, 4294967296
  %i.jg = trunc nuw i64 %i.jf to i32
  %storemerge.i198 = select i1 %.not.i197, i32 %i.jg, i32 -1
  br label %sqlite3GetVarint32.exit201

sqlite3GetVarint32.exit201:                       ; preds = %bb.ay, %bb.ba, %bb.bb
  %storemerge.sink.i199 = phi i32 [ %storemerge.i198, %bb.bb ], [ %i.jd, %bb.ba ], [ %i.is, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.bc

bb.bc:                                            ; preds = %sqlite3GetVarint32.exit201, %bb.aw
  %.0 = phi i32 [ %storemerge.sink.i199, %sqlite3GetVarint32.exit201 ], [ %i.ij, %bb.aw ] ; 7 uses
  %i.jh = icmp ult i32 %.0, 12
  br i1 %i.jh, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ji = and i32 %.0, 1
  %.not171 = icmp eq i32 %i.ji, 0
  br i1 %.not171, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jj = add i32 %.0, -12
  %i.jk = lshr i32 %i.jj, 1                       ; 5 uses
  store i32 %i.jk, ptr %i.cd, align 8, !tbaa !934
  %i.jl = add i32 %i.jk, %.1131
  %i.jm = icmp ugt i32 %i.jl, %0
  br i1 %i.jm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jn = load ptr, ptr %2, align 8, !tbaa !1183  ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load i16, ptr %i.jo, align 8, !tbaa !789
  %i.jq = zext i16 %i.jp to i64
  %.not172 = icmp samesign ult i64 %indvars.iv, %i.jq
  br i1 %.not172, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 91998, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  store i8 11, ptr %i.ch, align 1, !tbaa !1966
  br label %.thread257

bb.bh:                                            ; preds = %bb.bf
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !940 ; 5 uses
  %.not173 = icmp eq ptr %i.jt, null
  br i1 %.not173, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jv = load i8, ptr %i.ju, align 4, !tbaa !741 ; 2 uses
  store i8 %i.jv, ptr %i.ce, align 2, !tbaa !795
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1117
  store ptr %i.jx, ptr %i.cf, align 8, !tbaa !691
  store i16 2, ptr %i.cc, align 4, !tbaa !694
  %i.jy = zext i32 %.1131 to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy ; 2 uses
  store ptr %i.jz, ptr %i.cg, align 8, !tbaa !768
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !943
  %i.kc = icmp eq i8 %i.jv, %i.kb
  br i1 %i.kc, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !1397
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !1097
  %i.kh = getelementptr inbounds nuw i8, ptr %.1118, i64 16
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !934
  %i.kj = getelementptr inbounds nuw i8, ptr %.1118, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !768
  %i.kl = tail call i32 %i.ke(ptr noundef %i.kg, i32 noundef %i.jk, ptr noundef %i.jz, i32 noundef %i.ki, ptr noundef %i.kk) #58, !inline_history !4932
  br label %sqlite3IntFloatCompare.exit196

bb.bk:                                            ; preds = %bb.bi
  %i.km = call fastcc i32 @vdbeCompareMemStringWithEncodingChange(ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %.1118, ptr noundef nonnull readonly %i.jt, ptr noundef nonnull %i.ch)
  br label %sqlite3IntFloatCompare.exit196

bb.bl:                                            ; preds = %bb.bh
  %i.kn = getelementptr inbounds nuw i8, ptr %.1118, i64 16
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !934 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.ko)
  %i.kp = zext i32 %.1131 to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %.1118, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !768
  %i.kt = sext i32 %. to i64
  %i.ku = tail call i32 @memcmp(ptr noundef %i.kq, ptr noundef %i.ks, i64 noundef %i.kt) #59 ; 2 uses
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.bm, label %sqlite3IntFloatCompare.exit196.thread.loopexit.loopexit377

bb.bm:                                            ; preds = %bb.bl
  %i.kw = sub nsw i32 %i.jk, %i.ko
  br label %sqlite3IntFloatCompare.exit196

bb.bn:                                            ; preds = %bb.av
  %i.kx = and i32 %i.cm, 16
  %.not165 = icmp eq i32 %i.kx, 0
  %i.ky = zext i32 %.3125 to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ky ; 4 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !741 ; 5 uses
  %i.lb = zext i8 %i.la to i32                    ; 4 uses
  br i1 %.not165, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lc = icmp slt i8 %i.la, 0
  br i1 %i.lc, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !741 ; 2 uses
  %i.lf = zext i8 %i.le to i32                    ; 2 uses
  %i.lg = icmp sgt i8 %i.le, -1
  br i1 %i.lg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lh = and i8 %i.la, 127
  %i.li = zext nneg i8 %i.lh to i32
  %i.lj = shl nuw nsw i32 %i.li, 7
  %i.lk = or disjoint i32 %i.lj, %i.lf
  br label %sqlite3GetVarint32.exit207

bb.br:                                            ; preds = %bb.bp
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !741 ; 2 uses
  %i.ln = icmp sgt i8 %i.lm, -1
  br i1 %i.ln, label %bb.bs, label %bb.bt
end_hunk_2
begin_hunk_3_@rtreeOpen:bb.a
sqlite3_malloc64.exit:                            ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 296), !inline_history !821 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %sqlite3_malloc64.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc64.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.c, i8 0, i64 288, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !3541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3542
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !3542
  br label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %bb.a, %bb.b, %sqlite3_malloc64.exit
  %.0.i11 = phi ptr [ %i.b, %bb.b ], [ null, %sqlite3_malloc64.exit ], [ null, %bb.a ]
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.a ]
  store ptr %.0.i11, ptr %1, align 8, !tbaa !2005
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rtreeClose(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 3 uses
  tail call fastcc void @resetCursor(ptr noundef nonnull %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3543
  %i.d = tail call i32 @sqlite3_finalize(ptr noundef %i.c) ; 0 uses
  %i.e = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0) #58, !inline_history !13
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.l = sub nsw i64 %i.k, %i.j
  store i64 %i.l, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.n = add nsw i64 %i.m, -1
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.o(ptr noundef nonnull %0) #58, !inline_history !755
  %i.p = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.q(ptr noundef nonnull %i.p) #58, !inline_history !756
  br label %sqlite3_free.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.r(ptr noundef nonnull %0) #58, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !3542
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !3542
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %sqlite3_free.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = load i8, ptr %i.w, align 8, !tbaa !3544
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @nodeBlobReset(ptr noundef nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %sqlite3_free.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rtreeFilter(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1889   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !3545
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3546
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3546
  tail call fastcc void @resetCursor(ptr noundef nonnull %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.h, align 4, !tbaa !3547
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.j = load ptr, ptr %4, align 8, !tbaa !767    ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i16, ptr %i.k, align 4, !tbaa !694
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = and i32 %i.m, 36
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8, !tbaa !741
  br label %sqlite3_value_int64.exit

bb.d:                                             ; preds = %bb.b
  %i.p = and i32 %i.m, 8
  %.not8.i.i = icmp eq i32 %i.p, 0
  br i1 %.not8.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load double, ptr %i.j, align 8, !tbaa !741 ; 3 uses
  %i.r = fcmp olt double %i.q, f0xC3DFFFFFFFFFFFFF
  %i.s = fcmp ogt double %i.q, f0x43DFFFFFFFFFFFFF
  %i.t = fptosi double %i.q to i64
  %spec.select.i.i.i = select i1 %i.s, i64 9223372036854775807, i64 %i.t
  %.0.i.i.i = select i1 %i.r, i64 -9223372036854775808, i64 %spec.select.i.i.i
  br label %sqlite3_value_int64.exit

bb.f:                                             ; preds = %bb.d
  %i.u = and i32 %i.m, 18
  %.not9.i.i = icmp eq i32 %i.u, 0
  br i1 %.not9.i.i, label %sqlite3_value_int64.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !768
  %.not10.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i, label %sqlite3_value_int64.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.j)
  %.pre = load ptr, ptr %4, align 8, !tbaa !767
  br label %sqlite3_value_int64.exit

sqlite3_value_int64.exit:                         ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %i.y = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %.pre, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.f ]
  %.0.i.i = phi i64 [ %i.o, %bb.c ], [ %.0.i.i.i, %bb.e ], [ %i.x, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i64 0, ptr %i.c, align 8, !tbaa !571
  %i.z = tail call i32 @sqlite3_value_numeric_type(ptr noundef %i.y)
  %trunc163 = trunc nuw i32 %i.z to i8
  switch i8 %trunc163, label %.thread181 [
    i8 1, label %bb.o
    i8 2, label %bb.i
  ]

bb.i:                                             ; preds = %sqlite3_value_int64.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !767   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !694
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = and i32 %i.ad, 8
  %.not.i.i117 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i117, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load double, ptr %i.aa, align 8, !tbaa !741
  br label %sqlite3_value_double.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = and i32 %i.ad, 36
  %.not7.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not7.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !741
  %i.ai = sitofp i64 %i.ah to double
  br label %sqlite3_value_double.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = and i32 %i.ad, 18
  %.not8.i.i119 = icmp eq i32 %i.aj, 0
  br i1 %.not8.i.i119, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.aa, ptr noundef null), !inline_history !76
  br label %sqlite3_value_double.exit

sqlite3_value_double.exit:                        ; preds = %bb.j, %bb.l, %bb.n
  %.0.i.i118 = phi double [ %i.af, %bb.j ], [ %i.ai, %bb.l ], [ %i.ak, %bb.n ] ; 3 uses
  %or.cond.i = fcmp oge double %.0.i.i118, f0xC3E0000000000000
  %i.al = fcmp ult double %.0.i.i118, f0x43E0000000000000
  %or.cond160 = and i1 %or.cond.i, %i.al
  br i1 %or.cond160, label %.thread, label %.thread181

.thread:                                          ; preds = %sqlite3_value_double.exit, %bb.m
  %.0.i.i118140142 = phi double [ %.0.i.i118, %sqlite3_value_double.exit ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %i.am = fptosi double %.0.i.i118140142 to i64
  %or.cond161.not = icmp eq i64 %.0.i.i, %i.am
  %i.an = sitofp i64 %.0.i.i to double
  %or.cond162 = fcmp ueq double %.0.i.i118140142, %i.an
  %or.cond167 = and i1 %or.cond162, %or.cond161.not
  br i1 %or.cond167, label %bb.o, label %.thread181

bb.o:                                             ; preds = %sqlite3_value_int64.exit, %.thread
  %i.ao = call fastcc i32 @findLeafNode(ptr noundef nonnull %i.d, i64 noundef %.0.i.i, ptr noundef %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %.pre172 = load ptr, ptr %i.b, align 8          ; 3 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp ne ptr %.pre172, null
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.p, label %.thread181

bb.p:                                             ; preds = %bb.o
  %i.ar = call fastcc ptr @rtreeSearchPointNew(ptr noundef nonnull %0, double noundef 0.000000e+00, i8 noundef zeroext 0) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.pre172, ptr %i.as, align 8, !tbaa !3545
  %i.at = load i64, ptr %i.c, align 8, !tbaa !571
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !3548
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  store i8 1, ptr %i.av, align 1, !tbaa !3549
  %i.aw = getelementptr i8, ptr %.pre172, i64 24
  %.val = load ptr, ptr %i.aw, align 8, !tbaa !3551 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %.val.i = load i8, ptr %i.ax, align 1, !tbaa !741
  %i.ay = getelementptr i8, ptr %.val, i64 3
  %.val11.i = load i8, ptr %i.ay, align 1, !tbaa !741
  %i.az = zext i8 %.val.i to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = zext i8 %.val11.i to i32
  %i.bc = or disjoint i32 %i.ba, %i.bb            ; 2 uses
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %nodeRowidIndex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.d, i64 39
  %.val12.i = load i8, ptr %i.bd, align 1, !tbaa !3552
  %i.be = zext i8 %.val12.i to i64
  %wide.trip.count.i = zext nneg i32 %i.bc to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.bf = mul nuw nsw i64 %indvars.iv.i, %i.be
  %i.bg = getelementptr i8, ptr %.val, i64 %i.bf  ; 8 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !741
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 56
  %i.bl = getelementptr i8, ptr %i.bg, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !741
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 48
  %i.bp = or disjoint i64 %i.bo, %i.bk
  %i.bq = getelementptr i8, ptr %i.bg, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !741
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 40
  %i.bu = or disjoint i64 %i.bp, %i.bt
  %i.bv = getelementptr i8, ptr %i.bg, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !741
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 32
  %i.bz = or disjoint i64 %i.bu, %i.by
  %i.ca = getelementptr i8, ptr %i.bg, i64 8
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !741
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 24
  %i.ce = or disjoint i64 %i.bz, %i.cd
  %i.cf = getelementptr i8, ptr %i.bg, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !741
  %i.ch = zext i8 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 16
  %i.cj = or disjoint i64 %i.ce, %i.ci
  %i.ck = getelementptr i8, ptr %i.bg, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !741
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 8
  %i.co = or disjoint i64 %i.cj, %i.cn
  %i.cp = getelementptr i8, ptr %i.bg, i64 11
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !741
  %i.cr = zext i8 %i.cq to i64
  %i.cs = add nuw i64 %i.co, %i.cr
  %i.ct = icmp eq i64 %i.cs, %.0.i.i
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = trunc i64 %indvars.iv.i to i8
  br label %nodeRowidIndex.exit

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nodeRowidIndex.exit, label %bb.q, !llvm.loop !532

nodeRowidIndex.exit:                              ; preds = %bb.s, %bb.p, %bb.r
  %.0137 = phi i8 [ 0, %bb.p ], [ %i.cu, %bb.r ], [ 0, %bb.s ]
  %.010.i = phi i32 [ 267, %bb.p ], [ 0, %bb.r ], [ 267, %bb.s ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 18
  store i8 %.0137, ptr %i.cv, align 2, !tbaa !3553
  br label %bb.t

.thread181:                                       ; preds = %.thread, %sqlite3_value_double.exit, %sqlite3_value_int64.exit, %bb.o
  %.0101184 = phi i32 [ %i.ao, %bb.o ], [ 0, %sqlite3_value_int64.exit ], [ 0, %sqlite3_value_double.exit ], [ 0, %.thread ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cw, align 8, !tbaa !3554
  br label %bb.t

bb.t:                                             ; preds = %.thread181, %nodeRowidIndex.exit
  %.1102 = phi i32 [ %.010.i, %nodeRowidIndex.exit ], [ %.0101184, %.thread181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.thread156

bb.u:                                             ; preds = %bb.a
  %i.cx = call fastcc i32 @nodeAcquire(ptr noundef nonnull %i.d, i64 noundef 1, ptr noundef null, ptr noundef nonnull %i.a) ; 3 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp sgt i32 %3, 0
  %or.cond3 = and i1 %i.cz, %i.cy
  br i1 %or.cond3, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.da = zext nneg i32 %3 to i64                 ; 2 uses
  %i.db = mul nuw nsw i64 %i.da, 24               ; 2 uses
  %i.dc = tail call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i120 = icmp eq i32 %i.dc, 0
  br i1 %.not.i120, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.dd, align 8, !tbaa !3555
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.de, align 8, !tbaa !3556
  br label %.thread156

sqlite3_malloc64.exit:                            ; preds = %bb.v
  %i.df = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.db), !inline_history !821 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !3555
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.dh, align 8, !tbaa !3556
  %.not = icmp eq ptr %i.df, null
  br i1 %.not, label %.thread156, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3_malloc64.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.db, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3557
  %i.dl = add nsw i32 %i.dk, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = shl nsw i64 %i.dm, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.di, i8 0, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.az ] ; 4 uses
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !3555
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv ; 8 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !767
  %i.dt = tail call i32 @sqlite3_value_numeric_type(ptr noundef %i.ds) ; 2 uses
  %i.du = shl nuw nsw i64 %indvars.iv, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !741 ; 3 uses
  %i.dx = sext i8 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 8 uses
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3560
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !741
  %i.eb = sext i8 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, -48
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3561
  %i.ed = icmp sgt i8 %i.dw, 69
  br i1 %i.ed, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !767 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !694
  %i.eh = and i16 %i.eg, 4031
  %i.ei = icmp eq i16 %i.eh, 2561
  br i1 %i.ei, label %bb.y, label %.thread156

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 23
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !1111
  %i.el = icmp eq i8 %i.ek, 112
  br i1 %i.el, label %bb.z, label %.thread156

bb.z:                                             ; preds = %bb.y
  %i.em = load ptr, ptr %i.ee, align 8, !tbaa !741
end_hunk_3
