Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86PreTileConfig?download=true
inline.NumInlined: 1737
inline.NumDeleted: 880
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj:_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !182
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !180
  store ptr %i.y, ptr %i.q, align 8, !tbaa !181
  store i32 0, ptr %i.p, align 16, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !189
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !17
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !183 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !183
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !183
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 6
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #13 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !180
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !182 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !181 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !182
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i23 = icmp eq i64 %i.h, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !183  ; 2 uses
  %.not11.i21 = icmp eq i32 %i.j, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !183
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.014.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !183
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !751

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %.val12, i64 %.lcssa12.i ; 2 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !186
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false), !tbaa.struct !755
  %i.ap = shl nuw i32 1, %.lcssa.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !183
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !183
  %i.at = add i32 %.0.i22, -1
  %i.au = and i32 %i.at, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !752

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !753

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !182
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aw, align 8, !tbaa !190
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ax, align 8, !tbaa !190
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.az = load ptr, ptr %1, align 8, !tbaa !180
  %i.ba = zext i32 %i.av to i64                   ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 6
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #20
  store i32 0, ptr %i.b, align 4, !tbaa !182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEN12_GLOBAL__N_16BBInfoENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_120X86PreTileConfigImpl16collectShapeInfoERN4llvm12MachineInstrEENK3$_0clEPS2_PNS1_17MachineBasicBlockE"(ptr nofree captures(none) %.0.val, ptr noundef %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.(anonymous namespace)::MIRef", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !261
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !257
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i, label %_ZN12_GLOBAL__N_15MIRefC2EPN4llvm12MachineInstrEPNS1_17MachineBasicBlockE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.sroa.02.05.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195  ; 2 uses
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_15MIRefC2EPN4llvm12MachineInstrEPNS1_17MachineBasicBlockE.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN12_GLOBAL__N_15MIRefC2EPN4llvm12MachineInstrEPNS1_17MachineBasicBlockE.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.0.lcssa.i.i, ptr %i.j, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 160 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !264, !noalias !760 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 168 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !265, !noalias !760 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 180
  %i.p = load i32, ptr %i.o, align 4, !tbaa !266, !noalias !760 ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_15MIRefC2EPN4llvm12MachineInstrEPNS1_17MachineBasicBlockE.exit
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %i.s = ptrtoint ptr %1 to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.r, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [216 x i8], ptr %i.l, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !183
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !184

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.am, %bb.c ], [ %i.z, %bb.b ] ; 5 uses
  %.05.i.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit, label %bb.c, !prof !187

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nuw i32 %.05.i.i.i, 1
  %i.ak = and i32 %i.aj, %i.r                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [216 x i8], ptr %i.l, i64 %i.al ; 2 uses
  %i.an = lshr i64 %i.al, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !183
  %i.aq = and i32 %i.ak, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !188, !llvm.loop !7

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %_ZN12_GLOBAL__N_15MIRefC2EPN4llvm12MachineInstrEPNS1_17MachineBasicBlockE.exit
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.z, %bb.b ], [ null, %_ZN12_GLOBAL__N_15MIRefC2EPN4llvm12MachineInstrEPNS1_17MachineBasicBlockE.exit ], [ %i.am, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !305
  %i.at = getelementptr i8, ptr %.0.val, i64 176  ; 3 uses
  %.val6.i.i.i = load i32, ptr %i.at, align 8, !tbaa !267
  %i.au = shl i32 %.val6.i.i.i, 2
  %i.av = add i32 %i.au, 4
  %i.aw = mul i32 %i.p, 3
  %.not.i.i.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread, label %bb.d, !prof !187

bb.d:                                             ; preds = %.loopexit.i.i
  %i.ax = shl i32 %i.p, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 noundef %i.ax)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !305
  %.val4.i.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !265
  %.val7.i.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !264
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread: ; preds = %.loopexit.i.i, %bb.d
  %.val7.i.i.i = phi ptr [ %.val7.i.pre.i.i, %bb.d ], [ %i.l, %.loopexit.i.i ]
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.d ], [ %i.n, %.loopexit.i.i ]
  %i.ay = phi ptr [ %.pre.i.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 7 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %.val7.i.i.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 216               ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !183
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !183
  %.val.i.i.i.i = load i32, ptr %i.at, align 8, !tbaa !267
  %i.bk = add i32 %.val.i.i.i.i, 1
  store i32 %i.bk, ptr %i.at, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.ay, align 8, !tbaa !186
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !169
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !171
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i32 8, ptr %i.bo, align 4, !tbaa !170
  %.val12.pre = load ptr, ptr %i.b, align 8
  br label %_ZN4llvm11lower_boundIRNS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEERS3_EEDaOT_OT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val10.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169 ; 4 uses
  %.phi.trans.insert12 = getelementptr i8, ptr %i.ag, i64 16
  %.val11.pre = load i32, ptr %.phi.trans.insert12, align 8, !tbaa !171 ; 3 uses
  %.not.i = icmp eq i32 %.val11.pre, 0
  br i1 %.not.i, label %_ZN4llvm11lower_boundIRNS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEERS3_EEDaOT_OT0_.exit, label %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i

_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit
  %i.bp = zext i32 %.val11.pre to i64             ; 2 uses
  br label %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.thread9.i.i.i, %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.016.i.i.i = phi i64 [ %i.cg, %.thread9.i.i.i ], [ %i.bp, %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 3 uses
  %.01115.i.i.i = phi ptr [ %i.cf, %.thread9.i.i.i ], [ %.val10.pre, %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 3 uses
  %i.bq = lshr i64 %.016.i.i.i, 1                 ; 5 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.01115.i.i.i, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !186 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %1
  br i1 %i.bv, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bx = xor i64 %i.bq, -1
  %i.by = add nsw i64 %.016.i.i.i, %i.bx
  br label %.thread9.i.i.i

bb.e:                                             ; preds = %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.bz = icmp ult ptr %1, %i.bu
  br i1 %i.bz, label %.thread9.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN12_GLOBAL__N_15MIRefEKS4_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN12_GLOBAL__N_15MIRefEKS4_EEbT_RT0_.exit.i.i.i: ; preds = %bb.e
  %i.ca = load i64, ptr %i.bt, align 8, !tbaa !21
  %i.cb = icmp ult i64 %i.ca, %.0.lcssa.i.i
  %cond.fr4.i.i.i = freeze i1 %i.cb               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cd = xor i64 %i.bq, -1
  %i.ce = add nsw i64 %.016.i.i.i, %i.cd
  %spec.select.i.i.i = select i1 %cond.fr4.i.i.i, ptr %i.cc, ptr %.01115.i.i.i
  %spec.select14.i.i.i = select i1 %cond.fr4.i.i.i, i64 %i.ce, i64 %i.bq
  br label %.thread9.i.i.i

.thread9.i.i.i:                                   ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN12_GLOBAL__N_15MIRefEKS4_EEbT_RT0_.exit.i.i.i, %bb.e, %.thread.i.i.i
  %i.cf = phi ptr [ %.01115.i.i.i, %bb.e ], [ %spec.select.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN12_GLOBAL__N_15MIRefEKS4_EEbT_RT0_.exit.i.i.i ], [ %i.bw, %.thread.i.i.i ] ; 2 uses
  %i.cg = phi i64 [ %i.bq, %bb.e ], [ %spec.select14.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPN12_GLOBAL__N_15MIRefEKS4_EEbT_RT0_.exit.i.i.i ], [ %i.by, %.thread.i.i.i ] ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %_ZSt9__advanceIPN12_GLOBAL__N_15MIRefElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11lower_boundIRNS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEERS3_EEDaOT_OT0_.exit, !llvm.loop !3

_ZN4llvm11lower_boundIRNS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEERS3_EEDaOT_OT0_.exit: ; preds = %.thread9.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread
  %.sroa.0.0.i.i37 = phi ptr [ %i.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit ], [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread ], [ %i.ag, %.thread9.i.i.i ] ; 6 uses
  %.val1035 = phi ptr [ %.val10.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit ], [ %i.bm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread ], [ %.val10.pre, %.thread9.i.i.i ] ; 4 uses
  %.val1133 = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread ], [ %.val11.pre, %.thread9.i.i.i ] ; 2 uses
  %.val1231 = phi ptr [ %1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit ], [ %.val12.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread ], [ %1, %.thread9.i.i.i ]
  %.pre-phi = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread ], [ %i.bp, %.thread9.i.i.i ] ; 2 uses
  %.011.lcssa.i.i.i = phi ptr [ %.val10.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit ], [ %i.bm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_EixERKS3_.exit.thread ], [ %i.cf, %.thread9.i.i.i ] ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 8 ; 7 uses
  %4 = getelementptr i8, ptr %.sroa.0.0.i.i37, i64 16 ; 6 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %.val1035, i64 %.pre-phi ; 3 uses
  %i.cj = icmp eq ptr %.011.lcssa.i.i.i, %i.ci
  br i1 %i.cj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11lower_boundIRNS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEERS3_EEDaOT_OT0_.exit
  %.val14 = load ptr, ptr %.011.lcssa.i.i.i, align 8, !tbaa !261
  %i.ck = getelementptr i8, ptr %.011.lcssa.i.i.i, i64 8
  %.val15 = load ptr, ptr %i.ck, align 8
  %i.cl = icmp ne ptr %.val14, %0
  %i.cm = icmp ne ptr %.val15, %.val1231
  %.not6.i = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %.not6.i, label %bb.j, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_15MIRefEE6insertEPS2_RKS2_.exit

bb.g:                                             ; preds = %_ZN4llvm11lower_boundIRNS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEERS3_EEDaOT_OT0_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !170
  %.not.i.i.i20 = icmp ult i32 %.val1133, %i.co
  br i1 %.not.i.i.i20, label %bb.i, label %bb.h, !prof !187

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_15MIRefEE6insertEPS2_RKS2_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ci, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.cp = load i32, ptr %4, align 8, !tbaa !171
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %4, align 8, !tbaa !171
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_15MIRefEE6insertEPS2_RKS2_.exit

bb.j:                                             ; preds = %bb.f
  %i.cr = ptrtoint ptr %.011.lcssa.i.i.i to i64
  %i.cs = ptrtoint ptr %.val1035 to i64           ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = add nuw nsw i64 %.pre-phi, 1            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !170
  %.not.not.i.i.i.i = icmp ult i32 %.val1133, %i.cw
  br i1 %.not.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE28reserveForParamAndGetAddressERKS2_m.exit.i.i, label %bb.k, !prof !187

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp uge ptr %2, %.val1035
  %i.cy = icmp ult ptr %2, %i.ci
  %spec.select.i.i.i.i.i.i = and i1 %i.cx, %i.cy
  br i1 %spec.select.i.i.i.i.i.i, label %bb.l, label %.critedge.i.i.i.i, !prof !268

bb.l:                                             ; preds = %bb.k
  %i.cz = ptrtoint ptr %2 to i64
  %i.da = sub i64 %i.cz, %i.cs
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 24
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.db, i64 noundef %i.cu, i64 noundef 24) #20
  %.val.i.i.i.i19 = load ptr, ptr %3, align 8, !tbaa !169 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.val.i.i.i.i19, i64 %i.da
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE28reserveForParamAndGetAddressERKS2_m.exit.i.i

.critedge.i.i.i.i:                                ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 24
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.dd, i64 noundef %i.cu, i64 noundef 24) #20
  %.val.pre.i.i = load ptr, ptr %3, align 8, !tbaa !169
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE28reserveForParamAndGetAddressERKS2_m.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE28reserveForParamAndGetAddressERKS2_m.exit.i.i: ; preds = %.critedge.i.i.i.i, %bb.l, %bb.j
  %.val.i.i = phi ptr [ %.val1035, %bb.j ], [ %.val.i.i.i.i19, %bb.l ], [ %.val.pre.i.i, %.critedge.i.i.i.i ] ; 2 uses
  %.016.i.i.i.i = phi ptr [ %2, %bb.j ], [ %i.dc, %bb.l ], [ %2, %.critedge.i.i.i.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ct ; 5 uses
  %.val23.i.i = load i32, ptr %4, align 8, !tbaa !171
  %i.df = zext i32 %.val23.i.i to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !tbaa.struct !260
  %.val20.i.i = load ptr, ptr %3, align 8, !tbaa !169
  %.val21.i.i = load i32, ptr %4, align 8, !tbaa !171
  %i.di = zext i32 %.val21.i.i to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %.val20.i.i, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -24 ; 2 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.de to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp sgt i64 %i.dn, 24
  br i1 %i.do, label %bb.m, label %bb.n, !prof !187

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE28reserveForParamAndGetAddressERKS2_m.exit.i.i
  %.neg36.i.i = udiv exact i64 %i.dn, 24
  %.neg36.neg.i.i = sub nsw i64 0, %.neg36.i.i
  %i.dp = getelementptr inbounds [24 x i8], ptr %i.dj, i64 %.neg36.neg.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.de, i64 %i.dn, i1 false)
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_15MIRefES2_ET0_T_S4_S3_.exit.i.i

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_15MIRefELb1EE28reserveForParamAndGetAddressERKS2_m.exit.i.i
  %i.dq = icmp eq i64 %i.dn, 24
  br i1 %i.dq, label %bb.o, label %_ZSt13move_backwardIPN12_GLOBAL__N_15MIRefES2_ET0_T_S4_S3_.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !260
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_15MIRefES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN12_GLOBAL__N_15MIRefES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dr = load i32, ptr %4, align 8, !tbaa !171
  %i.ds = add i32 %i.dr, 1                        ; 2 uses
  store i32 %i.ds, ptr %4, align 8, !tbaa !171
  %.val16.i.i = load ptr, ptr %3, align 8, !tbaa !169
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.val16.i.i, i64 %i.dt
  %i.dv = icmp uge ptr %.016.i.i.i.i, %i.de
  %i.dw = icmp ult ptr %.016.i.i.i.i, %i.du
  %spec.select.i.i.i18 = and i1 %i.dv, %i.dw
  %spec.select.idx.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %spec.select.i.i.i18, i64 24, i64 0
  %spec.select.idx.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 %spec.select.idx.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.idx.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 24, i1 false), !tbaa.struct !260
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_15MIRefEE6insertEPS2_RKS2_.exit

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_15MIRefEE6insertEPS2_RKS2_.exit: ; preds = %bb.h, %bb.i, %_ZSt13move_backwardIPN12_GLOBAL__N_15MIRefES2_ET0_T_S4_S3_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264, !noalias !765 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265, !noalias !765 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !266, !noalias !765 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [216 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !183
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !184

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !186
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !187

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [216 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !183
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !188, !llvm.loop !7

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #13 align 2 {
_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEC2EjNS_12DenseMapBaseISC_S2_S6_S8_SB_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.13", align 16 ; 8 uses
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
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !266
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 216                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !264
  store ptr %i.y, ptr %i.q, align 8, !tbaa !265
  store i32 0, ptr %i.p, align 16, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !305    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !766
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !17
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !183 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !183
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !183
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEC2EjNS_12DenseMapBaseISC_S2_S6_S8_SB_E16ExactBucketCountE.exit
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 31               ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !183 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.a

bb.a:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [216 x i8], ptr %i.z, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.at) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.b, %bb.a
  %i.aw = add i32 %.0.i7.i.i, -1
  %i.ax = and i32 %i.aw, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.a, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !6

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %i.ay = mul nuw nsw i64 %i.ai, 216
  %i.az = lshr i64 %i.aj, 3
  %i.ba = and i64 %i.az, 1073741820
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.bb, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEC2EjNS_12DenseMapBaseISC_S2_S6_S8_SB_E16ExactBucketCountE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockENS_11SmallVectorIN12_GLOBAL__N_15MIRefELj8EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #13 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !264
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !265
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !266 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !265 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !264
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !266
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
end_hunk_0
