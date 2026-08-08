inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish12_GLOBAL__N_110set_symlenEPNS0_9PairsDataEtRSt6vectorIbSaIbEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !497
  %i.k = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %i.a ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 1
  %.val = load i8, ptr %i.l, align 1, !tbaa !156  ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 2
  %.val25 = load i8, ptr %i.m, align 1, !tbaa !156
  %i.n = zext i8 %.val25 to i16                   ; 2 uses
  %i.o = shl nuw nsw i16 %i.n, 4
  %i.p = lshr i8 %.val, 4
  %i.q = zext nneg i8 %i.p to i16
  %i.r = or disjoint i16 %i.o, %i.q               ; 3 uses
  %i.s = icmp eq i16 %i.r, 4095
  br i1 %i.s, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val26 = load i8, ptr %i.k, align 1, !tbaa !156
  %i.t = and i8 %.val, 15
  %i.u = zext nneg i8 %i.t to i16
  %i.v = shl nuw nsw i16 %i.u, 8
  %i.w = zext i8 %.val26 to i16
  %i.x = or disjoint i16 %i.v, %i.w               ; 3 uses
  %i.y = zext nneg i16 %i.x to i64                ; 3 uses
  %i.z = lshr i16 %i.x, 6
  %.zext41 = zext nneg i16 %i.z to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.zext41
  %i.ab = and i64 %i.y, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ae = and i64 %i.ac, %i.ad
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = tail call fastcc noundef zeroext i8 @_ZN9Stockfish12_GLOBAL__N_110set_symlenEPNS0_9PairsDataEtRSt6vectorIbSaIbEE(ptr noundef %0, i16 noundef zeroext %i.x, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !285
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !156
  %.pre = load ptr, ptr %2, align 8, !tbaa !504
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.ak = zext nneg i16 %i.r to i64               ; 3 uses
  %i.al = lshr i16 %i.n, 2
  %.zext43 = zext nneg i16 %i.al to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.zext43
  %i.an = and i64 %i.ak, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !17
  %i.aq = and i64 %i.ap, %i.ao
  %.not44 = icmp eq i64 %i.aq, 0
  br i1 %.not44, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call fastcc noundef zeroext i8 @_ZN9Stockfish12_GLOBAL__N_110set_symlenEPNS0_9PairsDataEtRSt6vectorIbSaIbEE(ptr noundef %0, i16 noundef zeroext %i.r, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !156
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !285 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.y
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !156
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ak
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !156
  %i.bb = add i8 %i.ay, 1
  %i.bc = add i8 %i.bb, %i.ba
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i8 [ %i.bc, %bb.f ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !491  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !281    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !491
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !17
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !17
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !281
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !491
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !284
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_(i8 noundef zeroext %0, i8 noundef zeroext %1) #18 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !89
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = icmp slt i32 %i.c, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 4096) i32 @_ZN9Stockfish12_GLOBAL__N_116decompress_pairsEPNS0_9PairsDataEm(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !299
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !487
  %i.d = zext i8 %i.c to i32
  br label %bb.i

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load i64, ptr %2, align 8, !tbaa !486      ; 3 uses
  %4 = udiv i64 %1, %3
  %5 = urem i64 %1, %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %7 = load ptr, ptr %6, align 8, !tbaa !310
  %8 = and i64 %4, 4294967295
  %9 = getelementptr inbounds nuw [6 x i8], ptr %7, i64 %8 ; 2 uses
  %.val = load i32, ptr %9, align 1               ; 2 uses
  %10 = insertelement <2 x i32> poison, i32 %.val, i64 0 ; 2 uses
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %12 = lshr <2 x i32> %11, <i32 8, i32 16>       ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i32 %.val, 24
  %13 = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207 ; 2 uses
  %.not3.not.i = icmp eq i8 %13, 0                ; 5 uses
  %14 = shufflevector <2 x i32> %12, <2 x i32> %10, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %15 = insertelement <4 x i32> %14, i32 %.sroa.10.0.extract.shift.i, i64 3 ; 2 uses
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %17 = shufflevector <2 x i32> %12, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x i32> %17, <4 x i32> %16, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %19 = and <4 x i32> %18, <i32 -1, i32 -1, i32 -1, i32 255>
  %20 = select i1 %.not3.not.i, <4 x i32> %19, <4 x i32> %15
  %21 = shl <4 x i32> %20, <i32 16, i32 8, i32 0, i32 24>
  %22 = and <4 x i32> %21, <i32 16711680, i32 65280, i32 255, i32 -1>
  %23 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %22) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.val98 = load i16, ptr %i.e, align 1           ; 2 uses
  %.sroa.6.0.extract.shift.i106 = lshr i16 %.val98, 8 ; 2 uses
  %i.f = and i16 %.val98, 255                     ; 2 uses
  %.sroa.6.0.insert.ext.i108 = select i1 %.not3.not.i, i16 %i.f, i16 %.sroa.6.0.extract.shift.i106
  %.sroa.6.0.insert.shift.i109 = shl nuw i16 %.sroa.6.0.insert.ext.i108, 8
  %.sroa.0.0.insert.ext.i110 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i106, i16 %i.f
  %.sroa.0.0.insert.insert.i111 = or disjoint i16 %.sroa.6.0.insert.shift.i109, %.sroa.0.0.insert.ext.i110
  %i.g = zext i16 %.sroa.0.0.insert.insert.i111 to i32
  %i.h = lshr i64 %3, 1
  %i.i = sub i64 %5, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %i.g, %i.j                   ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !312  ; 3 uses
  br i1 %i.l, label %.lr.ph, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge: ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %.pre174 = zext i32 %23 to i64                  ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.pre174
  %.pre176 = load i16, ptr %.phi.trans.insert175, align 2, !tbaa !239
  %.pre183 = zext i16 %.pre176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.lr.ph, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge
  %.pre-phi184 = phi i32 [ %.pre183, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.t, %.lr.ph ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre174, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.q, %.lr.ph ]
  %.086.lcssa = phi i32 [ %i.k, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.v, %.lr.ph ] ; 3 uses
  %.084.lcssa = phi i32 [ %23, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.p, %.lr.ph ]
  %i.o = icmp samesign ugt i32 %.086.lcssa, %.pre-phi184
  br i1 %i.o, label %.lr.ph157, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit, %.lr.ph
  %.084153 = phi i32 [ %i.p, %.lr.ph ], [ %23, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %.086152 = phi i32 [ %i.v, %.lr.ph ], [ %i.k, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %i.p = add i32 %.084153, -1                     ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !239
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nsw i32 %.086152, 1
  %i.v = add nsw i32 %i.u, %i.t                   ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.preheader146, !llvm.loop !506

.lr.ph157:                                        ; preds = %.preheader146, %.lr.ph157
  %i.x = phi i32 [ %i.ad, %.lr.ph157 ], [ %.pre-phi184, %.preheader146 ]
  %.185156 = phi i32 [ %i.y, %.lr.ph157 ], [ %.084.lcssa, %.preheader146 ]
  %.187155 = phi i32 [ %i.z, %.lr.ph157 ], [ %.086.lcssa, %.preheader146 ]
  %i.y = add i32 %.185156, 1                      ; 2 uses
  %.neg96 = xor i32 %i.x, -1
  %i.z = add nsw i32 %.187155, %.neg96            ; 3 uses
  %i.aa = zext i32 %i.y to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !239
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = icmp sgt i32 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph157, label %._crit_edge, !llvm.loop !507

._crit_edge:                                      ; preds = %.lr.ph157, %.preheader146
  %.187.lcssa = phi i32 [ %.086.lcssa, %.preheader146 ], [ %i.z, %.lr.ph157 ]
  %.lcssa151 = phi i64 [ %.pre-phi, %.preheader146 ], [ %i.aa, %.lr.ph157 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !315
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !314
  %i.aj = mul i64 %i.ai, %.lcssa151
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %.val105 = load i64, ptr %i.ak, align 1         ; 3 uses
  %i.al = insertelement <4 x i64> poison, i64 %.val105, i64 0 ; 2 uses
  %i.am = shufflevector <4 x i64> %i.al, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.an = lshr <4 x i64> %i.am, <i64 8, i64 16, i64 24, i64 32> ; 2 uses
  %i.ao = shufflevector <4 x i64> %i.al, <4 x i64> poison, <2 x i32> zeroinitializer
  %i.ap = lshr <2 x i64> %i.ao, <i64 40, i64 48>  ; 2 uses
  %.sroa.18.0.extract.shift.i = lshr i64 %.val105, 56
  %i.aq = trunc nuw i8 %13 to i1                  ; 2 uses
  %i.ar = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = shufflevector <4 x i64> %i.ar, <4 x i64> %i.an, <8 x i32> <i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 poison, i32 poison>
  %i.at = insertelement <8 x i64> %i.as, i64 %.val105, i64 6
  %i.au = insertelement <8 x i64> %i.at, i64 %.sroa.18.0.extract.shift.i, i64 7 ; 2 uses
  %i.av = shufflevector <8 x i64> %i.au, <8 x i64> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 6>
  %i.aw = shufflevector <4 x i64> %i.an, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <8 x i64> %i.aw, <8 x i64> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ay = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <8 x i64> %i.ax, <8 x i64> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ba = and <8 x i64> %i.az, <i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 255>
  %i.bb = select i1 %i.aq, <8 x i64> %i.ba, <8 x i64> %i.au
  %i.bc = shl <8 x i64> %i.bb, <i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0, i64 56>
  %i.bd = and <8 x i64> %i.bc, <i64 71776119061217280, i64 280375465082880, i64 1095216660480, i64 4278190080, i64 16711680, i64 65280, i64 255, i64 -1>
  %i.be = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !281
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !487
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !490
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !285 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit, %._crit_edge
  %.288.ph = phi i32 [ %i.cg, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %.187.lcssa, %._crit_edge ]
  %.081.ph = phi ptr [ %25, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.078.ph = phi i64 [ %i.cp, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %i.be, %._crit_edge ]
  %.076.ph = phi i32 [ %24, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ 64, %._crit_edge ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %.288 = phi i32 [ %i.cg, %bb.f ], [ %.288.ph, %.outer ] ; 3 uses
  %.078 = phi i64 [ %i.ci, %bb.f ], [ %.078.ph, %.outer ] ; 3 uses
  %.076 = phi i32 [ %i.cj, %bb.f ], [ %.076.ph, %.outer ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %i.br = icmp ult i64 %.078, %i.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.br, label %bb.d, label %bb.e, !llvm.loop !508

bb.e:                                             ; preds = %bb.d
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %i.bt = sub nuw i64 %.078, %i.bq
  %i.bu = add nuw i32 %i.bs, %i.bk                ; 3 uses
  %i.bv = sub i32 64, %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %i.bt, %i.bw
  %i.by = trunc i64 %i.bx to i16
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  %.val97 = load i16, ptr %i.bz, align 1          ; 2 uses
  %.sroa.6.0.extract.shift.i124 = lshr i16 %.val97, 8 ; 2 uses
  %i.ca = and i16 %.val97, 255                    ; 2 uses
  %.sroa.6.0.insert.ext.i126 = select i1 %.not3.not.i, i16 %i.ca, i16 %.sroa.6.0.extract.shift.i124
  %.sroa.6.0.insert.shift.i127 = shl nuw i16 %.sroa.6.0.insert.ext.i126, 8
  %.sroa.0.0.insert.ext.i128 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i124, i16 %i.ca
  %.sroa.0.0.insert.insert.i129 = or disjoint i16 %.sroa.6.0.insert.shift.i127, %.sroa.0.0.insert.ext.i128
  %i.cb = add i16 %.sroa.0.0.insert.insert.i129, %i.by
  %i.cc = zext i16 %i.cb to i64                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !156 ; 2 uses
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %.not92 = icmp sgt i32 %.288, %i.cf
  br i1 %.not92, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %.neg = xor i32 %i.cf, -1
  %i.cg = add nsw i32 %.288, %.neg                ; 2 uses
  %i.ch = zext nneg i32 %i.bu to i64
  %i.ci = shl i64 %.078, %i.ch                    ; 2 uses
  %i.cj = sub nsw i32 %.076, %i.bu                ; 4 uses
  %i.ck = icmp slt i32 %i.cj, 33
  br i1 %i.ck, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit, label %bb.c

_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit: ; preds = %bb.f
  %24 = add nsw i32 %i.cj, 32
  %25 = getelementptr inbounds nuw i8, ptr %.081.ph, i64 4
  %.081.val = load i32, ptr %.081.ph, align 1     ; 2 uses
  %26 = insertelement <2 x i32> poison, i32 %.081.val, i64 0 ; 2 uses
  %27 = shufflevector <2 x i32> %26, <2 x i32> poison, <2 x i32> zeroinitializer
  %28 = lshr <2 x i32> %27, <i32 8, i32 16>       ; 2 uses
  %.sroa.10.0.extract.shift.i132 = lshr i32 %.081.val, 24
  %29 = shufflevector <2 x i32> %28, <2 x i32> %26, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %30 = insertelement <4 x i32> %29, i32 %.sroa.10.0.extract.shift.i132, i64 3 ; 2 uses
  %31 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %32 = shufflevector <2 x i32> %28, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x i32> %32, <4 x i32> %31, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %34 = and <4 x i32> %33, <i32 -1, i32 -1, i32 -1, i32 255>
  %35 = select i1 %i.aq, <4 x i32> %34, <4 x i32> %30
  %36 = shl <4 x i32> %35, <i32 16, i32 8, i32 0, i32 24>
  %37 = and <4 x i32> %36, <i32 16711680, i32 65280, i32 255, i32 -1>
  %38 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %37)
  %i.cl = zext i32 %38 to i64
  %i.cm = sub nsw i32 32, %i.cj
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl i64 %i.cl, %i.cn
  %i.cp = or i64 %i.co, %i.ci
  br label %.outer

.preheader:                                       ; preds = %bb.e
  %.not93160 = icmp eq i8 %i.ce, 0
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre182 = load ptr, ptr %.phi.trans.insert181, align 8, !tbaa !497 ; 2 uses
  br i1 %.not93160, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader, %bb.h
  %i.cq = phi i64 [ %.pre-phi178, %bb.h ], [ %i.cc, %.preheader ]
  %.4161 = phi i32 [ %.5, %bb.h ], [ %.288, %.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %i.cq ; 3 uses
  %.val103 = load i8, ptr %i.cr, align 1, !tbaa !156
  %i.cs = getelementptr i8, ptr %i.cr, i64 1
  %.val104 = load i8, ptr %i.cs, align 1, !tbaa !156 ; 2 uses
  %i.ct = and i8 %.val104, 15
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 8
  %i.cw = zext i8 %.val103 to i64
  %i.cx = or disjoint i64 %i.cv, %i.cw            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !156 ; 2 uses
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %.not94 = icmp sgt i32 %.4161, %i.da
  br i1 %.not94, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph162
  %.neg95 = xor i32 %i.da, -1
  %i.db = add nsw i32 %.4161, %.neg95
  %i.dc = getelementptr i8, ptr %i.cr, i64 2
  %.val100 = load i8, ptr %i.dc, align 1, !tbaa !156
  %i.dd = zext i8 %.val100 to i64
  %i.de = shl nuw nsw i64 %i.dd, 4
  %i.df = lshr i8 %.val104, 4
  %i.dg = zext nneg i8 %i.df to i64
  %.pre177 = or disjoint i64 %i.de, %i.dg         ; 2 uses
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.pre177
  %.pre180 = load i8, ptr %.phi.trans.insert179, align 1, !tbaa !156
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph162, %bb.g
  %i.dh = phi i8 [ %i.cz, %.lr.ph162 ], [ %.pre180, %bb.g ]
  %.pre-phi178 = phi i64 [ %i.cx, %.lr.ph162 ], [ %.pre177, %bb.g ] ; 2 uses
  %.5 = phi i32 [ %.4161, %.lr.ph162 ], [ %i.db, %bb.g ]
  %.not93 = icmp eq i8 %i.dh, 0
  br i1 %.not93, label %._crit_edge163, label %.lr.ph162, !llvm.loop !509

._crit_edge163:                                   ; preds = %bb.h, %.preheader
  %.lcssa = phi i64 [ %i.cc, %.preheader ], [ %.pre-phi178, %bb.h ]
  %i.di = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %.lcssa ; 2 uses
  %.val101 = load i8, ptr %i.di, align 1, !tbaa !156
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  %.val102 = load i8, ptr %i.dj, align 1, !tbaa !156
  %i.dk = and i8 %.val102, 15
  %i.dl = zext nneg i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = zext i8 %.val101 to i32
  %i.do = or disjoint i32 %i.dm, %i.dn
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge163, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.do, %._crit_edge163 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7, ptr %4)
  %i.e = icmp sgt i64 %i.c, 7
  br i1 %i.e, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.021.i, ptr %4)
  %i.f = shl nuw nsw i64 %.021.i, 1
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %i.f, ptr %4)
  %i.g = shl nsw i64 %.021.i, 2                   ; 2 uses
  %i.h = icmp slt i64 %i.g, %i.c
  br i1 %i.h, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit, !llvm.loop !510

_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.i, %i.a                       ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  tail call void @_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_(ptr noundef %1, ptr noundef %2, i64 noundef 7, ptr %4)
  %i.l = icmp sgt i64 %i.j, 7
  br i1 %i.l, label %.lr.ph.i17, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit19

.lr.ph.i17:                                       ; preds = %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit, %.lr.ph.i17
  %.021.i18 = phi i64 [ %i.n, %.lr.ph.i17 ], [ 7, %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.021.i18, ptr %4)
  %i.m = shl nuw nsw i64 %.021.i18, 1
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.k, ptr noundef %1, i64 noundef %i.m, ptr %4)
  %i.n = shl nsw i64 %.021.i18, 2                 ; 2 uses
  %i.o = icmp slt i64 %i.n, %i.j
  br i1 %i.o, label %.lr.ph.i17, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit19, !llvm.loop !510

_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit19: ; preds = %.lr.ph.i17, %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit
  %i.p = ptrtoint ptr %4 to i64
  tail call void @_ZSt16__merge_adaptiveIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.c, i64 noundef %i.j, ptr noundef %3, i64 %i.p)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret25, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.017.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not18.i = icmp eq ptr %.017.i, %1
  br i1 %.not18.i, label %common.ret25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.017.i, %.preheader.i ] ; 7 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.020.i, align 1, !tbaa !95
  %i.g = load i8, ptr %0, align 1, !tbaa !95
  %i.h = tail call noundef zeroext i1 %2(i8 noundef zeroext %i.f, i8 noundef zeroext %i.g) #26, !inline_history !511
  %i.i = load i8, ptr %.020.i, align 1, !tbaa !95 ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = ptrtoint ptr %.020.i to i64
  %i.k = sub i64 %i.j, %i.b                       ; 3 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.e, !prof !190

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.k, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 1
  br i1 %i.m, label %bb.f, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 1
  %i.o = load i8, ptr %0, align 1, !tbaa !95
  store i8 %i.o, ptr %i.n, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = load i8, ptr %.pn19.i, align 1, !tbaa !95
  %i.q = tail call noundef zeroext i1 %2(i8 noundef zeroext %i.i, i8 noundef zeroext %i.p) #26, !inline_history !512
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i, %bb.g ]
  %i.r = load i8, ptr %.013.i.i, align 1, !tbaa !95
  store i8 %i.r, ptr %.0912.i.i, align 1, !tbaa !95
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.s = load i8, ptr %.0.i.i, align 1, !tbaa !95
  %i.t = tail call noundef zeroext i1 %2(i8 noundef zeroext %i.i, i8 noundef zeroext %i.s) #26, !inline_history !512
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, !llvm.loop !513

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.020.i, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.i, ptr %.sink.i, align 1, !tbaa !95
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret25, label %.lr.ph.i, !llvm.loop !514

common.ret25:                                     ; preds = %.preheader.i, %bb.b, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, %bb.h
  ret void

bb.h:                                             ; preds = %bb.a
  %i.u = lshr i64 %i.c, 1                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_(ptr noundef %0, ptr noundef %i.v, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_(ptr noundef %i.v, ptr noundef %1, ptr %2)
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.a, %i.w
  tail call void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_(ptr noundef %0, ptr noundef %i.v, ptr noundef %1, i64 noundef %i.u, i64 noundef %i.x, ptr %2)
  br label %common.ret25
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat {
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_:bb.a

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65, %.lr.ph.preheader.i.i.i.i.i59
  %.012.i.i.i.i.i61 = phi i64 [ %i.cv, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65 ], [ %i.ch, %.lr.ph.preheader.i.i.i.i.i59 ] ; 2 uses
  %.0811.i.i.i.i.i62 = phi ptr [ %i.cu, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65 ], [ %0, %.lr.ph.preheader.i.i.i.i.i59 ] ; 4 uses
  %.0910.i.i.i.i.i63 = phi ptr [ %i.ct, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65 ], [ %1, %.lr.ph.preheader.i.i.i.i.i59 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i62, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i63, i64 44, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i62, i64 48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i63, i64 48 ; 2 uses
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !348 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i62, i64 64 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !364
  %i.cn = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !365
  store <2 x ptr> %i.cn, ptr %i.ci, align 8, !tbaa !365
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i63, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !364
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !364
  %.not.i.i.i.i.i.i.i.i.i.i.i64 = icmp eq ptr %i.ck, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i64, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i60
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cs) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65: ; preds = %bb.k, %.lr.ph.i.i.i.i.i60
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i63, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i62, i64 72
  %i.cv = add nsw i64 %.012.i.i.i.i.i61, -1
  %i.cw = icmp sgt i64 %.012.i.i.i.i.i61, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i60, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !576

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i65, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit57
  %i.cx = ptrtoint ptr %.08.lcssa.i.i.i.i.i49 to i64
  %i.cy = ptrtoint ptr %5 to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.preheader.i.i.i.i.i67, label %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i67:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.db = udiv exact i64 %i.cz, 72
  br label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73, %.lr.ph.preheader.i.i.i.i.i67
  %.010.i.i.i.i.i69 = phi i64 [ %i.dp, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73 ], [ %i.db, %.lr.ph.preheader.i.i.i.i.i67 ] ; 2 uses
  %.069.i.i.i.i.i70 = phi ptr [ %i.dd, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73 ], [ %2, %.lr.ph.preheader.i.i.i.i.i67 ] ; 3 uses
  %.078.i.i.i.i.i71 = phi ptr [ %i.dc, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73 ], [ %.08.lcssa.i.i.i.i.i49, %.lr.ph.preheader.i.i.i.i.i67 ] ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i71, i64 -72 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i70, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef nonnull align 8 dereferenceable(72) %i.dc, i64 44, i1 false)
  %i.de = getelementptr inbounds i8, ptr %.069.i.i.i.i.i70, i64 -24 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i71, i64 -24 ; 2 uses
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !348 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i70, i64 -8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !364
  %i.dj = load <2 x ptr>, ptr %i.df, align 8, !tbaa !365
  store <2 x ptr> %i.dj, ptr %i.de, align 8, !tbaa !365
  %i.dk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i71, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !364
  store ptr %i.dl, ptr %i.dh, align 8, !tbaa !364
  %.not.i.i.i.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.dg, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i72, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i68
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = ptrtoint ptr %i.dg to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.do) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73: ; preds = %bb.l, %.lr.ph.i.i.i.i.i68
  %i.dp = add nsw i64 %.010.i.i.i.i.i69, -1
  %i.dq = icmp sgt i64 %.010.i.i.i.i.i69, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i68, label %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.loopexit, !llvm.loop !582

_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.loopexit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i73
  %.pre = ptrtoint ptr %i.dd to i64
  br label %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.loopexit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.loopexit ], [ %i.ce, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ]
  %i.dr = sub i64 %.pre-phi, %i.ce
  %i.ds = getelementptr inbounds i8, ptr %2, i64 %i.dr
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.dt = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.b, %bb.m, %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.sroa.032.0 = phi ptr [ %i.bj, %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %i.dt, %bb.m ], [ %i.ds, %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %0, %bb.b ], [ %2, %bb.h ]
  ret ptr %.sroa.032.0
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_tbprobe.cpp() #0 section ".text.startup" {
bb.a:
  store i8 1, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN9StockfishL14IsLittleEndianE) ; 0 uses
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, i64 16), ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, align 8, !tbaa !171
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, i64 8), align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, i64 16), align 8, !tbaa !156
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98336), align 8, !tbaa !75
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 2 uses
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98328), align 8, !tbaa !70
  %.01.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(1976) ptr @_Znwm(i64 noundef 1976) #29 ; 6 uses
  store ptr %i.e, ptr %.01.i.ptr.i.i.i.i.i, align 8, !tbaa !68
  store ptr %.01.i.ptr.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98368), align 8, !tbaa !63
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98352), align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1976 ; 2 uses
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98360), align 8, !tbaa !62
  store ptr %.01.i.ptr.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98400), align 8, !tbaa !63
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98384), align 8, !tbaa !67
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98392), align 8, !tbaa !62
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98344), align 8, !tbaa !594
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98376), align 8, !tbaa !188
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98416), align 8, !tbaa !54
  %i.g = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 2 uses
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98408), align 8, !tbaa !49
  %.01.i.ptr.i.i.i1.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(1016) ptr @_Znwm(i64 noundef 1016) #29 ; 6 uses
  store ptr %i.h, ptr %.01.i.ptr.i.i.i1.i.i, align 8, !tbaa !47
  store ptr %.01.i.ptr.i.i.i1.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98448), align 8, !tbaa !42
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98432), align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1016 ; 2 uses
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98440), align 8, !tbaa !41
  store ptr %.01.i.ptr.i.i.i1.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98480), align 8, !tbaa !42
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98464), align 8, !tbaa !46
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98472), align 8, !tbaa !41
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98424), align 8, !tbaa !595
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98456), align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98488), i8 0, i64 16, i1 false)
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN9Stockfish12_GLOBAL__N_18TBTablesD2Ev, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v16i32.v16p0(<16 x i32>, <16 x ptr>, <16 x i1>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i32.v4p0(<4 x i32>, <4 x ptr>, <4 x i1>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!12}

!0 = !{i64 24, !1}
!1 = distinct !{}
!2 = !{i64 24, !"_ZTSSi"}
!3 = !{i64 24, !"_ZTSSt14basic_ifstreamIcSt11char_traitsIcEE"}
!4 = !{i64 64, !"_ZTSSt8ios_base"}
!5 = !{i64 64, !"_ZTSSt9basic_iosIcSt11char_traitsIcEE"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 1, !"ThinLTO", i32 0}
!10 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!12 = !{!13, !14, i64 0}
!13 = !{!"__libc_errno", !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !15, i64 0}
!19 = !{!20, !22, i64 0}
!20 = !{!"_ZTSSt15_Rb_tree_header", !21, i64 0, !18, i64 32}
!21 = !{!"_ZTSSt18_Rb_tree_node_base", !22, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!22 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!23 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !24, i64 0}
!24 = !{!"any pointer", !15, i64 0}
!25 = !{!20, !23, i64 8}
!26 = !{!20, !23, i64 16}
!27 = !{!20, !23, i64 24}
!28 = !{!20, !18, i64 32}
!29 = !{!23, !23, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSSt15_Deque_iteratorIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEERS4_PS4_E", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!35 = !{!"p1 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE1EEE", !24, i64 0}
!36 = !{!"p2 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE1EEE", !37, i64 0}
!37 = !{!"any p2 pointer", !24, i64 0}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE5beginEv: argument 0"}
!40 = distinct !{!40, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE5beginEv"}
!41 = !{!34, !35, i64 16}
!42 = !{!34, !36, i64 24}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE3endEv: argument 0"}
!45 = distinct !{!45, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE3endEv"}
!46 = !{!34, !35, i64 8}
!47 = !{!35, !35, i64 0}
!48 = distinct !{!48, !31}
!49 = !{!50, !36, i64 0}
!50 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE16_Deque_impl_dataE", !36, i64 0, !18, i64 8, !34, i64 16, !34, i64 48}
!51 = !{!50, !36, i64 40}
!52 = !{!50, !36, i64 72}
!53 = distinct !{!53, !31}
!54 = !{!50, !18, i64 8}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSSt15_Deque_iteratorIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEERS4_PS4_E", !57, i64 0, !57, i64 8, !57, i64 16, !58, i64 24}
!57 = !{!"p1 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE0EEE", !24, i64 0}
!58 = !{!"p2 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE0EEE", !37, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5beginEv: argument 0"}
!61 = distinct !{!61, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5beginEv"}
!62 = !{!56, !57, i64 16}
!63 = !{!56, !58, i64 24}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE3endEv: argument 0"}
!66 = distinct !{!66, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE3endEv"}
!67 = !{!56, !57, i64 8}
!68 = !{!57, !57, i64 0}
!69 = distinct !{!69, !31}
!70 = !{!71, !58, i64 0}
!71 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE16_Deque_impl_dataE", !58, i64 0, !18, i64 8, !56, i64 16, !56, i64 48}
!72 = !{!71, !58, i64 40}
!73 = !{!71, !58, i64 72}
!74 = distinct !{!74, !31}
!75 = !{!71, !18, i64 8}
!76 = !{!24, !24, i64 0}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5beginEv: argument 0"}
!79 = distinct !{!79, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5beginEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE3endEv: argument 0"}
!82 = distinct !{!82, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE3endEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE5beginEv: argument 0"}
!85 = distinct !{!85, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE5beginEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE3endEv: argument 0"}
!88 = distinct !{!88, !"_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE3endEv"}
!89 = !{!14, !14, i64 0}
!90 = !{!91, !18, i64 8}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !92, i64 0, !18, i64 8, !15, i64 16}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !93, i64 0}
!93 = !{!"p1 omnipotent char", !24, i64 0}
!94 = distinct !{!94, !31}
!95 = !{!96, !96, i64 0}
!96 = !{!"_ZTSN9Stockfish6SquareE", !15, i64 0}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = !{!"branch_weights", i32 4, i32 12}
!101 = distinct !{!101, !98, !99}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !99, !98}
!104 = distinct !{!104, !31}
!105 = !{!106, !14, i64 0}
!106 = !{!"_ZTSSt4pairIiN9Stockfish6SquareEE", !14, i64 0, !96, i64 4}
!107 = !{!106, !96, i64 4}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZSt19__relocate_object_aISt4pairIiN9Stockfish6SquareEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aISt4pairIiN9Stockfish6SquareEES3_SaIS3_EEvPT_PT0_RT1_"}
!111 = !{!112}
!112 = distinct !{!112, !110, !"_ZSt19__relocate_object_aISt4pairIiN9Stockfish6SquareEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!113 = distinct !{!113, !31, !98, !99}
!114 = !{!"branch_weights", i32 8, i32 24}
!115 = distinct !{!115, !31, !98, !99}
!116 = distinct !{!116, !31, !98}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31, !120}
!120 = !{!"llvm.loop.peeled.count", i32 4}
!121 = distinct !{!121, !31, !122}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = !{!124, !18, i64 98496}
!124 = !{!"_ZTSN9Stockfish12_GLOBAL__N_18TBTablesE", !15, i64 0, !125, i64 98328, !128, i64 98408, !18, i64 98488, !18, i64 98496}
!125 = !{!"_ZTSSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE", !126, i64 0}
!126 = !{!"_ZTSSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE", !127, i64 0}
!127 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE11_Deque_implE", !71, i64 0}
!128 = !{!"_ZTSSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE", !129, i64 0}
!129 = !{!"_ZTSSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE", !130, i64 0}
!130 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE11_Deque_implE", !50, i64 0}
!131 = !{!124, !18, i64 98488}
!132 = !{!133, !133, i64 0}
!133 = !{!"vtable pointer", !16, i64 0}
!134 = !{!135, !147, i64 240}
!135 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !136, i64 0, !144, i64 216, !15, i64 224, !145, i64 225, !146, i64 232, !147, i64 240, !148, i64 248, !149, i64 256}
!136 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !137, i64 24, !138, i64 28, !138, i64 32, !139, i64 40, !140, i64 48, !15, i64 64, !14, i64 192, !141, i64 200, !142, i64 208}
!137 = !{!"_ZTSSt13_Ios_Fmtflags", !15, i64 0}
!138 = !{!"_ZTSSt12_Ios_Iostate", !15, i64 0}
!139 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!140 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !18, i64 8}
!141 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!142 = !{!"_ZTSSt6locale", !143, i64 0}
!143 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!144 = !{!"p1 _ZTSSo", !24, i64 0}
!145 = !{!"bool", !15, i64 0}
!146 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 0}
!147 = !{!"p1 _ZTSSt5ctypeIcE", !24, i64 0}
!148 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!149 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!150 = !{!151, !15, i64 56}
!151 = !{!"_ZTSSt5ctypeIcE", !152, i64 0, !153, i64 16, !145, i64 24, !154, i64 32, !154, i64 40, !155, i64 48, !15, i64 56, !15, i64 57, !15, i64 313, !15, i64 569}
!152 = !{!"_ZTSNSt6locale5facetE", !14, i64 8}
!153 = !{!"p1 _ZTS15__locale_struct", !24, i64 0}
!154 = !{!"p1 int", !24, i64 0}
!155 = !{!"p1 short", !24, i64 0}
!156 = !{!15, !15, i64 0}
!157 = distinct !{null, ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!158 = !{!159, !24, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish9PieceTypeESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!160 = !{!159, !24, i64 16}
!161 = !{!159, !24, i64 8}
end_hunk_1
