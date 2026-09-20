Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaConcept?download=true
inline.NumInlined: 43754
inline.NumDeleted: 19584
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1118
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1119
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1117 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1119 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1117
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !810  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !847  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !810
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !810
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !4743

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !847
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1139
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1139
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1123
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !810
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !810
  %i.bd = add i32 %.0.i17, -1
  %i.be = and i32 %i.bd, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4744

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS2_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !4745

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1117
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2398
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2398
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPKN5clang4ExprESt6vectorINS1_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1118
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4ExprESt6vectorINS1_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4ExprESt6vectorINS1_18SubsumptionChecker25FoldExpendedConstraintKeyESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4ExprESt6vectorINS5_18SubsumptionChecker25FoldExpendedConstraintKeyESaISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1139   ; 6 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !4746 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1123
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !4748
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !4746
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.k, ptr %i.e, align 8, !tbaa !4746
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !4748
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !4746 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.e, align 8, !tbaa !4746
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 4 uses
  %i.s = icmp sgt i64 %i.r, 24
  br i1 %i.s, label %bb.e, label %bb.f, !prof !815

bb.e:                                             ; preds = %bb.d
  %.neg3.i = udiv exact i64 %i.r, 24
  %.neg3.neg.i = sub nsw i64 0, %.neg3.i
  %i.t = getelementptr inbounds [24 x i8], ptr %i.n, i64 %.neg3.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.l, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 24
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !4748
  br label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit

_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !4748
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.w = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.x = sub i64 %i.w, %i.c                       ; 2 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.i, label %_ZNKSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #30
  unreachable

_ZNKSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.z = sdiv exact i64 %i.x, 24                  ; 2 uses
  %mul2.i = shl nsw i64 %i.z, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i, i64 1) ; 2 uses
  %i.aa = icmp ult i64 %3, %i.z
  %i.ab = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.ac = select i1 %i.aa, i64 384307168202282325, i64 %i.ab ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.d ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !4748
  %i.ag = icmp sgt i64 %i.d, 0
  br i1 %i.ag, label %bb.j, label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ai = sub i64 %i.w, %i.b                      ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.v, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !1123
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.am) #27
  br label %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i, %bb.l
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  store ptr %i.ae, ptr %0, align 8, !tbaa !1122
  store ptr %i.an, ptr %i.e, align 8, !tbaa !4746
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !1123
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit, %_ZNSt6vectorIN5clang18SubsumptionChecker25FoldExpendedConstraintKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1122
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.d
  ret ptr %i.aq
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

declare void @_ZN5clang4Sema27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN5clang18SubsumptionChecker9NormalizeINS0_10CNFFormulaEEET_RKNS_20NormalizedConstraintEENKUlN4llvm11SmallVectorINS0_7LiteralELj12EEEE_clESA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef align 8 dereferenceable(64) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1274", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !85
  tail call void @qsort(ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4, ptr noundef nonnull @_ZN4llvm25array_pod_sort_comparatorIN5clang18SubsumptionChecker7LiteralEEEiPKvS5_) #25
  %.pr = load i32, ptr %i.a, align 8, !tbaa !84
  br label %_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit

_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.b, %bb.a ], [ %.pr, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !85     ; 6 uses
  %i.h = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.h, 2               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i ; 5 uses
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %_ZN4llvm15SmallVectorImplIN5clang18SubsumptionChecker7LiteralEE5eraseEPKS3_S6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.c

.preheader.i.i.i.i:                               ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN5clang18SubsumptionChecker7LiteralEE5eraseEPKS3_S6_.exit, label %bb.c, !llvm.loop !10

bb.c:                                             ; preds = %.lr.ph, %.preheader.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.preheader.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ %i.j, %.lr.ph ], [ %i.k, %.preheader.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i27 = phi ptr [ %i.g, %.lr.ph ], [ %i.l, %.preheader.i.i.i.i ] ; 7 uses
  %i.m = load i32, ptr %.0.i.i.i.i27, align 4     ; 4 uses
  %i.n = load i32, ptr %i.l, align 4
  %i.o = xor i32 %i.n, %i.m
  %i.p = and i32 %i.o, 65535
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZSt15__adjacent_findIPN5clang18SubsumptionChecker7LiteralEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !10

_ZSt15__adjacent_findIPN5clang18SubsumptionChecker7LiteralEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 8 ; 3 uses
  %.not23.i.i.i = icmp eq ptr %i.r, %i.i
  br i1 %.not23.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt15__adjacent_findIPN5clang18SubsumptionChecker7LiteralEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i.i
  %i.s = add nsw i64 %.idx.i, -12                 ; 2 uses
  %i.t = shl i64 %indvar, 2                       ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = and i64 %i.u, 4
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.w = load i32, ptr %i.r, align 4              ; 3 uses
  %i.x = xor i32 %i.w, %i.m
  %i.y = and i32 %i.x, 65535
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 4 ; 2 uses
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !78
  br label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.i.prol.loopexit.unr-lcssa:             ; preds = %bb.d, %.lr.ph.i.i.i.prol
  %i.ab = phi i32 [ %i.m, %.lr.ph.i.i.i.prol ], [ %i.w, %bb.d ]
  %.1.i.i.i.prol = phi ptr [ %.0.i.i.i.i27, %.lr.ph.i.i.i.prol ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 12
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.1.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.1.i.i.i.prol, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %.unr33 = phi ptr [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %.024.i.i.i.unr = phi ptr [ %.0.i.i.i.i27, %.lr.ph.i.i.i.preheader ], [ %.1.i.i.i.prol, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ad = icmp eq i64 %i.s, %i.t
  br i1 %i.ad, label %._crit_edge.i.i.i.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.g
  %i.ae = phi i32 [ %i.as, %bb.g ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.af = phi ptr [ %i.at, %bb.g ], [ %.unr33, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.024.i.i.i = phi ptr [ %.1.i.i.i.1, %bb.g ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = xor i32 %i.ag, %i.ae
  %i.ai = and i32 %i.ah, 65535
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 4 ; 2 uses
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !78
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.e, %.lr.ph.i.i.i
  %i.al = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.1.i.i.i = phi ptr [ %.024.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = xor i32 %i.an, %i.al
  %i.ap = and i32 %i.ao, 65535
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.1
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4 ; 2 uses
  store i32 %i.an, ptr %i.ar, align 4, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.1
  %i.as = phi i32 [ %i.al, %.lr.ph.i.i.i.1 ], [ %i.an, %bb.f ]
  %.1.i.i.i.1 = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i.1 ], [ %i.ar, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.at, %i.i
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !11

._crit_edge.i.i.i.loopexit:                       ; preds = %bb.g, %.lr.ph.i.i.i.prol.loopexit
  %.1.i.i.i.lcssa = phi ptr [ %.1.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.1.i.i.i.1, %bb.g ]
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !85
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %_ZSt15__adjacent_findIPN5clang18SubsumptionChecker7LiteralEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i.i
  %.pre = phi ptr [ %i.g, %_ZSt15__adjacent_findIPN5clang18SubsumptionChecker7LiteralEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i.i ], [ %.pre.pre, %._crit_edge.i.i.i.loopexit ]
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i.i27, %_ZSt15__adjacent_findIPN5clang18SubsumptionChecker7LiteralEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i.i ], [ %.1.i.i.i.lcssa, %._crit_edge.i.i.i.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 4
  br label %_ZN4llvm15SmallVectorImplIN5clang18SubsumptionChecker7LiteralEE5eraseEPKS3_S6_.exit

_ZN4llvm15SmallVectorImplIN5clang18SubsumptionChecker7LiteralEE5eraseEPKS3_S6_.exit: ; preds = %.preheader.i.i.i.i, %_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit, %._crit_edge.i.i.i
  %i.av = phi ptr [ %.pre, %._crit_edge.i.i.i ], [ %i.g, %_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit ], [ %i.g, %.preheader.i.i.i.i ]
  %.015.i.i.i = phi ptr [ %i.au, %._crit_edge.i.i.i ], [ %i.i, %_ZN4llvm4sortIRNS_11SmallVectorIN5clang18SubsumptionChecker7LiteralELj12EEEEEvOT_.exit ], [ %i.i, %.preheader.i.i.i.i ]
  %i.aw = ptrtoint ptr %.015.i.i.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 2
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !4750, !nonnull !769, !align !770 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.be, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_0
