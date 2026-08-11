inline.NumInlined: 399
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL7do_shamPKcS0_S0_S0_S0_S0_S0_S0_iiPPfbiS2_fffPKfS4_ifPKiPibS1_bS1_:bb.a
  call void @_ZdlPvm(ptr noundef %i.bho, i64 noundef %i.bhr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  %i.bhs = load ptr, ptr %53, align 8, !tbaa !32  ; 2 uses
  %i.bht = icmp eq ptr %i.bhs, %i.bdz
  br i1 %i.bht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751
  %i.bhu = load i64, ptr %i.bdz, align 8, !tbaa !35
  %i.bhv = add i64 %i.bhu, 1
  call void @_ZdlPvm(ptr noundef %i.bhs, i64 noundef %i.bhv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  %i.bhw = load ptr, ptr %52, align 8, !tbaa !32  ; 2 uses
  %i.bhx = icmp eq ptr %i.bhw, %i.bdt
  br i1 %i.bhx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit757, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i755

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i755: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754
  %i.bhy = load i64, ptr %i.bdt, align 8, !tbaa !35
  %i.bhz = add i64 %i.bhy, 1
  call void @_ZdlPvm(ptr noundef %i.bhw, i64 noundef %i.bhz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit757

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit757: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i755, %bb.dd
  %.pn537.pn.pn.pn = phi { ptr, i32 } [ %i.bhi, %bb.dd ], [ %i.bhj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i755 ], [ %i.bhj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  br label %bb.ew

bb.df:                                            ; preds = %_ZL11pick_minimaPKcPiiiPf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef zeroext 2)
  %i.bia = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull @.str.133)
          to label %bb.dg unwind label %bb.dk     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.bib = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 2 uses
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i758 = icmp eq ptr %i.bic, null
  br i1 %.not.i.i.i758, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i759, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bib, ptr noundef nonnull %i.bic) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i759

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i759: ; preds = %bb.dh, %bb.dg
  %i.bid = load ptr, ptr %57, align 8, !tbaa !32  ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.bif = icmp eq ptr %i.bid, %i.bie
  br i1 %i.bif, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i760: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i759
  %i.big = load i64, ptr %i.bie, align 8, !tbaa !35
  %i.bih = add i64 %i.big, 1
  call void @_ZdlPvm(ptr noundef %i.bid, i64 noundef %i.bih) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit762

_ZNSt10filesystem7__cxx114pathD2Ev.exit762:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  %i.bii = load i32, ptr %22, align 4, !tbaa !9   ; 2 uses
  %i.bij = icmp sgt i32 %i.bii, 0
  br i1 %i.bij, label %.lr.ph1215.preheader, label %._crit_edge1216

.lr.ph1215.preheader:                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit762
  %.pre1376 = load i32, ptr %i.yp, align 4, !tbaa !9 ; 2 uses
  br label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.lr.ph1215.preheader, %._crit_edge1212
  %i.bik = phi i32 [ %i.bkp, %._crit_edge1212 ], [ %i.bii, %.lr.ph1215.preheader ] ; 3 uses
  %i.bil = phi i32 [ %i.bkq, %._crit_edge1212 ], [ %.pre1376, %.lr.ph1215.preheader ] ; 3 uses
  %i.bim = phi i32 [ %i.bkr, %._crit_edge1212 ], [ %.pre1376, %.lr.ph1215.preheader ] ; 4 uses
  %.114661213 = phi i32 [ %i.bks, %._crit_edge1212 ], [ 0, %.lr.ph1215.preheader ] ; 3 uses
  %i.bin = icmp sgt i32 %i.bim, 0
  br i1 %i.bin, label %.lr.ph1211, label %._crit_edge1212

.lr.ph1211:                                       ; preds = %.lr.ph1215
  %i.bio = sub nsw i32 1, %i.bik
  %i.bip = sitofp i32 %i.bio to double
  %i.biq = mul nuw nsw i32 %.114661213, 3
  %i.bir = uitofp nneg i32 %i.biq to double
  %i.bis = call double @llvm.fmuladd.f64(double %i.bip, double 1.500000e+00, double %i.bir)
  %i.bit = fptrunc double %i.bis to float
  %i.biu = fpext float %i.bit to double
  %i.biv = load i32, ptr %i.yu, align 4, !tbaa !9 ; 3 uses
  %i.biw = icmp sgt i32 %i.biv, 0
  br i1 %i.biw, label %.lr.ph1211.split, label %._crit_edge1212

.lr.ph1211.split:                                 ; preds = %.lr.ph1211, %._crit_edge1208
  %i.bix = phi i32 [ %i.bkk, %._crit_edge1208 ], [ %i.bil, %.lr.ph1211 ]
  %i.biy = phi i32 [ %i.bkl, %._crit_edge1208 ], [ %i.biv, %.lr.ph1211 ] ; 2 uses
  %i.biz = phi i32 [ %i.bkm, %._crit_edge1208 ], [ %i.biv, %.lr.ph1211 ] ; 3 uses
  %i.bja = phi i32 [ %i.bkk, %._crit_edge1208 ], [ %i.bim, %.lr.ph1211 ]
  %.64811209 = phi i32 [ %i.bkn, %._crit_edge1208 ], [ 0, %.lr.ph1211 ] ; 3 uses
  %i.bjb = icmp sgt i32 %i.biz, 0
  br i1 %i.bjb, label %.lr.ph1207, label %._crit_edge1208

.lr.ph1207:                                       ; preds = %.lr.ph1211.split
  %i.bjc = sub nsw i32 1, %i.bja
  %i.bjd = sitofp i32 %i.bjc to double
  %i.bje = mul nuw nsw i32 %.64811209, 3
  %i.bjf = uitofp nneg i32 %i.bje to double
  %i.bjg = call double @llvm.fmuladd.f64(double %i.bjd, double 1.500000e+00, double %i.bjf)
  %i.bjh = fptrunc double %i.bjg to float
  %i.bji = fpext float %i.bjh to double
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph1207, %bb.dl
  %i.bjj = phi i32 [ %i.biy, %.lr.ph1207 ], [ %i.bkh, %bb.dl ]
  %i.bjk = phi i32 [ %i.biz, %.lr.ph1207 ], [ %i.bkh, %bb.dl ] ; 2 uses
  %.04741205 = phi i32 [ 0, %.lr.ph1207 ], [ %i.bki, %bb.dl ] ; 3 uses
  %.val552 = load i32, ptr %i.yp, align 4, !tbaa !9
  %i.bjl = mul nsw i32 %.val552, %.114661213
  %i.bjm = add nsw i32 %i.bjl, %.64811209
  %i.bjn = mul nsw i32 %i.bjm, %i.bjk
  %i.bjo = add nsw i32 %i.bjn, %.04741205         ; 2 uses
  %i.bjp = sext i32 %i.bjo to i64                 ; 2 uses
  %i.bjq = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.bjp
  %i.bjr = load double, ptr %i.bjq, align 8, !tbaa !61
  %i.bjs = fcmp ogt double %i.bjr, 0.000000e+00
  br i1 %i.bjs, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.bjt = sub nsw i32 1, %i.bjk
  %i.bju = sitofp i32 %i.bjt to double
  %i.bjv = mul nuw nsw i32 %.04741205, 3
  %i.bjw = uitofp nneg i32 %i.bjv to double
  %i.bjx = call double @llvm.fmuladd.f64(double %i.bju, double 1.500000e+00, double %i.bjw)
  %i.bjy = fptrunc double %i.bjx to float
  %i.bjz = add nsw i32 %i.bjo, 1
  %i.bka = srem i32 %i.bjz, 10000                 ; 2 uses
  %i.bkb = fpext float %i.bjy to double
  %i.bkc = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.bjp
  %i.bkd = load float, ptr %i.bkc, align 4, !tbaa !28
  %i.bke = fpext float %i.bkd to double
  %i.bkf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bia, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef %i.bka, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.159, i32 noundef %i.bka, double noundef %i.biu, double noundef %i.bji, double noundef %i.bkb, double noundef 1.000000e+00, double noundef %i.bke) #18 ; 0 uses
  %.pre1377 = load i32, ptr %i.yu, align 4, !tbaa !9
  br label %bb.dl

bb.dk:                                            ; preds = %bb.df
  %i.bkg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %57) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.ew

bb.dl:                                            ; preds = %bb.di, %bb.dj
  %i.bkh = phi i32 [ %i.bjj, %bb.di ], [ %.pre1377, %bb.dj ] ; 5 uses
  %i.bki = add nuw nsw i32 %.04741205, 1          ; 2 uses
  %i.bkj = icmp slt i32 %i.bki, %i.bkh
  br i1 %i.bkj, label %bb.di, label %._crit_edge1208.loopexit, !llvm.loop !138

._crit_edge1208.loopexit:                         ; preds = %bb.dl
  %.pre1378 = load i32, ptr %i.yp, align 4, !tbaa !9
  br label %._crit_edge1208

._crit_edge1208:                                  ; preds = %._crit_edge1208.loopexit, %.lr.ph1211.split
  %i.bkk = phi i32 [ %.pre1378, %._crit_edge1208.loopexit ], [ %i.bix, %.lr.ph1211.split ] ; 5 uses
  %i.bkl = phi i32 [ %i.bkh, %._crit_edge1208.loopexit ], [ %i.biy, %.lr.ph1211.split ]
  %i.bkm = phi i32 [ %i.bkh, %._crit_edge1208.loopexit ], [ %i.biz, %.lr.ph1211.split ]
  %i.bkn = add nuw nsw i32 %.64811209, 1          ; 2 uses
  %i.bko = icmp slt i32 %i.bkn, %i.bkk
  br i1 %i.bko, label %.lr.ph1211.split, label %._crit_edge1212.loopexit, !llvm.loop !139

._crit_edge1212.loopexit:                         ; preds = %._crit_edge1208
  %.pre1379 = load i32, ptr %22, align 4, !tbaa !9
  br label %._crit_edge1212

._crit_edge1212:                                  ; preds = %.lr.ph1211, %._crit_edge1212.loopexit, %.lr.ph1215
  %i.bkp = phi i32 [ %i.bik, %.lr.ph1215 ], [ %.pre1379, %._crit_edge1212.loopexit ], [ %i.bik, %.lr.ph1211 ] ; 2 uses
  %i.bkq = phi i32 [ %i.bil, %.lr.ph1215 ], [ %i.bkk, %._crit_edge1212.loopexit ], [ %i.bil, %.lr.ph1211 ]
  %i.bkr = phi i32 [ %i.bim, %.lr.ph1215 ], [ %i.bkk, %._crit_edge1212.loopexit ], [ %i.bim, %.lr.ph1211 ]
  %i.bks = add nuw nsw i32 %.114661213, 1         ; 2 uses
  %i.bkt = icmp slt i32 %i.bks, %i.bkp
  br i1 %i.bkt, label %.lr.ph1215, label %._crit_edge1216, !llvm.loop !140

._crit_edge1216:                                  ; preds = %._crit_edge1212, %_ZNSt10filesystem7__cxx114pathD2Ev.exit762
  %i.bku = call noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.bia) ; 0 uses
  %i.bkv = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.97, i32 noundef 171, i64 noundef 1, i64 noundef 72) ; 24 uses
  %i.bkw = load i32, ptr %22, align 4, !tbaa !9   ; 2 uses
  store i32 %i.bkw, ptr %i.bkv, align 8, !tbaa !141
  %i.bkx = load i32, ptr %i.yp, align 4, !tbaa !9 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkv, i64 4 ; 10 uses
  store i32 %i.bkx, ptr %i.bky, align 4, !tbaa !143
  %i.bkz = load i32, ptr %i.yu, align 4, !tbaa !9 ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkv, i64 8 ; 5 uses
  store i32 %i.bkz, ptr %i.bla, align 8, !tbaa !144
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkv, i64 64 ; 8 uses
  %i.blc = mul nsw i32 %i.bkx, %i.bkw
  %i.bld = mul nsw i32 %i.blc, %i.bkz
  %i.ble = sext i32 %i.bld to i64
  %i.blf = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.97, i32 noundef 175, i64 noundef range(i64 -2147483648, 2147483648) %i.ble, i64 noundef 4) ; 9 uses
  store ptr %i.blf, ptr %i.blb, align 8, !tbaa !38
  %i.blg = load i32, ptr %i.bla, align 8, !tbaa !144 ; 2 uses
  %i.blh = icmp sgt i32 %i.blg, 0
  br i1 %i.blh, label %.preheader13.lr.ph.i, label %._crit_edge.split.i

.preheader13.lr.ph.i:                             ; preds = %._crit_edge1216
  %i.bli = load i32, ptr %i.bky, align 4, !tbaa !143 ; 2 uses
  %i.blj = icmp sgt i32 %i.bli, 0
  br i1 %i.blj, label %.preheader13.lr.ph.split.i, label %._crit_edge.split.i

.preheader13.lr.ph.split.i:                       ; preds = %.preheader13.lr.ph.i
  %i.blk = load i32, ptr %i.bkv, align 8, !tbaa !141 ; 3 uses
  %i.bll = icmp sgt i32 %i.blk, 0
  br i1 %i.bll, label %.preheader13.lr.ph.split.split.us.i, label %._crit_edge.split.i

.preheader13.lr.ph.split.split.us.i:              ; preds = %.preheader13.lr.ph.split.i
  %.val.us.us.i = load i32, ptr %i.yp, align 4, !tbaa !9
  %.val27.us.us.i = load i32, ptr %i.yu, align 4, !tbaa !9
  %i.blm = sext i32 %.val.us.us.i to i64          ; 8 uses
  %i.bln = sext i32 %.val27.us.us.i to i64        ; 10 uses
  %wide.trip.count39.i = zext nneg i32 %i.blg to i64
  %wide.trip.count34.i = zext nneg i32 %i.bli to i64
  %wide.trip.count.i765 = zext nneg i32 %i.blk to i64 ; 8 uses
  %i.blo = add nsw i64 %wide.trip.count.i765, -1
  %i.blp = mul nsw i64 %i.blm, %i.bln             ; 2 uses
  %i.blq = shl i64 %i.blp, 2                      ; 2 uses
  %i.blr = mul i64 %i.blp, -4
  %i.bls = shl nsw i64 %i.bln, 2
  %i.blt = shl nuw nsw i64 %wide.trip.count.i765, 2
  %scevgep1986 = getelementptr i8, ptr %i.blf, i64 %i.blt
  %i.blu = shl nsw i64 %i.bln, 2
  %i.blv = add nuw nsw i64 %wide.trip.count.i765, 4611686018427387903
  %i.blw = mul i64 %i.blv, %i.blm
  %i.blx = mul i64 %i.blw, %i.bln
  %min.iters.check1994 = icmp ult i32 %i.blk, 24
  %i.bly = icmp slt i64 %i.blq, 0                 ; 2 uses
  %i.blz = select i1 %i.bly, i64 %i.blr, i64 %i.blq
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.blz, i64 %i.blo) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.bma = sub i64 0, %mul.result
  %n.vec1996 = and i64 %wide.trip.count.i765, 2147483640 ; 4 uses
  %broadcast.splatinsert1999 = insertelement <8 x i64> poison, i64 %i.blm, i64 0
  %broadcast.splat2000 = shufflevector <8 x i64> %broadcast.splatinsert1999, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2001 = insertelement <8 x i64> poison, i64 %i.bln, i64 0
  %broadcast.splat2002 = shufflevector <8 x i64> %broadcast.splatinsert2001, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n2009 = icmp eq i64 %n.vec1996, %wide.trip.count.i765
  %xtraiter2245 = and i64 %wide.trip.count.i765, 3 ; 2 uses
  %lcmp.mod2246.not = icmp eq i64 %xtraiter2245, 0
  br label %.preheader13.us.i

.preheader13.us.i:                                ; preds = %._crit_edge18.split.us.us.i, %.preheader13.lr.ph.split.split.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %._crit_edge18.split.us.us.i ], [ 0, %.preheader13.lr.ph.split.split.us.i ] ; 5 uses
  %.022.us.i = phi i64 [ %indvars.iv.next.i767.lcssa, %._crit_edge18.split.us.us.i ], [ 0, %.preheader13.lr.ph.split.split.us.i ]
  %i.bmb = shl nuw nsw i64 %indvars.iv36.i, 2
  %i.bmc = add i64 %i.blx, %indvars.iv36.i
  %i.bmd = shl i64 %i.bmc, 2
  %i.bme = shl nuw nsw i64 %indvars.iv36.i, 2
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.gd, i64 %indvars.iv36.i ; 6 uses
  %i.bmf = getelementptr i8, ptr %i.gd, i64 %i.bmb
  %i.bmg = getelementptr i8, ptr %i.gd, i64 %i.bmd
  %i.bmh = getelementptr i8, ptr %i.gd, i64 %i.bme
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader13.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %._crit_edge.us.us.i ], [ 0, %.preheader13.us.i ] ; 9 uses
  %.117.us.us.i = phi i64 [ %indvars.iv.next.i767.lcssa, %._crit_edge.us.us.i ], [ %.022.us.i, %.preheader13.us.i ] ; 6 uses
  %i.bmi = mul i64 %i.blu, %indvars.iv31.i        ; 2 uses
  %scevgep1988 = getelementptr i8, ptr %i.bmf, i64 %i.bmi ; 4 uses
  %scevgep1989 = getelementptr i8, ptr %i.bmg, i64 %i.bmi ; 4 uses
  %i.bmj = icmp ult ptr %scevgep1988, %scevgep1989
  %umin = select i1 %i.bmj, ptr %scevgep1988, ptr %scevgep1989
  %i.bmk = icmp ugt ptr %scevgep1988, %scevgep1989
  %umax = select i1 %i.bmk, ptr %scevgep1988, ptr %scevgep1989
  %scevgep1990 = getelementptr i8, ptr %umax, i64 4
  br i1 %min.iters.check1994, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.i
  %i.bml = mul i64 %i.bls, %indvars.iv31.i
  %scevgep1983 = getelementptr i8, ptr %i.bmh, i64 %i.bml ; 4 uses
  %i.bmm = getelementptr i8, ptr %scevgep1983, i64 %mul.result
  %i.bmn = getelementptr i8, ptr %scevgep1983, i64 %i.bma
  %i.bmo = icmp ult ptr %i.bmm, %scevgep1983
  %i.bmp = icmp ugt ptr %i.bmn, %scevgep1983
  %i.bmq = select i1 %i.bly, i1 %i.bmp, i1 %i.bmo
  %i.bmr = or i1 %i.bmq, %mul.overflow
  br i1 %i.bmr, label %scalar.ph.preheader, label %vector.memcheck1984

vector.memcheck1984:                              ; preds = %vector.scevcheck
  %76 = shl i64 %.117.us.us.i, 2                  ; 2 uses
  %scevgep1985 = getelementptr i8, ptr %i.blf, i64 %76
  %scevgep1987 = getelementptr i8, ptr %scevgep1986, i64 %76
  %bound01991 = icmp ult ptr %scevgep1985, %scevgep1990
  %bound11992 = icmp ult ptr %umin, %scevgep1987
  %found.conflict1993 = and i1 %bound01991, %bound11992
  br i1 %found.conflict1993, label %scalar.ph.preheader, label %vector.ph1995

vector.ph1995:                                    ; preds = %vector.memcheck1984
  %i.bms = add i64 %.117.us.us.i, %n.vec1996      ; 2 uses
  %broadcast.splatinsert1997 = insertelement <8 x i64> poison, i64 %indvars.iv31.i, i64 0
  %broadcast.splat1998 = shufflevector <8 x i64> %broadcast.splatinsert1997, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bmt = getelementptr [4 x i8], ptr %i.blf, i64 %.117.us.us.i
  br label %vector.body2003

vector.body2003:                                  ; preds = %vector.body2003, %vector.ph1995
  %index2004 = phi i64 [ 0, %vector.ph1995 ], [ %index.next2006, %vector.body2003 ] ; 2 uses
  %vec.ind2005 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1995 ], [ %vec.ind.next2007, %vector.body2003 ] ; 2 uses
  %i.bmu = mul nsw <8 x i64> %vec.ind2005, %broadcast.splat2000
  %i.bmv = add nsw <8 x i64> %i.bmu, %broadcast.splat1998
  %i.bmw = mul nsw <8 x i64> %i.bmv, %broadcast.splat2002
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.bmw
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !28, !alias.scope !145
  %i.bmx = getelementptr [4 x i8], ptr %i.bmt, i64 %index2004
  store <8 x float> %wide.masked.gather, ptr %i.bmx, align 4, !tbaa !28, !alias.scope !148, !noalias !145
  %index.next2006 = add nuw i64 %index2004, 8     ; 2 uses
  %vec.ind.next2007 = add nuw nsw <8 x i64> %vec.ind2005, splat (i64 8)
  %i.bmy = icmp eq i64 %index.next2006, %n.vec1996
  br i1 %i.bmy, label %middle.block2008, label %vector.body2003, !llvm.loop !150

middle.block2008:                                 ; preds = %vector.body2003
  br i1 %cmp.n2009, label %._crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck1984, %vector.scevcheck, %.preheader.us.us.i, %middle.block2008
  %indvars.iv26.i.ph.a = phi i64 [ 0, %vector.memcheck1984 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.us.i ], [ %n.vec1996, %middle.block2008 ] ; 3 uses
  %indvars.iv.i766.ph = phi i64 [ %.117.us.us.i, %vector.memcheck1984 ], [ %.117.us.us.i, %vector.scevcheck ], [ %.117.us.us.i, %.preheader.us.us.i ], [ %i.bms, %middle.block2008 ] ; 2 uses
  br i1 %lcmp.mod2246.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv26.i.prol.a = phi i64 [ %indvars.iv.next27.i.prol, %scalar.ph.prol ], [ %indvars.iv26.i.ph.a, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i766.prol = phi i64 [ %indvars.iv.next.i767.prol, %scalar.ph.prol ], [ %indvars.iv.i766.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter2247 = phi i64 [ %prol.iter2247.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bmz = mul nsw i64 %indvars.iv26.i.prol.a, %i.blm
  %i.bna = add nsw i64 %i.bmz, %indvars.iv31.i
  %i.bnb = mul nsw i64 %i.bna, %i.bln
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bnb
  %i.bnc = load float, ptr %gep.i.prol, align 4, !tbaa !28
  %indvars.iv.next.i767.prol = add nsw i64 %indvars.iv.i766.prol, 1 ; 3 uses
  %i.bnd = getelementptr inbounds [4 x i8], ptr %i.blf, i64 %indvars.iv.i766.prol
  store float %i.bnc, ptr %i.bnd, align 4, !tbaa !28
  %indvars.iv.next27.i.prol = add nuw nsw i64 %indvars.iv26.i.prol.a, 1 ; 2 uses
  %prol.iter2247.next = add i64 %prol.iter2247, 1 ; 2 uses
  %prol.iter2247.cmp.not = icmp eq i64 %prol.iter2247.next, %xtraiter2245
  br i1 %prol.iter2247.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !151

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.i767.lcssa2141.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.i767.prol, %scalar.ph.prol ]
  %indvars.iv26.i.unr.a = phi i64 [ %indvars.iv26.i.ph.a, %scalar.ph.preheader ], [ %indvars.iv.next27.i.prol, %scalar.ph.prol ]
  %indvars.iv.i766.unr = phi i64 [ %indvars.iv.i766.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i767.prol, %scalar.ph.prol ]
  %i.bne = sub nsw i64 %indvars.iv26.i.ph.a, %wide.trip.count.i765
  %i.bnf = icmp ugt i64 %i.bne, -4
  br i1 %i.bnf, label %._crit_edge.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv26.i.a = phi i64 [ %indvars.iv.next27.i.3, %scalar.ph ], [ %indvars.iv26.i.unr.a, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i766.a = phi i64 [ %indvars.iv.next.i767.3, %scalar.ph ], [ %indvars.iv.i766.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bng = mul nsw i64 %indvars.iv26.i.a, %i.blm
  %i.bnh = add nsw i64 %i.bng, %indvars.iv31.i
  %i.bni = mul nsw i64 %i.bnh, %i.bln
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bni
  %i.bnj = load float, ptr %gep.i, align 4, !tbaa !28
  %i.bnk = getelementptr inbounds [4 x i8], ptr %i.blf, i64 %indvars.iv.i766.a
  store float %i.bnj, ptr %i.bnk, align 4, !tbaa !28
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i.a, 1
  %i.bnl = mul nsw i64 %indvars.iv.next27.i, %i.blm
  %i.bnm = add nsw i64 %i.bnl, %indvars.iv31.i
  %i.bnn = mul nsw i64 %i.bnm, %i.bln
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bnn
  %i.bno = load float, ptr %gep.i.1, align 4, !tbaa !28
  %i.bnp = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.i766.a
  %i.bnq = getelementptr i8, ptr %i.bnp, i64 4
  store float %i.bno, ptr %i.bnq, align 4, !tbaa !28
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i.a, 2
  %i.bnr = mul nsw i64 %indvars.iv.next27.i.1, %i.blm
  %i.bns = add nsw i64 %i.bnr, %indvars.iv31.i
  %i.bnt = mul nsw i64 %i.bns, %i.bln
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bnt
  %i.bnu = load float, ptr %gep.i.2, align 4, !tbaa !28
  %i.bnv = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.i766.a
  %i.bnw = getelementptr i8, ptr %i.bnv, i64 8
  store float %i.bnu, ptr %i.bnw, align 4, !tbaa !28
  %indvars.iv.next27.i.2 = add nuw nsw i64 %indvars.iv26.i.a, 3
  %i.bnx = mul nsw i64 %indvars.iv.next27.i.2, %i.blm
  %i.bny = add nsw i64 %i.bnx, %indvars.iv31.i
  %i.bnz = mul nsw i64 %i.bny, %i.bln
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bnz
  %i.boa = load float, ptr %gep.i.3, align 4, !tbaa !28
  %indvars.iv.next.i767.3 = add nsw i64 %indvars.iv.i766.a, 4 ; 2 uses
  %i.bob = getelementptr [4 x i8], ptr %i.blf, i64 %indvars.iv.i766.a
  %i.boc = getelementptr i8, ptr %i.bob, i64 12
  store float %i.boa, ptr %i.boc, align 4, !tbaa !28
  %indvars.iv.next27.i.3 = add nuw nsw i64 %indvars.iv26.i.a, 4 ; 2 uses
  %exitcond.not.i768.3 = icmp eq i64 %indvars.iv.next27.i.3, %wide.trip.count.i765
  br i1 %exitcond.not.i768.3, label %._crit_edge.us.us.i, label %scalar.ph, !llvm.loop !152

._crit_edge.us.us.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block2008
  %indvars.iv.next.i767.lcssa = phi i64 [ %i.bms, %middle.block2008 ], [ %indvars.iv.next.i767.lcssa2141.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i767.3, %scalar.ph ] ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %._crit_edge18.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !153

._crit_edge18.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %._crit_edge.split.i, label %.preheader13.us.i, !llvm.loop !154

._crit_edge.split.i:                              ; preds = %._crit_edge18.split.us.us.i, %.preheader13.lr.ph.split.i, %.preheader13.lr.ph.i, %._crit_edge1216
  %i.bod = load float, ptr %i.u, align 4, !tbaa !28
  %i.boe = load float, ptr %i.t, align 4, !tbaa !28
  %i.bof = fsub float %i.bod, %i.boe
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bkv, i64 36 ; 2 uses
  store float %i.bof, ptr %i.bog, align 4, !tbaa !28
  %i.boh = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.boi = load float, ptr %i.boh, align 4, !tbaa !28
  %i.boj = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bok = load float, ptr %i.boj, align 4, !tbaa !28
  %i.bol = fsub float %i.boi, %i.bok
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bkv, i64 40
  store float %i.bol, ptr %i.bom, align 8, !tbaa !28
  %i.bon = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.boo = load float, ptr %i.bon, align 4, !tbaa !28
  %i.bop = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.boq = load float, ptr %i.bop, align 4, !tbaa !28
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bkv, i64 44
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bkv, i64 52
  %.scalar = fsub float %i.boo, %i.boq
  %i.bot = insertelement <4 x float> <float poison, float 9.000000e+01, float 9.000000e+01, float 9.000000e+01>, float %.scalar, i64 0
  store <4 x float> %i.bot, ptr %i.bor, align 4, !tbaa !28
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bkv, i64 12 ; 2 uses
  store i32 0, ptr %i.bou, align 4, !tbaa !9
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bkv, i64 16 ; 2 uses
  store i32 0, ptr %i.bov, align 8, !tbaa !9
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bkv, i64 20 ; 3 uses
  store i32 0, ptr %i.bow, align 4, !tbaa !9
  %i.box = load i32, ptr %22, align 4, !tbaa !9
  %i.boy = add nsw i32 %i.box, -1
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bkv, i64 24 ; 2 uses
  store i32 %i.boy, ptr %i.boz, align 8, !tbaa !9
  %i.bpa = load i32, ptr %i.yp, align 4, !tbaa !9
  %i.bpb = add nsw i32 %i.bpa, -1
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bkv, i64 28 ; 2 uses
  store i32 %i.bpb, ptr %i.bpc, align 4, !tbaa !9
  %i.bpd = load i32, ptr %i.yu, align 4, !tbaa !9
  %i.bpe = add nsw i32 %i.bpd, -1
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bkv, i64 32 ; 2 uses
  store i32 %i.bpe, ptr %i.bpf, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.160, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext 2)
  %i.bpg = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull @.str.133)
          to label %bb.dm unwind label %bb.dq     ; 16 uses

bb.dm:                                            ; preds = %._crit_edge.split.i
  %i.bph = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bpi, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bph, ptr noundef nonnull %i.bpi) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i: ; preds = %bb.dn, %bb.dm
  %i.bpj = load ptr, ptr %27, align 8, !tbaa !32  ; 2 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.bpl = icmp eq ptr %i.bpj, %i.bpk
  br i1 %i.bpl, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i
  %i.bpm = load i64, ptr %i.bpk, align 8, !tbaa !35
  %i.bpn = add i64 %i.bpm, 1
  call void @_ZdlPvm(ptr noundef %i.bpj, i64 noundef %i.bpn) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.bpo = call i64 @fwrite(ptr nonnull @.str.178, i64 18, i64 1, ptr %i.bpg) ; 0 uses
  %i.bpp = call i64 @fwrite(ptr nonnull @.str.179, i64 39, i64 1, ptr %i.bpg) ; 0 uses
  %i.bpq = call i64 @fwrite(ptr nonnull @.str.180, i64 27, i64 1, ptr %i.bpg) ; 0 uses
  %i.bpr = load i32, ptr %i.bkv, align 8, !tbaa !141
  %i.bps = load i32, ptr %i.bou, align 4, !tbaa !9
  %i.bpt = load i32, ptr %i.boz, align 8, !tbaa !9
  %i.bpu = load i32, ptr %i.bky, align 4, !tbaa !143
  %i.bpv = load i32, ptr %i.bov, align 8, !tbaa !9
  %i.bpw = load i32, ptr %i.bpc, align 4, !tbaa !9
  %i.bpx = load i32, ptr %i.bla, align 8, !tbaa !144
  %i.bpy = load i32, ptr %i.bow, align 4, !tbaa !9
  %i.bpz = load i32, ptr %i.bpf, align 8, !tbaa !9
  %i.bqa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpg, ptr noundef nonnull @.str.181, i32 noundef %i.bpr, i32 noundef %i.bps, i32 noundef %i.bpt, i32 noundef %i.bpu, i32 noundef %i.bpv, i32 noundef %i.bpw, i32 noundef %i.bpx, i32 noundef %i.bpy, i32 noundef %i.bpz) #18 ; 0 uses
  %i.bqb = load <4 x float>, ptr %i.bog, align 4, !tbaa !28
  %i.bqc = fpext <4 x float> %i.bqb to <4 x double> ; 4 uses
  %i.bqd = load <2 x float>, ptr %i.bos, align 4, !tbaa !28
  %i.bqe = fpext <2 x float> %i.bqd to <2 x double> ; 2 uses
  %i.bqf = extractelement <4 x double> %i.bqc, i64 0
  %i.bqg = extractelement <4 x double> %i.bqc, i64 1
  %i.bqh = extractelement <4 x double> %i.bqc, i64 2
  %i.bqi = extractelement <4 x double> %i.bqc, i64 3
  %i.bqj = extractelement <2 x double> %i.bqe, i64 0
  %i.bqk = extractelement <2 x double> %i.bqe, i64 1
  %i.bql = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpg, ptr noundef nonnull @.str.182, double noundef %i.bqf, double noundef %i.bqg, double noundef %i.bqh, double noundef %i.bqi, double noundef %i.bqj, double noundef %i.bqk) #18 ; 0 uses
  %i.bqm = call i64 @fwrite(ptr nonnull @.str.183, i64 4, i64 1, ptr %i.bpg) ; 0 uses
  %i.bqn = load i32, ptr %i.bla, align 8, !tbaa !144
  %i.bqo = icmp sgt i32 %i.bqn, 0
  br i1 %i.bqo, label %.lr.ph.i.i763, label %_ZL11write_xplorPKcPKfPiS2_S2_.exit

.lr.ph.i.i763:                                    ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i.i
  %i.bqp = load i32, ptr %i.bow, align 4, !tbaa !9
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge.i.i764, %.lr.ph.i.i763
  %.04.i.i = phi i32 [ %i.bqp, %.lr.ph.i.i763 ], [ %i.btm, %._crit_edge.i.i764 ] ; 2 uses
  %.0503.i.i = phi i32 [ 0, %.lr.ph.i.i763 ], [ %i.btl, %._crit_edge.i.i764 ] ; 7 uses
  %i.bqq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpg, ptr noundef nonnull @.str.184, i32 noundef %.04.i.i) #18 ; 0 uses
  %i.bqr = load i32, ptr %i.bkv, align 8, !tbaa !141 ; 2 uses
  %i.bqs = load i32, ptr %i.bky, align 4, !tbaa !143 ; 2 uses
  %i.bqt = mul nsw i32 %i.bqs, %i.bqr
  %i.bqu = icmp sgt i32 %i.bqt, 0
  br i1 %i.bqu, label %.preheader.i.i, label %._crit_edge.i.i764

.preheader.i.i:                                   ; preds = %bb.do, %bb.eb
  %i.bqv = phi i32 [ %i.bti, %bb.eb ], [ %i.bqs, %bb.do ]
  %i.bqw = phi i32 [ %i.bth, %bb.eb ], [ %i.bqr, %bb.do ]
  %.0492.i.i = phi i32 [ %i.btg, %bb.eb ], [ 0, %bb.do ] ; 8 uses
  %i.bqx = mul i32 %i.bqw, %i.bqv                 ; 3 uses
  %i.bqy = icmp slt i32 %.0492.i.i, %i.bqx
  br i1 %i.bqy, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.preheader.i.i
  %i.bqz = load ptr, ptr %i.blb, align 8, !tbaa !155
  %i.bra = mul i32 %i.bqx, %.0503.i.i
  %i.brb = add i32 %i.bra, %.0492.i.i
  %i.brc = sext i32 %i.brb to i64
  %i.brd = getelementptr inbounds [4 x i8], ptr %i.bqz, i64 %i.brc
  %i.bre = load float, ptr %i.brd, align 4, !tbaa !28
  %i.brf = fpext float %i.bre to double
  %i.brg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpg, ptr noundef nonnull @.str.185, double noundef %i.brf) #18 ; 0 uses
  %.pre.i.i = load i32, ptr %i.bkv, align 8, !tbaa !141
  %.pre6.i.i = load i32, ptr %i.bky, align 4, !tbaa !143
  %.pre15.i.i = mul i32 %.pre6.i.i, %.pre.i.i
  br label %bb.dr

bb.dq:                                            ; preds = %._crit_edge.split.i
  %i.brh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %common.resume

bb.dr:                                            ; preds = %bb.dp, %.preheader.i.i
  %.pre-phi.i.i = phi i32 [ %i.bqx, %.preheader.i.i ], [ %.pre15.i.i, %bb.dp ] ; 3 uses
  %i.bri = or disjoint i32 %.0492.i.i, 1          ; 2 uses
  %i.brj = icmp slt i32 %i.bri, %.pre-phi.i.i
  br i1 %i.brj, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.brk = load ptr, ptr %i.blb, align 8, !tbaa !155
  %i.brl = mul i32 %.pre-phi.i.i, %.0503.i.i
  %i.brm = add i32 %i.brl, %i.bri
  %i.brn = sext i32 %i.brm to i64
  %i.bro = getelementptr inbounds [4 x i8], ptr %i.brk, i64 %i.brn
  %i.brp = load float, ptr %i.bro, align 4, !tbaa !28
  %i.brq = fpext float %i.brp to double
  %i.brr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpg, ptr noundef nonnull @.str.185, double noundef %i.brq) #18 ; 0 uses
  %.pre7.i.i = load i32, ptr %i.bkv, align 8, !tbaa !141
  %.pre8.i.i = load i32, ptr %i.bky, align 4, !tbaa !143
  %.pre16.i.i = mul i32 %.pre8.i.i, %.pre7.i.i
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pre-phi17.i.i = phi i32 [ %.pre16.i.i, %bb.ds ], [ %.pre-phi.i.i, %bb.dr ] ; 3 uses
  %i.brs = add nuw i32 %.0492.i.i, 2              ; 2 uses
  %i.brt = icmp slt i32 %i.brs, %.pre-phi17.i.i
  br i1 %i.brt, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.bru = load ptr, ptr %i.blb, align 8, !tbaa !155
  %i.brv = mul i32 %.pre-phi17.i.i, %.0503.i.i
  %i.brw = add i32 %i.brv, %i.brs
  %i.brx = sext i32 %i.brw to i64
  %i.bry = getelementptr inbounds [4 x i8], ptr %i.bru, i64 %i.brx
  %i.brz = load float, ptr %i.bry, align 4, !tbaa !28
  %i.bsa = fpext float %i.brz to double
  %i.bsb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bpg, ptr noundef nonnull @.str.185, double noundef %i.bsa) #18 ; 0 uses
  %.pre9.i.i = load i32, ptr %i.bkv, align 8, !tbaa !141
  %.pre10.i.i = load i32, ptr %i.bky, align 4, !tbaa !143
  %.pre18.i.i = mul i32 %.pre10.i.i, %.pre9.i.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pre-phi19.i.i = phi i32 [ %.pre18.i.i, %bb.du ], [ %.pre-phi17.i.i, %bb.dt ] ; 3 uses
  %i.bsc = add nuw i32 %.0492.i.i, 3              ; 2 uses
  %i.bsd = icmp slt i32 %i.bsc, %.pre-phi19.i.i
  br i1 %i.bsd, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.bse = load ptr, ptr %i.blb, align 8, !tbaa !155
  %i.bsf = mul i32 %.pre-phi19.i.i, %.0503.i.i
  %i.bsg = add i32 %i.bsf, %i.bsc
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.bsh
  %i.bsj = load float, ptr %i.bsi, align 4, !tbaa !28
end_hunk_0
