Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZN4llvm13slpvectorizer7BoUpSLP18reorderBottomToTopEb:_ZN4llvm11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EED2Ev.exit
  %.not240 = icmp eq ptr %i.axp, %i.awr
  br i1 %.not240, label %._crit_edge1121, label %.lr.ph1120

._crit_edge1129:                                  ; preds = %bb.hq, %._crit_edge1121
  %.sroa.0891.0.lcssa = phi ptr [ %.pre1221, %._crit_edge1121 ], [ %.sroa.0891.1, %bb.hq ] ; 2 uses
  %.sroa.10.0.lcssa = phi i64 [ %.pre1232, %._crit_edge1121 ], [ %.sroa.10.1, %bb.hq ] ; 4 uses
  %i.axq = trunc nuw i64 %.sroa.10.0.lcssa to i32
  %.idx.i.i628 = shl nuw nsw i64 %.sroa.10.0.lcssa, 2 ; 2 uses
  %i.axr = getelementptr i8, ptr %.sroa.0891.0.lcssa, i64 %.idx.i.i628
  %.not3.i.i.i.i.i.i629 = icmp eq i64 %.sroa.10.0.lcssa, 0
  br i1 %.not3.i.i.i.i.i.i629, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642.thread, label %.lr.ph.i.i.i.preheader.i.i.i630

.lr.ph.i.i.i.preheader.i.i.i630:                  ; preds = %._crit_edge1129.thread, %._crit_edge1129
  %i.axs = phi ptr [ %i.awq, %._crit_edge1129.thread ], [ %i.axr, %._crit_edge1129 ] ; 4 uses
  %.idx.i.i6281432 = phi i64 [ %.idx.i.i6281428, %._crit_edge1129.thread ], [ %.idx.i.i628, %._crit_edge1129 ] ; 2 uses
  %i.axt = phi i32 [ %.0.in.v.i, %._crit_edge1129.thread ], [ %i.axq, %._crit_edge1129 ] ; 6 uses
  %.sroa.10.0.lcssa1431 = phi i64 [ %i.avx, %._crit_edge1129.thread ], [ %.sroa.10.0.lcssa, %._crit_edge1129 ] ; 8 uses
  %.sroa.0891.0.lcssa1430 = phi ptr [ %i.avz, %._crit_edge1129.thread ], [ %.sroa.0891.0.lcssa, %._crit_edge1129 ] ; 13 uses
  %.sroa.0891.0.lcssa14301503 = ptrtoaddr ptr %.sroa.0891.0.lcssa1430 to i64 ; 2 uses
  %i.axu = load i32, ptr %.sroa.0891.0.lcssa1430, align 4, !tbaa !380, !noalias !3308 ; 2 uses
  %i.axv = icmp eq i32 %i.axu, 0
  %.not2.i.i.i.i.i2.i631 = icmp eq i32 %i.axu, %i.axt
  %or.cond3.i632 = or i1 %.not2.i.i.i.i.i2.i631, %i.axv
  br i1 %or.cond3.i632, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i635, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642

.lr.ph.i.i.i.i.i.i638:                            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i635
  %i.axw = add nuw nsw i64 %.sroa.2.0.copyload.i.i.i.i.i4.i636, 1 ; 2 uses
  %i.axx = load i32, ptr %i.ayb, align 4, !tbaa !380, !noalias !3308 ; 2 uses
  %i.axy = zext i32 %i.axx to i64
  %i.axz = icmp eq i64 %i.axw, %i.axy
  %.not2.i.i.i.i.i.i639 = icmp eq i32 %i.axx, %i.axt
  %or.cond.i640 = or i1 %.not2.i.i.i.i.i.i639, %i.axz
  br i1 %or.cond.i640, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i635, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642, !llvm.loop !23

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i635: ; preds = %.lr.ph.i.i.i.preheader.i.i.i630, %.lr.ph.i.i.i.i.i.i638
  %i.aya = phi ptr [ %i.ayb, %.lr.ph.i.i.i.i.i.i638 ], [ %.sroa.0891.0.lcssa1430, %.lr.ph.i.i.i.preheader.i.i.i630 ]
  %.sroa.2.0.copyload.i.i.i.i.i4.i636 = phi i64 [ %i.axw, %.lr.ph.i.i.i.i.i.i638 ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i630 ]
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 4 ; 4 uses
  %.not.i.i.i.i.i.i637 = icmp eq ptr %i.ayb, %i.axs
  br i1 %.not.i.i.i.i.i.i637, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642.thread, label %.lr.ph.i.i.i.i.i.i638, !llvm.loop !23

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642: ; preds = %.lr.ph.i.i.i.i.i.i638, %.lr.ph.i.i.i.preheader.i.i.i630
  %.ph.i.i.in.i634 = phi ptr [ %.sroa.0891.0.lcssa1430, %.lr.ph.i.i.i.preheader.i.i.i630 ], [ %i.ayb, %.lr.ph.i.i.i.i.i.i638 ]
  %i.ayc = icmp eq ptr %i.axs, %.ph.i.i.in.i634
  br i1 %i.ayc, label %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642.thread, label %bb.hu

.lr.ph1128:                                       ; preds = %._crit_edge1121, %bb.hq
  %.02171126 = phi ptr [ %i.ayo, %bb.hq ], [ %.pre1223, %._crit_edge1121 ] ; 5 uses
  %.02181125 = phi i32 [ %.1, %bb.hq ], [ %.1221, %._crit_edge1121 ] ; 2 uses
  %.sroa.10.01124 = phi i64 [ %.sroa.10.1, %bb.hq ], [ %.pre1232, %._crit_edge1121 ] ; 3 uses
  %.sroa.0891.01123 = phi ptr [ %.sroa.0891.1, %bb.hq ], [ %.pre1221, %._crit_edge1121 ] ; 3 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.02171126, i64 32 ; 2 uses
  %i.aye = load i32, ptr %i.ayd, align 8, !tbaa !900
  %i.ayf = icmp ult i32 %.02181125, %i.aye
  %i.ayg = load ptr, ptr %.02171126, align 8, !tbaa !359 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.02171126, i64 8 ; 2 uses
  %i.ayi = load i32, ptr %i.ayh, align 8, !tbaa !371
  %i.ayj = zext i32 %i.ayi to i64                 ; 2 uses
  br i1 %i.ayf, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.lr.ph1128
  call fastcc void @_ZL13combineOrdersN4llvm15MutableArrayRefIjEENS_8ArrayRefIjEE(ptr %i.ayg, i64 %i.ayj, ptr %.sroa.0891.01123, i64 %.sroa.10.01124)
  %i.ayk = load ptr, ptr %.02171126, align 8, !tbaa !359
  %i.ayl = load i32, ptr %i.ayh, align 8, !tbaa !371
  %i.aym = zext i32 %i.ayl to i64
  %i.ayn = load i32, ptr %i.ayd, align 8, !tbaa !900
  br label %bb.hq

bb.hp:                                            ; preds = %.lr.ph1128
  call fastcc void @_ZL13combineOrdersN4llvm15MutableArrayRefIjEENS_8ArrayRefIjEE(ptr %.sroa.0891.01123, i64 %.sroa.10.01124, ptr %i.ayg, i64 %i.ayj)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.sroa.0891.1 = phi ptr [ %i.ayk, %bb.ho ], [ %.sroa.0891.01123, %bb.hp ] ; 2 uses
  %.sroa.10.1 = phi i64 [ %i.aym, %bb.ho ], [ %.sroa.10.01124, %bb.hp ] ; 2 uses
  %.1 = phi i32 [ %i.ayn, %bb.ho ], [ %.02181125, %bb.hp ]
  %i.ayo = getelementptr inbounds nuw i8, ptr %.02171126, i64 40 ; 2 uses
  %.not241 = icmp eq ptr %i.ayo, %i.awu
  br i1 %.not241, label %._crit_edge1129, label %.lr.ph1128

_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642.thread: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS2_8ArrayRefIjEEEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSD_14index_iteratorEPKjEEEEEbS7_.exit.thread.i.i.i.i.i.i635, %._crit_edge1129, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642
  %i.ayp = load ptr, ptr %i.ad, align 8, !tbaa !359, !noalias !3309 ; 2 uses
  %i.ayq = load i32, ptr %i.af, align 8, !tbaa !371, !noalias !3309 ; 2 uses
  %i.ayr = zext i32 %i.ayq to i64
  %.idx = shl nuw nsw i64 %i.ayr, 4
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %.idx
  %.not7.i.i647 = icmp eq i32 %i.ayq, 0
  br i1 %.not7.i.i647, label %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE12insert_rangeINS_14iterator_rangeINS_15mapped_iteratorIPSt4pairIjPS3_EZNS_17make_second_rangeIRNS_11SmallVectorISC_Lj3EEEEEDaOT_EUlRSC_E_RSB_EEEEEEvSJ_.exit664, label %.lr.ph.i.i648

.lr.ph.i.i648:                                    ; preds = %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642.thread
  %.pre.i.i649 = load i8, ptr %i.y, align 8, !tbaa !367, !range !368, !noalias !3310
  br label %bb.hr

bb.hr:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654, %.lr.ph.i.i648
  %i.ayt = phi i8 [ %.pre.i.i649, %.lr.ph.i.i648 ], [ %i.azh, %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654 ]
  %.sroa.02.08.i.i650 = phi ptr [ %i.ayp, %.lr.ph.i.i648 ], [ %i.azi, %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654 ] ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.i650, i64 8
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !575 ; 3 uses
  %i.ayw = trunc nuw i8 %i.ayt to i1
  br i1 %i.ayw, label %bb.hs, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i651

bb.hs:                                            ; preds = %bb.hr
  %i.ayx = load ptr, ptr %15, align 8, !tbaa !370, !noalias !3310 ; 2 uses
  %i.ayy = load i32, ptr %i.x, align 4, !tbaa !879, !noalias !3310 ; 4 uses
  %i.ayz = zext i32 %i.ayy to i64
  %.idx.i.i.i.i656 = shl nuw nsw i64 %i.ayz, 3
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %.idx.i.i.i.i656 ; 2 uses
  %.not22.i.i.i.i657 = icmp eq i32 %i.ayy, 0
  br i1 %.not22.i.i.i.i657, label %._crit_edge.i.i.i.i663, label %.lr.ph.i.i.i.i658

.lr.ph.i.i.i.i658:                                ; preds = %bb.hs, %.critedge.i.i.i.i661
  %.023.i.i.i.i659 = phi ptr [ %i.azc, %.critedge.i.i.i.i661 ], [ %i.ayx, %bb.hs ] ; 2 uses
  %i.azb = load ptr, ptr %.023.i.i.i.i659, align 8, !tbaa !874, !noalias !3310
  %.not15.i.i.i.i660 = icmp eq ptr %i.azb, %i.ayv
  br i1 %.not15.i.i.i.i660, label %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654, label %.critedge.i.i.i.i661

.critedge.i.i.i.i661:                             ; preds = %.lr.ph.i.i.i.i658
  %i.azc = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i659, i64 8 ; 2 uses
  %.not.i.i.i.i662 = icmp eq ptr %i.azc, %i.aza
  br i1 %.not.i.i.i.i662, label %._crit_edge.i.i.i.i663, label %.lr.ph.i.i.i.i658

._crit_edge.i.i.i.i663:                           ; preds = %.critedge.i.i.i.i661, %bb.hs
  %i.azd = load i32, ptr %i.w, align 8, !tbaa !917, !noalias !3310
  %i.aze = icmp ult i32 %i.ayy, %i.azd
  br i1 %i.aze, label %bb.ht, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i651

bb.ht:                                            ; preds = %._crit_edge.i.i.i.i663
  %i.azf = add nuw i32 %i.ayy, 1
  store i32 %i.azf, ptr %i.x, align 4, !tbaa !879, !noalias !3310
  store ptr %i.ayv, ptr %i.aza, align 8, !tbaa !874, !noalias !3310
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i651: ; preds = %._crit_edge.i.i.i.i663, %bb.hr
  %i.azg = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef %i.ayv) #31, !noalias !3310 ; 0 uses
  %.pre.i.i.i652 = load i8, ptr %i.y, align 8, !tbaa !367, !range !368, !noalias !3310
  %.pre.fr.i.i.i653 = freeze i8 %.pre.i.i.i652
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654

_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654: ; preds = %.lr.ph.i.i.i.i658, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i651, %bb.ht
  %i.azh = phi i8 [ %.pre.fr.i.i.i653, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i651 ], [ 1, %bb.ht ], [ 1, %.lr.ph.i.i.i.i658 ]
  %i.azi = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.i650, i64 16 ; 2 uses
  %.not.i.i655 = icmp eq ptr %i.azi, %i.ays
  br i1 %.not.i.i655, label %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE12insert_rangeINS_14iterator_rangeINS_15mapped_iteratorIPSt4pairIjPS3_EZNS_17make_second_rangeIRNS_11SmallVectorISC_Lj3EEEEEDaOT_EUlRSC_E_RSB_EEEEEEvSJ_.exit664, label %bb.hr, !llvm.loop !3255

_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE12insert_rangeINS_14iterator_rangeINS_15mapped_iteratorIPSt4pairIjPS3_EZNS_17make_second_rangeIRNS_11SmallVectorISC_Lj3EEEEEDaOT_EUlRSC_E_RSB_EEEEEEvSJ_.exit664: ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_.exit.i.i654, %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642.thread
  br label %bb.jo, !llvm.loop !3182

bb.hu:                                            ; preds = %_ZN4llvm13slpvectorizer7BoUpSLP15isIdentityOrderENS_8ArrayRefIjEE.exit642
  call fastcc void @_ZL20fixupOrderingIndicesN4llvm15MutableArrayRefIjEE(ptr nonnull %.sroa.0891.0.lcssa1430, i64 %.sroa.10.0.lcssa1431)
  %i.azj = load i8, ptr %i.bk, align 8, !tbaa !367, !range !368, !noundef !369
  %i.azk = trunc nuw i8 %i.azj to i1
  br i1 %i.azk, label %bb.hy, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.azl = load i32, ptr %i.bj, align 4, !tbaa !879
  %i.azm = shl i32 %i.azl, 2
  %i.azn = load i32, ptr %i.bi, align 8, !tbaa !917 ; 3 uses
  %i.azo = icmp ult i32 %i.azm, %i.azn
  %i.azp = icmp ugt i32 %i.azn, 32
  %or.cond.i665 = and i1 %i.azo, %i.azp
  br i1 %or.cond.i665, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %25) #31
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

bb.hx:                                            ; preds = %bb.hv
  %i.azq = load ptr, ptr %25, align 8, !tbaa !370
  %i.azr = zext i32 %i.azn to i64
  %i.azs = shl nuw nsw i64 %i.azr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.azq, i8 -1, i64 %i.azs, i1 false)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hu
  store i32 0, ptr %i.bj, align 4, !tbaa !879
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.hw, %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  store ptr %i.dn, ptr %37, align 8, !tbaa !359
  store i32 12, ptr %i.dp, align 4, !tbaa !372
  store i32 0, ptr %i.do, align 8, !tbaa !371
  %.not.i.i.i.i.i666 = icmp samesign ugt i64 %.sroa.10.0.lcssa1431, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i666, label %bb.hz, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667, !prof !664

bb.hz:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull %i.dn, i64 noundef %.sroa.10.0.lcssa1431, i64 noundef 4) #31
  %.pre4.pre.i.i.i679 = load i32, ptr %i.do, align 8, !tbaa !371
  %.pre.i.i680 = zext i32 %.pre4.pre.i.i.i679 to i64
  %.pre1225 = load ptr, ptr %37, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667: ; preds = %bb.hz, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  %i.azt = phi ptr [ %i.dn, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit ], [ %.pre1225, %bb.hz ] ; 6 uses
  %.pre-phi.i.i668 = phi i64 [ 0, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit ], [ %.pre.i.i680, %bb.hz ]
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %.pre-phi.i.i668
  call void @llvm.memset.p0.i64(ptr align 4 %i.azu, i8 -1, i64 %.idx.i.i6281432, i1 false), !tbaa !380
  %.pre.i.i.i670 = load i32, ptr %i.do, align 8, !tbaa !371
  %i.azv = add i32 %.pre.i.i.i670, %i.axt
  store i32 %i.azv, ptr %i.do, align 8, !tbaa !371
  %i.azw = add nsw i64 %.sroa.10.0.lcssa1431, -1
  %xtraiter1636 = and i64 %.sroa.10.0.lcssa1431, 3 ; 3 uses
  %i.azx = icmp ult i64 %i.azw, 3
  br i1 %i.azx, label %.epil.preheader1635, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667.new

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667.new: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667
  %unroll_iter1640 = and i64 %.sroa.10.0.lcssa1431, -4
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ia, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667.new
  %indvars.iv.i675 = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667.new ], [ %indvars.iv.next.i676.3, %bb.ia ] ; 6 uses
  %niter1641 = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667.new ], [ %niter1641.next.3, %bb.ia ]
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0891.0.lcssa1430, i64 %indvars.iv.i675
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !380
  %i.baa = zext i32 %i.azz to i64
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.baa
  %i.bac = trunc nuw i64 %indvars.iv.i675 to i32
  store i32 %i.bac, ptr %i.bab, align 4, !tbaa !380
  %indvars.iv.next.i676 = or disjoint i64 %indvars.iv.i675, 1 ; 2 uses
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0891.0.lcssa1430, i64 %indvars.iv.next.i676
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !380
  %i.baf = zext i32 %i.bae to i64
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.baf
  %i.bah = trunc nuw i64 %indvars.iv.next.i676 to i32
  store i32 %i.bah, ptr %i.bag, align 4, !tbaa !380
  %indvars.iv.next.i676.1 = or disjoint i64 %indvars.iv.i675, 2 ; 2 uses
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0891.0.lcssa1430, i64 %indvars.iv.next.i676.1
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !380
  %i.bak = zext i32 %i.baj to i64
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.bak
  %i.bam = trunc nuw i64 %indvars.iv.next.i676.1 to i32
  store i32 %i.bam, ptr %i.bal, align 4, !tbaa !380
  %indvars.iv.next.i676.2 = or disjoint i64 %indvars.iv.i675, 3 ; 2 uses
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0891.0.lcssa1430, i64 %indvars.iv.next.i676.2
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !380
  %i.bap = zext i32 %i.bao to i64
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.bap
  %i.bar = trunc nuw i64 %indvars.iv.next.i676.2 to i32
  store i32 %i.bar, ptr %i.baq, align 4, !tbaa !380
  %indvars.iv.next.i676.3 = add nuw nsw i64 %indvars.iv.i675, 4 ; 2 uses
  %niter1641.next.3 = add i64 %niter1641, 4       ; 2 uses
  %niter1641.ncmp.3 = icmp eq i64 %niter1641.next.3, %unroll_iter1640
  br i1 %niter1641.ncmp.3, label %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681.unr-lcssa, label %bb.ia, !llvm.loop !15

_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681.unr-lcssa: ; preds = %bb.ia
  %lcmp.mod1638.not = icmp eq i64 %xtraiter1636, 0
  br i1 %lcmp.mod1638.not, label %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681, label %.epil.preheader1635

.epil.preheader1635:                              ; preds = %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681.unr-lcssa, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667
  %indvars.iv.i675.epil.init = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i.i667 ], [ %indvars.iv.next.i676.3, %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681.unr-lcssa ]
  %lcmp.mod1639 = icmp ne i64 %xtraiter1636, 0
  call void @llvm.assume(i1 %lcmp.mod1639)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ib, %.epil.preheader1635
  %indvars.iv.i675.epil = phi i64 [ %indvars.iv.i675.epil.init, %.epil.preheader1635 ], [ %indvars.iv.next.i676.epil, %bb.ib ] ; 3 uses
  %epil.iter1637 = phi i64 [ 0, %.epil.preheader1635 ], [ %epil.iter1637.next, %bb.ib ]
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0891.0.lcssa1430, i64 %indvars.iv.i675.epil
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !380
  %i.bau = zext i32 %i.bat to i64
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.bau
  %i.baw = trunc nuw i64 %indvars.iv.i675.epil to i32
  store i32 %i.baw, ptr %i.bav, align 4, !tbaa !380
  %indvars.iv.next.i676.epil = add nuw nsw i64 %indvars.iv.i675.epil, 1
  %epil.iter1637.next = add i64 %epil.iter1637, 1 ; 2 uses
  %epil.iter1637.cmp.not = icmp eq i64 %epil.iter1637.next, %xtraiter1636
  br i1 %epil.iter1637.cmp.not, label %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681, label %bb.ib, !llvm.loop !3276

_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681: ; preds = %bb.ib, %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  store ptr %i.dq, ptr %38, align 8, !tbaa !359
  store i32 0, ptr %i.dr, align 8, !tbaa !371
  store i32 12, ptr %i.ds, align 4, !tbaa !372
  br i1 %.not.i.i.i.i.i666, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693.loopexit, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693.loopexit: ; preds = %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %38, ptr noundef nonnull %i.dq, i64 noundef %.sroa.10.0.lcssa1431, i64 noundef 4) #31
  %i.bax = load ptr, ptr %38, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693:     ; preds = %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693.loopexit
  %.sink = phi ptr [ %i.bax, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693.loopexit ], [ %i.dq, %_ZL18inversePermutationN4llvm8ArrayRefIjEERNS_15SmallVectorImplIiEE.exit681 ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 -1, i64 %.idx.i.i6281432, i1 false), !tbaa !380
  store i32 %i.axt, ptr %i.dr, align 8, !tbaa !371
  %i.bay = ptrtoaddr ptr %i.axs to i64
  %i.baz = add i64 %i.bay, -4
  %i.bba = sub i64 %i.baz, %.sroa.0891.0.lcssa14301503 ; 2 uses
  %i.bbb = lshr i64 %i.bba, 2
  %i.bbc = add nuw nsw i64 %i.bbb, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bba, 28
  %.sink1502 = ptrtoaddr ptr %.sink to i64
  %i.bbd = sub i64 %.sroa.0891.0.lcssa14301503, %.sink1502
  %diff.check = icmp ugt i64 %i.bbd, -32
  %or.cond1578 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1578, label %.lr.ph.i.i696.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693
  %n.vec = and i64 %i.bbc, 9223372036854775800    ; 3 uses
  %i.bbe = shl i64 %n.vec, 2                      ; 2 uses
  %i.bbf = getelementptr i8, ptr %.sink, i64 %i.bbe
  %i.bbg = getelementptr i8, ptr %.sroa.0891.0.lcssa1430, i64 %i.bbe
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.axt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bbh = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sink, i64 %i.bbh ; 2 uses
  %next.gep1504 = getelementptr i8, ptr %.sroa.0891.0.lcssa1430, i64 %i.bbh ; 2 uses
  %i.bbi = getelementptr i8, ptr %next.gep1504, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1504, align 4, !tbaa !380 ; 2 uses
  %wide.load1505 = load <4 x i32>, ptr %i.bbi, align 4, !tbaa !380 ; 2 uses
  %i.bbj = icmp ult <4 x i32> %wide.load, %broadcast.splat
  %i.bbk = icmp ult <4 x i32> %wide.load1505, %broadcast.splat
  %i.bbl = select <4 x i1> %i.bbj, <4 x i32> %wide.load, <4 x i32> splat (i32 -1)
  %i.bbm = select <4 x i1> %i.bbk, <4 x i32> %wide.load1505, <4 x i32> splat (i32 -1)
  %i.bbn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.bbl, ptr %next.gep, align 4, !tbaa !380
  store <4 x i32> %i.bbm, ptr %i.bbn, align 4, !tbaa !380
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bbo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bbo, label %middle.block, label %vector.body, !llvm.loop !3277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bbc, %n.vec
  br i1 %cmp.n, label %"_ZN4llvm9transformIRNS_15MutableArrayRefIjEEPiZNS_13slpvectorizer7BoUpSLP18reorderBottomToTopEbE4$_11EET0_OT_S8_T1_.exit", label %.lr.ph.i.i696.preheader

.lr.ph.i.i696.preheader:                          ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693, %middle.block
  %.010.i.i697.ph = phi ptr [ %.sink, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693 ], [ %i.bbf, %middle.block ]
  %.079.i.i698.ph = phi ptr [ %.sroa.0891.0.lcssa1430, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit693 ], [ %i.bbg, %middle.block ]
  br label %.lr.ph.i.i696

.lr.ph.i.i696:                                    ; preds = %.lr.ph.i.i696.preheader, %.lr.ph.i.i696
  %.010.i.i697 = phi ptr [ %i.bbt, %.lr.ph.i.i696 ], [ %.010.i.i697.ph, %.lr.ph.i.i696.preheader ] ; 2 uses
  %.079.i.i698 = phi ptr [ %i.bbs, %.lr.ph.i.i696 ], [ %.079.i.i698.ph, %.lr.ph.i.i696.preheader ] ; 2 uses
  %i.bbp = load i32, ptr %.079.i.i698, align 4, !tbaa !380 ; 2 uses
  %i.bbq = icmp ult i32 %i.bbp, %i.axt
  %i.bbr = select i1 %i.bbq, i32 %i.bbp, i32 -1
  store i32 %i.bbr, ptr %.010.i.i697, align 4, !tbaa !380
  %i.bbs = getelementptr inbounds nuw i8, ptr %.079.i.i698, i64 4 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %.010.i.i697, i64 4
  %.not.i.i699 = icmp eq ptr %i.bbs, %i.axs
  br i1 %.not.i.i699, label %"_ZN4llvm9transformIRNS_15MutableArrayRefIjEEPiZNS_13slpvectorizer7BoUpSLP18reorderBottomToTopEbE4$_11EET0_OT_S8_T1_.exit", label %.lr.ph.i.i696, !llvm.loop !3278

"_ZN4llvm9transformIRNS_15MutableArrayRefIjEEPiZNS_13slpvectorizer7BoUpSLP18reorderBottomToTopEbE4$_11EET0_OT_S8_T1_.exit": ; preds = %.lr.ph.i.i696, %middle.block
  %i.bbu = load ptr, ptr %i.ad, align 8, !tbaa !359 ; 2 uses
  %i.bbv = load i32, ptr %i.af, align 8, !tbaa !371 ; 2 uses
  %i.bbw = zext i32 %i.bbv to i64
  %.idx1154 = shl nuw nsw i64 %i.bbw, 4
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %.idx1154
  %.not2421132 = icmp eq i32 %i.bbv, 0
  br i1 %.not2421132, label %._crit_edge1135, label %.lr.ph1134

._crit_edge1135:                                  ; preds = %.critedge1580, %"_ZN4llvm9transformIRNS_15MutableArrayRefIjEEPiZNS_13slpvectorizer7BoUpSLP18reorderBottomToTopEbE4$_11EET0_OT_S8_T1_.exit"
  %i.bby = load ptr, ptr %23, align 8, !tbaa !359 ; 2 uses
  %i.bbz = load i32, ptr %i.bb, align 8, !tbaa !371 ; 2 uses
  %i.bca = zext i32 %i.bbz to i64
  %.idx1155 = shl nuw nsw i64 %i.bca, 3
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bby, i64 %.idx1155
  %.not2431136 = icmp eq i32 %i.bbz, 0
  br i1 %.not2431136, label %._crit_edge1140, label %.lr.ph1139

.lr.ph1134:                                       ; preds = %"_ZN4llvm9transformIRNS_15MutableArrayRefIjEEPiZNS_13slpvectorizer7BoUpSLP18reorderBottomToTopEbE4$_11EET0_OT_S8_T1_.exit", %.critedge1580
  %.02161133 = phi ptr [ %i.bea, %.critedge1580 ], [ %i.bbu, %"_ZN4llvm9transformIRNS_15MutableArrayRefIjEEPiZNS_13slpvectorizer7BoUpSLP18reorderBottomToTopEbE4$_11EET0_OT_S8_T1_.exit" ] ; 2 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %.02161133, i64 8
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !916 ; 10 uses
  %i.bce = load i8, ptr %i.bk, align 8, !tbaa !367, !range !368, !noalias !3311, !noundef !369
  %i.bcf = trunc nuw i8 %i.bce to i1
  br i1 %i.bcf, label %bb.ic, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i701

bb.ic:                                            ; preds = %.lr.ph1134
  %i.bcg = load ptr, ptr %25, align 8, !tbaa !370, !noalias !3311 ; 2 uses
  %i.bch = load i32, ptr %i.bj, align 4, !tbaa !879, !noalias !3311 ; 4 uses
  %i.bci = zext i32 %i.bch to i64
  %.idx.i.i716 = shl nuw nsw i64 %i.bci, 3
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %.idx.i.i716 ; 2 uses
  %.not22.i.i717 = icmp eq i32 %i.bch, 0
  br i1 %.not22.i.i717, label %._crit_edge.i.i723, label %.lr.ph.i.i718

.lr.ph.i.i718:                                    ; preds = %bb.ic, %.critedge.i.i721
  %.023.i.i719 = phi ptr [ %i.bcl, %.critedge.i.i721 ], [ %i.bcg, %bb.ic ] ; 2 uses
  %i.bck = load ptr, ptr %.023.i.i719, align 8, !tbaa !874, !noalias !3311
  %.not15.i.i720 = icmp eq ptr %i.bck, %i.bcd
  br i1 %.not15.i.i720, label %.critedge1580, label %.critedge.i.i721

.critedge.i.i721:                                 ; preds = %.lr.ph.i.i718
  %i.bcl = getelementptr inbounds nuw i8, ptr %.023.i.i719, i64 8 ; 2 uses
  %.not.i.i722 = icmp eq ptr %i.bcl, %i.bcj
  br i1 %.not.i.i722, label %._crit_edge.i.i723, label %.lr.ph.i.i718

._crit_edge.i.i723:                               ; preds = %.critedge.i.i721, %bb.ic
  %i.bcm = load i32, ptr %i.bi, align 8, !tbaa !917, !noalias !3311
  %i.bcn = icmp ult i32 %i.bch, %i.bcm
  br i1 %i.bcn, label %.critedge1579, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i701

.critedge1579:                                    ; preds = %._crit_edge.i.i723
  %i.bco = add nuw i32 %i.bch, 1
  store i32 %i.bco, ptr %i.bj, align 4, !tbaa !879, !noalias !3311
  store ptr %i.bcd, ptr %i.bcj, align 8, !tbaa !874, !noalias !3311
  br label %bb.id
end_hunk_0
