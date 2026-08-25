Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Localizer?download=true
inline.NumInlined: 761
inline.NumDeleted: 497
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_:bb.a
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !211
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !230
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !354

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !355

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !228
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !206
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.202", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !200
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !203
  store ptr %i.y, ptr %i.q, align 8, !tbaa !267
  store i32 0, ptr %i.p, align 16, !tbaa !308
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !356
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !8
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !230 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !230
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !230
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !230
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !230
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !203
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !200  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !267  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !203
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !200
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !230  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !269
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !357
  %i.ac = mul i32 %i.ab, 37
  %i.ad = shl i64 %i.z, 32
  %i.ae = zext i32 %i.ac to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !230
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !230
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !358

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !230
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !230
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !230
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !230
  %i.bj = add i32 %.0.i17, -1
  %i.bk = and i32 %i.bj, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !359

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES5_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S5_EEEES6_S5_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !360

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !200
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !308
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !308
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !203
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES4_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockENS_8RegisterEES8_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S8_EEEES9_S8_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !9, i64 32}
!17 = !{!"_ZTSN4llvm8PassInfoE", !18, i64 0, !18, i64 16, !9, i64 32, !19, i64 40, !19, i64 41, !9, i64 48}
!18 = !{!"_ZTSN4llvm9StringRefE", !13, i64 0, !15, i64 8}
!19 = !{!"bool", !6, i64 0}
!20 = !{!17, !19, i64 40}
!21 = !{!17, !19, i64 41}
!22 = !{!17, !9, i64 48}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSN4llvm4PassE", !25, i64 8, !9, i64 16, !26, i64 24}
!25 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !9, i64 0}
!26 = !{!"_ZTSN4llvm8PassKindE", !6, i64 0}
!27 = !{!24, !9, i64 16}
!28 = !{!24, !26, i64 24}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = !{!32, !9, i64 16}
!32 = !{!"_ZTSSt14_Function_base", !6, i64 0, !9, i64 16}
!33 = distinct !{null}
!34 = !{!35, !9, i64 24}
!35 = !{!"_ZTSSt8functionIFbRKN4llvm15MachineFunctionEEE", !32, i64 0, !9, i64 24}
!36 = !{!37, !42, i64 32}
!37 = !{!"_ZTSN4llvm15MachineFunctionE", !38, i64 0, !39, i64 8, !40, i64 16, !41, i64 24, !42, i64 32, !43, i64 40, !44, i64 48, !45, i64 56, !46, i64 64, !47, i64 72, !48, i64 80, !49, i64 88, !5, i64 112, !5, i64 116, !55, i64 120, !66, i64 200, !68, i64 208, !74, i64 288, !76, i64 296, !5, i64 312, !84, i64 316, !19, i64 317, !19, i64 318, !19, i64 319, !85, i64 320, !88, i64 328, !95, i64 336, !100, i64 360, !100, i64 384, !105, i64 408, !110, i64 432, !113, i64 456, !115, i64 480, !117, i64 504, !19, i64 528, !19, i64 529, !19, i64 530, !19, i64 531, !19, i64 532, !19, i64 533, !19, i64 534, !5, i64 536, !122, i64 540, !123, i64 544, !125, i64 568, !130, i64 592, !130, i64 616, !134, i64 640, !135, i64 648, !136, i64 656, !137, i64 664, !139, i64 688, !141, i64 712, !5, i64 856, !146, i64 864, !151, i64 1040, !19, i64 1064}
!38 = !{!"p1 _ZTSN4llvm8FunctionE", !9, i64 0}
!39 = !{!"p1 _ZTSN4llvm13TargetMachineE", !9, i64 0}
!40 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !9, i64 0}
!41 = !{!"p1 _ZTSN4llvm9MCContextE", !9, i64 0}
!42 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !9, i64 0}
!43 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !9, i64 0}
!44 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !9, i64 0}
!45 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !9, i64 0}
!46 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !9, i64 0}
!47 = !{!"p1 _ZTSN4llvm9MCSectionE", !9, i64 0}
!48 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !9, i64 0}
!49 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !54, i64 0}
!54 = !{!"any p2 pointer", !9, i64 0}
!55 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !13, i64 0, !15, i64 8, !56, i64 16, !62, i64 64}
!56 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !57, i64 0, !61, i64 16}
!57 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !58, i64 0}
!58 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !59, i64 0}
!59 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !60, i64 0}
!60 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !9, i64 0, !5, i64 8, !5, i64 12}
!61 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !6, i64 0}
!62 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !63, i64 0}
!63 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !64, i64 0}
!64 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !65, i64 0}
!65 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !60, i64 0}
!66 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !67, i64 0}
!67 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !9, i64 0}
!68 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !69, i64 0}
!69 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !70, i64 0, !73, i64 16}
!70 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !71, i64 0}
!71 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !72, i64 0}
!72 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !60, i64 0}
!73 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !6, i64 0}
!74 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !75, i64 0}
!75 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !9, i64 0}
!76 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !77, i64 0}
!77 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !78, i64 0}
!78 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !79, i64 0}
!79 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !80, i64 0}
!80 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !81, i64 0}
!81 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !82, i64 0}
!82 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !83, i64 0, !83, i64 8}
!83 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !9, i64 0}
!84 = !{!"_ZTSN4llvm5AlignE", !6, i64 0}
!85 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !86, i64 0}
!86 = !{!"_ZTSSt6bitsetILm12EE", !87, i64 0}
!87 = !{!"_ZTSSt12_Base_bitsetILm1EE", !15, i64 0}
!88 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !89, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !90, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !91, i64 0}
!91 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !92, i64 0}
!92 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !93, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !94, i64 0}
!94 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !9, i64 0}
!95 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !96, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!99 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !9, i64 0}
!100 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p2 _ZTSN4llvm8MCSymbolE", !54, i64 0}
!105 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !106, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!109 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !9, i64 0}
!110 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !111, i64 0, !112, i64 8, !5, i64 16, !5, i64 20}
!111 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !9, i64 0}
!112 = !{!"p1 int", !9, i64 0}
end_hunk_0
