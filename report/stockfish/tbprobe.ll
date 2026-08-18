inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !486  ; 3 uses
  %i.g = udiv i64 %1, %i.f
  %i.h = urem i64 %1, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310
  %i.k = and i64 %i.g, 4294967295
  %i.l = getelementptr inbounds nuw [6 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %.val = load i32, ptr %i.l, align 1             ; 2 uses
  %i.m = insertelement <2 x i32> poison, i32 %.val, i64 0 ; 2 uses
  %i.n = shufflevector <2 x i32> %i.m, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.o = lshr <2 x i32> %i.n, <i32 8, i32 16>     ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i32 %.val, 24
  %i.p = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207 ; 2 uses
  %.not3.not.i = icmp eq i8 %i.p, 0               ; 5 uses
  %i.q = shufflevector <2 x i32> %i.o, <2 x i32> %i.m, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.r = insertelement <4 x i32> %i.q, i32 %.sroa.10.0.extract.shift.i, i64 3 ; 2 uses
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.t = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.v = and <4 x i32> %i.u, <i32 -1, i32 -1, i32 -1, i32 255>
  %i.w = select i1 %.not3.not.i, <4 x i32> %i.v, <4 x i32> %i.r
  %i.x = shl <4 x i32> %i.w, <i32 16, i32 8, i32 0, i32 24>
  %i.y = and <4 x i32> %i.x, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.z = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.y) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.val98 = load i16, ptr %i.aa, align 1          ; 2 uses
  %.sroa.6.0.extract.shift.i106 = lshr i16 %.val98, 8 ; 2 uses
  %i.ab = and i16 %.val98, 255                    ; 2 uses
  %.sroa.6.0.insert.ext.i108 = select i1 %.not3.not.i, i16 %i.ab, i16 %.sroa.6.0.extract.shift.i106
  %.sroa.6.0.insert.shift.i109 = shl nuw i16 %.sroa.6.0.insert.ext.i108, 8
  %.sroa.0.0.insert.ext.i110 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i106, i16 %i.ab
  %.sroa.0.0.insert.insert.i111 = or disjoint i16 %.sroa.6.0.insert.shift.i109, %.sroa.0.0.insert.ext.i110
  %i.ac = zext i16 %.sroa.0.0.insert.insert.i111 to i32
  %i.ad = lshr i64 %i.f, 1
  %i.ae = sub i64 %i.h, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add nsw i32 %i.ac, %i.af                ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !312 ; 3 uses
  br i1 %i.ah, label %.lr.ph, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge: ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %.pre174 = zext i32 %i.z to i64                 ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.pre174
  %.pre176 = load i16, ptr %.phi.trans.insert175, align 2, !tbaa !239
  %.pre183 = zext i16 %.pre176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.lr.ph, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge
  %.pre-phi184 = phi i32 [ %.pre183, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre174, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.am, %.lr.ph ]
  %.086.lcssa = phi i32 [ %i.ag, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.084.lcssa = phi i32 [ %i.z, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.al, %.lr.ph ]
  %i.ak = icmp samesign ugt i32 %.086.lcssa, %.pre-phi184
  br i1 %i.ak, label %.lr.ph157, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit, %.lr.ph
  %.084153 = phi i32 [ %i.al, %.lr.ph ], [ %i.z, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %.086152 = phi i32 [ %i.ar, %.lr.ph ], [ %i.ag, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %i.al = add i32 %.084153, -1                    ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !239
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = add nsw i32 %.086152, 1
  %i.ar = add nsw i32 %i.aq, %i.ap                ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.preheader146, !llvm.loop !506

.lr.ph157:                                        ; preds = %.preheader146, %.lr.ph157
  %i.at = phi i32 [ %i.az, %.lr.ph157 ], [ %.pre-phi184, %.preheader146 ]
  %.185156 = phi i32 [ %i.au, %.lr.ph157 ], [ %.084.lcssa, %.preheader146 ]
  %.187155 = phi i32 [ %i.av, %.lr.ph157 ], [ %.086.lcssa, %.preheader146 ]
  %i.au = add i32 %.185156, 1                     ; 2 uses
  %.neg96 = xor i32 %i.at, -1
  %i.av = add nsw i32 %.187155, %.neg96           ; 3 uses
  %i.aw = zext i32 %i.au to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !239
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = icmp sgt i32 %i.av, %i.az
  br i1 %i.ba, label %.lr.ph157, label %._crit_edge, !llvm.loop !507

._crit_edge:                                      ; preds = %.lr.ph157, %.preheader146
  %.187.lcssa = phi i32 [ %.086.lcssa, %.preheader146 ], [ %i.av, %.lr.ph157 ]
  %.lcssa151 = phi i64 [ %.pre-phi, %.preheader146 ], [ %i.aw, %.lr.ph157 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !315
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !314
  %i.bf = mul i64 %i.be, %.lcssa151
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf ; 2 uses
  %.val105 = load i64, ptr %i.bg, align 1         ; 2 uses
  %i.bh = insertelement <4 x i64> poison, i64 %.val105, i64 0 ; 2 uses
  %i.bi = shufflevector <4 x i64> %i.bh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bj = lshr <4 x i64> %i.bi, <i64 8, i64 16, i64 24, i64 32> ; 2 uses
  %i.bk = shufflevector <4 x i64> %i.bh, <4 x i64> poison, <2 x i32> zeroinitializer
  %i.bl = lshr <2 x i64> %i.bk, <i64 40, i64 48>  ; 2 uses
  %2 = insertelement <2 x i64> poison, i64 %.val105, i64 0
  %i.bm = trunc nuw i8 %i.p to i1                 ; 2 uses
  %i.bn = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x i64> %i.bn, <4 x i64> %i.bj, <8 x i32> <i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 poison, i32 poison>
  %3 = shufflevector <2 x i64> %2, <2 x i64> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = lshr <8 x i64> %3, <i64 0, i64 56, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef> ; 2 uses
  %5 = shufflevector <8 x i64> %i.bo, <8 x i64> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  br i1 %i.bm, label %6, label %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit

6:                                                ; preds = %._crit_edge
  %7 = shufflevector <8 x i64> %4, <8 x i64> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 0>
  %8 = shufflevector <4 x i64> %i.bj, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <8 x i64> %8, <8 x i64> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %10 = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <8 x i64> %9, <8 x i64> %10, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %12 = and <8 x i64> %11, <i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 255>
  br label %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit: ; preds = %._crit_edge, %6
  %13 = phi <8 x i64> [ %12, %6 ], [ %5, %._crit_edge ]
  %14 = shl <8 x i64> %13, <i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0, i64 56>
  %15 = and <8 x i64> %14, <i64 71776119061217280, i64 280375465082880, i64 1095216660480, i64 4278190080, i64 16711680, i64 65280, i64 255, i64 -1>
  %16 = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %15)
  %17 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %19 = load ptr, ptr %18, align 8, !tbaa !281
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %21 = load i8, ptr %20, align 2, !tbaa !487
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !490
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %26 = load ptr, ptr %25, align 8, !tbaa !285    ; 3 uses
  br label %.outer

.outer:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit
  %.288.ph = phi i32 [ %i.cg, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %.187.lcssa, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  %.081.ph = phi ptr [ %i.cm, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %17, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ] ; 2 uses
  %.078.ph = phi i64 [ %i.de, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %16, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  %.076.ph = phi i32 [ %i.cl, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ 64, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %.288 = phi i32 [ %i.cg, %bb.f ], [ %.288.ph, %.outer ] ; 3 uses
  %.078 = phi i64 [ %i.ci, %bb.f ], [ %.078.ph, %.outer ] ; 3 uses
  %.076 = phi i32 [ %i.cj, %bb.f ], [ %.076.ph, %.outer ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %i.br = icmp ult i64 %.078, %i.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.br, label %bb.d, label %bb.e, !llvm.loop !508

bb.e:                                             ; preds = %bb.d
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %i.bt = sub nuw i64 %.078, %i.bq
  %i.bu = add nuw i32 %i.bs, %22                  ; 3 uses
  %i.bv = sub i32 64, %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %i.bt, %i.bw
  %i.by = trunc i64 %i.bx to i16
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %24, i64 %indvars.iv
  %.val97 = load i16, ptr %i.bz, align 1          ; 2 uses
  %.sroa.6.0.extract.shift.i124 = lshr i16 %.val97, 8 ; 2 uses
  %i.ca = and i16 %.val97, 255                    ; 2 uses
  %.sroa.6.0.insert.ext.i126 = select i1 %.not3.not.i, i16 %i.ca, i16 %.sroa.6.0.extract.shift.i124
  %.sroa.6.0.insert.shift.i127 = shl nuw i16 %.sroa.6.0.insert.ext.i126, 8
  %.sroa.0.0.insert.ext.i128 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i124, i16 %i.ca
  %.sroa.0.0.insert.insert.i129 = or disjoint i16 %.sroa.6.0.insert.shift.i127, %.sroa.0.0.insert.ext.i128
  %i.cb = add i16 %.sroa.0.0.insert.insert.i129, %i.by
  %i.cc = zext i16 %i.cb to i64                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %26, i64 %i.cc
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
  %i.cl = add nsw i32 %i.cj, 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.081.ph, i64 4
  %.081.val = load i32, ptr %.081.ph, align 1     ; 2 uses
  %i.cn = insertelement <2 x i32> poison, i32 %.081.val, i64 0 ; 2 uses
  %i.co = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cp = lshr <2 x i32> %i.co, <i32 8, i32 16>   ; 2 uses
  %.sroa.10.0.extract.shift.i132 = lshr i32 %.081.val, 24
  %i.cq = shufflevector <2 x i32> %i.cp, <2 x i32> %i.cn, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.cr = insertelement <4 x i32> %i.cq, i32 %.sroa.10.0.extract.shift.i132, i64 3 ; 2 uses
  %i.cs = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.ct = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> %i.cs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cv = and <4 x i32> %i.cu, <i32 -1, i32 -1, i32 -1, i32 255>
  %i.cw = select i1 %i.bm, <4 x i32> %i.cv, <4 x i32> %i.cr
  %i.cx = shl <4 x i32> %i.cw, <i32 16, i32 8, i32 0, i32 24>
  %i.cy = and <4 x i32> %i.cx, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.cz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cy)
  %i.da = zext i32 %i.cz to i64
  %i.db = sub nsw i32 32, %i.cj
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl i64 %i.da, %i.dc
  %i.de = or i64 %i.dd, %i.ci
  br label %.outer

.preheader:                                       ; preds = %bb.e
  %.not93160 = icmp eq i8 %i.ce, 0
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre182 = load ptr, ptr %.phi.trans.insert181, align 8, !tbaa !497 ; 2 uses
  br i1 %.not93160, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader, %bb.h
  %i.df = phi i64 [ %.pre-phi178, %bb.h ], [ %i.cc, %.preheader ]
  %.4161 = phi i32 [ %.5, %bb.h ], [ %.288, %.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %i.df ; 3 uses
  %.val103 = load i8, ptr %i.dg, align 1, !tbaa !156
  %i.dh = getelementptr i8, ptr %i.dg, i64 1
  %.val104 = load i8, ptr %i.dh, align 1, !tbaa !156 ; 2 uses
  %i.di = and i8 %.val104, 15
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 8
  %i.dl = zext i8 %.val103 to i64
  %i.dm = or disjoint i64 %i.dk, %i.dl            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %26, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !156 ; 2 uses
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %.not94 = icmp sgt i32 %.4161, %i.dp
  br i1 %.not94, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph162
  %.neg95 = xor i32 %i.dp, -1
  %i.dq = add nsw i32 %.4161, %.neg95
  %i.dr = getelementptr i8, ptr %i.dg, i64 2
  %.val100 = load i8, ptr %i.dr, align 1, !tbaa !156
  %i.ds = zext i8 %.val100 to i64
  %i.dt = shl nuw nsw i64 %i.ds, 4
  %i.du = lshr i8 %.val104, 4
  %i.dv = zext nneg i8 %i.du to i64
  %.pre177 = or disjoint i64 %i.dt, %i.dv         ; 2 uses
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %26, i64 %.pre177
  %.pre180 = load i8, ptr %.phi.trans.insert179, align 1, !tbaa !156
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph162, %bb.g
  %i.dw = phi i8 [ %i.do, %.lr.ph162 ], [ %.pre180, %bb.g ]
  %.pre-phi178 = phi i64 [ %i.dm, %.lr.ph162 ], [ %.pre177, %bb.g ] ; 2 uses
  %.5 = phi i32 [ %.4161, %.lr.ph162 ], [ %i.dq, %bb.g ]
  %.not93 = icmp eq i8 %i.dw, 0
  br i1 %.not93, label %._crit_edge163, label %.lr.ph162, !llvm.loop !509

._crit_edge163:                                   ; preds = %bb.h, %.preheader
  %.lcssa = phi i64 [ %i.cc, %.preheader ], [ %.pre-phi178, %bb.h ]
  %i.dx = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %.lcssa ; 2 uses
  %.val101 = load i8, ptr %i.dx, align 1, !tbaa !156
  %i.dy = getelementptr i8, ptr %i.dx, i64 1
  %.val102 = load i8, ptr %i.dy, align 1, !tbaa !156
  %i.dz = and i8 %.val102, 15
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 8
  %i.ec = zext i8 %.val101 to i32
  %i.ed = or disjoint i32 %i.eb, %i.ec
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge163, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.ed, %._crit_edge163 ]
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
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.a, %i.b
  %i.c = add i64 %reass.sub, 1
  %i.d = sdiv i64 %i.c, 2                         ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 5 uses
  %i.f = icmp sgt i64 %i.d, %3
  br i1 %i.f, label %bb.b, label %common.ret

common.ret31:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %i.e, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %i.e, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.a, %i.g
  %i.i = ptrtoint ptr %4 to i64
  tail call void @_ZSt23__merge_adaptive_resizeIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %0, ptr noundef %i.e, ptr noundef %1, i64 noundef %i.d, i64 noundef %i.h, ptr noundef %2, i64 noundef %3, i64 %i.i)
  br label %common.ret31

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_T1_(ptr noundef %0, ptr noundef %i.e, ptr noundef %1, ptr noundef %2, ptr %4)
  br label %common.ret31
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
end_hunk_0
