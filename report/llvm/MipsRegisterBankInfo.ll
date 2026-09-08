Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsRegisterBankInfo?download=true
inline.NumInlined: 2074
inline.NumDeleted: 935
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj:bb.a
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !264
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !265
  store ptr %i.y, ptr %i.q, align 8, !tbaa !266
  store i32 0, ptr %i.p, align 16, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !293
  %i.aa = load ptr, ptr %0, align 8, !tbaa !295
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !293
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !293
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !293
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !22
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !22
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !22
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !22
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !265    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !264  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !266  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !265
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !264
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !22   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !237  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !622

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !237
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !22
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !22
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !22
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !22
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !623

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !624

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !264
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !267
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !267
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner23tryCombineUnmergeValuesERNS_8GUnmergeERNS_15SmallVectorImplIPNS_12MachineInstrEEERNS3_INS_8RegisterEEERNS_19GISelChangeObserverE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::optional.368", align 8 ; 6 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %7 = alloca %"class.llvm::LegalizationArtifactCombiner::ArtifactValueFinder", align 16 ; 6 uses
  %8 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %9 = alloca [2 x %"class.llvm::LLT"], align 8   ; 5 uses
  %10 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %11 = alloca [2 x %"class.llvm::LLT"], align 8  ; 6 uses
  %12 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SmallVector.221", align 8 ; 12 uses
  %14 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %15 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %16 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %17 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.221", align 8 ; 10 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %22 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %23 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i24, ptr %i.a, align 8              ; 2 uses
  %i.c = zext i24 %i.b to i32
  %i.d = add nsw i32 %i.c, -1                     ; 15 uses
  %i.e = zext i24 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.i = and i64 %i.f, 4294967295
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242
  call void @_ZN4llvm26getDefSrcRegIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.368") align 8 %5, i32 %i.l, ptr noundef nonnull align 8 dereferenceable(520) %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !633, !range !246, !noundef !226
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %5, align 8, !tbaa !299    ; 8 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242 ; 4 uses
  %i.t = icmp slt i32 %i.l, 0
  br i1 %i.t, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %i.l, 2147483647                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.w = load i32, ptr %i.v, align 8, !tbaa !227
  %i.x = icmp ugt i32 %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.z = zext nneg i32 %i.u to i64
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !230
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.04.0.i = phi i64 [ %i.ac, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ah = and i32 %i.af, 2147483647               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !227
  %i.ak = icmp ugt i32 %i.aj, %i.ah
  br i1 %i.ak, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.am = zext nneg i32 %i.ah to i64
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !230
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.e, %bb.f
  %.sroa.0111.0.copyload = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 4 uses
  store i64 %.sroa.0111.0.copyload, ptr %6, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0125.0.copyload = load i32, ptr %i.aq, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !225 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.au = load i24, ptr %i.at, align 8
  %i.av = zext i24 %i.au to i64
  %i.aw = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #21
  %i.ax = zext i32 %i.aw to i64
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.av) ; 3 uses
  %.idx.i = shl nuw nsw i64 %..i.i.i, 5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not14.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not14.i, label %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221
  %i.az = trunc nuw nsw i64 %..i.i.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.01016.i = phi ptr [ %i.be, %bb.g ], [ %i.as, %.lr.ph.preheader.i ] ; 2 uses
  %.01115.i = phi i32 [ %i.bd, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01016.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.bc = icmp eq i32 %i.bb, %.sroa.0125.0.copyload
  br i1 %i.bc, label %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw nsw i32 %.01115.i, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.01016.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.ay
  br i1 %.not.i, label %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit, label %.lr.ph.i

_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit: ; preds = %.lr.ph.i, %bb.g, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221
  %.011.lcssa.i = phi i32 [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit221 ], [ %.01115.i, %.lr.ph.i ], [ %i.az, %bb.g ] ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242 ; 2 uses
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !261
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !301, !nonnull !226, !align !242
  %i.bl = load <2 x ptr>, ptr %0, align 8, !tbaa !293
  %i.bm = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bm, ptr %7, align 16, !tbaa !293
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bk, ptr %i.bn, align 16, !tbaa !283
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.bo, align 8, !tbaa !302
  %i.bp = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder21tryCombineUnmergeDefsERNS_8GUnmergeERNS_19GISelChangeObserverERNS_15SmallVectorImplINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.bp, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !227 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !228
  %.not.i.i = icmp ult i32 %i.br, %i.bt
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !229

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit

bb.j:                                             ; preds = %bb.h
  %i.bu = zext i32 %i.br to i64
  %i.bv = load ptr, ptr %2, align 8, !tbaa !230
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  store ptr %1, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !227
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bq, align 8, !tbaa !227
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit: ; preds = %bb.i, %bb.j
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.011.lcssa.i)
  br label %.thread

bb.k:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner11getDefIndexERKNS_12MachineInstrENS_8RegisterE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !63 ; 3 uses
  switch i32 %i.ca, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270 [
    i32 80, label %bb.l
    i32 144, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
    i32 152, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
    i32 154, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
    i32 143, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.cb = load i24, ptr %i.at, align 8
  %i.cc = zext i24 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 4294967295
  %i.ce = load ptr, ptr %i.ar, align 8, !tbaa !225
  %i.cf = and i64 %i.cd, 4294967295
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !43 ; 3 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242 ; 2 uses
  %i.ck = icmp slt i32 %i.ci, 0
  br i1 %i.ck, label %bb.m, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223

bb.m:                                             ; preds = %bb.l
  %i.cl = and i32 %i.ci, 2147483647               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 472
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !227
  %i.co = icmp ugt i32 %i.cn, %i.cl
  br i1 %i.co, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 464
  %i.cq = zext nneg i32 %i.cl to i64
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !230
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.04.0.i222 = phi i64 [ %i.ct, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !301, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store i64 %.sroa.04.0.i, ptr %9, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.04.0.i222, ptr %i.cv, align 8, !tbaa !43
  store i32 80, ptr %8, align 8, !tbaa !308
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.cw, align 8, !tbaa !309
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !255
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  %i.cy = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %8) #21
  %i.cz = extractvalue { i64, i64 } %i.cy, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.sroa.0116.0.extract.trunc = trunc i64 %i.cz to i8
  switch i8 %.sroa.0116.0.extract.trunc, label %.thread [
    i8 0, label %bb.o
    i8 6, label %bb.r
    i8 9, label %bb.r
    i8 3, label %bb.q
    i8 1, label %bb.q
  ]

bb.o:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223
  %i.da = lshr i64 %.sroa.04.0.i, 60
  %i.db = add nsw i64 %i.da, -5
  %switch.selectcmp.i = icmp ult i64 %i.db, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  br i1 %switch.selectcmp.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.bj, align 8, !tbaa !301, !nonnull !226, !align !242
  store i64 %.sroa.0111.0.copyload, ptr %11, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.04.0.i222, ptr %i.dd, align 8, !tbaa !43
  store i32 80, ptr %10, align 8, !tbaa !308
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.de, align 8, !tbaa !309
  %.sroa.22.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i224, align 8, !tbaa !255
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %10) #21
  %i.dh = extractvalue { i64, i64 } %i.dg, 0
  %i.di = and i64 %i.dh, 255
  %i.dj = icmp eq i64 %i.di, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %i.dj, label %bb.r, label %.thread

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.thread

bb.q:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223
  %.sroa.0116.4.extract.shift.mask = and i64 %i.cz, -4294967296
  %i.dk = icmp eq i64 %.sroa.0116.4.extract.shift.mask, 4294967296
  br i1 %i.dk, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit223, %bb.p
  %i.dl = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i32 %i.ci, ptr %12, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.dm, align 8, !tbaa !312
  %i.dn = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.dl, i64 %.sroa.0111.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %.not212307 = icmp eq i32 %i.d, 0
  br i1 %.not212307, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.r
  %i.do = extractvalue { ptr, ptr } %i.dn, 1
  %i.dp = mul i32 %.011.lcssa.i, %i.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dr = zext i32 %i.d to i64
  br label %bb.u

._crit_edge311:                                   ; preds = %bb.u, %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !227 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !228
  %.not.i.i226 = icmp ult i32 %i.dt, %i.dv
  br i1 %.not.i.i226, label %bb.t, label %bb.s, !prof !229

bb.s:                                             ; preds = %._crit_edge311
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit227

bb.t:                                             ; preds = %._crit_edge311
  %i.dw = zext i32 %i.dt to i64
  %i.dx = load ptr, ptr %2, align 8, !tbaa !230
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %1, ptr %i.dy, align 1
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !227
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.ds, align 8, !tbaa !227
  br label %_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit227

_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj.exit227: ; preds = %bb.s, %bb.t
  call void @_ZN4llvm28LegalizationArtifactCombiner11markDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.011.lcssa.i)
  br label %.thread

bb.u:                                             ; preds = %.lr.ph310, %bb.u
  %indvars.iv334 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next335, %bb.u ] ; 3 uses
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %indvars.iv334
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !43
  %i.ef = trunc nuw i64 %indvars.iv334 to i32
  %i.eg = add i32 %i.dp, %i.ef
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !225
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !43
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242
  %i.en = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm28LegalizationArtifactCombiner21replaceRegOrBuildCopyENS_8RegisterES1_RNS_19MachineRegisterInfoERNS_16MachineIRBuilderERNS_15SmallVectorImplIS1_EERNS_19GISelChangeObserverE(i32 %i.ee, i32 %i.el, ptr noundef nonnull align 8 dereferenceable(520) %i.em, ptr noundef nonnull align 8 dereferenceable(96) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %.not212 = icmp eq i64 %indvars.iv.next335, %i.dr
  br i1 %.not212, label %._crit_edge311, label %bb.u, !llvm.loop !625

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit: ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !225
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242
  %i.es = call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.eq, ptr noundef nonnull align 8 dereferenceable(520) %i.er) #21 ; 3 uses
  %.not213 = icmp eq ptr %i.es, null
  br i1 %.not213, label %bb.v, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge: ; preds = %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.es, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !63
  br label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270: ; preds = %bb.k, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge
  %i.et = phi i32 [ %.pre, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge ], [ %i.ca, %bb.k ]
  %.0196275 = phi ptr [ %i.es, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge ], [ %i.r, %bb.k ] ; 6 uses
  %.0197274 = phi i32 [ %i.ca, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit._ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270_crit_edge ], [ 0, %bb.k ] ; 6 uses
  %i.eu = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18canFoldMergeOpcodeEjjNS_3LLTES1_(i32 noundef %i.et, i32 noundef %.0197274, i64 %.sroa.04.0.i, i64 %.sroa.0111.0.copyload)
  br i1 %i.eu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270, %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit
  %i.ev = call noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18tryFoldUnmergeCastERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %.thread

bb.w:                                             ; preds = %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit.thread270
  %i.ew = getelementptr inbounds nuw i8, ptr %.0196275, i64 40
  %i.ex = load i24, ptr %i.ew, align 8
  %i.ey = zext i24 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -1                   ; 9 uses
  %i.fa = icmp ult i32 %i.ez, %i.d
  br i1 %i.fa, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.fb = urem i32 %i.d, %i.ez
  %i.fc = udiv i32 %i.d, %i.ez                    ; 2 uses
  %.not218 = icmp eq i32 %i.fb, 0
  br i1 %.not218, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.fd = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %.not315 = icmp ugt i32 %i.ez, %i.d
  %.not219 = icmp eq i32 %.0197274, 0
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0196275, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count332 = zext nneg i32 %i.ez to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %indvars.iv328 = phi i64 [ 0, %bb.y ], [ %indvars.iv.next329, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %i.fe, ptr %13, align 8, !tbaa !230
  store i32 0, ptr %i.ff, align 8, !tbaa !227
  store i32 8, ptr %i.fg, align 4, !tbaa !228
  br i1 %.not315, label %._crit_edge305, label %.lr.ph304.preheader

.lr.ph304.preheader:                              ; preds = %bb.z
  %24 = trunc nuw i64 %indvars.iv328 to i32
  %25 = mul i32 %i.fc, %24
  br label %.lr.ph304

._crit_edge305:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.z
  br i1 %.not219, label %bb.af, label %bb.ac

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.0201302 = phi i32 [ %i.gb, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ], [ 0, %.lr.ph304.preheader ]
  %.0202301 = phi i32 [ %i.gc, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ], [ %25, %.lr.ph304.preheader ] ; 2 uses
  %i.fp = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.fq = zext i32 %.0202301 to i64
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !43 ; 2 uses
  %i.fu = load i32, ptr %i.ff, align 8, !tbaa !227 ; 2 uses
  %i.fv = load i32, ptr %i.fg, align 4, !tbaa !228
  %.not.i228 = icmp ult i32 %i.fu, %i.fv
  br i1 %.not.i228, label %bb.ab, label %bb.aa, !prof !229

bb.aa:                                            ; preds = %.lr.ph304
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 %i.ft)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ab:                                            ; preds = %.lr.ph304
  %i.fw = zext i32 %i.fu to i64
  %i.fx = load ptr, ptr %13, align 8, !tbaa !230
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fw
  store i32 %i.ft, ptr %i.fy, align 1
  %i.fz = load i32, ptr %i.ff, align 8, !tbaa !227
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.ff, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.aa, %bb.ab
  %i.gb = add nuw i32 %.0201302, 1                ; 2 uses
  %i.gc = add i32 %.0202301, 1
  %i.gd = icmp ult i32 %i.gb, %i.fc
  br i1 %i.gd, label %.lr.ph304, label %._crit_edge305, !llvm.loop !626

bb.ac:                                            ; preds = %._crit_edge305
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242 ; 2 uses
  %i.gf = load ptr, ptr %i.ar, align 8, !tbaa !225
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !43 ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.ad, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230

bb.ad:                                            ; preds = %bb.ac
  %i.gj = and i32 %i.gh, 2147483647               ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 472
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !227
  %i.gm = icmp ugt i32 %i.gl, %i.gj
  br i1 %i.gm, label %bb.ae, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230

bb.ae:                                            ; preds = %bb.ad
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 464
  %i.go = zext nneg i32 %i.gj to i64
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !230
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sroa.04.0.i229 = phi i64 [ %i.gr, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sroa.04.0.i229, ptr %14, align 8
  %i.gs = call i64 @_ZNK4llvm3LLT6divideEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %i.ez)
  %i.gt = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242
  %i.gu = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.gt, i64 %i.gs, ptr nonnull @.str.5, i64 0) #21 ; 2 uses
  %i.gv = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store i32 %i.gu, ptr %15, align 8, !tbaa !22
  store i32 1, ptr %i.fh, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.gw = load ptr, ptr %i.fi, align 8, !tbaa !225
  %i.gx = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %indvars.iv328
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !43
  store i32 %i.gz, ptr %16, align 8, !tbaa !22
  store i32 0, ptr %i.fj, align 8, !tbaa !312
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !19
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call { ptr, ptr } %i.hc(ptr noundef nonnull align 8 dereferenceable(96) %i.gv, i32 noundef %.0197274, ptr nonnull %15, i64 1, ptr nonnull %16, i64 1, i64 0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.he = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  %i.hf = load ptr, ptr %13, align 8, !tbaa !230
  %i.hg = load i32, ptr %i.ff, align 8, !tbaa !227
  %i.hh = zext i32 %i.hg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store i32 %i.gu, ptr %17, align 8, !tbaa !22
  store i32 0, ptr %i.fk, align 8, !tbaa !312
  %i.hi = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.he, ptr %i.hf, i64 %i.hh, ptr noundef nonnull align 8 dereferenceable(20) %17) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge305
  %i.hj = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  %i.hk = load ptr, ptr %13, align 8, !tbaa !230
  %i.hl = load i32, ptr %i.ff, align 8, !tbaa !227
  %i.hm = zext i32 %i.hl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.hn = load ptr, ptr %i.fi, align 8, !tbaa !225
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %indvars.iv328
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !43
  store i32 %i.hq, ptr %18, align 8, !tbaa !22
  store i32 0, ptr %i.fl, align 8, !tbaa !312
  %i.hr = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.hj, ptr %i.hk, i64 %i.hm, ptr noundef nonnull align 8 dereferenceable(20) %18) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit230
  %i.hs = load ptr, ptr %13, align 8, !tbaa !230
  %i.ht = load i32, ptr %i.ff, align 8, !tbaa !227 ; 3 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.hu, 2
  %i.hv = load i32, ptr %i.fm, align 8, !tbaa !227 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add nuw nsw i64 %i.hw, %i.hu            ; 2 uses
  %i.hy = load i32, ptr %i.fn, align 4, !tbaa !228
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp samesign ugt i64 %i.hx, %i.hz
  br i1 %i.ia, label %bb.ah, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.fo, i64 noundef %i.hx, i64 noundef 4) #21
  %.pre8.pre.i = load i32, ptr %i.fm, align 8, !tbaa !227
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i: ; preds = %bb.ah, %bb.ag
  %.pre8.i = phi i32 [ %i.hv, %bb.ag ], [ %.pre8.pre.i, %bb.ah ] ; 2 uses
  %.not.i.i231 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i231, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i
  %i.ib = load ptr, ptr %3, align 8, !tbaa !230
  %i.ic = zext i32 %.pre8.i to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.id, ptr align 4 %i.hs, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.fm, align 8, !tbaa !227
  br label %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit

_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i, %bb.ai
  %i.ie = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i ], [ %.pre.i, %bb.ai ]
  %i.if = add i32 %i.ie, %i.ht
  store i32 %i.if, ptr %i.fm, align 8, !tbaa !227
  %i.ig = load ptr, ptr %13, align 8, !tbaa !230  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fe
  br i1 %i.ih, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit
  call void @free(ptr noundef %i.ig) #21
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count332
  br i1 %exitcond333.not, label %.loopexit, label %bb.z, !llvm.loop !627

bb.ak:                                            ; preds = %bb.w
  %i.ii = icmp ugt i32 %i.ez, %i.d
  br i1 %i.ii, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %.not216 = icmp eq i32 %.0197274, 0
  br i1 %.not216, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.ij = urem i32 %i.ez, %i.d
  %i.ik = udiv i32 %i.ez, %i.d                    ; 2 uses
  %.not217 = icmp eq i32 %i.ij, 0
  br i1 %.not217, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.il = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.il, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.im = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0196275, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.trip.count326 = zext nneg i32 %i.d to i64
  br label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234, %bb.an
  %indvars.iv323 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next324, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr %i.im, ptr %19, align 8, !tbaa !230
  store i32 0, ptr %i.in, align 8, !tbaa !227
  store i32 8, ptr %i.io, align 4, !tbaa !228
  %i.it = trunc nuw i64 %indvars.iv323 to i32
  %i.iu = mul i32 %i.ik, %i.it
  br label %.lr.ph298

._crit_edge299:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236
  %.pre338 = load i32, ptr %i.in, align 8, !tbaa !227
  %.pre337 = load ptr, ptr %19, align 8, !tbaa !230
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %indvars.iv323
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43 ; 3 uses
  %i.iz = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store i32 %i.iy, ptr %20, align 8, !tbaa !22
  store i32 1, ptr %i.iq, align 8, !tbaa !315
  %i.ja = zext i32 %.pre338 to i64
  %i.jb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.iz, ptr noundef nonnull align 8 dereferenceable(20) %20, ptr %.pre337, i64 %i.ja) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.jc = load i32, ptr %i.ir, align 8, !tbaa !227 ; 2 uses
  %i.jd = load i32, ptr %i.is, align 4, !tbaa !228
  %.not.i232 = icmp ult i32 %i.jc, %i.jd
  br i1 %.not.i232, label %bb.ap, label %bb.ao, !prof !229

bb.ao:                                            ; preds = %._crit_edge299
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.iy)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233

bb.ap:                                            ; preds = %._crit_edge299
  %i.je = zext i32 %i.jc to i64
  %i.jf = load ptr, ptr %3, align 8, !tbaa !230
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.je
  store i32 %i.iy, ptr %i.jg, align 1
  %i.jh = load i32, ptr %i.ir, align 8, !tbaa !227
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.ir, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233: ; preds = %bb.ao, %bb.ap
  %i.jj = load ptr, ptr %19, align 8, !tbaa !230  ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.im
  br i1 %i.jk, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233
  call void @free(ptr noundef %i.jj) #21
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit234: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit233, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %.loopexit, label %.lr.ph298.preheader, !llvm.loop !628

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236
  %.0203.in296 = phi i32 [ %.0203, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236 ], [ %i.iu, %.lr.ph298.preheader ]
  %.0204295 = phi i32 [ %i.jx, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236 ], [ 0, %.lr.ph298.preheader ]
  %.0203 = add i32 %.0203.in296, 1                ; 2 uses
  %i.jl = load ptr, ptr %i.ip, align 8, !tbaa !225
  %i.jm = zext i32 %.0203 to i64
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jl, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !43 ; 2 uses
  %i.jq = load i32, ptr %i.in, align 8, !tbaa !227 ; 2 uses
  %i.jr = load i32, ptr %i.io, align 4, !tbaa !228
  %.not.i235 = icmp ult i32 %i.jq, %i.jr
  br i1 %.not.i235, label %bb.as, label %bb.ar, !prof !229

bb.ar:                                            ; preds = %.lr.ph298
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 %i.jp)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236

bb.as:                                            ; preds = %.lr.ph298
  %i.js = zext i32 %i.jq to i64
  %i.jt = load ptr, ptr %19, align 8, !tbaa !230
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.js
  store i32 %i.jp, ptr %i.ju, align 1
  %i.jv = load i32, ptr %i.in, align 8, !tbaa !227
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.in, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit236: ; preds = %bb.ar, %bb.as
  %i.jx = add nuw i32 %.0204295, 1                ; 2 uses
  %i.jy = icmp ult i32 %i.jx, %i.ik
  br i1 %i.jy, label %.lr.ph298, label %._crit_edge299, !llvm.loop !629

bb.at:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.jz = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0196275, i64 32 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !225
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 36
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !43 ; 2 uses
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.au, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238

bb.au:                                            ; preds = %bb.at
  %i.kf = and i32 %i.kd, 2147483647               ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 472
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !227
  %i.ki = icmp ugt i32 %i.kh, %i.kf
  br i1 %i.ki, label %bb.av, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238

bb.av:                                            ; preds = %bb.au
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 464
  %i.kk = zext nneg i32 %i.kf to i64
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !230
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kk
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238: ; preds = %bb.at, %bb.au, %bb.av
  %.sroa.04.0.i237 = phi i64 [ %i.kn, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ]
  store i64 %.sroa.04.0.i237, ptr %21, align 8
  %.not214 = icmp eq i32 %.0197274, 0
  br i1 %.not214, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238
  %i.ko = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %i.ko, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kp = load i64, ptr %6, align 8
  %.mask.i = and i64 %i.kp, -1152921504606846976
  %i.kq = icmp eq i64 %.mask.i, 4611686018427387904
  br i1 %i.kq, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kr = load i64, ptr %21, align 8
  %.mask.i239 = and i64 %i.kr, -1152921504606846976
  %i.ks = icmp eq i64 %.mask.i239, 4611686018427387904
  %. = select i1 %i.ks, i32 86, i32 88
  br label %bb.az

bb.az:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238, %bb.ay, %bb.ax
  %.1198.ph = phi i32 [ 87, %bb.ax ], [ %., %bb.ay ], [ %.0197274, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit238 ]
  %i.kt = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.kt, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.not312 = icmp eq i32 %i.d, 0
  br i1 %.not312, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %i.ku = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241 ] ; 2 uses
  %i.ky = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.ky, i64 %indvars.iv
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !43 ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lc = load ptr, ptr %i.ka, align 8, !tbaa !225
  %i.ld = getelementptr inbounds nuw [32 x i8], ptr %i.lc, i64 %indvars.iv.next
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !43
  %i.lg = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !226, !align !242 ; 2 uses
  %i.lh = icmp slt i32 %i.lb, 0
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.lj = and i32 %i.lb, 2147483647
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = load ptr, ptr %i.li, align 8
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.lk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 312
  %i.lp = zext nneg i32 %i.lb to i64
  %i.lq = load ptr, ptr %i.lo, align 8
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lp
  %.0.in.i.i.i = select i1 %i.lh, ptr %i.ln, ptr %i.lr
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ls = load i32, ptr %.0.i.i.i, align 8
  %i.lt = and i32 %i.ls, 16777216
  %.not4.i.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not4.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bb, %bb.bc
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.bc ], [ %.0.i.i.i, %bb.bb ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i.i
  %i.lu = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.lv = and i32 %i.lu, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not1.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit, label %.preheader.i.i.i, !llvm.loop !9

_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit: ; preds = %bb.bc, %bb.bb
  %i.lw = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store i32 %i.lb, ptr %22, align 8, !tbaa !22
  store i32 1, ptr %i.ku, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  store i32 %i.lf, ptr %23, align 8, !tbaa !22
  store i32 0, ptr %i.kv, align 8, !tbaa !312
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !19
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = call { ptr, ptr } %i.lz(ptr noundef nonnull align 8 dereferenceable(96) %i.lw, i32 noundef %.1198.ph, ptr nonnull %22, i64 1, ptr nonnull %23, i64 1, i64 0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.mb = load i32, ptr %i.kw, align 8, !tbaa !227 ; 2 uses
  %i.mc = load i32, ptr %i.kx, align 4, !tbaa !228
  %.not.i240 = icmp ult i32 %i.mb, %i.mc
  br i1 %.not.i240, label %bb.be, label %bb.bd, !prof !229

bb.bd:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.lb)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241

bb.be:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9use_emptyENS_8RegisterE.exit
  %i.md = zext i32 %i.mb to i64
  %i.me = load ptr, ptr %3, align 8, !tbaa !230
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.md
  store i32 %i.lb, ptr %i.mf, align 1
  %i.mg = load i32, ptr %i.kw, align 8, !tbaa !227
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr %i.kw, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit241: ; preds = %.preheader.i.i.i, %bb.ba, %bb.be, %bb.bd
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ba, !llvm.loop !630

bb.bf:                                            ; preds = %bb.aw
  %i.mi = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.mi, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.not313 = icmp eq i32 %i.d, 0
  br i1 %.not313, label %.thread285, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %bb.bf
  %wide.trip.count321 = zext i32 %i.d to i64
  br label %.lr.ph294

.thread285:                                       ; preds = %.lr.ph294, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.loopexit

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv318 = phi i64 [ 0, %.lr.ph294.preheader ], [ %indvars.iv.next319, %.lr.ph294 ] ; 2 uses
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.mj, i64 %indvars.iv318
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !43
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 3 uses
  %i.mn = load ptr, ptr %i.ka, align 8, !tbaa !225
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.mn, i64 %indvars.iv.next319
end_hunk_0
begin_hunk_1_@_ZN4llvm28LegalizationArtifactCombiner18canFoldMergeOpcodeEjjNS_3LLTES1_:bb.a
  br i1 %i.br, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit49

_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread:     ; preds = %bb.z
  %i.cd = lshr i64 %3, 44
  %i.ce = and i64 %i.cd, 65535
  br label %_ZNK4llvm8TypeSizecvmEv.exit50

_ZNK4llvm3LLT13getSizeInBitsEv.exit49:            ; preds = %bb.z
  %i.cf = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i41 = and i64 %i.cf, 65535
  %i.cg = icmp slt i64 %3, -8070450532247928832
  %i.ch = lshr i64 %3, 44
  %i.ci = and i64 %i.ch, 65535
  %i.cj = lshr i64 %3, 28
  %.0.in.i3.i42 = select i1 %i.cg, i64 %i.ci, i64 %i.cj
  %i.ck = mul nuw nsw i64 %.0.in.i3.i42, %.sroa.0.0.insert.ext.i.i.i41
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = trunc i64 %3 to i1
  br i1 %i.cm, label %bb.aa, label %_ZNK4llvm8TypeSizecvmEv.exit50

bb.aa:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit49
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit50:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit49
  %.sroa.05.0.i4475 = phi i64 [ %i.ce, %_ZNK4llvm3LLT13getSizeInBitsEv.exit49.thread ], [ %i.cl, %_ZNK4llvm3LLT13getSizeInBitsEv.exit49 ]
  %i.cn = icmp samesign uge i64 %.sroa.05.0.i4475, %i.bp
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit37, %_ZNK4llvm8TypeSizecvmEv.exit50, %bb.o, %bb.n, %bb.b, %bb.a, %bb.m
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ %i.ag, %bb.m ], [ true, %bb.b ], [ false, %bb.o ], [ %i.cc, %_ZNK4llvm8TypeSizecvmEv.exit37 ], [ %i.cn, %_ZNK4llvm8TypeSizecvmEv.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm28LegalizationArtifactCombiner18tryFoldUnmergeCastERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EERNS3_INS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %7 = alloca %"class.llvm::LLT", align 8         ; 7 uses
  %8 = alloca %"class.llvm::LLT", align 8         ; 8 uses
  %9 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %10 = alloca [2 x %"class.llvm::LLT"], align 8  ; 6 uses
  %11 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %12 = alloca [2 x %"class.llvm::LLT"], align 8  ; 6 uses
  %13 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %14 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %16 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %17 = alloca [2 x %"class.llvm::LLT"], align 8  ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.221", align 8 ; 9 uses
  %19 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  switch i32 %i.b, label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit [
    i32 144, label %bb.b
    i32 152, label %bb.b
    i32 154, label %bb.b
    i32 143, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i24, ptr %i.c, align 8
  %i.e = zext i24 %i.d to i32
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !296, !nonnull !226, !align !242 ; 6 uses
  %i.m = icmp slt i32 %i.j, 0
  br i1 %i.m, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.j, 2147483647                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.p = load i32, ptr %i.o, align 8, !tbaa !227
  %i.q = icmp ugt i32 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.s = zext nneg i32 %i.n to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.w = phi i64 [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 15 uses
  store i64 %i.w, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !225  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ac = and i32 %i.aa, 2147483647               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !227
  %i.af = icmp ugt i32 %i.ae, %i.ac
  br i1 %i.af, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.ah = zext nneg i32 %i.ac to i64
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !230
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.e, %bb.f
  %.sroa.04.0.i86 = phi i64 [ %i.ak, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.al = zext i32 %i.f to i64                    ; 3 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87
  %i.aq = and i32 %i.ao, 2147483647               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !227
  %i.at = icmp ugt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !230
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87, %bb.g, %bb.h
  %i.az = phi i64 [ %i.ay, %bb.h ], [ 0, %bb.g ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87 ] ; 9 uses
  store i64 %i.az, ptr %6, align 8
  %.mask.i.i = and i64 %i.w, -1152921504606846976
  %i.ba = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.ba, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89
  %i.bb = lshr i64 %i.w, 60
  %.off.i.i = add nsw i64 %i.bb, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89, %bb.i
  %i.bc = icmp slt i64 %i.w, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.bc, %i.ba
  %i.bd = lshr i64 %i.w, 44
  %i.be = and i64 %i.bd, 65535
  %i.bf = lshr i64 %i.w, 28
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = select i1 %spec.select.i.i.i, i64 %i.be, i64 %i.bg
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.i
  %i.bi = lshr i64 %i.w, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.bi, 65535
  %i.bj = icmp slt i64 %i.w, -8070450532247928832
  %i.bk = lshr i64 %i.w, 44
  %i.bl = and i64 %i.bk, 65535
  %i.bm = lshr i64 %i.w, 28
  %.0.in.i3.i = select i1 %i.bj, i64 %i.bl, i64 %i.bm
  %i.bn = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = trunc i64 %i.w to i1
  br i1 %i.bp, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i148 = phi i64 [ %i.bh, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.bo, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ] ; 2 uses
  %i.bq = trunc nuw i64 %.sroa.05.0.i148 to i32   ; 2 uses
  %.mask.i.i90 = and i64 %.sroa.04.0.i86, -1152921504606846976 ; 2 uses
  %i.br = icmp eq i64 %.mask.i.i90, 4611686018427387904 ; 3 uses
  br i1 %i.br, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bs = lshr i64 %.sroa.04.0.i86, 60
  %.off.i.i91 = add nsw i64 %i.bs, -1
  %switch.i.i92 = icmp ult i64 %.off.i.i91, 3
  br i1 %switch.i.i92, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101

_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread:    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.k
  %i.bt = icmp slt i64 %.sroa.04.0.i86, -8070450532247928832
  %spec.select.i.i.i100 = or i1 %i.bt, %i.br
  %i.bu = lshr i64 %.sroa.04.0.i86, 44
  %i.bv = and i64 %i.bu, 65535
  %i.bw = lshr i64 %.sroa.04.0.i86, 28
  %20 = and i64 %i.bw, 4294967295
  %i.bx = select i1 %spec.select.i.i.i100, i64 %i.bv, i64 %20
  br label %_ZNK4llvm8TypeSizecvmEv.exit102

_ZNK4llvm3LLT13getSizeInBitsEv.exit101:           ; preds = %bb.k
  %i.by = lshr i64 %.sroa.04.0.i86, 4
  %.sroa.0.0.insert.ext.i.i.i93 = and i64 %i.by, 65535
  %i.bz = icmp slt i64 %.sroa.04.0.i86, -8070450532247928832
  %i.ca = lshr i64 %.sroa.04.0.i86, 44
  %i.cb = and i64 %i.ca, 65535
  %i.cc = lshr i64 %.sroa.04.0.i86, 28
  %.0.in.i3.i94 = select i1 %i.bz, i64 %i.cb, i64 %i.cc
  %i.cd = mul nuw nsw i64 %.0.in.i3.i94, %.sroa.0.0.insert.ext.i.i.i93
  %21 = and i64 %i.cd, 4294967295
  %i.ce = trunc i64 %.sroa.04.0.i86 to i1
  br i1 %i.ce, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit102

bb.l:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit101
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit102:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101
  %.sroa.05.0.i96153 = phi i64 [ %i.bx, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread ], [ %21, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101 ] ; 2 uses
  %i.cf = trunc nuw i64 %.sroa.05.0.i96153 to i32 ; 2 uses
  %i.cg = icmp eq i32 %i.b, 144
  br i1 %i.cg, label %bb.m, label %bb.at

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102
  %i.ch = lshr i64 %i.az, 60                      ; 2 uses
  %i.ci = add nsw i64 %i.ch, -5
  %switch.selectcmp.i = icmp ult i64 %i.ci, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  br i1 %switch.selectcmp.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp slt i64 %i.az, -8070450532247928832
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = and i64 %i.az, 1152921504605798400
  %i.cl = or disjoint i64 %i.ck, 4611686018427387904
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.p:                                             ; preds = %bb.n
  %.mask.i.i.i = and i64 %i.az, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i.i, label %bb.u [
    i64 8070450532247928832, label %bb.q
    i64 6917529027641081856, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.cm = trunc i64 %i.az to i32
  %i.cn = lshr i32 %i.cm, 20
  %i.co = and i32 %i.cn, 255                      ; 2 uses
  %i.cp = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.co) #21
  %i.cs = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.cr) #21
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 28               ; 2 uses
  br i1 %i.cq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %storemerge.i.i.i.i.i.i = or disjoint i64 %i.cu, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.s:                                             ; preds = %bb.q
  %i.cv = shl nuw nsw i32 %i.co, 20
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.cu, %i.cw
  %i.cy = or disjoint i64 %i.cx, 3458764513820540928
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.t:                                             ; preds = %bb.p
  %i.cz = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = and i64 %i.az, 1152921504338411520
  %.sroa.0.0.v.i.i.i = select i1 %i.da, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i, %i.db
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.u:                                             ; preds = %bb.p
  %i.dc = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.dd = lshr i64 %i.az, 44
  %i.de = and i64 %i.dd, 65535
  %i.df = lshr i64 %i.az, 28
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = select i1 %i.dc, i64 %i.de, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.dh, 28
  %storemerge.i.i.i.i.i = or disjoint i64 %i.di, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

_ZNK4llvm3LLT13getScalarTypeEv.exit:              ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i.i.i.i, %bb.r ], [ %i.cl, %bb.o ], [ %storemerge.i.i.i.i.i, %bb.u ], [ %.sroa.0.0.i6.i.i, %bb.t ], [ %i.cy, %bb.s ]
  store i64 %.sroa.0.0.i, ptr %7, align 8
  %i.dj = lshr i64 %.sroa.04.0.i86, 60
  %i.dk = add nsw i64 %i.dj, -5
  %switch.selectcmp.i.i103 = icmp ult i64 %i.dk, 4
  br i1 %switch.selectcmp.i.i103, label %bb.v, label %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread

bb.v:                                             ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  %i.dl = icmp slt i64 %.sroa.04.0.i86, -8070450532247928832
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dm = and i64 %.sroa.04.0.i86, 1152921504605798400
  %i.dn = or disjoint i64 %i.dm, 4611686018427387904
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.x:                                             ; preds = %bb.v
  switch i64 %.mask.i.i90, label %bb.ac [
    i64 8070450532247928832, label %bb.y
    i64 6917529027641081856, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.do = trunc i64 %.sroa.04.0.i86 to i32
  %i.dp = lshr i32 %i.do, 20
  %i.dq = and i32 %i.dp, 255                      ; 2 uses
  %i.dr = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.dq) #21
  %i.du = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.dt) #21
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 28               ; 2 uses
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %storemerge.i.i.i.i.i.i108 = or disjoint i64 %i.dw, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.aa:                                            ; preds = %bb.y
  %i.dx = shl nuw nsw i32 %i.dq, 20
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = or disjoint i64 %i.dw, %i.dy
  %i.ea = or disjoint i64 %i.dz, 3458764513820540928
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.ab:                                            ; preds = %bb.x
  %i.eb = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = and i64 %.sroa.04.0.i86, 1152921504338411520
  %.sroa.0.0.v.i.i.i106 = select i1 %i.ec, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i107 = or disjoint i64 %.sroa.0.0.v.i.i.i106, %i.ed
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

bb.ac:                                            ; preds = %bb.x
  %i.ee = lshr i64 %.sroa.04.0.i86, 44
  %i.ef = and i64 %i.ee, 65535
  %i.eg = lshr i64 %.sroa.04.0.i86, 28
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = select i1 %i.br, i64 %i.ef, i64 %i.eh
  %i.ej = shl nuw nsw i64 %i.ei, 28
  %storemerge.i.i.i.i.i109 = or disjoint i64 %i.ej, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit110

_ZNK4llvm3LLT13getScalarTypeEv.exit110:           ; preds = %bb.w, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.0.i104 = phi i64 [ %storemerge.i.i.i.i.i.i108, %bb.z ], [ %i.dn, %bb.w ], [ %storemerge.i.i.i.i.i109, %bb.ac ], [ %.sroa.0.0.i6.i.i107, %bb.ab ], [ %i.ea, %bb.aa ]
  store i64 %.sroa.0.0.i104, ptr %8, align 8
  %i.ek = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.ek, label %bb.ad, label %bb.ak

_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread:    ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  store i64 %.sroa.04.0.i86, ptr %8, align 8
  %i.el = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.el, label %.thread, label %bb.ak

bb.ad:                                            ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit110
  %i.em = trunc i64 %i.w to i1
  br i1 %i.em, label %bb.ae, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.ad
  %i.en = trunc i64 %i.w to i32
  %i.eo = lshr i32 %i.en, 4
  %i.ep = and i32 %i.eo, 65535
  %i.eq = udiv i32 %i.ep, %i.f
  %i.er = zext nneg i32 %i.eq to i64
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread, %_ZNK4llvm3LLT14getNumElementsEv.exit
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.er, %_ZNK4llvm3LLT14getNumElementsEv.exit ], [ 1, %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread ] ; 2 uses
  %i.es = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %.sroa.0.0.insert.ext.i) ; 3 uses
  %i.et = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.0.0.insert.ext.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store i64 %i.es, ptr %10, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ev = load i64, ptr %5, align 8, !tbaa !43
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !43
  store i32 80, ptr %9, align 8, !tbaa !308
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %10, ptr %i.ew, align 8, !tbaa !309
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !255
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !301, !nonnull !226, !align !242
  %i.fa = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %i.fb = extractvalue { i64, i64 } %i.fa, 0
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.fb to i32
  %i.fc = and i32 %.sroa.0.0.extract.trunc.i, 255
  %i.fd = add nsw i32 %i.fc, -9
  %i.fe = icmp ult i32 %i.fd, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  br i1 %i.fe, label %.critedge2, label %bb.af

bb.af:                                            ; preds = %.thread
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !301, !nonnull !226, !align !242
  store i64 %i.et, ptr %12, align 8, !tbaa !43
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.es, ptr %i.fg, align 8, !tbaa !43
  store i32 144, ptr %11, align 8, !tbaa !308
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.fh, align 8, !tbaa !309
  %.sroa.22.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i113, align 8, !tbaa !255
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  %i.fj = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ff, ptr noundef nonnull align 8 dereferenceable(40) %11) #21
  %i.fk = extractvalue { i64, i64 } %i.fj, 0
  %i.fl = and i64 %i.fk, 255
  %i.fm = icmp eq i64 %i.fl, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %i.fm, label %bb.at, label %bb.ag

.critedge2:                                       ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.fn = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.fn, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.fo = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i32 %i.j, ptr %13, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.fp, align 8, !tbaa !312
  %i.fq = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.fo, i64 %i.es, ptr noundef nonnull align 8 dereferenceable(20) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %.not85156 = icmp eq i32 %i.f, 0
  br i1 %.not85156, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.ag
  %i.fr = extractvalue { ptr, ptr } %i.fq, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.ah

._crit_edge160:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.ag
  call void @_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
  br label %bb.at

bb.ah:                                            ; preds = %.lr.ph159, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv163 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next164, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 3 uses
  %i.fx = load ptr, ptr %i.x, align 8, !tbaa !225
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fx, i64 %indvars.iv163
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !43 ; 3 uses
  %i.gb = load i32, ptr %i.fs, align 8, !tbaa !227 ; 2 uses
  %i.gc = load i32, ptr %i.ft, align 4, !tbaa !228
  %.not.i = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i, label %bb.aj, label %bb.ai, !prof !229

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 %i.ga)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %4, align 8, !tbaa !230
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd
  store i32 %i.ga, ptr %i.gf, align 1
  %i.gg = load i32, ptr %i.fs, align 8, !tbaa !227
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.fs, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ai, %bb.aj
  %i.gi = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i32 %i.ga, ptr %14, align 8, !tbaa !22
  store i32 1, ptr %i.fu, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !225
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %indvars.iv163
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !43
  store i32 %i.gm, ptr %15, align 8, !tbaa !22
  store i32 0, ptr %i.fw, align 8, !tbaa !312
  %i.gn = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.gi, ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 0) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %.not85 = icmp eq i64 %indvars.iv.next164, %i.al
  br i1 %.not85, label %._crit_edge160, label %bb.ah, !llvm.loop !644

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit110.thread, %.critedge, %_ZNK4llvm3LLT13getScalarTypeEv.exit110
  %i.go = lshr i64 %i.w, 60
  %.off.i = add nsw i64 %i.go, -1
  %switch.i = icmp ult i64 %.off.i, 3
  %.off.i115 = add nsw i64 %i.ch, -1
  %switch.i116 = icmp ult i64 %.off.i115, 3
  %or.cond = select i1 %switch.i, i1 %switch.i116, i1 false
  br i1 %or.cond, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.gp = lshr i64 %.sroa.04.0.i86, 60
  %i.gq = add nsw i64 %i.gp, -5
  %switch.selectcmp.i117 = icmp ult i64 %i.gq, 4
  br i1 %switch.selectcmp.i117, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = urem i32 %i.bq, %i.cf
  %i.gs = udiv i32 %i.bq, %i.cf
  %.not = icmp eq i32 %i.gr, 0
  br i1 %.not, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store i64 %.sroa.04.0.i86, ptr %17, align 8, !tbaa !43
  %i.gt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.w, ptr %i.gt, align 8, !tbaa !43
  store i32 80, ptr %16, align 8, !tbaa !308
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %i.gu, align 8, !tbaa !309
  %.sroa.22.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i118, align 8, !tbaa !255
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !301, !nonnull !226, !align !242
  %i.gy = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.gx, ptr noundef nonnull align 8 dereferenceable(40) %16) #21
  %i.gz = extractvalue { i64, i64 } %i.gy, 0
  %.sroa.0.0.extract.trunc.i120 = trunc i64 %i.gz to i32
  %i.ha = and i32 %.sroa.0.0.extract.trunc.i120, 255
  %i.hb = add nsw i32 %i.ha, -9
  %i.hc = icmp ult i32 %i.hb, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %i.hc, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.hd = zext i32 %i.gs to i64                   ; 3 uses
  call void @_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em(ptr noundef nonnull align 8 dereferenceable(48) %18, i64 noundef %i.hd)
  %.not161 = icmp samesign ugt i64 %.sroa.05.0.i96153, %.sroa.05.0.i148
  br i1 %.not161, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.as, %bb.ao
  %i.he = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.he, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.hf = load ptr, ptr %0, align 8, !tbaa !300, !nonnull !226, !align !242
  %i.hg = load ptr, ptr %18, align 8, !tbaa !230
  %i.hh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !227
  %i.hj = zext i32 %i.hi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store i32 %i.j, ptr %19, align 8, !tbaa !22
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.hk, align 8, !tbaa !312
  %i.hl = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.hf, ptr %i.hg, i64 %i.hj, ptr noundef nonnull align 8 dereferenceable(20) %19) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.hm = load ptr, ptr %18, align 8, !tbaa !230  ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hd
  call void @_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.hm, ptr noundef %i.hn)
  call void @_ZN4llvm28LegalizationArtifactCombiner18markInstAndDefDeadERNS_12MachineInstrES2_RNS_15SmallVectorImplIPS1_EEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
  %i.ho = load ptr, ptr %18, align 8, !tbaa !230  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ho) #21
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.at

.lr.ph:                                           ; preds = %bb.ao, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %bb.ao ] ; 4 uses
  %i.hr = icmp samesign ult i64 %indvars.iv, %i.al
  br i1 %i.hr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph
  %i.hs = load ptr, ptr %i.x, align 8, !tbaa !225
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !43
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph
  %i.hw = load ptr, ptr %i.k, align 8, !tbaa !296, !nonnull !226, !align !242
  %i.hx = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.hw, i64 %.sroa.04.0.i86, ptr nonnull @.str.5, i64 0) #21
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.sink = phi i32 [ %i.hv, %bb.aq ], [ %i.hx, %bb.ar ]
  %i.hy = load ptr, ptr %18, align 8, !tbaa !230
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv
  store i32 %.sink, ptr %i.hz, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ia = icmp samesign ult i64 %indvars.iv.next, %i.hd
  br i1 %i.ia, label %.lr.ph, label %._crit_edge, !llvm.loop !645

bb.at:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102, %bb.al, %bb.ak, %bb.an, %bb.am, %._crit_edge160, %.critedge2, %bb.af, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %.1 = phi i1 [ true, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ], [ false, %bb.an ], [ false, %bb.af ], [ false, %bb.am ], [ true, %._crit_edge160 ], [ false, %.critedge2 ], [ false, %bb.ak ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit102 ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit

_ZN4llvm28LegalizationArtifactCombiner14isArtifactCastEj.exit: ; preds = %bb.a, %bb.at
  %.2 = phi i1 [ %.1, %bb.at ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm3LLT6divideEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 14 uses
  %i.b = lshr i64 %i.a, 60
  %i.c = add nsw i64 %i.b, -5
  %switch.selectcmp.i = icmp ult i64 %i.c, 4
  br i1 %switch.selectcmp.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32                    ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %.sroa.0.0.extract.trunc = and i32 %i.e, 65535
  %i.f = udiv i32 %.sroa.0.0.extract.trunc, %1
  %.sroa.0.4.extract.trunc = shl i64 %i.a, 32
  %.sroa.2.0.insert.shift.i.i5 = and i64 %.sroa.0.4.extract.trunc, 4294967296
  %.sroa.0.0.insert.ext.i.i6 = zext nneg i32 %i.f to i64
  %.sroa.0.0.insert.insert.i.i7 = or disjoint i64 %.sroa.2.0.insert.shift.i.i5, %.sroa.0.0.insert.ext.i.i6 ; 2 uses
  %i.g = icmp slt i64 %i.a, -8070450532247928832
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.a, 1152921504605798400
  %i.i = or disjoint i64 %i.h, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i = and i64 %i.a, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i, label %bb.i [
    i64 8070450532247928832, label %bb.e
    i64 6917529027641081856, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i32 %i.d, 20
  %i.k = and i32 %i.j, 255                        ; 2 uses
  %i.l = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.k) #21
  %i.o = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.n) #21
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 28                 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %storemerge.i.i.i.i.i = or disjoint i64 %i.q, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.k, 20
  %i.s = zext nneg i32 %i.r to i64
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = or disjoint i64 %i.t, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = and i64 %i.a, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.w, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.x
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.z = lshr i64 %i.a, 44
  %i.aa = and i64 %i.z, 65535
  %i.ab = lshr i64 %i.a, 28
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = select i1 %i.y, i64 %i.aa, i64 %i.ac
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.ae, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ %storemerge.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i, %bb.h ], [ %i.u, %bb.g ], [ %storemerge.i.i.i.i.i, %bb.f ] ; 2 uses
  %.not4.not.i = icmp eq i64 %.sroa.0.0.insert.insert.i.i7, 1
  br i1 %.not4.not.i, label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.af = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.insert.i.i7, i64 %.sroa.0.0.i)
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

bb.k:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.a, -1152921504606846976   ; 2 uses
  %i.ag = icmp eq i64 %.mask.i, 2305843009213693952
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %i.a, 28
  %.0.i = trunc i64 %i.ah to i32
  %i.ai = udiv i32 %.0.i, %1
  %i.aj = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !319, !range !246, !noundef !226
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = zext i32 %i.ai to i64
  %i.am = shl nuw nsw i64 %i.al, 28
  %.sroa.0.0.v.i = select i1 %i.ak, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i8 = or disjoint i64 %.sroa.0.0.v.i, %i.am
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

bb.m:                                             ; preds = %bb.k
  %i.an = icmp eq i64 %.mask.i, 4611686018427387904
  %i.ao = icmp slt i64 %i.a, -8070450532247928832
  %spec.select.i.i10 = or i1 %i.ao, %i.an
  %i.ap = lshr i64 %i.a, 44
  %i.aq = and i64 %i.ap, 65535
  %i.ar = lshr i64 %i.a, 28
  %.0.in.i11 = select i1 %spec.select.i.i10, i64 %i.aq, i64 %i.ar
  %.0.i12 = trunc i64 %.0.in.i11 to i32
  %i.as = udiv i32 %.0.i12, %1
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 28
  %storemerge.i.i.i = or disjoint i64 %i.au, 1152921504606846976
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit: ; preds = %bb.j, %_ZNK4llvm3LLT14getElementTypeEv.exit, %bb.m, %bb.l
  %.sroa.04.0 = phi i64 [ %storemerge.i.i.i, %bb.m ], [ %.sroa.0.0.i8, %bb.l ], [ %i.af, %bb.j ], [ %.sroa.0.0.i, %_ZNK4llvm3LLT14getElementTypeEv.exit ]
  ret i64 %.sroa.04.0
}

declare i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), i64, ptr, i64) local_unnamed_addr #1

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96), ptr, i64, ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_8RegisterEE6appendIPS1_vEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder19findValueFromConcatERNS_14GConcatVectorsEjj:bb.a

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b, %bb.a, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i57 = phi i64 [ %i.v, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.ab, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.ad = trunc i64 %.sroa.05.0.i57 to i32        ; 4 uses
  %i.ae = urem i32 %2, %i.ad                      ; 3 uses
  %i.af = udiv i32 %2, %i.ad
  %i.ag = add i32 %i.ae, %3
  %i.ah = icmp ugt i32 %i.ag, %i.ad
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.028.0.copyload = load i32, ptr %i.ai, align 8, !tbaa !22
  br label %bb.o

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aj = add i32 %i.af, 1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43 ; 10 uses
  %i.ao = icmp eq i32 %i.ae, 0
  br i1 %i.ao, label %bb.i, label %.split

.split:                                           ; preds = %bb.f
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33

bb.g:                                             ; preds = %.split
  %i.aq = and i32 %i.an, 2147483647               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !227
  %i.at = icmp ugt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !230
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33: ; preds = %.split, %bb.g, %bb.h
  %.sroa.04.0.i32 = phi i64 [ %i.ay, %bb.h ], [ 0, %bb.g ], [ 0, %.split ]
  %i.az = tail call i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder20findValueFromDefImplENS_8RegisterEjjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 %i.an, i32 noundef %i.ae, i32 noundef %3, i64 %.sroa.04.0.i32)
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.ba = icmp eq i32 %3, %i.ad
  br i1 %i.ba, label %bb.l, label %.split29

.split29:                                         ; preds = %bb.i
  %i.bb = icmp slt i32 %i.an, 0
  br i1 %i.bb, label %bb.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35

bb.j:                                             ; preds = %.split29
  %i.bc = and i32 %i.an, 2147483647               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !227
  %i.bf = icmp ugt i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !230
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35: ; preds = %.split29, %bb.j, %bb.k
  %.sroa.04.0.i34 = phi i64 [ %i.bk, %bb.k ], [ 0, %bb.j ], [ 0, %.split29 ]
  %i.bl = tail call i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder20findValueFromDefImplENS_8RegisterEjjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 %i.an, i32 noundef 0, i32 noundef %3, i64 %.sroa.04.0.i34)
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.an, ptr %i.bm, align 8, !tbaa !22
  %i.bn = icmp slt i32 %i.an, 0
  br i1 %i.bn, label %bb.m, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.m:                                             ; preds = %bb.l
  %i.bo = and i32 %i.an, 2147483647               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.br = icmp ugt i32 %i.bq, %i.bo
  br i1 %i.br, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !230
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.04.0.i36 = phi i64 [ %i.bw, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ]
  %i.bx = tail call i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder20findValueFromDefImplENS_8RegisterEjjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 %i.an, i32 noundef 0, i32 noundef %3, i64 %.sroa.04.0.i36)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33, %bb.e
  %.sroa.028.1 = phi i32 [ %.sroa.028.0.copyload, %bb.e ], [ %i.bx, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37 ], [ %i.az, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit33 ], [ %i.bl, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit35 ]
  ret i32 %.sroa.028.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder24findValueFromBuildVectorERNS_12GBuildVectorEjj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %5 = alloca [2 x %"class.llvm::LLT"], align 8   ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.395", align 8 ; 10 uses
  %7 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !317, !nonnull !226, !align !242 ; 4 uses
  %i.f = icmp slt i32 %i.d, 0                     ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 2147483647                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.i = load i32, ptr %i.h, align 8, !tbaa !227
  %i.j = icmp ugt i32 %i.i, %i.g
  br i1 %i.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.l = zext nneg i32 %i.g to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !230
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !43
  %.fr = freeze i64 %i.o                          ; 10 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.p = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.p, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.q = lshr i64 %.fr, 60
  %.off.i.i = add nsw i64 %i.q, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.c
  %i.r = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.r, %i.p
  %i.s = lshr i64 %.fr, 44
  %i.t = and i64 %i.s, 65535
  %i.u = lshr i64 %.fr, 28
  %i.v = select i1 %spec.select.i.i.i, i64 %i.t, i64 %i.u
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.c
  %i.w = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.w, 65535
  %i.x = icmp slt i64 %.fr, -8070450532247928832
  %i.y = lshr i64 %.fr, 44
  %i.z = and i64 %i.y, 65535
  %i.aa = lshr i64 %.fr, 28
  %spec.select = select i1 %i.x, i64 %i.z, i64 %i.aa
  %i.ab = mul nuw nsw i64 %spec.select, %.sroa.0.0.insert.ext.i.i.i
  %i.ac = trunc i64 %.fr to i1
  br i1 %i.ac, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b, %bb.a, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i74 = phi i64 [ %i.v, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.ab, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.ad = trunc i64 %.sroa.05.0.i74 to i32        ; 6 uses
  %i.ae = udiv i32 %2, %i.ad
  %i.af = add i32 %i.ae, 1                        ; 4 uses
  %i.ag = urem i32 %2, %i.ad
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload = load i32, ptr %i.ah, align 8, !tbaa !22
  br label %bb.v

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ai = icmp ult i32 %3, %i.ad
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload41 = load i32, ptr %i.aj, align 8, !tbaa !22
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp ugt i32 %3, %i.ad
  br i1 %i.ak, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.al = urem i32 %3, %i.ad
  %i.am = udiv i32 %3, %i.ad                      ; 3 uses
  %.not47 = icmp eq i32 %i.al, 0
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload42 = load i32, ptr %i.an, align 8, !tbaa !22
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i24, ptr %i.ao, align 8
  %i.aq = zext i24 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = icmp eq i32 %i.am, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !43
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  br i1 %i.f, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50

bb.n:                                             ; preds = %bb.m
  %i.av = and i32 %i.d, 2147483647                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !227
  %i.ay = icmp ugt i32 %i.ax, %i.av
  br i1 %i.ay, label %bb.o, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !230
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !43
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.04.0.i49 = phi i64 [ %i.bd, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.am to i64
  %i.be = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.ext.i.i, i64 %.sroa.04.0.i49) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !649, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 %i.be, ptr %5, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.04.0.i49, ptr %i.bh, align 8, !tbaa !43
  store i32 83, ptr %4, align 8, !tbaa !308
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.bi, align 8, !tbaa !309
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !255
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bk = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %4) #21
  %i.bl = extractvalue { i64, i64 } %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bm = and i64 %i.bl, 255
  %.not48 = icmp eq i64 %i.bm, 0
  br i1 %.not48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.040.0.copyload43 = load i32, ptr %i.bn, align 8, !tbaa !22
  br label %bb.v

bb.q:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !230
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !227
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 12, ptr %i.bq, align 4, !tbaa !228
  %i.br = add i32 %i.am, %i.af                    ; 2 uses
  %i.bs = icmp ult i32 %i.af, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bt = zext i32 %i.af to i64
  %i.bu = zext i32 %i.br to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !318, !nonnull !226, !align !242 ; 2 uses
  call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.bw, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !261
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !261
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !318, !nonnull !226, !align !242
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.be, ptr %7, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.cb, align 8, !tbaa !315
  %i.cc = load ptr, ptr %6, align 8, !tbaa !230
  %i.cd = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.ce = zext i32 %i.cd to i64
  %i.cf = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.ca, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr %i.cc, i64 %i.ce) #21
  %i.cg = extractvalue { ptr, ptr } %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !225
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cl = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cl) #21
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit: ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !225
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !43 ; 2 uses
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !227 ; 2 uses
  %i.cs = load i32, ptr %i.bq, align 4, !tbaa !228
  %.not.i = icmp ult i32 %i.cr, %i.cs
  br i1 %.not.i, label %bb.t, label %bb.s, !prof !229

bb.s:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 %i.cq)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ct = zext i32 %i.cr to i64
  %i.cu = load ptr, ptr %6, align 8, !tbaa !230
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  store i32 %i.cq, ptr %i.cv, align 1
  %i.cw = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.bp, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !648

bb.u:                                             ; preds = %bb.h
  %i.cz = zext i32 %i.af to i64
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !43
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, %bb.p, %bb.u, %bb.j, %bb.g, %bb.e
  %.sroa.040.2 = phi i32 [ %.sroa.040.0.copyload, %bb.e ], [ %.sroa.040.0.copyload41, %bb.g ], [ %.sroa.040.0.copyload42, %bb.j ], [ %i.dc, %bb.u ], [ %i.au, %bb.l ], [ %.sroa.040.0.copyload43, %bb.p ], [ %i.ck, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit ]
  ret i32 %.sroa.040.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm28LegalizationArtifactCombiner19ArtifactValueFinder19findValueFromInsertERNS_12MachineInstrEjj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !317, !nonnull !226, !align !242 ; 8 uses
  %i.h = icmp slt i32 %i.f, 0                     ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread89

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 2147483647                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.k = load i32, ptr %i.j, align 8, !tbaa !227
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread89

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread89:     ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.p = zext nneg i32 %i.i to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !230
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %.fr = freeze i64 %i.s                          ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.u = load i64, ptr %i.t, align 8, !tbaa !43   ; 2 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.v = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
end_hunk_2
