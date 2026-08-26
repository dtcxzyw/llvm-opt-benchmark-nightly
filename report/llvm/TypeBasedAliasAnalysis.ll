Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TypeBasedAliasAnalysis?download=true
inline.NumInlined: 910
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_:bb.a
.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !170
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.141", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !83
  store ptr %i.y, ptr %i.q, align 8, !tbaa !165
  store i32 0, ptr %i.p, align 16, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !92
  %i.aa = load ptr, ptr %0, align 8, !tbaa !170
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !92
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !92
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !166 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !166
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !166
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !166
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !166
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #22
  br label %_ZN4llvm8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !166  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !166 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !166 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !176

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !74
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !166
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !177

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !178

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !79
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !144
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !144
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #22
  store i32 0, ptr %i.d, align 4, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL8hasFieldN12_GLOBAL__N_118TBAAStructTypeNodeES0_(ptr nofree readonly captures(none) %0, ptr %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %i.c = and i64 %i.b, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.c, 0           ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i:    ; preds = %bb.a
  %i.d = and i64 %i.b, 960
  %i.e = icmp samesign ult i64 %i.d, 192
  br i1 %i.e, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread.i, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %i.h = icmp ult i32 %i.g, 3
  br i1 %i.h, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12._ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread7_crit_edge.i

_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread.i: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i
  %2 = trunc i64 %i.b to i32
  %3 = lshr i32 %2, 6
  %4 = and i32 %3, 15
  %5 = add nsw i32 %4, -1
  %6 = lshr i32 %5, 1
  br label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread

_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.i: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i
  %i.i = lshr i64 %i.b, 2
  %i.j = and i64 %i.i, 15
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = load i8, ptr %i.m, align 4, !tbaa !45
  %.fr917.i = freeze i8 %i.n
  %i.o = add i8 %.fr917.i, -5
  %switch.i.i.i.i.i.i.i.i.i.i18.i = icmp ult i8 %i.o, 33 ; 2 uses
  %spec.select19.i = select i1 %switch.i.i.i.i.i.i.i.i.i.i18.i, i32 -3, i32 -1
  %7 = trunc i64 %i.b to i32
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 15
  %10 = add nsw i32 %spec.select19.i, %9          ; 2 uses
  %11 = lshr i32 %10, 1
  br i1 %switch.i.i.i.i.i.i.i.i.i.i18.i, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.a, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i
  %12 = add nsw i32 %i.g, -1
  %13 = lshr i32 %12, 1
  br label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread

_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12._ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread7_crit_edge.i: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i
  %i.p = getelementptr inbounds i8, ptr %0, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = load i8, ptr %i.r, align 4, !tbaa !45
  %.fr9.i = freeze i8 %i.s
  %i.t = add i8 %.fr9.i, -5
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.t, 33 ; 2 uses
  %spec.select.i = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i, i32 -3, i32 -1
  %14 = add i32 %spec.select.i, %i.g              ; 2 uses
  %15 = lshr i32 %14, 1
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.a, label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread

_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.a: ; preds = %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12._ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread7_crit_edge.i, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.i
  %i.u = phi i32 [ %10, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.i ], [ %14, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12._ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread7_crit_edge.i ]
  %i.v = udiv i32 %i.u, 3
  br label %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread

_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread: ; preds = %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread.i, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12._ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread7_crit_edge.i, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.a
  %16 = phi i32 [ %i.v, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.a ], [ %15, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12._ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread7_crit_edge.i ], [ %13, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i ], [ %11, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.i ], [ %6, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode11isNewFormatEv.exit12.thread.thread.i ] ; 5 uses
  %.not23.not = icmp eq i32 %16, 0
  br i1 %.not23.not, label %.thread, label %.lr.ph.thread

.lr.ph.thread:                                    ; preds = %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread
  %i.w = lshr i64 %i.b, 2
  %i.x = and i64 %i.w, 15
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.y ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.thread
  %17 = and i64 %i.b, 960
  %18 = icmp samesign ult i64 %17, 192
  br i1 %18, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i19.us.us.preheader, label %.lr.ph.split.us.split

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i19.us.us.preheader: ; preds = %.lr.ph.split.us
  %19 = zext nneg i32 %16 to i64
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us.us

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us.us: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i19.us.us.preheader, %bb.b
  %indvars.iv63 = phi i64 [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i19.us.us.preheader ], [ %indvars.iv.next64, %bb.b ] ; 2 uses
  %i.aa = shl nuw nsw i64 %indvars.iv63, 4
  %20 = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.thread, label %.critedge.us.us

bb.b:                                             ; preds = %.critedge.us.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %.not.us.us.not = icmp eq i64 %indvars.iv.next64, %19
  br i1 %.not.us.us.not, label %.thread, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us.us, !llvm.loop !179

.critedge.us.us:                                  ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us.us
  %i.ae = tail call fastcc noundef zeroext i1 @_ZL8hasFieldN12_GLOBAL__N_118TBAAStructTypeNodeES0_(ptr %i.ac, ptr %1)
  br i1 %i.ae, label %.thread, label %bb.b

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !45
  %.fr10.i20.us = freeze i8 %i.ag
  %i.ah = add i8 %.fr10.i20.us, -5
  %switch.i.i.i.i.i.i.i.i.i.i15.i.us = icmp ult i8 %i.ah, 33 ; 2 uses
  %spec.select16.i.us = select i1 %switch.i.i.i.i.i.i.i.i.i.i15.i.us, i64 3, i64 1
  %spec.select8.i21.us = select i1 %switch.i.i.i.i.i.i.i.i.i.i15.i.us, i64 3, i64 2
  %21 = zext nneg i32 %16 to i64
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us: ; preds = %bb.c, %.lr.ph.split.us.split
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %bb.c ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.ai = mul i64 %spec.select8.i21.us, %indvars.iv59
  %i.aj = add i64 %i.ai, %spec.select16.i.us
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %.thread, label %.critedge.us

bb.c:                                             ; preds = %.critedge.us
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %.not.us.not = icmp eq i64 %indvars.iv.next60, %21
  br i1 %.not.us.not, label %.thread, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us, !llvm.loop !179

.critedge.us:                                     ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us
  %i.ao = tail call fastcc noundef zeroext i1 @_ZL8hasFieldN12_GLOBAL__N_118TBAAStructTypeNodeES0_(ptr %i.am, ptr %1)
  br i1 %i.ao, label %.thread, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph.thread
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -32
  %i.aq = getelementptr inbounds i8, ptr %0, i64 -24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !41
  %i.as = icmp ult i32 %i.ar, 3
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 3 uses
  br i1 %i.as, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us.preheader, label %.lr.ph.split.split

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us.preheader: ; preds = %.lr.ph.split
  %22 = zext nneg i32 %16 to i64
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us.preheader, %bb.d
  %indvars.iv55 = phi i64 [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us.preheader ], [ %indvars.iv.next56, %bb.d ] ; 2 uses
  %i.au = shl nuw nsw i64 %indvars.iv55, 4
  %23 = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %1
  br i1 %i.ax, label %.thread, label %.critedge.us38

bb.d:                                             ; preds = %.critedge.us38
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.not.us36.not = icmp eq i64 %indvars.iv.next56, %22
  br i1 %.not.us36.not, label %.thread, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us, !llvm.loop !179

.critedge.us38:                                   ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us
  %i.ay = tail call fastcc noundef zeroext i1 @_ZL8hasFieldN12_GLOBAL__N_118TBAAStructTypeNodeES0_(ptr %i.aw, ptr %1)
  br i1 %i.ay, label %.thread, label %bb.d

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !45
  %.fr10.i20 = freeze i8 %i.ba
  %i.bb = add i8 %.fr10.i20, -5
  %switch.i.i.i.i.i.i.i.i.i.i.i16 = icmp ult i8 %i.bb, 33 ; 2 uses
  %spec.select.i17 = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i16, i64 3, i64 1
  %spec.select8.i21 = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i16, i64 3, i64 2
  %24 = zext nneg i32 %16 to i64
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14

bb.e:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.not = icmp eq i64 %indvars.iv.next, %24
  br i1 %.not.not, label %.thread, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14, !llvm.loop !179

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14: ; preds = %.lr.ph.split.split, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bc = mul i64 %spec.select8.i21, %indvars.iv
  %i.bd = add i64 %i.bc, %spec.select.i17
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %1
  br i1 %i.bh, label %.thread, label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14
  %i.bi = tail call fastcc noundef zeroext i1 @_ZL8hasFieldN12_GLOBAL__N_118TBAAStructTypeNodeES0_(ptr %i.bg, ptr %1)
  br i1 %i.bi, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.e, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14, %.critedge, %bb.d, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us, %.critedge.us38, %bb.c, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us, %.critedge.us, %bb.b, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us.us, %.critedge.us.us, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread
  %.not.lcssa = phi i1 [ false, %_ZNK12_GLOBAL__N_118TBAAStructTypeNode12getNumFieldsEv.exit.thread ], [ true, %.critedge.us.us ], [ true, %.critedge.us ], [ true, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14.us ], [ true, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us.us ], [ false, %bb.b ], [ true, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i22.us ], [ false, %bb.c ], [ false, %bb.d ], [ true, %.critedge.us38 ], [ true, %.critedge ], [ true, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i14 ], [ false, %bb.e ]
  ret i1 %.not.lcssa
}

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4llvm15callDefaultCtorINS_22TypeBasedAAWrapperPassEEEPNS_4PassEv() #3 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  tail call void @_ZN4llvm22TypeBasedAAWrapperPassC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #22
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.p [
    i8 8, label %bb.b
    i8 15, label %bb.c
    i8 17, label %bb.e
    i8 16, label %bb.f
    i8 13, label %bb.g
    i8 12, label %bb.h
    i8 0, label %bb.q
    i8 1, label %bb.q
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 6, label %bb.k
    i8 5, label %bb.k
    i8 10, label %bb.l
    i8 4, label %bb.m
    i8 18, label %bb.n
    i8 19, label %bb.n
    i8 21, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef 0) #22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !180
  %i.f = zext i32 %i.e to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 254
  %spec.select.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !189
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ]
  %i.l = lshr i32 %i.k, 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef %i.l) #22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !180
  %i.p = zext i32 %i.o to i64
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192
  %i.u = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.t) #22 ; 2 uses
  %.fca.0.extract1.i = extractvalue { i64, i8 } %i.u, 0
  %.fca.1.extract2.i = extractvalue { i64, i8 } %i.u, 1
  %i.v = shl i64 %i.r, 3
  %i.w = mul i64 %i.v, %.fca.0.extract1.i
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull %1) #22 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %i.y = shl i64 %.sroa.0.0.copyload1.i.i.i.i, 3
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.z = lshr i32 %i.b, 8
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ab = lshr i32 %i.b, 8
  %i.ac = zext nneg i32 %i.ab to i64
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.a, %bb.a
  %i.ad = and i32 %i.b, 255
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !193
  %i.ag = icmp eq i32 %i.ad, 19
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !195
  %i.ak = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.aj)
  %.fca.0.extract1 = extractvalue { i64, i8 } %i.ak, 0
  %i.al = mul i64 %.fca.0.extract1, %i.ah
  %.sroa.078.4.extract.trunc = zext i1 %i.ag to i8
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.am = tail call noundef ptr @_ZNK4llvm13TargetExtType13getLayoutTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #22
  %i.an = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.am) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.an, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.an, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  unreachable

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %bb.b
  %.sroa.082.0 = phi i64 [ %i.f, %bb.b ], [ %i.p, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.aa, %bb.g ], [ %i.ac, %bb.h ], [ %.fca.0.extract, %bb.o ], [ 32, %bb.i ], [ 64, %bb.j ], [ 128, %bb.k ], [ 8192, %bb.l ], [ 80, %bb.m ], [ %i.al, %bb.n ], [ 16, %bb.a ], [ 16, %bb.a ]
  %.sroa.15.0 = phi i8 [ 0, %bb.b ], [ 0, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %.fca.1.extract2.i, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.fca.1.extract, %bb.o ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ %.sroa.078.4.extract.trunc, %bb.n ], [ 0, %bb.a ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.082.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.15.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm13TargetExtType13getLayoutTypeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #5

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm13ImmutablePassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !196, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !196, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5
end_hunk_0
