Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !45
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !229
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
  store i64 0, ptr %i.y, align 8, !tbaa !45
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !45
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !182
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !183
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not23 = icmp ult i64 %i.j, %1
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !230
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #31
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !125
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.g
  %.not28 = icmp eq ptr %i.b, %i.c
  br i1 %.not28, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26, %bb.h
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !185
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !186
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_(i8 noundef zeroext %0, i8 noundef zeroext %1) #18 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !81
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !81
  %i.g = icmp slt i32 %i.c, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 4096) i32 @_ZN9Stockfish12_GLOBAL__N_116decompress_pairsEPNS0_9PairsDataEm(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !198
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !226
  %i.d = zext i8 %i.c to i32
  br label %bb.j

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load i64, ptr %2, align 8, !tbaa !225      ; 3 uses
  %4 = udiv i64 %1, %3
  %5 = urem i64 %1, %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  %8 = and i64 %4, 4294967295
  %9 = getelementptr inbounds nuw [6 x i8], ptr %7, i64 %8 ; 2 uses
  %.val = load i32, ptr %9, align 1               ; 2 uses
  %10 = insertelement <2 x i32> poison, i32 %.val, i64 0 ; 2 uses
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %12 = lshr <2 x i32> %11, <i32 8, i32 16>       ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i32 %.val, 24
  %13 = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !227, !range !145, !noundef !146 ; 2 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202  ; 3 uses
  br i1 %i.l, label %.lr.ph, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge: ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %.pre174 = zext i32 %23 to i64                  ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.pre174
  %.pre176 = load i16, ptr %.phi.trans.insert175, align 2, !tbaa !164
  %.pre183 = zext i16 %.pre176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.lr.ph, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge
  %.pre-phi184 = phi i32 [ %.pre183, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.t, %.lr.ph ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre174, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.q, %.lr.ph ]
  %.086.lcssa = phi i32 [ %23, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.p, %.lr.ph ]
  %.083.lcssa = phi i32 [ %i.k, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.v, %.lr.ph ] ; 3 uses
  %i.o = icmp samesign ugt i32 %.083.lcssa, %.pre-phi184
  br i1 %i.o, label %.lr.ph157, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit, %.lr.ph
  %.083153 = phi i32 [ %i.v, %.lr.ph ], [ %i.k, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %.086152 = phi i32 [ %i.p, %.lr.ph ], [ %23, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %i.p = add i32 %.086152, -1                     ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !164
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nsw i32 %.083153, 1
  %i.v = add nsw i32 %i.u, %i.t                   ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.preheader146, !llvm.loop !521

.lr.ph157:                                        ; preds = %.preheader146, %.lr.ph157
  %i.x = phi i32 [ %i.ad, %.lr.ph157 ], [ %.pre-phi184, %.preheader146 ]
  %.184156 = phi i32 [ %i.z, %.lr.ph157 ], [ %.083.lcssa, %.preheader146 ]
  %.187155 = phi i32 [ %i.y, %.lr.ph157 ], [ %.086.lcssa, %.preheader146 ]
  %i.y = add i32 %.187155, 1                      ; 2 uses
  %.neg96 = xor i32 %i.x, -1
  %i.z = add nsw i32 %.184156, %.neg96            ; 3 uses
  %i.aa = zext i32 %i.y to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !164
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = icmp sgt i32 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph157, label %._crit_edge, !llvm.loop !522

._crit_edge:                                      ; preds = %.lr.ph157, %.preheader146
  %.184.lcssa = phi i32 [ %.083.lcssa, %.preheader146 ], [ %i.z, %.lr.ph157 ]
  %.lcssa151 = phi i64 [ %.pre-phi, %.preheader146 ], [ %i.aa, %.lr.ph157 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !205
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !204
  %i.aj = mul i64 %i.ai, %.lcssa151
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %.val105 = load i64, ptr %i.ak, align 1         ; 2 uses
  %i.al = insertelement <4 x i64> poison, i64 %.val105, i64 0 ; 2 uses
  %i.am = shufflevector <4 x i64> %i.al, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.an = lshr <4 x i64> %i.am, <i64 8, i64 16, i64 24, i64 32> ; 2 uses
  %i.ao = shufflevector <4 x i64> %i.al, <4 x i64> poison, <2 x i32> zeroinitializer
  %i.ap = lshr <2 x i64> %i.ao, <i64 40, i64 48>  ; 2 uses
  %i.aq = insertelement <2 x i64> poison, i64 %.val105, i64 0
  %i.ar = trunc nuw i8 %13 to i1                  ; 2 uses
  %i.as = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x i64> %i.as, <4 x i64> %i.an, <8 x i32> <i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 poison, i32 poison>
  %i.au = shufflevector <2 x i64> %i.aq, <2 x i64> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.av = lshr <8 x i64> %i.au, <i64 0, i64 56, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef> ; 2 uses
  %i.aw = shufflevector <8 x i64> %i.at, <8 x i64> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  br i1 %i.ar, label %bb.c, label %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ax = shufflevector <8 x i64> %i.av, <8 x i64> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 0>
  %i.ay = shufflevector <4 x i64> %i.an, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <8 x i64> %i.ay, <8 x i64> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ba = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <8 x i64> %i.az, <8 x i64> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bc = and <8 x i64> %i.bb, <i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 255>
  br label %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit: ; preds = %._crit_edge, %bb.c
  %i.bd = phi <8 x i64> [ %i.bc, %bb.c ], [ %i.aw, %._crit_edge ]
  %24 = shl <8 x i64> %i.bd, <i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0, i64 56>
  %25 = and <8 x i64> %24, <i64 71776119061217280, i64 280375465082880, i64 1095216660480, i64 4278190080, i64 16711680, i64 65280, i64 255, i64 -1>
  %26 = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %25)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !182
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !226
  %i.bj = zext i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !228
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !185 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit
  %.285.ph = phi i32 [ %i.cf, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %.184.lcssa, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  %.080.ph = phi ptr [ %28, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %i.be, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ] ; 2 uses
  %.077.ph = phi i64 [ %i.co, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %26, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  %.075.ph = phi i32 [ %27, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ 64, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.g
  %.285 = phi i32 [ %i.cf, %bb.g ], [ %.285.ph, %.outer ] ; 3 uses
  %.077 = phi i64 [ %i.ch, %bb.g ], [ %.077.ph, %.outer ] ; 3 uses
  %.075 = phi i32 [ %i.ci, %bb.g ], [ %.075.ph, %.outer ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !45 ; 2 uses
  %i.bq = icmp ult i64 %.077, %i.bp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.bq, label %bb.e, label %bb.f, !llvm.loop !523

bb.f:                                             ; preds = %bb.e
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = sub nuw i64 %.077, %i.bp
  %i.bt = add nuw i32 %i.br, %i.bj                ; 3 uses
  %i.bu = sub i32 64, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = lshr i64 %i.bs, %i.bv
  %i.bx = trunc i64 %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv
  %.val97 = load i16, ptr %i.by, align 1          ; 2 uses
  %.sroa.6.0.extract.shift.i124 = lshr i16 %.val97, 8 ; 2 uses
  %i.bz = and i16 %.val97, 255                    ; 2 uses
  %.sroa.6.0.insert.ext.i126 = select i1 %.not3.not.i, i16 %i.bz, i16 %.sroa.6.0.extract.shift.i124
  %.sroa.6.0.insert.shift.i127 = shl nuw i16 %.sroa.6.0.insert.ext.i126, 8
  %.sroa.0.0.insert.ext.i128 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i124, i16 %i.bz
  %.sroa.0.0.insert.insert.i129 = or disjoint i16 %.sroa.6.0.insert.shift.i127, %.sroa.0.0.insert.ext.i128
  %i.ca = add i16 %.sroa.0.0.insert.insert.i129, %i.bx
  %i.cb = zext i16 %i.ca to i64                   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !125 ; 2 uses
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %.not92 = icmp sgt i32 %.285, %i.ce
  br i1 %.not92, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %.neg = xor i32 %i.ce, -1
  %i.cf = add nsw i32 %.285, %.neg                ; 2 uses
  %i.cg = zext nneg i32 %i.bt to i64
  %i.ch = shl i64 %.077, %i.cg                    ; 2 uses
  %i.ci = sub nsw i32 %.075, %i.bt                ; 4 uses
  %i.cj = icmp slt i32 %i.ci, 33
  br i1 %i.cj, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit, label %bb.d

_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit: ; preds = %bb.g
  %27 = add nsw i32 %i.ci, 32
  %28 = getelementptr inbounds nuw i8, ptr %.080.ph, i64 4
  %.080.val = load i32, ptr %.080.ph, align 1     ; 2 uses
  %29 = insertelement <2 x i32> poison, i32 %.080.val, i64 0 ; 2 uses
  %30 = shufflevector <2 x i32> %29, <2 x i32> poison, <2 x i32> zeroinitializer
  %31 = lshr <2 x i32> %30, <i32 8, i32 16>       ; 2 uses
  %.sroa.10.0.extract.shift.i132 = lshr i32 %.080.val, 24
  %32 = shufflevector <2 x i32> %31, <2 x i32> %29, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %33 = insertelement <4 x i32> %32, i32 %.sroa.10.0.extract.shift.i132, i64 3 ; 2 uses
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %35 = shufflevector <2 x i32> %31, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x i32> %35, <4 x i32> %34, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %37 = and <4 x i32> %36, <i32 -1, i32 -1, i32 -1, i32 255>
  %38 = select i1 %i.ar, <4 x i32> %37, <4 x i32> %33
  %39 = shl <4 x i32> %38, <i32 16, i32 8, i32 0, i32 24>
  %40 = and <4 x i32> %39, <i32 16711680, i32 65280, i32 255, i32 -1>
  %41 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %40)
  %i.ck = zext i32 %41 to i64
  %i.cl = sub nsw i32 32, %i.ci
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = or i64 %i.cn, %i.ch
  br label %.outer

.preheader:                                       ; preds = %bb.f
  %.not93160 = icmp eq i8 %i.cd, 0
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre182 = load ptr, ptr %.phi.trans.insert181, align 8, !tbaa !231 ; 2 uses
  br i1 %.not93160, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader, %bb.i
  %i.cp = phi i64 [ %.pre-phi178, %bb.i ], [ %i.cb, %.preheader ]
  %.4161 = phi i32 [ %.5, %bb.i ], [ %.285, %.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %i.cp ; 3 uses
  %.val103 = load i8, ptr %i.cq, align 1, !tbaa !125
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  %.val104 = load i8, ptr %i.cr, align 1, !tbaa !125 ; 2 uses
  %i.cs = and i8 %.val104, 15
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 8
  %i.cv = zext i8 %.val103 to i64
  %i.cw = or disjoint i64 %i.cu, %i.cv            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !125 ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %.not94 = icmp sgt i32 %.4161, %i.cz
  br i1 %.not94, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph162
  %.neg95 = xor i32 %i.cz, -1
  %i.da = add nsw i32 %.4161, %.neg95
  %i.db = getelementptr i8, ptr %i.cq, i64 2
  %.val100 = load i8, ptr %i.db, align 1, !tbaa !125
  %i.dc = zext i8 %.val100 to i64
  %i.dd = shl nuw nsw i64 %i.dc, 4
  %i.de = lshr i8 %.val104, 4
  %i.df = zext nneg i8 %i.de to i64
  %.pre177 = or disjoint i64 %i.dd, %i.df         ; 2 uses
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.pre177
  %.pre180 = load i8, ptr %.phi.trans.insert179, align 1, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph162, %bb.h
  %i.dg = phi i8 [ %i.cy, %.lr.ph162 ], [ %.pre180, %bb.h ]
  %.pre-phi178 = phi i64 [ %i.cw, %.lr.ph162 ], [ %.pre177, %bb.h ] ; 2 uses
  %.5 = phi i32 [ %.4161, %.lr.ph162 ], [ %i.da, %bb.h ]
  %.not93 = icmp eq i8 %i.dg, 0
  br i1 %.not93, label %._crit_edge163, label %.lr.ph162, !llvm.loop !524

._crit_edge163:                                   ; preds = %bb.i, %.preheader
  %.lcssa = phi i64 [ %i.cb, %.preheader ], [ %.pre-phi178, %bb.i ]
  %i.dh = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %.lcssa ; 2 uses
  %.val101 = load i8, ptr %i.dh, align 1, !tbaa !125
  %i.di = getelementptr i8, ptr %i.dh, i64 1
  %.val102 = load i8, ptr %i.di, align 1, !tbaa !125
  %i.dj = and i8 %.val102, 15
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = zext i8 %.val101 to i32
  %i.dn = or disjoint i32 %i.dl, %i.dm
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge163, %bb.b
  %.088 = phi i32 [ %i.d, %bb.b ], [ %i.dn, %._crit_edge163 ]
  ret i32 %.088
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
  br i1 %i.h, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit, !llvm.loop !525

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
  br i1 %i.o, label %.lr.ph.i17, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit19, !llvm.loop !525

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
  %i.f = load i8, ptr %.020.i, align 1, !tbaa !87
  %i.g = load i8, ptr %0, align 1, !tbaa !87
  %i.h = tail call noundef zeroext i1 %2(i8 noundef zeroext %i.f, i8 noundef zeroext %i.g) #26, !inline_history !10
  %i.i = load i8, ptr %.020.i, align 1, !tbaa !87 ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = ptrtoint ptr %.020.i to i64
  %i.k = sub i64 %i.j, %i.b                       ; 3 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.k, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 1
  br i1 %i.m, label %bb.f, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 1
  %i.o = load i8, ptr %0, align 1, !tbaa !87
  store i8 %i.o, ptr %i.n, align 1, !tbaa !87
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = load i8, ptr %.pn19.i, align 1, !tbaa !87
  %i.q = tail call noundef zeroext i1 %2(i8 noundef zeroext %i.i, i8 noundef zeroext %i.p) #26, !inline_history !11
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i, %bb.g ]
  %i.r = load i8, ptr %.013.i.i, align 1, !tbaa !87
  store i8 %i.r, ptr %.0912.i.i, align 1, !tbaa !87
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.s = load i8, ptr %.0.i.i, align 1, !tbaa !87
  %i.t = tail call noundef zeroext i1 %2(i8 noundef zeroext %i.i, i8 noundef zeroext %i.s) #26, !inline_history !11
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, !llvm.loop !12

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.020.i, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.i, ptr %.sink.i, align 1, !tbaa !87
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret25, label %.lr.ph.i, !llvm.loop !13

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i62, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i63, i64 44, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i62, i64 48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i63, i64 48 ; 2 uses
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !211 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i62, i64 64 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !222
  %i.cn = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !223
  store <2 x ptr> %i.cn, ptr %i.ci, align 8, !tbaa !223
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i63, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !222
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !222
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
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i60, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !23

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
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !211 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i70, i64 -8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !222
  %i.dj = load <2 x ptr>, ptr %i.df, align 8, !tbaa !223
  store <2 x ptr> %i.dj, ptr %i.de, align 8, !tbaa !223
  %i.dk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i71, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !222
  store ptr %i.dl, ptr %i.dh, align 8, !tbaa !222
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
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i68, label %_ZSt13move_backwardIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.loopexit, !llvm.loop !25

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
  store i8 1, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !227
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN9StockfishL14IsLittleEndianE) ; 0 uses
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, i64 16), ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, align 8, !tbaa !129
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, i64 8), align 8, !tbaa !85
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, i64 16), align 8, !tbaa !125
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98328), i8 0, i64 80, i1 false)
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98336), align 8, !tbaa !79
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 2 uses
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98328), align 8, !tbaa !76
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98336), align 8, !tbaa !79
  %i.f = add i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(1976) ptr @_Znwm(i64 noundef 1976) #29 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !74
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98368), align 8, !tbaa !72
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98352), align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1976 ; 2 uses
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98360), align 8, !tbaa !71
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98400), align 8, !tbaa !72
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98384), align 8, !tbaa !73
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98392), align 8, !tbaa !71
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98344), align 8, !tbaa !590
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98376), align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98408), i8 0, i64 80, i1 false)
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98416), align 8, !tbaa !66
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 2 uses
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98408), align 8, !tbaa !63
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98416), align 8, !tbaa !66
  %i.m = add i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n ; 3 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(1016) ptr @_Znwm(i64 noundef 1016) #29 ; 6 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !61
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98448), align 8, !tbaa !59
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98432), align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1016 ; 2 uses
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98440), align 8, !tbaa !58
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98480), align 8, !tbaa !59
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98464), align 8, !tbaa !60
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98472), align 8, !tbaa !58
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98424), align 8, !tbaa !591
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98456), align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98488), i8 0, i64 16, i1 false)
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN9Stockfish12_GLOBAL__N_18TBTablesD2Ev, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, ptr nonnull @__dso_handle) #26 ; 0 uses
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
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #24

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

!llvm.module.flags = !{!28, !29, !30, !31, !32}
!llvm.ident = !{!33}
!llvm.errno.tbaa = !{!38}

!0 = distinct !{}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{!3, !52}
!4 = distinct !{!4, !52}
!5 = distinct !{null}
!6 = distinct !{ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev, null}
!7 = distinct !{!7, !52}
!8 = distinct !{!8, !52}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null}
!12 = distinct !{!12, !52}
!13 = distinct !{!13, !52}
!14 = distinct !{null, null}
!15 = distinct !{!15, !52}
!16 = distinct !{null, null}
!17 = distinct !{!17, !52}
!18 = distinct !{!18, !52}
!19 = distinct !{!19, !52}
!20 = distinct !{!20, !52}
!21 = distinct !{!21, !52}
!22 = distinct !{!22, !52}
!23 = distinct !{!23, !52}
!24 = distinct !{!24, !52}
!25 = distinct !{!25, !52}
!26 = distinct !{!26, !52}
!27 = distinct !{!27, !52}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{i32 1, !"ThinLTO", i32 0}
!32 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!33 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!34 = !{!"Simple C++ TBAA"}
!35 = !{!"omnipotent char", !34, i64 0}
!36 = !{!"int", !35, i64 0}
!37 = !{!"__libc_errno", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{i64 24, !0}
!40 = !{i64 24, !"_ZTSSi"}
!41 = !{i64 24, !"_ZTSSt14basic_ifstreamIcSt11char_traitsIcEE"}
!42 = !{i64 64, !"_ZTSSt8ios_base"}
!43 = !{i64 64, !"_ZTSSt9basic_iosIcSt11char_traitsIcEE"}
!44 = !{!"long", !35, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"_ZTSSt14_Rb_tree_color", !35, i64 0}
!47 = !{!"any pointer", !35, i64 0}
!48 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !47, i64 0}
!49 = !{!"_ZTSSt18_Rb_tree_node_base", !46, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!50 = !{!"_ZTSSt15_Rb_tree_header", !49, i64 0, !44, i64 32}
!51 = !{!50, !48, i64 8}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"p1 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE1EEE", !47, i64 0}
!54 = !{!"any p2 pointer", !47, i64 0}
!55 = !{!"p2 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE1EEE", !54, i64 0}
!56 = !{!"_ZTSSt15_Deque_iteratorIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEERS4_PS4_E", !53, i64 0, !53, i64 8, !53, i64 16, !55, i64 24}
!57 = !{!56, !53, i64 0}
!58 = !{!56, !53, i64 16}
!59 = !{!56, !55, i64 24}
!60 = !{!56, !53, i64 8}
!61 = !{!53, !53, i64 0}
!62 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE16_Deque_impl_dataE", !55, i64 0, !44, i64 8, !56, i64 16, !56, i64 48}
!63 = !{!62, !55, i64 0}
!64 = !{!62, !55, i64 40}
!65 = !{!62, !55, i64 72}
!66 = !{!62, !44, i64 8}
!67 = !{!"p1 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE0EEE", !47, i64 0}
!68 = !{!"p2 _ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE0EEE", !54, i64 0}
!69 = !{!"_ZTSSt15_Deque_iteratorIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEERS4_PS4_E", !67, i64 0, !67, i64 8, !67, i64 16, !68, i64 24}
!70 = !{!69, !67, i64 0}
!71 = !{!69, !67, i64 16}
!72 = !{!69, !68, i64 24}
!73 = !{!69, !67, i64 8}
!74 = !{!67, !67, i64 0}
!75 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE16_Deque_impl_dataE", !68, i64 0, !44, i64 8, !69, i64 16, !69, i64 48}
!76 = !{!75, !68, i64 0}
!77 = !{!75, !68, i64 40}
!78 = !{!75, !68, i64 72}
!79 = !{!75, !44, i64 8}
!80 = !{!47, !47, i64 0}
!81 = !{!36, !36, i64 0}
!82 = !{!"p1 omnipotent char", !47, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !82, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !44, i64 8, !35, i64 16}
!85 = !{!84, !44, i64 8}
!86 = !{!"_ZTSN9Stockfish6SquareE", !35, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!"branch_weights", i32 8, i32 8}
!91 = !{!"branch_weights", i32 8, i32 24}
!92 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE11_Deque_implE", !75, i64 0}
!93 = !{!"_ZTSSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE", !92, i64 0}
!94 = !{!"_ZTSSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE", !93, i64 0}
!95 = !{!"_ZTSNSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE11_Deque_implE", !62, i64 0}
!96 = !{!"_ZTSSt11_Deque_baseIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE", !95, i64 0}
!97 = !{!"_ZTSSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE", !96, i64 0}
!98 = !{!"_ZTSN9Stockfish12_GLOBAL__N_18TBTablesE", !35, i64 0, !94, i64 98328, !97, i64 98408, !44, i64 98488, !44, i64 98496}
!99 = !{!98, !44, i64 98496}
!100 = !{!98, !44, i64 98488}
!101 = !{!"vtable pointer", !34, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSSt13_Ios_Fmtflags", !35, i64 0}
!104 = !{!"_ZTSSt12_Ios_Iostate", !35, i64 0}
!105 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !47, i64 0}
!106 = !{!"_ZTSNSt8ios_base6_WordsE", !47, i64 0, !44, i64 8}
!107 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !47, i64 0}
!108 = !{!"p1 _ZTSNSt6locale5_ImplE", !47, i64 0}
!109 = !{!"_ZTSSt6locale", !108, i64 0}
!110 = !{!"_ZTSSt8ios_base", !44, i64 8, !44, i64 16, !103, i64 24, !104, i64 28, !104, i64 32, !105, i64 40, !106, i64 48, !35, i64 64, !36, i64 192, !107, i64 200, !109, i64 208}
!111 = !{!"p1 _ZTSSo", !47, i64 0}
!112 = !{!"bool", !35, i64 0}
!113 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !47, i64 0}
!114 = !{!"p1 _ZTSSt5ctypeIcE", !47, i64 0}
!115 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !47, i64 0}
!116 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !47, i64 0}
!117 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !110, i64 0, !111, i64 216, !35, i64 224, !112, i64 225, !113, i64 232, !114, i64 240, !115, i64 248, !116, i64 256}
!118 = !{!117, !114, i64 240}
!119 = !{!"_ZTSNSt6locale5facetE", !36, i64 8}
!120 = !{!"p1 _ZTS15__locale_struct", !47, i64 0}
!121 = !{!"p1 int", !47, i64 0}
!122 = !{!"p1 short", !47, i64 0}
!123 = !{!"_ZTSSt5ctypeIcE", !119, i64 0, !120, i64 16, !112, i64 24, !121, i64 32, !121, i64 40, !122, i64 48, !35, i64 56, !35, i64 57, !35, i64 313, !35, i64 569}
!124 = !{!123, !35, i64 56}
!125 = !{!35, !35, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish9PieceTypeESaIS1_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!127 = !{!126, !47, i64 0}
!128 = !{!126, !47, i64 8}
!129 = !{!83, !82, i64 0}
!130 = !{!84, !82, i64 0}
!131 = !{!110, !104, i64 32}
!132 = !{!75, !67, i64 48}
!133 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!134 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!135 = !{!62, !53, i64 48}
!136 = !{!"_ZTSSt13__atomic_baseIbE", !112, i64 0}
!137 = !{!136, !112, i64 0}
!138 = !{!"_ZTSSt6atomicIbE", !136, i64 0}
!139 = !{!"_ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE1EEE", !138, i64 0, !47, i64 8, !82, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !36, i64 48, !112, i64 52, !112, i64 53, !35, i64 54, !35, i64 56}
!140 = !{!139, !47, i64 8}
!141 = !{!"_ZTSN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE0EEE", !138, i64 0, !47, i64 8, !82, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !36, i64 48, !112, i64 52, !112, i64 53, !35, i64 54, !35, i64 56}
!142 = !{!141, !36, i64 48}
!143 = !{!139, !36, i64 48}
!144 = !{!141, !112, i64 52}
!145 = !{i8 0, i8 2}
!146 = !{}
!147 = !{!139, !112, i64 52}
!148 = !{!141, !112, i64 53}
!149 = !{!139, !112, i64 53}
!150 = !{!141, !44, i64 32}
!151 = !{!"_ZTSN9Stockfish12_GLOBAL__N_18TBTables5EntryE", !44, i64 0, !67, i64 8, !53, i64 16}
!152 = !{!151, !44, i64 0}
!153 = !{!151, !67, i64 8}
!154 = !{!141, !44, i64 40}
!155 = !{!"_ZTSSi", !44, i64 8}
!156 = !{!155, !44, i64 8}
!157 = !{ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev}
!158 = !{!"_ZTSN9Stockfish10Tablebases10ProbeStateE", !35, i64 0}
!159 = !{!158, !158, i64 0}
!160 = !{!"p1 _ZTSN9Stockfish4MoveE", !47, i64 0}
!161 = !{!"_ZTSN9Stockfish8MoveListILNS_7GenTypeE4EEE", !35, i64 0, !160, i64 512}
end_hunk_1
