Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegReAssign?download=true
inline.NumInlined: 2368
inline.NumDeleted: 1444
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj:bb.a
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !222
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !223
  store ptr %i.y, ptr %i.q, align 8, !tbaa !224
  store i32 0, ptr %i.p, align 16, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !249
  %i.aa = load ptr, ptr %0, align 8, !tbaa !936
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !249
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !249
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !249
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !225 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !225
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !225
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !225
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !225
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !222  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !222
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !225  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !228  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !225 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !225 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !937

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !228
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !225
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !938

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !939

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !222
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !232
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !232
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_16MCCFIInstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #17 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 16         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEET_SG_SG_T0_.exit"
  %i.i = icmp eq i64 %i.dy, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph59, !llvm.loop !940

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fi, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %i.o = and i64 %.fr.i.i.i26.lcssa, 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.l
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.aw, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.l, %._crit_edge ] ; 7 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166  ; 2 uses
  %i.v = icmp slt i64 %.09.us.i.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !253 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.z
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !166
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !166
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ab
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !166
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !166
  %i.ah = icmp sgt i64 %i.ae, %i.ag
  %spec.select.i.us.i.i.i = select i1 %i.ah, i64 %i.z, i64 %i.x ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !166
  %i.ak = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !166
  %i.al = icmp slt i64 %spec.select.i.us.i.i.i, %i.n
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !941

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !166 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !166
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !166
  %i.as = icmp sgt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.ao, ptr %i.at, align 8, !tbaa !166
  %i.au = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.au, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !942

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ], [ %.010.i.i.us.i.i.i, %bb.d ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %i.u, ptr %i.av, align 8, !tbaa !166
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.aw = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !943

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.cd, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.l, %.split.preheader.i.i.i ] ; 8 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !166 ; 2 uses
  %i.az = icmp slt i64 %.09.i.i.i, %i.n
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !253 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.ba = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bd
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !166
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bg
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !166
  %i.bl = icmp sgt i64 %i.bi, %i.bk
  %spec.select.i.i.i.i = select i1 %i.bl, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !166
  %i.bo = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !166
  %i.bp = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.bp, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !941

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.br = load i64, ptr %i.r, align 8, !tbaa !166
  store i64 %i.br, ptr %i.s, align 8, !tbaa !166
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bs = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !253 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ay
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !166 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !166
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !166
  %i.bz = icmp sgt i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %i.bv, ptr %i.ca, align 8, !tbaa !166
  %i.cb = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.cb, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !942

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %bb.i ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.ay, ptr %i.cc, align 8, !tbaa !166
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cd = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !943

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  %4 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %4, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ce, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_RT0_.exit.i.i" ]
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !166 ; 2 uses
  %i.cg = load i64, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !166
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.ch, %i.a                     ; 3 uses
  %i.cj = ashr exact i64 %i.ci, 3                 ; 3 uses
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = lshr i64 %i.ck, 1
  %i.cm = icmp sgt i64 %i.cj, 2
  br i1 %i.cm, label %.lr.ph.i.i.i18.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i18.i:                                 ; preds = %.lr.ph.i9.i
  %.val.val.i.i.i19.i = load ptr, ptr %i.f, align 8, !tbaa !253 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i18.i
  %.038.i.i.i20.i = phi i64 [ 0, %.lr.ph.i.i.i18.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.cn = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.co = add i64 %i.cn, 2                        ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.co
  %i.cq = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cq
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !166
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !166
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i19.i, i64 %i.cs
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !166
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i19.i, i64 %i.ct
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !166
  %i.cy = icmp sgt i64 %i.cv, %i.cx
  %spec.select.i.i.i21.i = select i1 %i.cy, i64 %i.cq, i64 %i.co ; 4 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i21.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !166
  %i.db = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i20.i
  store i64 %i.da, ptr %i.db, align 8, !tbaa !166
  %i.dc = icmp slt i64 %spec.select.i.i.i21.i, %i.cl
  br i1 %i.dc, label %bb.k, label %._crit_edge.i.i.i10.i, !llvm.loop !941

._crit_edge.i.i.i10.i:                            ; preds = %bb.k, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dd = and i64 %i.ci, 8
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.df = add nsw i64 %i.cj, -2
  %i.dg = ashr exact i64 %i.df, 1
  %i.dh = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.dg
  br i1 %i.dh, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.di = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.dj = or disjoint i64 %i.di, 1                ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !166
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !166
  br label %.lr.ph.i.i.i.i13.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.m, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.dj, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.m ]
  %.val.val.i.i.i.i14.i = load ptr, ptr %i.f, align 8, !tbaa !253 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.cf
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.o ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !166 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !166
  %i.ds = load i64, ptr %i.dn, align 8, !tbaa !166
  %i.dt = icmp sgt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.o, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store i64 %i.dp, ptr %i.du, align 8, !tbaa !166
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i", label %bb.n, !llvm.loop !942

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.0.lcssa.i.i.i.i17.i = phi i64 [ 0, %bb.m ], [ %.010.i.i.i.i15.i, %bb.n ], [ 0, %bb.o ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i17.i
  store i64 %i.cf, ptr %i.dv, align 8, !tbaa !166
  %i.dw = icmp sgt i64 %i.ci, 8
  br i1 %i.dw, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_T0_.exit", !llvm.loop !944

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2458 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02557 = phi i64 [ %i.dy, %bb.b ], [ %2, %.lr.ph ]
  %i.dx = phi i64 [ %i.fj, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dy = add nsw i64 %.02557, -1                 ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !253 ; 6 uses
  %i.dz = lshr i64 %i.dx, 1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %storemerge2458, i64 -8 ; 3 uses
  %i.ec = load i64, ptr %i.g, align 8, !tbaa !166 ; 3 uses
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !166 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ec
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !166 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ed
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !166 ; 3 uses
  %i.ei = icmp sgt i64 %i.ef, %i.eh
  %i.ej = load i64, ptr %i.eb, align 8, !tbaa !166 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !166 ; 4 uses
  br i1 %i.ei, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph59
  %i.em = icmp sgt i64 %i.eh, %i.el
  br i1 %i.em, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = load i64, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.ed, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.en, ptr %i.ea, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.eo = icmp sgt i64 %i.ef, %i.el
  %i.ep = load i64, ptr %.fr27, align 8, !tbaa !166 ; 2 uses
  br i1 %i.eo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %i.ej, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.ep, ptr %i.eb, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i64 %i.ec, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.ep, ptr %i.g, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.u:                                             ; preds = %.lr.ph59
  %i.eq = icmp sgt i64 %i.ef, %i.el
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = load i64, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.ec, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.er, ptr %i.g, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  %i.es = icmp sgt i64 %i.eh, %i.el
  %i.et = load i64, ptr %.fr27, align 8, !tbaa !166 ; 2 uses
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.ej, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.et, ptr %i.eb, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.y:                                             ; preds = %bb.w
  store i64 %i.ed, ptr %.fr27, align 8, !tbaa !166
  store i64 %i.et, ptr %i.ea, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.ab
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.ab ], [ %storemerge2458, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.012.0.i.i = phi ptr [ %i.fb, %bb.ab ], [ %i.g, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %i.eu = load i64, ptr %.fr27, align 8, !tbaa !166
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !166 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.fb, %bb.z ] ; 8 uses
  %i.ex = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !166 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !166
  %i.fa = icmp sgt i64 %i.ez, %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.fa, label %bb.z, label %.preheader.i.i, !llvm.loop !945

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.z ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.fc = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !166 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !166
  %i.ff = icmp sgt i64 %i.ew, %i.fe
  br i1 %i.ff, label %.preheader.i.i, label %bb.aa, !llvm.loop !946

bb.aa:                                            ; preds = %.preheader.i.i
  %i.fg = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.fg, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEET_SG_SG_T0_.exit"

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.fc, ptr %.sroa.012.1.i.i, align 8, !tbaa !166
  store i64 %i.ex, ptr %.sroa.09.1.i.i, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !947

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEET_SG_SG_T0_.exit": ; preds = %bb.aa
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2458, i64 noundef %i.dy, ptr %3)
  %i.fh = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fi = sub i64 %i.fh, %i.a                     ; 2 uses
  %i.fj = ashr exact i64 %i.fi, 3                 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, 16
  br i1 %i.fk, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_T0_.exit", !llvm.loop !940

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_SG_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt11RegReAssign13rankRegistersERNSA_14BinaryFunctionEE3$_1EEEvT_SG_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !322, !noalias !952 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323, !noalias !952 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !321, !noalias !952 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !273    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !225
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !226

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !273
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !229

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !225
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !230, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !327
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !315
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !229

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !327
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !323
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !322
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !225
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !225
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !315
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !273
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !273
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !322, !noalias !957 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323, !noalias !957 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !321, !noalias !957 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !273    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !225
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !226

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !273
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !229

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !225
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !230, !llvm.loop !3

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !327
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.521", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !321
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !322
end_hunk_0
