Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_sham?download=true
inline.NumInlined: 399
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL7do_shamPKcS0_S0_S0_S0_S0_S0_S0_iiPPfbiS2_fffPKfS4_ifPKiPibS1_bS1_:bb.a
  %i.bgy = load i64, ptr %i.bct, align 8, !tbaa !24
  %i.bgz = add i64 %i.bgy, 1
  call void @_ZdlPvm(ptr noundef %i.bgw, i64 noundef %i.bgz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757, %bb.dd
  %.pn537.pn.pn.pn = phi { ptr, i32 } [ %i.bgi, %bb.dd ], [ %i.bgj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757 ], [ %i.bgj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  br label %bb.ew

bb.df:                                            ; preds = %_ZL11pick_minimaPKcPiiiPf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef zeroext 2)
  %i.bha = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull @.str.133)
          to label %bb.dg unwind label %bb.dk     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.bhb = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 2 uses
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i760 = icmp eq ptr %i.bhc, null
  br i1 %.not.i.i.i760, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i761, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bhb, ptr noundef nonnull %i.bhc) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i761

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i761: ; preds = %bb.dh, %bb.dg
  %i.bhd = load ptr, ptr %57, align 8, !tbaa !23  ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.bhf = icmp eq ptr %i.bhd, %i.bhe
  br i1 %i.bhf, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit764, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i762

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i762: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i761
  %i.bhg = load i64, ptr %i.bhe, align 8, !tbaa !24
  %i.bhh = add i64 %i.bhg, 1
  call void @_ZdlPvm(ptr noundef %i.bhd, i64 noundef %i.bhh) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit764

_ZNSt10filesystem7__cxx114pathD2Ev.exit764:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i761, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i762
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  %i.bhi = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  %i.bhj = icmp sgt i32 %i.bhi, 0
  br i1 %i.bhj, label %.lr.ph1218.preheader, label %._crit_edge1219

.lr.ph1218.preheader:                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit764
  %.pre1379 = load i32, ptr %i.yp, align 4, !tbaa !10 ; 3 uses
  br label %.lr.ph1218

.lr.ph1218:                                       ; preds = %.lr.ph1218.preheader, %._crit_edge1215
  %.val554.pre13801391 = phi i32 [ %.val554.pre13801386, %._crit_edge1215 ], [ %.pre1379, %.lr.ph1218.preheader ] ; 3 uses
  %i.bhk = phi i32 [ %i.bjp, %._crit_edge1215 ], [ %i.bhi, %.lr.ph1218.preheader ] ; 3 uses
  %i.bhl = phi i32 [ %i.bjq, %._crit_edge1215 ], [ %.pre1379, %.lr.ph1218.preheader ] ; 3 uses
  %i.bhm = phi i32 [ %i.bjr, %._crit_edge1215 ], [ %.pre1379, %.lr.ph1218.preheader ] ; 4 uses
  %.114721216 = phi i32 [ %i.bjs, %._crit_edge1215 ], [ 0, %.lr.ph1218.preheader ] ; 3 uses
  %i.bhn = icmp sgt i32 %i.bhm, 0
  br i1 %i.bhn, label %.lr.ph1214, label %._crit_edge1215

.lr.ph1214:                                       ; preds = %.lr.ph1218
  %i.bho = sub nsw i32 1, %i.bhk
  %i.bhp = sitofp i32 %i.bho to double
  %i.bhq = mul nuw nsw i32 %.114721216, 3
  %i.bhr = uitofp nneg i32 %i.bhq to double
  %i.bhs = call double @llvm.fmuladd.f64(double %i.bhp, double 1.500000e+00, double %i.bhr)
  %i.bht = fptrunc double %i.bhs to float
  %i.bhu = fpext float %i.bht to double
  %i.bhv = load i32, ptr %i.yu, align 4, !tbaa !10 ; 3 uses
  %i.bhw = icmp sgt i32 %i.bhv, 0
  br i1 %i.bhw, label %.lr.ph1214.split, label %._crit_edge1215

.lr.ph1214.split:                                 ; preds = %.lr.ph1214, %._crit_edge1211
  %.val554.pre1380 = phi i32 [ %.val554.pre13801387, %._crit_edge1211 ], [ %.val554.pre13801391, %.lr.ph1214 ] ; 3 uses
  %i.bhx = phi i32 [ %i.bjk, %._crit_edge1211 ], [ %i.bhl, %.lr.ph1214 ]
  %i.bhy = phi i32 [ %i.bjl, %._crit_edge1211 ], [ %i.bhv, %.lr.ph1214 ] ; 2 uses
  %i.bhz = phi i32 [ %i.bjm, %._crit_edge1211 ], [ %i.bhv, %.lr.ph1214 ] ; 3 uses
  %i.bia = phi i32 [ %i.bjk, %._crit_edge1211 ], [ %i.bhm, %.lr.ph1214 ]
  %.64571212 = phi i32 [ %i.bjn, %._crit_edge1211 ], [ 0, %.lr.ph1214 ] ; 3 uses
  %i.bib = icmp sgt i32 %i.bhz, 0
  br i1 %i.bib, label %.lr.ph1210, label %._crit_edge1211

.lr.ph1210:                                       ; preds = %.lr.ph1214.split
  %i.bic = sub nsw i32 1, %i.bia
  %i.bid = sitofp i32 %i.bic to double
  %i.bie = mul nuw nsw i32 %.64571212, 3
  %i.bif = uitofp nneg i32 %i.bie to double
  %i.big = call double @llvm.fmuladd.f64(double %i.bid, double 1.500000e+00, double %i.bif)
  %i.bih = fptrunc double %i.big to float
  %i.bii = fpext float %i.bih to double
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph1210, %bb.dl
  %.val554.pre13801389 = phi i32 [ %.val554.pre1380, %.lr.ph1210 ], [ %.val554.pre13801388, %bb.dl ]
  %i.bij = phi i32 [ %i.bhy, %.lr.ph1210 ], [ %i.bjh, %bb.dl ]
  %.val554 = phi i32 [ %.val554.pre1380, %.lr.ph1210 ], [ %.val5541381, %bb.dl ] ; 2 uses
  %i.bik = phi i32 [ %i.bhz, %.lr.ph1210 ], [ %i.bjh, %bb.dl ] ; 2 uses
  %.04501208 = phi i32 [ 0, %.lr.ph1210 ], [ %i.bji, %bb.dl ] ; 3 uses
  %i.bil = mul nsw i32 %.val554, %.114721216
  %i.bim = add nsw i32 %i.bil, %.64571212
  %i.bin = mul nsw i32 %i.bim, %i.bik
  %i.bio = add nsw i32 %i.bin, %.04501208         ; 2 uses
  %i.bip = sext i32 %i.bio to i64                 ; 2 uses
  %i.biq = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.bip
  %i.bir = load double, ptr %i.biq, align 8, !tbaa !151
  %i.bis = fcmp ogt double %i.bir, 0.000000e+00
  br i1 %i.bis, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.bit = sub nsw i32 1, %i.bik
  %i.biu = sitofp i32 %i.bit to double
  %i.biv = mul nuw nsw i32 %.04501208, 3
  %i.biw = uitofp nneg i32 %i.biv to double
  %i.bix = call double @llvm.fmuladd.f64(double %i.biu, double 1.500000e+00, double %i.biw)
  %i.biy = fptrunc double %i.bix to float
  %i.biz = add nsw i32 %i.bio, 1
  %i.bja = srem i32 %i.biz, 10000                 ; 2 uses
  %i.bjb = fpext float %i.biy to double
  %i.bjc = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.bip
  %i.bjd = load float, ptr %i.bjc, align 4, !tbaa !18
  %i.bje = fpext float %i.bjd to double
  %i.bjf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bha, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef %i.bja, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.159, i32 noundef %i.bja, double noundef %i.bhu, double noundef %i.bii, double noundef %i.bjb, double noundef 1.000000e+00, double noundef %i.bje) #18 ; 0 uses
  %.val554.pre = load i32, ptr %i.yp, align 4, !tbaa !10 ; 2 uses
  %.pre1383 = load i32, ptr %i.yu, align 4, !tbaa !10
  br label %bb.dl

bb.dk:                                            ; preds = %bb.df
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %57) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.ew

bb.dl:                                            ; preds = %bb.di, %bb.dj
  %.val554.pre13801388 = phi i32 [ %.val554.pre13801389, %bb.di ], [ %.val554.pre, %bb.dj ] ; 2 uses
  %i.bjh = phi i32 [ %i.bij, %bb.di ], [ %.pre1383, %bb.dj ] ; 5 uses
  %.val5541381 = phi i32 [ %.val554, %bb.di ], [ %.val554.pre, %bb.dj ] ; 2 uses
  %i.bji = add nuw nsw i32 %.04501208, 1          ; 2 uses
  %i.bjj = icmp slt i32 %i.bji, %i.bjh
  br i1 %i.bjj, label %bb.di, label %._crit_edge1211, !llvm.loop !122

._crit_edge1211:                                  ; preds = %bb.dl, %.lr.ph1214.split
  %.val554.pre13801387 = phi i32 [ %.val554.pre1380, %.lr.ph1214.split ], [ %.val554.pre13801388, %bb.dl ] ; 2 uses
  %i.bjk = phi i32 [ %i.bhx, %.lr.ph1214.split ], [ %.val5541381, %bb.dl ] ; 5 uses
  %i.bjl = phi i32 [ %i.bhy, %.lr.ph1214.split ], [ %i.bjh, %bb.dl ]
  %i.bjm = phi i32 [ %i.bhz, %.lr.ph1214.split ], [ %i.bjh, %bb.dl ]
  %i.bjn = add nuw nsw i32 %.64571212, 1          ; 2 uses
  %i.bjo = icmp slt i32 %i.bjn, %i.bjk
  br i1 %i.bjo, label %.lr.ph1214.split, label %._crit_edge1215.loopexit, !llvm.loop !123

._crit_edge1215.loopexit:                         ; preds = %._crit_edge1211
  %.pre1384 = load i32, ptr %22, align 4, !tbaa !10
  br label %._crit_edge1215

._crit_edge1215:                                  ; preds = %.lr.ph1214, %._crit_edge1215.loopexit, %.lr.ph1218
  %.val554.pre13801386 = phi i32 [ %.val554.pre13801391, %.lr.ph1218 ], [ %.val554.pre13801387, %._crit_edge1215.loopexit ], [ %.val554.pre13801391, %.lr.ph1214 ]
  %i.bjp = phi i32 [ %i.bhk, %.lr.ph1218 ], [ %.pre1384, %._crit_edge1215.loopexit ], [ %i.bhk, %.lr.ph1214 ] ; 2 uses
  %i.bjq = phi i32 [ %i.bhl, %.lr.ph1218 ], [ %i.bjk, %._crit_edge1215.loopexit ], [ %i.bhl, %.lr.ph1214 ]
  %i.bjr = phi i32 [ %i.bhm, %.lr.ph1218 ], [ %i.bjk, %._crit_edge1215.loopexit ], [ %i.bhm, %.lr.ph1214 ]
  %i.bjs = add nuw nsw i32 %.114721216, 1         ; 2 uses
  %i.bjt = icmp slt i32 %i.bjs, %i.bjp
  br i1 %i.bjt, label %.lr.ph1218, label %._crit_edge1219, !llvm.loop !124

._crit_edge1219:                                  ; preds = %._crit_edge1215, %_ZNSt10filesystem7__cxx114pathD2Ev.exit764
  %i.bju = call noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.bha) ; 0 uses
  %i.bjv = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.97, i32 noundef 171, i64 noundef 1, i64 noundef 72) ; 24 uses
  %i.bjw = load i32, ptr %22, align 4, !tbaa !10  ; 2 uses
  store i32 %i.bjw, ptr %i.bjv, align 8, !tbaa !166
  %i.bjx = load i32, ptr %i.yp, align 4, !tbaa !10 ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjv, i64 4 ; 10 uses
  store i32 %i.bjx, ptr %i.bjy, align 4, !tbaa !167
  %i.bjz = load i32, ptr %i.yu, align 4, !tbaa !10 ; 2 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjv, i64 8 ; 5 uses
  store i32 %i.bjz, ptr %i.bka, align 8, !tbaa !168
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bjv, i64 64 ; 8 uses
  %i.bkc = mul nsw i32 %i.bjx, %i.bjw
  %i.bkd = mul nsw i32 %i.bkc, %i.bjz
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.97, i32 noundef 175, i64 noundef range(i64 -2147483648, 2147483648) %i.bke, i64 noundef 4) ; 9 uses
  store ptr %i.bkf, ptr %i.bkb, align 8, !tbaa !26
  %i.bkg = load i32, ptr %i.bka, align 8, !tbaa !168 ; 2 uses
  %i.bkh = icmp sgt i32 %i.bkg, 0
  br i1 %i.bkh, label %.preheader13.lr.ph.i, label %._crit_edge.split.i

.preheader13.lr.ph.i:                             ; preds = %._crit_edge1219
  %i.bki = load i32, ptr %i.bjy, align 4, !tbaa !167 ; 2 uses
  %i.bkj = icmp sgt i32 %i.bki, 0
  br i1 %i.bkj, label %.preheader13.lr.ph.split.i, label %._crit_edge.split.i

.preheader13.lr.ph.split.i:                       ; preds = %.preheader13.lr.ph.i
  %i.bkk = load i32, ptr %i.bjv, align 8, !tbaa !166 ; 3 uses
  %i.bkl = icmp sgt i32 %i.bkk, 0
  br i1 %i.bkl, label %.preheader13.lr.ph.split.split.us.i, label %._crit_edge.split.i

.preheader13.lr.ph.split.split.us.i:              ; preds = %.preheader13.lr.ph.split.i
  %.val.us.us.i = load i32, ptr %i.yp, align 4, !tbaa !10
  %.val27.us.us.i = load i32, ptr %i.yu, align 4, !tbaa !10
  %i.bkm = sext i32 %.val.us.us.i to i64          ; 8 uses
  %i.bkn = sext i32 %.val27.us.us.i to i64        ; 10 uses
  %wide.trip.count39.i = zext nneg i32 %i.bkg to i64
  %wide.trip.count34.i = zext nneg i32 %i.bki to i64
  %wide.trip.count.i767 = zext nneg i32 %i.bkk to i64 ; 8 uses
  %i.bko = add nsw i64 %wide.trip.count.i767, -1
  %i.bkp = mul nsw i64 %i.bkn, %i.bkm             ; 2 uses
  %i.bkq = shl i64 %i.bkp, 2                      ; 2 uses
  %i.bkr = mul i64 %i.bkp, -4
  %i.bks = shl nsw i64 %i.bkn, 2
  %i.bkt = shl nuw nsw i64 %wide.trip.count.i767, 2
  %scevgep1980 = getelementptr i8, ptr %i.bkf, i64 %i.bkt
  %i.bku = shl nsw i64 %i.bkn, 2
  %i.bkv = add nuw nsw i64 %wide.trip.count.i767, 4611686018427387903
  %i.bkw = mul i64 %i.bkv, %i.bkn
  %i.bkx = mul i64 %i.bkw, %i.bkm
  %min.iters.check1989 = icmp ult i32 %i.bkk, 24
  %i.bky = icmp slt i64 %i.bkq, 0                 ; 2 uses
  %i.bkz = select i1 %i.bky, i64 %i.bkr, i64 %i.bkq
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bkz, i64 %i.bko) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.bla = sub i64 0, %mul.result
  %n.vec1991 = and i64 %wide.trip.count.i767, 2147483640 ; 4 uses
  %broadcast.splatinsert1994 = insertelement <8 x i64> poison, i64 %i.bkm, i64 0
  %broadcast.splat1995 = shufflevector <8 x i64> %broadcast.splatinsert1994, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1996 = insertelement <8 x i64> poison, i64 %i.bkn, i64 0
  %broadcast.splat1997 = shufflevector <8 x i64> %broadcast.splatinsert1996, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n2004 = icmp eq i64 %n.vec1991, %wide.trip.count.i767
  %xtraiter2240 = and i64 %wide.trip.count.i767, 3 ; 2 uses
  %lcmp.mod2241.not = icmp eq i64 %xtraiter2240, 0
  br label %.preheader13.us.i

.preheader13.us.i:                                ; preds = %._crit_edge18.split.us.us.i, %.preheader13.lr.ph.split.split.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %._crit_edge18.split.us.us.i ], [ 0, %.preheader13.lr.ph.split.split.us.i ] ; 5 uses
  %.022.us.i = phi i64 [ %indvars.iv.next.i769.lcssa, %._crit_edge18.split.us.us.i ], [ 0, %.preheader13.lr.ph.split.split.us.i ]
  %i.blb = shl nuw nsw i64 %indvars.iv36.i, 2
  %i.blc = add i64 %i.bkx, %indvars.iv36.i
  %i.bld = shl i64 %i.blc, 2
  %i.ble = shl nuw nsw i64 %indvars.iv36.i, 2
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.gd, i64 %indvars.iv36.i ; 6 uses
  %i.blf = getelementptr i8, ptr %i.gd, i64 %i.blb
  %i.blg = getelementptr i8, ptr %i.gd, i64 %i.bld
  %i.blh = getelementptr i8, ptr %i.gd, i64 %i.ble
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader13.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %._crit_edge.us.us.i ], [ 0, %.preheader13.us.i ] ; 9 uses
  %.117.us.us.i = phi i64 [ %indvars.iv.next.i769.lcssa, %._crit_edge.us.us.i ], [ %.022.us.i, %.preheader13.us.i ] ; 6 uses
  %i.bli = mul i64 %i.bku, %indvars.iv31.i        ; 2 uses
  %scevgep1982 = getelementptr i8, ptr %i.blf, i64 %i.bli ; 4 uses
  %scevgep1983 = getelementptr i8, ptr %i.blg, i64 %i.bli ; 4 uses
  %i.blj = icmp ult ptr %scevgep1982, %scevgep1983
  %umin = select i1 %i.blj, ptr %scevgep1982, ptr %scevgep1983
  %i.blk = icmp ugt ptr %scevgep1982, %scevgep1983
  %umax = select i1 %i.blk, ptr %scevgep1982, ptr %scevgep1983
  %scevgep1984 = getelementptr i8, ptr %umax, i64 4
  br i1 %min.iters.check1989, label %scalar.ph1988.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.i
  %i.bll = mul i64 %i.bks, %indvars.iv31.i
  %scevgep1977 = getelementptr i8, ptr %i.blh, i64 %i.bll ; 4 uses
  %i.blm = getelementptr i8, ptr %scevgep1977, i64 %mul.result
  %i.bln = getelementptr i8, ptr %scevgep1977, i64 %i.bla
  %i.blo = icmp ult ptr %i.blm, %scevgep1977
  %i.blp = icmp ugt ptr %i.bln, %scevgep1977
  %i.blq = select i1 %i.bky, i1 %i.blp, i1 %i.blo
  %i.blr = or i1 %i.blq, %mul.overflow
  br i1 %i.blr, label %scalar.ph1988.preheader, label %vector.memcheck1978

vector.memcheck1978:                              ; preds = %vector.scevcheck
  %i.bls = shl i64 %.117.us.us.i, 2               ; 2 uses
  %scevgep1979 = getelementptr i8, ptr %i.bkf, i64 %i.bls
  %scevgep1981 = getelementptr i8, ptr %scevgep1980, i64 %i.bls
  %bound01985 = icmp ult ptr %scevgep1979, %scevgep1984
  %bound11986 = icmp ult ptr %umin, %scevgep1981
  %found.conflict1987 = and i1 %bound01985, %bound11986
  br i1 %found.conflict1987, label %scalar.ph1988.preheader, label %vector.ph1990

vector.ph1990:                                    ; preds = %vector.memcheck1978
  %i.blt = add i64 %.117.us.us.i, %n.vec1991      ; 2 uses
  %broadcast.splatinsert1992 = insertelement <8 x i64> poison, i64 %indvars.iv31.i, i64 0
  %broadcast.splat1993 = shufflevector <8 x i64> %broadcast.splatinsert1992, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.blu = getelementptr [4 x i8], ptr %i.bkf, i64 %.117.us.us.i
  br label %vector.body1998

vector.body1998:                                  ; preds = %vector.body1998, %vector.ph1990
  %index1999 = phi i64 [ 0, %vector.ph1990 ], [ %index.next2001, %vector.body1998 ] ; 2 uses
  %vec.ind2000 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1990 ], [ %vec.ind.next2002, %vector.body1998 ] ; 2 uses
  %i.blv = mul nsw <8 x i64> %vec.ind2000, %broadcast.splat1995
  %i.blw = add nsw <8 x i64> %i.blv, %broadcast.splat1993
  %i.blx = mul nsw <8 x i64> %i.blw, %broadcast.splat1997
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.blx
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !169
  %i.bly = getelementptr [4 x i8], ptr %i.blu, i64 %index1999
  store <8 x float> %wide.masked.gather, ptr %i.bly, align 4, !tbaa !18, !alias.scope !170, !noalias !169
  %index.next2001 = add nuw i64 %index1999, 8     ; 2 uses
  %vec.ind.next2002 = add nuw nsw <8 x i64> %vec.ind2000, splat (i64 8)
  %i.blz = icmp eq i64 %index.next2001, %n.vec1991
  br i1 %i.blz, label %middle.block2003, label %vector.body1998, !llvm.loop !128

middle.block2003:                                 ; preds = %vector.body1998
  br i1 %cmp.n2004, label %._crit_edge.us.us.i, label %scalar.ph1988.preheader

scalar.ph1988.preheader:                          ; preds = %vector.memcheck1978, %vector.scevcheck, %.preheader.us.us.i, %middle.block2003
  %indvars.iv26.i.ph = phi i64 [ 0, %vector.memcheck1978 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.us.i ], [ %n.vec1991, %middle.block2003 ] ; 3 uses
  %indvars.iv.i768.ph = phi i64 [ %.117.us.us.i, %vector.memcheck1978 ], [ %.117.us.us.i, %vector.scevcheck ], [ %.117.us.us.i, %.preheader.us.us.i ], [ %i.blt, %middle.block2003 ] ; 2 uses
  br i1 %lcmp.mod2241.not, label %scalar.ph1988.prol.loopexit, label %scalar.ph1988.prol

scalar.ph1988.prol:                               ; preds = %scalar.ph1988.preheader, %scalar.ph1988.prol
  %indvars.iv26.i.prol = phi i64 [ %indvars.iv.next27.i.prol, %scalar.ph1988.prol ], [ %indvars.iv26.i.ph, %scalar.ph1988.preheader ] ; 2 uses
  %indvars.iv.i768.prol = phi i64 [ %indvars.iv.next.i769.prol, %scalar.ph1988.prol ], [ %indvars.iv.i768.ph, %scalar.ph1988.preheader ] ; 2 uses
  %prol.iter2242 = phi i64 [ %prol.iter2242.next, %scalar.ph1988.prol ], [ 0, %scalar.ph1988.preheader ]
  %i.bma = mul nsw i64 %indvars.iv26.i.prol, %i.bkm
  %i.bmb = add nsw i64 %i.bma, %indvars.iv31.i
  %i.bmc = mul nsw i64 %i.bmb, %i.bkn
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bmc
  %i.bmd = load float, ptr %gep.i.prol, align 4, !tbaa !18
  %indvars.iv.next.i769.prol = add nsw i64 %indvars.iv.i768.prol, 1 ; 3 uses
  %i.bme = getelementptr inbounds [4 x i8], ptr %i.bkf, i64 %indvars.iv.i768.prol
  store float %i.bmd, ptr %i.bme, align 4, !tbaa !18
  %indvars.iv.next27.i.prol = add nuw nsw i64 %indvars.iv26.i.prol, 1 ; 2 uses
  %prol.iter2242.next = add i64 %prol.iter2242, 1 ; 2 uses
  %prol.iter2242.cmp.not = icmp eq i64 %prol.iter2242.next, %xtraiter2240
  br i1 %prol.iter2242.cmp.not, label %scalar.ph1988.prol.loopexit, label %scalar.ph1988.prol, !llvm.loop !129

scalar.ph1988.prol.loopexit:                      ; preds = %scalar.ph1988.prol, %scalar.ph1988.preheader
  %indvars.iv.next.i769.lcssa2136.unr = phi i64 [ poison, %scalar.ph1988.preheader ], [ %indvars.iv.next.i769.prol, %scalar.ph1988.prol ]
  %indvars.iv26.i.unr = phi i64 [ %indvars.iv26.i.ph, %scalar.ph1988.preheader ], [ %indvars.iv.next27.i.prol, %scalar.ph1988.prol ]
  %indvars.iv.i768.unr = phi i64 [ %indvars.iv.i768.ph, %scalar.ph1988.preheader ], [ %indvars.iv.next.i769.prol, %scalar.ph1988.prol ]
  %i.bmf = sub nsw i64 %indvars.iv26.i.ph, %wide.trip.count.i767
  %i.bmg = icmp ugt i64 %i.bmf, -4
  br i1 %i.bmg, label %._crit_edge.us.us.i, label %scalar.ph1988

scalar.ph1988:                                    ; preds = %scalar.ph1988.prol.loopexit, %scalar.ph1988
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.3, %scalar.ph1988 ], [ %indvars.iv26.i.unr, %scalar.ph1988.prol.loopexit ] ; 5 uses
  %indvars.iv.i768 = phi i64 [ %indvars.iv.next.i769.3, %scalar.ph1988 ], [ %indvars.iv.i768.unr, %scalar.ph1988.prol.loopexit ] ; 5 uses
  %i.bmh = mul nsw i64 %indvars.iv26.i, %i.bkm
  %i.bmi = add nsw i64 %i.bmh, %indvars.iv31.i
  %i.bmj = mul nsw i64 %i.bmi, %i.bkn
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bmj
  %i.bmk = load float, ptr %gep.i, align 4, !tbaa !18
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bkf, i64 %indvars.iv.i768
  store float %i.bmk, ptr %i.bml, align 4, !tbaa !18
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %i.bmm = mul nsw i64 %indvars.iv.next27.i, %i.bkm
  %i.bmn = add nsw i64 %i.bmm, %indvars.iv31.i
  %i.bmo = mul nsw i64 %i.bmn, %i.bkn
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bmo
  %i.bmp = load float, ptr %gep.i.1, align 4, !tbaa !18
  %i.bmq = getelementptr [4 x i8], ptr %i.bkf, i64 %indvars.iv.i768
  %i.bmr = getelementptr i8, ptr %i.bmq, i64 4
  store float %i.bmp, ptr %i.bmr, align 4, !tbaa !18
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2
  %i.bms = mul nsw i64 %indvars.iv.next27.i.1, %i.bkm
  %i.bmt = add nsw i64 %i.bms, %indvars.iv31.i
  %i.bmu = mul nsw i64 %i.bmt, %i.bkn
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bmu
  %i.bmv = load float, ptr %gep.i.2, align 4, !tbaa !18
  %i.bmw = getelementptr [4 x i8], ptr %i.bkf, i64 %indvars.iv.i768
  %i.bmx = getelementptr i8, ptr %i.bmw, i64 8
  store float %i.bmv, ptr %i.bmx, align 4, !tbaa !18
  %indvars.iv.next27.i.2 = add nuw nsw i64 %indvars.iv26.i, 3
  %i.bmy = mul nsw i64 %indvars.iv.next27.i.2, %i.bkm
  %i.bmz = add nsw i64 %i.bmy, %indvars.iv31.i
  %i.bna = mul nsw i64 %i.bmz, %i.bkn
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bna
  %i.bnb = load float, ptr %gep.i.3, align 4, !tbaa !18
  %indvars.iv.next.i769.3 = add nsw i64 %indvars.iv.i768, 4 ; 2 uses
  %i.bnc = getelementptr [4 x i8], ptr %i.bkf, i64 %indvars.iv.i768
  %i.bnd = getelementptr i8, ptr %i.bnc, i64 12
  store float %i.bnb, ptr %i.bnd, align 4, !tbaa !18
  %indvars.iv.next27.i.3 = add nuw nsw i64 %indvars.iv26.i, 4 ; 2 uses
  %exitcond.not.i770.3 = icmp eq i64 %indvars.iv.next27.i.3, %wide.trip.count.i767
  br i1 %exitcond.not.i770.3, label %._crit_edge.us.us.i, label %scalar.ph1988, !llvm.loop !130

._crit_edge.us.us.i:                              ; preds = %scalar.ph1988.prol.loopexit, %scalar.ph1988, %middle.block2003
  %indvars.iv.next.i769.lcssa = phi i64 [ %i.blt, %middle.block2003 ], [ %indvars.iv.next.i769.lcssa2136.unr, %scalar.ph1988.prol.loopexit ], [ %indvars.iv.next.i769.3, %scalar.ph1988 ] ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %._crit_edge18.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !131

._crit_edge18.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %._crit_edge.split.i, label %.preheader13.us.i, !llvm.loop !132

._crit_edge.split.i:                              ; preds = %._crit_edge18.split.us.us.i, %.preheader13.lr.ph.split.i, %.preheader13.lr.ph.i, %._crit_edge1219
  %i.bne = load float, ptr %i.u, align 4, !tbaa !18
  %i.bnf = load float, ptr %i.t, align 4, !tbaa !18
  %i.bng = fsub float %i.bne, %i.bnf
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bjv, i64 36 ; 2 uses
  store float %i.bng, ptr %i.bnh, align 4, !tbaa !18
  %i.bni = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bnj = load float, ptr %i.bni, align 4, !tbaa !18
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bnl = load float, ptr %i.bnk, align 4, !tbaa !18
  %i.bnm = fsub float %i.bnj, %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bjv, i64 40
  store float %i.bnm, ptr %i.bnn, align 8, !tbaa !18
  %i.bno = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bnp = load float, ptr %i.bno, align 4, !tbaa !18
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bnr = load float, ptr %i.bnq, align 4, !tbaa !18
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bjv, i64 44
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bjv, i64 52
  %.scalar = fsub float %i.bnp, %i.bnr
  %i.bnu = insertelement <4 x float> <float poison, float 9.000000e+01, float 9.000000e+01, float 9.000000e+01>, float %.scalar, i64 0
  store <4 x float> %i.bnu, ptr %i.bns, align 4, !tbaa !18
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bjv, i64 12 ; 2 uses
  store i32 0, ptr %i.bnv, align 4, !tbaa !10
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 16 ; 2 uses
  store i32 0, ptr %i.bnw, align 8, !tbaa !10
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bjv, i64 20 ; 3 uses
  store i32 0, ptr %i.bnx, align 4, !tbaa !10
  %i.bny = load i32, ptr %22, align 4, !tbaa !10
end_hunk_0
