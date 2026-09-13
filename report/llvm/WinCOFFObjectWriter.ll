Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WinCOFFObjectWriter?download=true
inline.NumInlined: 2058
inline.NumDeleted: 987
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj:_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit
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
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !230
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !228
  store ptr %i.y, ptr %i.q, align 8, !tbaa !229
  store i32 0, ptr %i.p, align 16, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !231
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !276
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !276
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !207 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !207
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !207
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEC2EjNS_12DenseMapBaseISA_S3_S5_S7_S9_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !228 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !230 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !229 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !228
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !230
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !207  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.ar, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val11, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !165  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !207  ; 2 uses
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.016.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !207 ; 2 uses
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !728

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa15.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %.lcssa13.i
  store ptr %i.p, ptr %i.an, align 8, !tbaa !165
  %i.ao = shl nuw i32 1, %.lcssa.i
  %i.ap = or i32 %i.ao, %.lcssa11.i
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !207
  %i.aq = add i32 %.0.i21, -1
  %i.ar = and i32 %i.aq, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !729

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !730

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !230
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.as = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.at, align 8, !tbaa !232
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.au, align 8, !tbaa !232
  %i.av = icmp eq i32 %i.as, 0
  br i1 %i.av, label %_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.aw = zext i32 %i.as to i64                   ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.aw, 31
  %i.az = lshr i64 %i.ay, 3
  %i.ba = and i64 %i.az, 1073741820
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val11, i64 noundef %i.bb, i64 noundef 8) #24
  store i32 0, ptr %i.b, align 4, !tbaa !230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #21 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr30, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEET_SG_SG_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !731

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !132
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !132
  %i.ac = getelementptr i8, ptr %i.aa, i64 72
  %.val2.i.i.us.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !128
  %i.ad = getelementptr i8, ptr %i.ab, i64 72
  %.val3.i.i.us.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !128
  %i.ae = icmp slt i32 %.val2.i.i.us.i.i.i, %.val3.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !132
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !732

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 72
  %.val16.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !128
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.06.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.097.in.i.i.us.i.i.i = add nsw i64 %.06.i.i.us.i.i.i, -1
  %.097.i.i.us.i.i.i = sdiv i64 %.097.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 72
  %.val2.i.i.i.us.i.i.i = load i32, ptr %i.am, align 8, !tbaa !128
  %i.an = icmp slt i32 %.val2.i.i.i.us.i.i.i, %.val16.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.06.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !132
  %i.ap = icmp sgt i64 %.097.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !733

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ], [ %.06.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !132
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !734

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !132 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !132
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !132
  %i.bc = getelementptr i8, ptr %i.ba, i64 72
  %.val2.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !128
  %i.bd = getelementptr i8, ptr %i.bb, i64 72
  %.val3.i.i.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !128
  %i.be = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !132
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !132
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !732

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !132
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !132
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 72
  %.val16.val.i.i.i.i.i = load i32, ptr %i.bm, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.h ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 72
  %.val2.i.i.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !128
  %i.bq = icmp slt i32 %.val2.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.06.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !132
  %i.bs = icmp sgt i64 %.097.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !733

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.06.i.i.i.i.i, %bb.g ], [ %.097.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !132
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !734

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i29.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 2 uses
  %i.bx = load ptr, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !132
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.038.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !132
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !132
  %i.cl = getelementptr i8, ptr %i.cj, i64 72
  %.val2.i.i.i.i21.i = load i32, ptr %i.cl, align 8, !tbaa !128
  %i.cm = getelementptr i8, ptr %i.ck, i64 72
  %.val3.i.i.i.i22.i = load i32, ptr %i.cm, align 8, !tbaa !128
  %i.cn = icmp slt i32 %.val2.i.i.i.i21.i, %.val3.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !132
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !132
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !732

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !132
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !132
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 72
  %.val16.val.i.i.i.i14.i = load i32, ptr %i.dc, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.06.i.i.i.i15.i = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.097.i.i56.i.i.i, %bb.l ] ; 3 uses
  %.097.in.i.i.i.i16.i = add nsw i64 %.06.i.i.i.i15.i, -1
  %.097.i.i56.i.i.i = lshr i64 %.097.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i56.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !132 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 72
  %.val2.i.i.i.i.i17.i = load i32, ptr %i.df, align 8, !tbaa !128
  %i.dg = icmp slt i32 %.val2.i.i.i.i.i17.i, %.val16.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.06.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !132
  %.not7.i.i.i = icmp eq i64 %.097.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %bb.k, !llvm.loop !733

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.06.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !132
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !735

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2754 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr31, %.lr.ph ] ; 3 uses
  %.02853 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02853, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2754, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !132 ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !132 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 72
  %.val2.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !128 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 72
  %.val3.i.i.i = load i32, ptr %i.ds, align 8, !tbaa !128 ; 3 uses
  %i.dt = icmp slt i32 %.val2.i.i.i, %.val3.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !132 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 72
  %.val3.i27.i.i = load i32, ptr %i.dv, align 8, !tbaa !128 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph55
  %i.dw = icmp slt i32 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.dq, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp slt i32 %.val2.i.i.i, %.val3.i27.i.i
  %i.dz = load ptr, ptr %.fr30, align 8, !tbaa !132 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph55
  %i.ea = icmp slt i32 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.dp, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp slt i32 %.val3.i.i.i, %.val3.i27.i.i
  %i.ed = load ptr, ptr %.fr30, align 8, !tbaa !132 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr30, align 8, !tbaa !132
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2754, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr30, align 8, !tbaa !132
  %i.ef = getelementptr i8, ptr %i.ee, i64 72
  %.val3.i.i18.i = load i32, ptr %i.ef, align 8, !tbaa !128 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !132 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 72
  %.val2.i.i19.i = load i32, ptr %i.eh, align 8, !tbaa !128
  %i.ei = icmp slt i32 %.val2.i.i19.i, %.val3.i.i18.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !736

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !132 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 72
  %.val3.i10.i.i = load i32, ptr %i.el, align 8, !tbaa !128
  %i.em = icmp slt i32 %.val3.i.i18.i, %.val3.i10.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !737

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEET_SG_SG_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !132
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !132
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !738

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2754, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !731

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_111COFFSectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm13WinCOFFWriter19writeSectionHeadersEvE3$_0EEEvT_SG_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !134}
!1 = distinct !{!1, !134}
!2 = distinct !{!2, !134}
!3 = distinct !{null}
!4 = distinct !{!4, !134}
!5 = distinct !{!5, !134}
!6 = distinct !{!6, !134}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTSN4llvm11MCAssemblerE", !15, i64 0}
!17 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !15, i64 0, !12, i64 8, !12, i64 12}
!18 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEvEE", !17, i64 0}
!19 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb0EEE", !18, i64 0}
!20 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEE", !19, i64 0}
!21 = !{!"_ZTSN4llvm11SmallVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELj0EEE", !20, i64 0}
!22 = !{!"p1 omnipotent char", !15, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !11, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !11, i64 16}
!26 = !{!"any p2 pointer", !15, i64 0}
!27 = !{!"p2 _ZTSN4llvm8MCSymbolE", !26, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm8MCSymbolESaIS3_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm8MCSymbolESaIS3_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIPKN4llvm8MCSymbolESaIS3_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIPKN4llvm8MCSymbolESaIS3_EE", !30, i64 0}
!32 = !{!"bool", !11, i64 0}
!33 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_14MCObjectWriter14CGProfileEntryEvEE", !17, i64 0}
!34 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_14MCObjectWriter14CGProfileEntryELb1EEE", !33, i64 0}
!35 = !{!"_ZTSN4llvm15SmallVectorImplINS_14MCObjectWriter14CGProfileEntryEEE", !34, i64 0}
!36 = !{!"_ZTSN4llvm11SmallVectorINS_14MCObjectWriter14CGProfileEntryELj0EEE", !35, i64 0}
!37 = !{!"_ZTSN4llvm14MCObjectWriterE", !16, i64 8, !21, i64 16, !25, i64 32, !31, i64 64, !32, i64 88, !32, i64 89, !36, i64 96}
!38 = !{!37, !16, i64 8}
!39 = !{!17, !15, i64 0}
!40 = !{!17, !12, i64 8}
!41 = !{!17, !12, i64 12}
!42 = !{!23, !22, i64 0}
!43 = !{!25, !24, i64 8}
!44 = !{!11, !11, i64 0}
!45 = !{!"vtable pointer", !10, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"p1 _ZTSN4llvm27MCWinCOFFObjectTargetWriterE", !15, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTSN4llvm13WinCOFFWriterE", !15, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13WinCOFFWriterELb0EE", !49, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm27MCWinCOFFObjectTargetWriterELb0EE", !47, i64 0}
!53 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm27MCWinCOFFObjectTargetWriterESt14default_deleteIS1_EEE", !52, i64 0}
!54 = !{!"_ZTSSt5tupleIJPN4llvm27MCWinCOFFObjectTargetWriterESt14default_deleteIS1_EEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm27MCWinCOFFObjectTargetWriterESt14default_deleteIS1_EE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm27MCWinCOFFObjectTargetWriterESt14default_deleteIS1_ELb1ELb1EE", !55, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIN4llvm27MCWinCOFFObjectTargetWriterESt14default_deleteIS1_EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13WinCOFFWriterESt14default_deleteIS1_EEE", !51, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN4llvm13WinCOFFWriterESt14default_deleteIS1_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13WinCOFFWriterESt14default_deleteIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13WinCOFFWriterESt14default_deleteIS1_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrIN4llvm13WinCOFFWriterESt14default_deleteIS1_EE", !61, i64 0}
!63 = !{!"_ZTSN4llvm19WinCOFFObjectWriterE", !37, i64 0, !57, i64 112, !62, i64 120, !62, i64 128, !32, i64 136}
!64 = !{!63, !32, i64 136}
!65 = !{!"p1 _ZTSN4llvm19WinCOFFObjectWriterE", !15, i64 0}
!66 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !15, i64 0}
!67 = !{!"_ZTSN4llvm10endiannessE", !11, i64 0}
!68 = !{!"_ZTSN4llvm7support6endian6WriterE", !66, i64 0, !67, i64 8}
!69 = !{!68, !67, i64 8}
!70 = !{!"short", !11, i64 0}
!71 = !{!"_ZTSN4llvm4COFF6headerE", !70, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !70, i64 20, !70, i64 22}
!72 = !{!"p1 _ZTSSt10unique_ptrIN12_GLOBAL__N_111COFFSectionESt14default_deleteIS1_EE", !15, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_111COFFSectionESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_111COFFSectionESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_111COFFSectionESt14default_deleteIS2_EESaIS5_EE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorISt10unique_ptrIN12_GLOBAL__N_111COFFSectionESt14default_deleteIS2_EESaIS5_EE", !75, i64 0}
!77 = !{!"p1 _ZTSSt10unique_ptrIN12_GLOBAL__N_110COFFSymbolESt14default_deleteIS1_EE", !15, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_110COFFSymbolESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_110COFFSymbolESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_110COFFSymbolESt14default_deleteIS2_EESaIS5_EE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorISt10unique_ptrIN12_GLOBAL__N_110COFFSymbolESt14default_deleteIS2_EESaIS5_EE", !80, i64 0}
!82 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_19CachedHashStringRefEhEE", !15, i64 0}
!83 = !{!"p1 int", !15, i64 0}
!84 = !{!"_ZTSN4llvm8DenseMapINS_19CachedHashStringRefEhNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_hEEEE", !82, i64 0, !83, i64 8, !12, i64 16, !12, i64 20}
!85 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_19CachedHashStringRefEmEE", !15, i64 0}
!86 = !{!"_ZTSN4llvm8DenseMapINS_19CachedHashStringRefEmNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_mEEEE", !85, i64 0, !83, i64 8, !12, i64 16, !12, i64 20}
!87 = !{!"_ZTSN4llvm18StringTableBuilder4KindE", !11, i64 0}
!88 = !{!"_ZTSN4llvm5AlignE", !11, i64 0}
!89 = !{!"_ZTSN4llvm18StringTableBuilderE", !84, i64 0, !86, i64 24, !24, i64 48, !87, i64 56, !88, i64 60, !32, i64 61}
!90 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionEEE", !15, i64 0}
!91 = !{!"_ZTSN4llvm8DenseMapIPKNS_9MCSectionEPN12_GLOBAL__N_111COFFSectionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !90, i64 0, !83, i64 8, !12, i64 16, !12, i64 20}
!92 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolEEE", !15, i64 0}
!93 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !92, i64 0, !83, i64 8, !12, i64 16, !12, i64 20}
!94 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIPKNS_9MCSectionEmEPN12_GLOBAL__N_110COFFSymbolEEE", !15, i64 0}
!95 = !{!"_ZTSN4llvm8DenseMapISt4pairIPKNS_9MCSectionEmEPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEE", !94, i64 0, !83, i64 8, !12, i64 16, !12, i64 20}
!96 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPN12_GLOBAL__N_110COFFSymbolEEE", !15, i64 0}
!97 = !{!"_ZTSN4llvm8DenseMapIPN12_GLOBAL__N_110COFFSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEE", !96, i64 0, !83, i64 8, !12, i64 16, !12, i64 20}
!98 = !{!"_ZTSN4llvm6detail12DenseSetImplIPN12_GLOBAL__N_110COFFSymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEEE", !97, i64 0}
!99 = !{!"_ZTSN4llvm8DenseSetIPN12_GLOBAL__N_110COFFSymbolENS_12DenseMapInfoIS3_vEEEE", !98, i64 0}
!100 = !{!"_ZTSN4llvm13WinCOFFWriter7DwoModeE", !11, i64 0}
!101 = !{!"_ZTSN4llvm13WinCOFFWriterE", !65, i64 0, !68, i64 8, !16, i64 24, !71, i64 32, !76, i64 56, !81, i64 80, !89, i64 104, !91, i64 168, !93, i64 192, !95, i64 216, !99, i64 240, !32, i64 264, !32, i64 265, !12, i64 268, !100, i64 272}
!102 = !{!101, !16, i64 24}
!103 = !{!71, !70, i64 0}
!104 = !{!101, !12, i64 268}
!105 = !{!101, !100, i64 272}
!106 = !{!"_ZTSN4llvm20MCObjectTargetWriterE", !16, i64 8}
!107 = !{!"_ZTSN4llvm27MCWinCOFFObjectTargetWriterE", !106, i64 0, !12, i64 16}
!108 = !{!107, !12, i64 16}
!109 = !{!101, !70, i64 32}
!110 = !{!101, !32, i64 265}
!111 = !{!22, !22, i64 0}
!112 = !{!24, !24, i64 0}
!113 = !{!25, !22, i64 0}
!114 = !{!"_ZTSN4llvm4COFF7sectionE", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !70, i64 32, !70, i64 34, !12, i64 36}
!115 = !{!"p1 _ZTSN4llvm13MCSectionCOFFE", !15, i64 0}
!116 = !{!"p1 _ZTSN12_GLOBAL__N_110COFFSymbolE", !15, i64 0}
!117 = !{!"p1 _ZTSN12_GLOBAL__N_114COFFRelocationE", !15, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_114COFFRelocationESaIS1_EE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_114COFFRelocationESaIS1_EE12_Vector_implE", !118, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_114COFFRelocationESaIS1_EE", !119, i64 0}
!121 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_114COFFRelocationESaIS1_EE", !120, i64 0}
!122 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN12_GLOBAL__N_110COFFSymbolEvEE", !17, i64 0}
!123 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_110COFFSymbolELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm15SmallVectorImplIPN12_GLOBAL__N_110COFFSymbolEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm18SmallVectorStorageIPN12_GLOBAL__N_110COFFSymbolELj1EEE", !11, i64 0}
!126 = !{!"_ZTSN4llvm11SmallVectorIPN12_GLOBAL__N_110COFFSymbolELj1EEE", !124, i64 0, !125, i64 16}
!127 = !{!"_ZTSN12_GLOBAL__N_111COFFSectionE", !114, i64 0, !25, i64 40, !12, i64 72, !115, i64 80, !116, i64 88, !121, i64 96, !126, i64 120}
!128 = !{!127, !12, i64 72}
!129 = !{!73, !72, i64 8}
!130 = !{!73, !72, i64 16}
!131 = !{!"p1 _ZTSN12_GLOBAL__N_111COFFSectionE", !15, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!73, !72, i64 0}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = !{!127, !116, i64 88}
!138 = !{!"p1 _ZTSN4llvm9MCSection8FragListE", !15, i64 0}
!139 = !{!"p1 _ZTSN4llvm8MCSymbolE", !15, i64 0}
!140 = !{!"p1 _ZTSN4llvm10MCFragmentE", !15, i64 0}
!141 = !{!"p1 _ZTSN4llvm9MCSectionE", !15, i64 0}
!142 = !{!"_ZTSN4llvm10MCFragment12FragmentTypeE", !11, i64 0}
!143 = !{!"p1 _ZTSN4llvm15MCSubtargetInfoE", !15, i64 0}
!144 = !{!"_ZTSN4llvm10MCFragmentE", !140, i64 0, !141, i64 8, !24, i64 16, !12, i64 24, !142, i64 28, !11, i64 29, !32, i64 30, !32, i64 30, !32, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !143, i64 56, !11, i64 64}
!145 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIjNS_9MCSection8FragListEEvEE", !17, i64 0}
!146 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIjNS_9MCSection8FragListEELb1EEE", !145, i64 0}
!147 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIjNS_9MCSection8FragListEEEE", !146, i64 0}
!148 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIjNS_9MCSection8FragListEELj1EEE", !11, i64 0}
!149 = !{!"_ZTSN4llvm11SmallVectorISt4pairIjNS_9MCSection8FragListEELj1EEE", !147, i64 0, !148, i64 16}
!150 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !15, i64 0, !24, i64 8, !24, i64 16}
!151 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIcvEE", !150, i64 0}
!152 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIcLb1EEE", !151, i64 0}
end_hunk_0
