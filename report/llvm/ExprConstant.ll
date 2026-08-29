Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E6insertEOSt4pairIS3_S4_E:bb.a
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !818, !noalias !1495
  %i.x = or i32 %i.t, %i.w
  store i32 %i.x, ptr %i.v, align 4, !tbaa !818, !noalias !1495
  %.val.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !1491, !noalias !1495
  %i.y = add i32 %.val.i.i.i.i, 1
  store i32 %i.y, ptr %i.e, align 8, !tbaa !1491, !noalias !1495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1495
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !1495
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !440, !noalias !1495
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !440, !noalias !1495
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E16try_emplace_implIS3_JS4_EEESt4pairINS_16DenseMapIteratorIS3_S4_S6_S9_Lb0EEEbEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E16try_emplace_implIS3_JS4_EEESt4pairINS_16DenseMapIteratorIS3_S4_S6_S9_Lb0EEEbEOT_DpOT0_.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.l, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i ], [ %.val6.i.i, %bb.a ]
  %.sroa.3.0.i.i = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !1495
  %.val3.i.i = load ptr, ptr %1, align 8, !tbaa !760, !noalias !1498 ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 8
  %.val2.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1271, !noalias !1498
  %i.ac = getelementptr i8, ptr %1, i64 20
  %.val.i.i = load i32, ptr %i.ac, align 4, !tbaa !759, !noalias !1498
  %i.ad = zext i32 %.val.i.i to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.val3.i.i, i64 %i.ad
  store ptr %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !1495
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1495
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val3.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1495
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.val2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1495
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.i.i, ptr %i.af, align 8, !tbaa !1464, !alias.scope !1495
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1018", align 8  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !760, !noalias !1501 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1271, !noalias !1501 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !759, !noalias !1501 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = tail call noundef i64 @_ZN5clang10hash_valueERKNS_7APValue10LValueBaseE(ptr noundef nonnull align 8 dereferenceable(32) %1) #24
  store i64 %i.i, ptr %3, align 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !1200 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !446
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i
  %i.k = tail call noundef i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.n = trunc i64 %i.m to i32
  %i.o = xor i32 %i.n, -313160499
  %.024 = and i32 %i.o, %i.g                      ; 3 uses
  %i.p = zext i32 %.024 to i64                    ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !818
  %i.u = and i32 %.024, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %.thread, !prof !1178

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.025, 1
  %.0 = and i32 %i.x, %i.g                        ; 3 uses
  %i.y = zext i32 %.0 to i64                      ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !818
  %i.ad = and i32 %.0, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !1179, !llvm.loop !1506

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ah = call fastcc noundef zeroext i1 @_ZN4llvm12DenseMapInfoIN12_GLOBAL__N_123ObjectUnderConstructionEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ag) ; 3 uses
  br i1 %i.ah, label %.thread, label %bb.c, !prof !826

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ah, %bb.c ], [ %i.ah, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1490
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #15 align 2 {
_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.474", align 16 ; 8 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !759
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !760
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1271
  store i32 0, ptr %i.p, align 16, !tbaa !1491
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1490
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !1107
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !1107
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !818 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !818
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !818
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 40
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %2 = alloca %"struct.std::array.1018", align 8  ; 5 uses
  %.val11 = load ptr, ptr %1, align 8, !tbaa !760
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.b, align 8, !tbaa !1271
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !759 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !tbaa !1271 ; 2 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !760
  %i.e = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.e, align 4, !tbaa !759
  %i.f = add i32 %.val7, -1
  %i.g = zext i32 %.val to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5                         ; 2 uses
  %.not.i31 = icmp eq i64 %i.i, 0
  br i1 %.not.i31, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !818  ; 2 uses
  %.not11.i29 = icmp eq i32 %i.l, 0
  br i1 %.not11.i29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.m = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i30 = phi i32 [ %i.l, %.lr.ph ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.n = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i30, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.val11, i64 %i.p ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.s = call noundef i64 @_ZN5clang10hash_valueERKNS_7APValue10LValueBaseE(ptr noundef nonnull align 8 dereferenceable(32) %i.q) #24
  store i64 %i.s, ptr %2, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !1200 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !446 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.2.0.copyload.i.i.i.i.i.i, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not32.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not32.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.c
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %i.a, i64 noundef 0) #24
  br label %_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_.exit

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  %.01837.i = phi i64 [ %i.ae, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ 0, %bb.c ] ; 3 uses
  %.01936.i = phi i64 [ %.1.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ 256, %bb.c ] ; 3 uses
  %.02035.i = phi ptr [ %.121.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ %i.a, %bb.c ] ; 2 uses
  %.02234.i = phi ptr [ %i.aj, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %.sroa.029.033.i = phi ptr [ %.sroa.029.1.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ null, %bb.c ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.02234.i, align 8, !tbaa !446
  %i.v = xor i64 %.sroa.0.0.copyload.i.i, -49064778989728563 ; 2 uses
  %i.w = lshr i64 %i.v, 30
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 27
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -7723592293110705685     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = add i64 %.01837.i, 8                    ; 4 uses
  %i.af = icmp ugt i64 %i.ae, %.01936.i
  br i1 %i.af, label %.preheader.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.0.in.i = phi i64 [ %.0.i15, %.preheader.i ], [ %.01936.i, %.lr.ph.i ]
  %.0.i15 = shl i64 %.0.in.i, 1                   ; 5 uses
  %i.ag = icmp ult i64 %.0.i15, %i.ae
  br i1 %i.ag, label %.preheader.i, label %bb.d, !llvm.loop !1273

bb.d:                                             ; preds = %.preheader.i
  %i.ah = call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i15) #30 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %.02035.i, i64 %.01837.i, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.029.033.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %.sroa.029.033.i) #26
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d, %.lr.ph.i
  %.sroa.029.1.i = phi ptr [ %.sroa.029.033.i, %.lr.ph.i ], [ %i.ah, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.ah, %bb.d ] ; 3 uses
  %.121.i = phi ptr [ %.02035.i, %.lr.ph.i ], [ %i.ah, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.ah, %bb.d ] ; 3 uses
  %.1.i = phi i64 [ %.01936.i, %.lr.ph.i ], [ %.0.i15, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %.0.i15, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.121.i, i64 %.01837.i
  store i64 %i.ad, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.02234.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i14, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1274

._crit_edge.i:                                    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  %i.ak = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %.121.i, i64 noundef %i.ae) #24 ; 2 uses
  %.not.i24.i = icmp eq ptr %.sroa.029.1.i, null
  br i1 %.not.i24.i, label %_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i25.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i25.i: ; preds = %._crit_edge.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.029.1.i) #26
  br label %_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_.exit

_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_.exit: ; preds = %._crit_edge.thread.i, %._crit_edge.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i25.i
  %i.al = phi i64 [ %i.u, %._crit_edge.thread.i ], [ %i.ak, %._crit_edge.i ], [ %i.ak, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i25.i ]
  %i.am = xor i64 %i.al, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 %i.am, ptr %i.j, align 8
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_.exit
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_.exit ], [ %i.ax, %bb.e ]
  %.0.i13 = and i32 %.pn.i, %i.f                  ; 3 uses
  %i.aq = zext i32 %.0.i13 to i64                 ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !818
  %i.au = and i32 %.0.i13, 31                     ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i13, 1
  br i1 %i.aw, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1507

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ar ; 2 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.val12, i64 %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !440
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !440
  %i.bd = shl nuw i32 1, %i.au
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !818
  %i.bf = or i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !818
  %i.bg = add i32 %.0.i30, -1
  %i.bh = and i32 %i.bg, %.0.i30                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1508

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1509

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.c, align 4, !tbaa !759
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bi = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.bj, align 8, !tbaa !1491
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.bk, align 8, !tbaa !1491
  %i.bl = icmp eq i32 %i.bi, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !760
  %i.bn = zext i32 %i.bi to i64                   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 40
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #24
  store i32 0, ptr %i.c, align 4, !tbaa !759
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS1_17ConstructionPhaseENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS5_17ConstructionPhaseENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

declare void @_ZN5clang7APValue15LValuePathEntryC1EN4llvm14PointerIntPairIPKNS_4DeclELj1EbNS2_21PointerLikeTypeTraitsIS6_EENS2_18PointerIntPairInfoIS6_Lj1ES8_EEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1510, !noalias !1513 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1518, !noalias !1513 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1519, !noalias !1513 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1478   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !818
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !1178

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1478
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !826

bb.c:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !826

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1521
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1518
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1510
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !818
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !818
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1522
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1478
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1478
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !773
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1510, !noalias !1523 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518, !noalias !1523 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1519, !noalias !1523 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1478   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !818
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1178

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1478
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !826

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !818
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1179, !llvm.loop !1520

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1521
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1080", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1519
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1510
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1518
  store i32 0, ptr %i.p, align 16, !tbaa !1522
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1107
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1521
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1107
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1107
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1107
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !818 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !818
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !818
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !818
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !818
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1510   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1519 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1518 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1510
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1519
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !818  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1478 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !818 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !818 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1528

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1478
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !446
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !446
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !818
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1529

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1530

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1519
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1522
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1522
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1519
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_123ObjectUnderConstructionENS2_17ConstructionPhaseENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull %1) unnamed_addr #15 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1018", align 8  ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !1491
  %i.b = add i32 %.val.i, -1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !1491
  %.val35 = load ptr, ptr %0, align 8, !tbaa !760 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.c, align 8, !tbaa !1271 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.d, align 4, !tbaa !759
  %i.e = add i32 %.val, -1                        ; 4 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %.val35 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = add i32 %i.j, 1
  %i.l = and i32 %i.k, %i.e                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !818
  %i.q = and i32 %i.l, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.pn = phi i64 [ %i.m, %.lr.ph ], [ %i.ap, %bb.d ]
  %i.u = phi i32 [ %i.l, %.lr.ph ], [ %i.ao, %bb.d ] ; 3 uses
  %.0334 = phi i32 [ %i.j, %.lr.ph ], [ %.2, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val35, i64 %.pn ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.x = call noundef i64 @_ZN5clang10hash_valueERKNS_7APValue10LValueBaseE(ptr noundef nonnull align 8 dereferenceable(32) %i.v) #24
  store i64 %i.x, ptr %2, align 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1200 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i
  %i.z = call noundef i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKN5clang7APValue15LValuePathEntryEEENS_9hash_codeET_S9_(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef %i.y)
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = xor i32 %i.ab, -313160499               ; 2 uses
  %i.ad = sub i32 %.0334, %i.ac
  %i.ae = and i32 %i.ad, %i.e
  %i.af = sub i32 %i.u, %i.ac
  %i.ag = and i32 %i.af, %i.e
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = zext i32 %.0334 to i64
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %.val35, i64 %i.ai ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !440
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !440
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i32 [ %.0334, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.an = add i32 %i.u, 1
  %i.ao = and i32 %i.an, %i.e                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !818
  %i.at = and i32 %i.ao, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.033.lcssa = phi i32 [ %i.j, %bb.a ], [ %.2, %bb.d ] ; 2 uses
  %i.aw = and i32 %.033.lcssa, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = xor i32 %i.ax, -1
  %i.az = lshr i32 %.033.lcssa, 5
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !818
  %i.bd = and i32 %i.bc, %i.ay
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !818
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL16EvaluateLoopBodyRN12_GLOBAL__N_110StmtResultERNS_8EvalInfoEPKN5clang4StmtEPKNS4_10SwitchCaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(984) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !745  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !747  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !746
  %i.h = add i32 %i.g, 1                          ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit, label %bb.d, !prof !826

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2231
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2228
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2220
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !818
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !818
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2232
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1478
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1478
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2220, !noalias !2233 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2228, !noalias !2233 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2229, !noalias !2233 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1478   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !818
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1178

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1478
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !826

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !818
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1179, !llvm.loop !2230

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2231
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1082", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2229
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2220
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2228
  store i32 0, ptr %i.p, align 16, !tbaa !2232
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1107
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2231
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1107
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1107
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1107
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !818 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !818
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !818
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !818
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !818
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2220
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2228
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2229 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2228 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2220
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2229
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !818  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1478 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !818
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !818
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !2238

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !1478
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !2239
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !818
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !818
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2240

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2241

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2229
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2232
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2232
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !2220
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !2229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL13findSubobjectIN12_GLOBAL__N_120DestroyObjectHandlerEENT_11result_typeERNS0_8EvalInfoEPKN5clang4ExprERKNS0_14CompleteObjectERKNS0_19SubobjectDesignatorERS2_(ptr noundef nonnull align 8 dereferenceable(984) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(28) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::ObjectUnderConstruction", align 8 ; 8 uses
  %6 = alloca %"class.clang::OptionalDiagnostic", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.clang::OptionalDiagnostic", align 8 ; 4 uses
  %9 = alloca %"class.clang::OptionalDiagnostic", align 8 ; 4 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %11 = alloca %"class.clang::OptionalDiagnostic", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.clang::APValue", align 8   ; 7 uses
  %13 = alloca %"class.clang::OptionalDiagnostic", align 8 ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = load i32, ptr %3, align 8                ; 6 uses
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %_ZN5clang18OptionalDiagnosticlsINS_11AccessKindsEEERS0_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 2
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val3.i = load i32, ptr %i.j, align 8, !tbaa !745 ; 4 uses
  %i.k = icmp eq i32 %.val3.i, 1
  %i.l = and i32 %i.g, 4
  %i.m = icmp ne i32 %i.l, 0
  %i.n = and i1 %i.m, %i.k                        ; 2 uses
  %i.o = and i32 %i.g, 8
  %.not2.i = icmp eq i32 %i.o, 0
  %or.cond.i = or i1 %.not2.i, %i.n
  br i1 %or.cond.i, label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = lshr i32 %i.g, 4
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !743
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1044
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !847
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit.thread, label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit

_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit: ; preds = %bb.d, %bb.c
  br i1 %i.n, label %.thread, label %bb.g

_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit.thread: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !794, !nonnull !412, !align !413
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2600
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !447, !nonnull !412, !align !413
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 8192
  %.not314 = icmp eq i64 %i.ae, 0
  br i1 %.not314, label %bb.f, label %.thread515

_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit.thread.thread: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !794, !nonnull !412, !align !413
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2600
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !447, !nonnull !412, !align !413
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 8192
  %.not314575 = icmp eq i64 %i.ak, 0
  br i1 %.not314575, label %bb.f, label %.thread576

.thread:                                          ; preds = %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !794, !nonnull !412, !align !413
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2600
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !447, !nonnull !412, !align !413
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 8192
  %.not314514 = icmp eq i64 %i.aq, 0
  br i1 %.not314514, label %bb.f, label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit331

.thread515:                                       ; preds = %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = lshr i32 %i.g, 4
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !743
  %i.au = zext nneg i32 %i.as to i64
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1044
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !847
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %.thread576, label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit331

.thread576:                                       ; preds = %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit.thread.thread, %.thread515
  br label %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit331

_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit331: ; preds = %.thread, %.thread515, %.thread576
  %i.bb = phi i32 [ 2377, %.thread576 ], [ 2382, %.thread515 ], [ 2382, %.thread ]
  %i.bc = tail call ptr @_ZN5clang6interp5State6FFDiagEPKNS_4ExprEjj(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef %1, i32 noundef %i.bb, i32 noundef 0) #24 ; 5 uses
  %.not.i332 = icmp eq ptr %i.bc, null
  br i1 %.not.i332, label %_ZN5clang18OptionalDiagnosticlsINS_11AccessKindsEEERS0_RKT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_119SubobjectDesignator15isOnePastTheEndEv.exit331
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_119VectorExprEvaluator13VisitCallExprEPKN5clang8CallExprE:bb.a
  br label %bb.anc

bb.anc:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit1908, %_ZN4llvm5APIntD2Ev.exit1893, %_ZN4llvm5APIntD2Ev.exit1875, %_ZN4llvm5APIntD2Ev.exit1860, %_ZN4llvm6APSIntC2ERKS0_.exit1842
  %i.hom = load i32, ptr %i.gzn, align 8, !tbaa !454
  %i.hon = icmp ugt i32 %i.hom, 64
  br i1 %i.hon, label %bb.and, label %_ZN4llvm5APIntD2Ev.exit1909

bb.and:                                           ; preds = %bb.anc
  %i.hoo = load ptr, ptr %378, align 8, !tbaa !440 ; 2 uses
  %i.hop = icmp eq ptr %i.hoo, null
  br i1 %i.hop, label %_ZN4llvm5APIntD2Ev.exit1909, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  call void @_ZdaPv(ptr noundef nonnull %i.hoo) #26
  br label %_ZN4llvm5APIntD2Ev.exit1909

_ZN4llvm5APIntD2Ev.exit1909:                      ; preds = %bb.anc, %bb.and, %bb.ane
  call void @llvm.lifetime.end.p0(ptr nonnull %378) #24
  %i.hoq = load i32, ptr %i.gzl, align 8, !tbaa !454
  %i.hor = icmp ugt i32 %i.hoq, 64
  br i1 %i.hor, label %bb.anf, label %_ZN4llvm5APIntD2Ev.exit1910

bb.anf:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit1909
  %i.hos = load ptr, ptr %377, align 8, !tbaa !440 ; 2 uses
  %i.hot = icmp eq ptr %i.hos, null
  br i1 %i.hot, label %_ZN4llvm5APIntD2Ev.exit1910, label %bb.ang

bb.ang:                                           ; preds = %bb.anf
  call void @_ZdaPv(ptr noundef nonnull %i.hos) #26
  br label %_ZN4llvm5APIntD2Ev.exit1910

_ZN4llvm5APIntD2Ev.exit1910:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1909, %bb.anf, %bb.ang
  call void @llvm.lifetime.end.p0(ptr nonnull %377) #24
  %i.hou = add i32 %.07192837, 2                  ; 2 uses
  %.not826 = icmp eq i32 %i.hou, %i.gxl
  br i1 %.not826, label %._crit_edge2839, label %.lr.ph2838, !llvm.loop !2464

bb.anh:                                           ; preds = %bb.aje, %bb.ajf, %_ZN5clang7APValueD2Ev.exit1772
  %.67 = phi i1 [ true, %_ZN5clang7APValueD2Ev.exit1772 ], [ false, %bb.ajf ], [ false, %bb.aje ]
  %i.hov = load i32, ptr %359, align 8, !tbaa !769
  %switch.i1911 = icmp ult i32 %i.hov, 2
  br i1 %switch.i1911, label %_ZN5clang7APValueD2Ev.exit1912, label %bb.ani

bb.ani:                                           ; preds = %bb.anh
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %359) #24
  br label %_ZN5clang7APValueD2Ev.exit1912

_ZN5clang7APValueD2Ev.exit1912:                   ; preds = %bb.anh, %bb.ani
  call void @llvm.lifetime.end.p0(ptr nonnull %359) #24
  %i.how = load i32, ptr %358, align 8, !tbaa !769
  %switch.i1913 = icmp ult i32 %i.how, 2
  br i1 %switch.i1913, label %_ZN5clang7APValueD2Ev.exit1914, label %bb.anj

bb.anj:                                           ; preds = %_ZN5clang7APValueD2Ev.exit1912
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %358) #24
  br label %_ZN5clang7APValueD2Ev.exit1914

_ZN5clang7APValueD2Ev.exit1914:                   ; preds = %_ZN5clang7APValueD2Ev.exit1912, %bb.anj
  call void @llvm.lifetime.end.p0(ptr nonnull %358) #24
  br label %bb.bae

bb.ank:                                           ; preds = %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %394) #24
  store i32 0, ptr %394, align 8, !tbaa !769
  %i.hox = getelementptr inbounds nuw i8, ptr %394, i64 4 ; 2 uses
  %i.hoy = load i8, ptr %i.hox, align 4
  %i.hoz = and i8 %i.hoy, -2
  store i8 %i.hoz, ptr %i.hox, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %395) #24
  store i32 0, ptr %395, align 8, !tbaa !769
  %i.hpa = getelementptr inbounds nuw i8, ptr %395, i64 4 ; 2 uses
  %i.hpb = load i8, ptr %i.hpa, align 4
  %i.hpc = and i8 %i.hpb, -2
  store i8 %i.hpc, ptr %i.hpa, align 4
  %i.hpd = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.hpe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hpf = load i32, ptr %1, align 8
  %i.hpg = lshr i32 %i.hpf, 19
  %i.hph = and i32 %i.hpg, 1
  %i.hpi = zext nneg i32 %i.hph to i64
  %i.hpj = getelementptr inbounds nuw [8 x i8], ptr %i.hpe, i64 %i.hpi
  %i.hpk = load ptr, ptr %i.hpj, align 8, !tbaa !990
  %i.hpl = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.hpd, ptr noundef %i.hpk, ptr noundef nonnull align 8 dereferenceable(56) %394)
  br i1 %i.hpl, label %bb.anl, label %bb.aoh

bb.anl:                                           ; preds = %bb.ank
  %i.hpm = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.hpn = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.hpo = load i32, ptr %i.hpn, align 8
  %i.hpp = lshr i32 %i.hpo, 19
  %i.hpq = and i32 %i.hpp, 1
  %i.hpr = zext nneg i32 %i.hpq to i64
  %i.hps = getelementptr inbounds nuw [8 x i8], ptr %i.hpn, i64 %i.hpr
  %i.hpt = getelementptr inbounds nuw i8, ptr %i.hps, i64 48
  %i.hpu = load ptr, ptr %i.hpt, align 8, !tbaa !990
  %i.hpv = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.hpm, ptr noundef %i.hpu, ptr noundef nonnull align 8 dereferenceable(56) %395)
  br i1 %i.hpv, label %bb.anm, label %bb.aoh

bb.anm:                                           ; preds = %bb.anl
  %i.hpw = getelementptr inbounds nuw i8, ptr %394, i64 16
  %i.hpx = load i32, ptr %i.hpw, align 8, !tbaa !1288 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %396) #24
  %i.hpy = getelementptr inbounds nuw i8, ptr %396, i64 16
  store ptr %i.hpy, ptr %396, align 8, !tbaa !743
  %i.hpz = getelementptr inbounds nuw i8, ptr %396, i64 8 ; 10 uses
  store i32 0, ptr %i.hpz, align 8, !tbaa !745
  %i.hqa = getelementptr inbounds nuw i8, ptr %396, i64 12 ; 3 uses
  store i32 4, ptr %i.hqa, align 4, !tbaa !744
  %i.hqb = zext i32 %i.hpx to i64
  call void @_ZN4llvm15SmallVectorImplIN5clang7APValueEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %396, i64 noundef %i.hqb)
  %.val946 = load ptr, ptr %0, align 8, !tbaa !2309
  %i.hqc = load ptr, ptr %i.c, align 8, !tbaa !2335
  %i.hqd = getelementptr i8, ptr %.val946, i64 16
  %.val875 = load ptr, ptr %i.hqd, align 8, !tbaa !794
  %i.hqe = getelementptr i8, ptr %.val875, i64 2600
  %.val875.val = load ptr, ptr %i.hqe, align 8, !tbaa !447
  %i.hqf = call i32 @_ZNK5clang4Expr21getFPFeaturesInEffectERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %i.hqc, ptr noundef nonnull align 8 dereferenceable(1136) %.val875.val) #24
  %i.hqg = trunc i32 %i.hqf to i8
  %i.hqh = lshr i8 %i.hqg, 3
  %i.hqi = and i8 %i.hqh, 7                       ; 2 uses
  %i.hqj = icmp eq i8 %i.hqi, 7
  %i.hqk = select i1 %i.hqj, i8 1, i8 %i.hqi      ; 8 uses
  %i.hql = load ptr, ptr %i.c, align 8, !tbaa !2335
  %i.hqm = getelementptr inbounds nuw i8, ptr %i.hql, i64 8
  %.sroa.0.0.copyload.i1915 = load i64, ptr %i.hqm, align 8, !tbaa !440
  %i.hqn = and i64 %.sroa.0.0.copyload.i1915, -16
  %i.hqo = inttoptr i64 %i.hqn to ptr
  %i.hqp = load ptr, ptr %i.hqo, align 16, !tbaa !441 ; 3 uses
  %i.hqq = getelementptr inbounds nuw i8, ptr %i.hqp, i64 16
  %i.hqr = load i8, ptr %i.hqq, align 16
  %i.hqs = and i8 %i.hqr, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i1917 = icmp eq i8 %i.hqs, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i1917, label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit1919, label %bb.ann

bb.ann:                                           ; preds = %bb.anm
  %i.hqt = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hqp) #24
  br label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit1919

_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit1919: ; preds = %bb.anm, %bb.ann
  %.1.i1918 = phi ptr [ %i.hqt, %bb.ann ], [ %i.hqp, %bb.anm ]
  %i.hqu = getelementptr inbounds nuw i8, ptr %.1.i1918, i64 32
  %.sroa.0.0.copyload.i1920 = load i64, ptr %i.hqu, align 16, !tbaa !440
  %i.hqv = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.hqw = getelementptr inbounds nuw i8, ptr %i.hqv, i64 16
  %i.hqx = load ptr, ptr %i.hqw, align 8, !tbaa !794, !nonnull !412, !align !413
  %i.hqy = and i64 %.sroa.0.0.copyload.i1920, -16
  %i.hqz = inttoptr i64 %i.hqy to ptr
  %i.hra = load ptr, ptr %i.hqz, align 16, !tbaa !441
  %i.hrb = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.hqx, ptr noundef %i.hra) #24
  %i.hrc = extractvalue { i64, i64 } %i.hrb, 0
  %i.hrd = trunc i64 %i.hrc to i32
  %i.hre = mul i32 %i.hpx, %i.hrd
  %i.hrf = lshr i32 %i.hre, 7
  %i.hrg = udiv i32 %i.hpx, %i.hrf                ; 2 uses
  %.not8212830 = icmp eq i32 %i.hpx, 0
  br i1 %.not8212830, label %._crit_edge2832, label %.preheader2780.lr.ph

.preheader2780.lr.ph:                             ; preds = %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit1919
  %i.hrh = lshr i32 %i.hrg, 1                     ; 2 uses
  %.not8222823 = icmp eq i32 %i.hrh, 0
  %i.hri = getelementptr inbounds nuw i8, ptr %394, i64 8 ; 2 uses
  %i.hrj = getelementptr inbounds nuw i8, ptr %399, i64 4 ; 2 uses
  %i.hrk = getelementptr inbounds nuw i8, ptr %399, i64 8 ; 2 uses
  %i.hrl = ptrtoint ptr %399 to i64
  %i.hrm = getelementptr inbounds nuw i8, ptr %395, i64 8 ; 2 uses
  %i.hrn = getelementptr inbounds nuw i8, ptr %403, i64 4 ; 2 uses
  %i.hro = getelementptr inbounds nuw i8, ptr %403, i64 8 ; 2 uses
  %i.hrp = ptrtoint ptr %403 to i64
  %i.hrq = zext nneg i32 %i.hrh to i64            ; 2 uses
  br label %.preheader2780

.preheader2780:                                   ; preds = %.preheader2780.lr.ph, %._crit_edge2829
  %.07172831 = phi i32 [ 0, %.preheader2780.lr.ph ], [ %i.hti, %._crit_edge2829 ] ; 3 uses
  br i1 %.not8222823, label %._crit_edge2829, label %.lr.ph2825

._crit_edge2832:                                  ; preds = %._crit_edge2829, %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit1919
  call void @llvm.lifetime.start.p0(ptr nonnull %405) #24
  %i.hrr = load ptr, ptr %396, align 8, !tbaa !743
  %i.hrs = load i32, ptr %i.hpz, align 8, !tbaa !745
  call void @_ZN5clang7APValueC2EPKS0_j(ptr noundef nonnull align 8 dereferenceable(56) %405, ptr noundef %i.hrr, i32 noundef %i.hrs)
  %i.hrt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val901 = load ptr, ptr %i.hrt, align 8, !tbaa !2317
  %i.hru = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.val901, ptr noundef nonnull align 8 dereferenceable(56) %405) #24 ; 0 uses
  %i.hrv = load i32, ptr %405, align 8, !tbaa !769
  %switch.i1921 = icmp ult i32 %i.hrv, 2
  br i1 %switch.i1921, label %_ZN5clang7APValueD2Ev.exit1922, label %bb.ano

bb.ano:                                           ; preds = %._crit_edge2832
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %405) #24
  br label %_ZN5clang7APValueD2Ev.exit1922

_ZN5clang7APValueD2Ev.exit1922:                   ; preds = %._crit_edge2832, %bb.ano
  call void @llvm.lifetime.end.p0(ptr nonnull %405) #24
  call void @_ZN4llvm11SmallVectorIN5clang7APValueELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %396) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %396) #24
  br label %bb.aoh

.lr.ph2825:                                       ; preds = %.preheader2780, %_ZN5clang7APValueD2Ev.exit1935
  %indvars.iv3097 = phi i64 [ %indvars.iv.next3098, %_ZN5clang7APValueD2Ev.exit1935 ], [ 0, %.preheader2780 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %397) #24
  %indvars.iv3097.tr = trunc i64 %indvars.iv3097 to i32
  %i.hrw = shl i32 %indvars.iv3097.tr, 1
  %i.hrx = add i32 %i.hrw, %.07172831             ; 2 uses
  %i.hry = load ptr, ptr %i.hri, align 8, !tbaa !1207
  %i.hrz = zext i32 %i.hrx to i64
  %i.hsa = getelementptr inbounds nuw [56 x i8], ptr %i.hry, i64 %i.hrz
  %i.hsb = getelementptr inbounds nuw i8, ptr %i.hsa, i64 8
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %397, ptr noundef nonnull align 8 dereferenceable(24) %i.hsb) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %398) #24
  %i.hsc = add i32 %i.hrx, 1
  %i.hsd = load ptr, ptr %i.hri, align 8, !tbaa !1207
  %i.hse = zext i32 %i.hsc to i64
  %i.hsf = getelementptr inbounds nuw [56 x i8], ptr %i.hsd, i64 %i.hse
  %i.hsg = getelementptr inbounds nuw i8, ptr %i.hsf, i64 8
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %398, ptr noundef nonnull align 8 dereferenceable(24) %i.hsg) #24
  switch i32 %.1.i.i, label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit [
    i32 2182, label %bb.anp
    i32 2184, label %bb.anp
    i32 2185, label %bb.anp
    i32 2183, label %bb.anp
    i32 2186, label %bb.ans
    i32 2188, label %bb.ans
    i32 2189, label %bb.ans
    i32 2187, label %bb.ans
  ]

bb.anp:                                           ; preds = %.lr.ph2825, %.lr.ph2825, %.lr.ph2825, %.lr.ph2825
  %i.hsh = load ptr, ptr %397, align 8, !tbaa !440
  %.not.i1923 = icmp eq ptr %i.hsh, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i1923, label %bb.anr, label %bb.anq

bb.anq:                                           ; preds = %bb.anp
  %i.hsi = call noundef i32 @_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %397, ptr noundef nonnull align 8 dereferenceable(24) %398, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit

bb.anr:                                           ; preds = %bb.anp
  %i.hsj = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %397, ptr noundef nonnull align 8 dereferenceable(24) %398, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit

bb.ans:                                           ; preds = %.lr.ph2825, %.lr.ph2825, %.lr.ph2825, %.lr.ph2825
  %i.hsk = load ptr, ptr %397, align 8, !tbaa !440
  %.not.i1925 = icmp eq ptr %i.hsk, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i1925, label %bb.anu, label %bb.ant

bb.ant:                                           ; preds = %bb.ans
  %i.hsl = call noundef i32 @_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %397, ptr noundef nonnull align 8 dereferenceable(24) %398, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit

bb.anu:                                           ; preds = %bb.ans
  %i.hsm = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat8subtractERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %397, ptr noundef nonnull align 8 dereferenceable(24) %398, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit

_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit: ; preds = %bb.anu, %bb.ant, %bb.anr, %bb.anq, %.lr.ph2825
  call void @llvm.lifetime.start.p0(ptr nonnull %399) #24
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %400, ptr noundef nonnull align 8 dereferenceable(24) %397) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store i32 0, ptr %399, align 8, !tbaa !769
  %i.hsn = load i8, ptr %i.hrj, align 4
  %i.hso = and i8 %i.hsn, -2
  store i8 %i.hso, ptr %i.hrj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %17, double noundef 0.000000e+00) #24
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.hrk, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #24
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  store i32 3, ptr %399, align 8, !tbaa !769
  call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %400) #24
  %i.hsp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hrk, ptr noundef nonnull align 8 dereferenceable(24) %18) #24 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.hsq = load i32, ptr %i.hpz, align 8, !tbaa !745 ; 2 uses
  %i.hsr = zext i32 %i.hsq to i64                 ; 2 uses
  %i.hss = add nuw nsw i64 %i.hsr, 1              ; 2 uses
  %i.hst = load i32, ptr %i.hqa, align 4, !tbaa !744
  %.not.i.i.not.i1927 = icmp ult i32 %i.hsq, %i.hst
  %.pre3.i1928 = load ptr, ptr %396, align 8, !tbaa !743 ; 4 uses
  br i1 %.not.i.i.not.i1927, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1933, label %bb.anv, !prof !826

bb.anv:                                           ; preds = %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit
  %i.hsu = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i1928, i64 %i.hsr
  %i.hsv = icmp uge ptr %399, %.pre3.i1928
  %i.hsw = icmp ult ptr %399, %i.hsu
  %spec.select.i.i.i.i.i1929 = and i1 %i.hsv, %i.hsw
  br i1 %spec.select.i.i.i.i.i1929, label %bb.anw, label %.critedge.i.i.i1930, !prof !1087

bb.anw:                                           ; preds = %bb.anv
  %i.hsx = ptrtoint ptr %.pre3.i1928 to i64
  %i.hsy = sub i64 %i.hrl, %i.hsx
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %396, i64 noundef %i.hss)
  %i.hsz = load ptr, ptr %396, align 8, !tbaa !743 ; 2 uses
  %i.hta = getelementptr inbounds i8, ptr %i.hsz, i64 %i.hsy
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1933

.critedge.i.i.i1930:                              ; preds = %bb.anv
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %396, i64 noundef %i.hss)
  %.pre.i1931 = load ptr, ptr %396, align 8, !tbaa !743
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1933

_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1933: ; preds = %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit, %bb.anw, %.critedge.i.i.i1930
  %i.htb = phi ptr [ %.pre3.i1928, %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit ], [ %i.hsz, %bb.anw ], [ %.pre.i1931, %.critedge.i.i.i1930 ]
  %.016.i.i.i1932 = phi ptr [ %399, %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit ], [ %i.hta, %bb.anw ], [ %399, %.critedge.i.i.i1930 ]
  %i.htc = load i32, ptr %i.hpz, align 8, !tbaa !745
  %i.htd = zext i32 %i.htc to i64
  %i.hte = getelementptr inbounds nuw [56 x i8], ptr %i.htb, i64 %i.htd
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.hte, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i1932) #24
  %i.htf = load i32, ptr %i.hpz, align 8, !tbaa !745
  %i.htg = add i32 %i.htf, 1
  store i32 %i.htg, ptr %i.hpz, align 8, !tbaa !745
  %i.hth = load i32, ptr %399, align 8, !tbaa !769
  %switch.i1934 = icmp ult i32 %i.hth, 2
  br i1 %switch.i1934, label %_ZN5clang7APValueD2Ev.exit1935, label %bb.anx

bb.anx:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1933
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %399) #24
  br label %_ZN5clang7APValueD2Ev.exit1935

_ZN5clang7APValueD2Ev.exit1935:                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1933, %bb.anx
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %400) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %399) #24
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %398) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %398) #24
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %397) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %397) #24
  %indvars.iv.next3098 = add nuw nsw i64 %indvars.iv3097, 1 ; 2 uses
  %.not822 = icmp eq i64 %indvars.iv.next3098, %i.hrq
  br i1 %.not822, label %.lr.ph2828, label %.lr.ph2825, !llvm.loop !2465

._crit_edge2829:                                  ; preds = %_ZN5clang7APValueD2Ev.exit1950, %.preheader2780
  %i.hti = add i32 %.07172831, %i.hrg             ; 2 uses
  %.not821 = icmp eq i32 %i.hti, %i.hpx
  br i1 %.not821, label %._crit_edge2832, label %.preheader2780, !llvm.loop !2466

.lr.ph2828:                                       ; preds = %_ZN5clang7APValueD2Ev.exit1935, %_ZN5clang7APValueD2Ev.exit1950
  %indvars.iv3100 = phi i64 [ %indvars.iv.next3101, %_ZN5clang7APValueD2Ev.exit1950 ], [ 0, %_ZN5clang7APValueD2Ev.exit1935 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %401) #24
  %indvars.iv3100.tr = trunc i64 %indvars.iv3100 to i32
  %i.htj = shl i32 %indvars.iv3100.tr, 1
  %i.htk = add i32 %i.htj, %.07172831             ; 2 uses
  %i.htl = load ptr, ptr %i.hrm, align 8, !tbaa !1207
  %i.htm = zext i32 %i.htk to i64
  %i.htn = getelementptr inbounds nuw [56 x i8], ptr %i.htl, i64 %i.htm
  %i.hto = getelementptr inbounds nuw i8, ptr %i.htn, i64 8
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %401, ptr noundef nonnull align 8 dereferenceable(24) %i.hto) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %402) #24
  %i.htp = add i32 %i.htk, 1
  %i.htq = load ptr, ptr %i.hrm, align 8, !tbaa !1207
  %i.htr = zext i32 %i.htp to i64
  %i.hts = getelementptr inbounds nuw [56 x i8], ptr %i.htq, i64 %i.htr
  %i.htt = getelementptr inbounds nuw i8, ptr %i.hts, i64 8
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %402, ptr noundef nonnull align 8 dereferenceable(24) %i.htt) #24
  switch i32 %.1.i.i, label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938 [
    i32 2182, label %bb.any
    i32 2184, label %bb.any
    i32 2185, label %bb.any
    i32 2183, label %bb.any
    i32 2186, label %bb.aob
    i32 2188, label %bb.aob
    i32 2189, label %bb.aob
    i32 2187, label %bb.aob
  ]

bb.any:                                           ; preds = %.lr.ph2828, %.lr.ph2828, %.lr.ph2828, %.lr.ph2828
  %i.htu = load ptr, ptr %401, align 8, !tbaa !440
  %.not.i1936 = icmp eq ptr %i.htu, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i1936, label %bb.aoa, label %bb.anz

bb.anz:                                           ; preds = %bb.any
  %i.htv = call noundef i32 @_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %401, ptr noundef nonnull align 8 dereferenceable(24) %402, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938

bb.aoa:                                           ; preds = %bb.any
  %i.htw = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %401, ptr noundef nonnull align 8 dereferenceable(24) %402, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938

bb.aob:                                           ; preds = %.lr.ph2828, %.lr.ph2828, %.lr.ph2828, %.lr.ph2828
  %i.htx = load ptr, ptr %401, align 8, !tbaa !440
  %.not.i1939 = icmp eq ptr %i.htx, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i1939, label %bb.aod, label %bb.aoc

bb.aoc:                                           ; preds = %bb.aob
  %i.hty = call noundef i32 @_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %401, ptr noundef nonnull align 8 dereferenceable(24) %402, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938

bb.aod:                                           ; preds = %bb.aob
  %i.htz = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat8subtractERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %401, ptr noundef nonnull align 8 dereferenceable(24) %402, i8 noundef signext %i.hqk) #24 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938

_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938: ; preds = %bb.aod, %bb.aoc, %bb.aoa, %bb.anz, %.lr.ph2828
  call void @llvm.lifetime.start.p0(ptr nonnull %403) #24
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %404, ptr noundef nonnull align 8 dereferenceable(24) %401) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i32 0, ptr %403, align 8, !tbaa !769
  %i.hua = load i8, ptr %i.hrn, align 4
  %i.hub = and i8 %i.hua, -2
  store i8 %i.hub, ptr %i.hrn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %15, double noundef 0.000000e+00) #24
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.hro, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #24
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  store i32 3, ptr %403, align 8, !tbaa !769
  call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %404) #24
  %i.huc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hro, ptr noundef nonnull align 8 dereferenceable(24) %16) #24 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.hud = load i32, ptr %i.hpz, align 8, !tbaa !745 ; 2 uses
  %i.hue = zext i32 %i.hud to i64                 ; 2 uses
  %i.huf = add nuw nsw i64 %i.hue, 1              ; 2 uses
  %i.hug = load i32, ptr %i.hqa, align 4, !tbaa !744
  %.not.i.i.not.i1942 = icmp ult i32 %i.hud, %i.hug
  %.pre3.i1943 = load ptr, ptr %396, align 8, !tbaa !743 ; 4 uses
  br i1 %.not.i.i.not.i1942, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1948, label %bb.aoe, !prof !826

bb.aoe:                                           ; preds = %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938
  %i.huh = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i1943, i64 %i.hue
  %i.hui = icmp uge ptr %403, %.pre3.i1943
  %i.huj = icmp ult ptr %403, %i.huh
  %spec.select.i.i.i.i.i1944 = and i1 %i.hui, %i.huj
  br i1 %spec.select.i.i.i.i.i1944, label %bb.aof, label %.critedge.i.i.i1945, !prof !1087

bb.aof:                                           ; preds = %bb.aoe
  %i.huk = ptrtoint ptr %.pre3.i1943 to i64
  %i.hul = sub i64 %i.hrp, %i.huk
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %396, i64 noundef %i.huf)
  %i.hum = load ptr, ptr %396, align 8, !tbaa !743 ; 2 uses
  %i.hun = getelementptr inbounds i8, ptr %i.hum, i64 %i.hul
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1948

.critedge.i.i.i1945:                              ; preds = %bb.aoe
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %396, i64 noundef %i.huf)
  %.pre.i1946 = load ptr, ptr %396, align 8, !tbaa !743
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1948

_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1948: ; preds = %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938, %bb.aof, %.critedge.i.i.i1945
  %i.huo = phi ptr [ %.pre3.i1943, %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938 ], [ %i.hum, %bb.aof ], [ %.pre.i1946, %.critedge.i.i.i1945 ]
  %.016.i.i.i1947 = phi ptr [ %403, %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit1938 ], [ %i.hun, %bb.aof ], [ %403, %.critedge.i.i.i1945 ]
  %i.hup = load i32, ptr %i.hpz, align 8, !tbaa !745
  %i.huq = zext i32 %i.hup to i64
  %i.hur = getelementptr inbounds nuw [56 x i8], ptr %i.huo, i64 %i.huq
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.hur, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i1947) #24
  %i.hus = load i32, ptr %i.hpz, align 8, !tbaa !745
  %i.hut = add i32 %i.hus, 1
  store i32 %i.hut, ptr %i.hpz, align 8, !tbaa !745
  %i.huu = load i32, ptr %403, align 8, !tbaa !769
  %switch.i1949 = icmp ult i32 %i.huu, 2
  br i1 %switch.i1949, label %_ZN5clang7APValueD2Ev.exit1950, label %bb.aog

bb.aog:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1948
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %403) #24
  br label %_ZN5clang7APValueD2Ev.exit1950

_ZN5clang7APValueD2Ev.exit1950:                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit1948, %bb.aog
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %404) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %403) #24
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %402) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %402) #24
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %401) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %401) #24
  %indvars.iv.next3101 = add nuw nsw i64 %indvars.iv3100, 1 ; 2 uses
  %.not823 = icmp eq i64 %indvars.iv.next3101, %i.hrq
  br i1 %.not823, label %._crit_edge2829, label %.lr.ph2828, !llvm.loop !2467

bb.aoh:                                           ; preds = %bb.ank, %bb.anl, %_ZN5clang7APValueD2Ev.exit1922
  %.68 = phi i1 [ true, %_ZN5clang7APValueD2Ev.exit1922 ], [ false, %bb.anl ], [ false, %bb.ank ]
  %i.huv = load i32, ptr %395, align 8, !tbaa !769
  %switch.i1951 = icmp ult i32 %i.huv, 2
  br i1 %switch.i1951, label %_ZN5clang7APValueD2Ev.exit1952, label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %395) #24
  br label %_ZN5clang7APValueD2Ev.exit1952

_ZN5clang7APValueD2Ev.exit1952:                   ; preds = %bb.aoh, %bb.aoi
  call void @llvm.lifetime.end.p0(ptr nonnull %395) #24
  %i.huw = load i32, ptr %394, align 8, !tbaa !769
  %switch.i1953 = icmp ult i32 %i.huw, 2
  br i1 %switch.i1953, label %_ZN5clang7APValueD2Ev.exit1954, label %bb.aoj

bb.aoj:                                           ; preds = %_ZN5clang7APValueD2Ev.exit1952
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %394) #24
  br label %_ZN5clang7APValueD2Ev.exit1954

_ZN5clang7APValueD2Ev.exit1954:                   ; preds = %_ZN5clang7APValueD2Ev.exit1952, %bb.aoj
  call void @llvm.lifetime.end.p0(ptr nonnull %394) #24
  br label %bb.bae

bb.aok:                                           ; preds = %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %406) #24
  store i32 0, ptr %406, align 8, !tbaa !769
  %i.hux = getelementptr inbounds nuw i8, ptr %406, i64 4 ; 2 uses
  %i.huy = load i8, ptr %i.hux, align 4
  %i.huz = and i8 %i.huy, -2
  store i8 %i.huz, ptr %i.hux, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %407) #24
  store i32 0, ptr %407, align 8, !tbaa !769
  %i.hva = getelementptr inbounds nuw i8, ptr %407, i64 4 ; 2 uses
  %i.hvb = load i8, ptr %i.hva, align 4
  %i.hvc = and i8 %i.hvb, -2
  store i8 %i.hvc, ptr %i.hva, align 4
  %i.hvd = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.hve = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hvf = load i32, ptr %1, align 8
  %i.hvg = lshr i32 %i.hvf, 19
  %i.hvh = and i32 %i.hvg, 1
  %i.hvi = zext nneg i32 %i.hvh to i64
  %i.hvj = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %i.hvi
  %i.hvk = load ptr, ptr %i.hvj, align 8, !tbaa !990
  %i.hvl = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.hvd, ptr noundef %i.hvk, ptr noundef nonnull align 8 dereferenceable(56) %406)
  br i1 %i.hvl, label %bb.aol, label %bb.aov

bb.aol:                                           ; preds = %bb.aok
  %i.hvm = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.hvn = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.hvo = load i32, ptr %i.hvn, align 8
  %i.hvp = lshr i32 %i.hvo, 19
  %i.hvq = and i32 %i.hvp, 1
  %i.hvr = zext nneg i32 %i.hvq to i64
  %i.hvs = getelementptr inbounds nuw [8 x i8], ptr %i.hvn, i64 %i.hvr
  %i.hvt = getelementptr inbounds nuw i8, ptr %i.hvs, i64 48
  %i.hvu = load ptr, ptr %i.hvt, align 8, !tbaa !990
  %i.hvv = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.hvm, ptr noundef %i.hvu, ptr noundef nonnull align 8 dereferenceable(56) %407)
  br i1 %i.hvv, label %bb.aom, label %bb.aov

bb.aom:                                           ; preds = %bb.aol
  %i.hvw = getelementptr inbounds nuw i8, ptr %406, i64 16
  %i.hvx = load i32, ptr %i.hvw, align 8, !tbaa !1288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %408) #24
  %i.hvy = getelementptr inbounds nuw i8, ptr %408, i64 16
  store ptr %i.hvy, ptr %408, align 8, !tbaa !743
  %i.hvz = getelementptr inbounds nuw i8, ptr %408, i64 8 ; 6 uses
  store i32 0, ptr %i.hvz, align 8, !tbaa !745
  %i.hwa = getelementptr inbounds nuw i8, ptr %408, i64 12 ; 2 uses
  store i32 8, ptr %i.hwa, align 4, !tbaa !744
  %i.hwb = zext i32 %i.hvx to i64                 ; 2 uses
  call void @_ZN4llvm15SmallVectorImplIN5clang7APValueEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %408, i64 noundef %i.hwb)
  %.val945 = load ptr, ptr %0, align 8, !tbaa !2309
  %i.hwc = load ptr, ptr %i.c, align 8, !tbaa !2335
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_119VectorExprEvaluator13VisitCallExprEPKN5clang8CallExprE:bb.a
  br i1 %i.iqo, label %_ZN4llvm5APIntD2Ev.exit2061, label %bb.ast

bb.ast:                                           ; preds = %bb.ass
  call void @_ZdaPv(ptr noundef nonnull %i.iqn) #26
  br label %_ZN4llvm5APIntD2Ev.exit2061

_ZN4llvm5APIntD2Ev.exit2061:                      ; preds = %bb.asr, %bb.ass, %bb.ast
  call void @llvm.lifetime.end.p0(ptr nonnull %451) #24
  br label %bb.asu

bb.asu:                                           ; preds = %bb.asj, %bb.ask, %_ZN4llvm5APIntD2Ev.exit2061
  %.76 = phi i1 [ %.75, %_ZN4llvm5APIntD2Ev.exit2061 ], [ false, %bb.ask ], [ false, %bb.asj ]
  %i.iqp = load i32, ptr %450, align 8, !tbaa !769
  %switch.i2062 = icmp ult i32 %i.iqp, 2
  br i1 %switch.i2062, label %_ZN5clang7APValueD2Ev.exit2063, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %450) #24
  br label %_ZN5clang7APValueD2Ev.exit2063

_ZN5clang7APValueD2Ev.exit2063:                   ; preds = %bb.asu, %bb.asv
  call void @llvm.lifetime.end.p0(ptr nonnull %450) #24
  %i.iqq = load i32, ptr %449, align 8, !tbaa !769
  %switch.i2064 = icmp ult i32 %i.iqq, 2
  br i1 %switch.i2064, label %_ZN5clang7APValueD2Ev.exit2065, label %bb.asw

bb.asw:                                           ; preds = %_ZN5clang7APValueD2Ev.exit2063
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %449) #24
  br label %_ZN5clang7APValueD2Ev.exit2065

_ZN5clang7APValueD2Ev.exit2065:                   ; preds = %_ZN5clang7APValueD2Ev.exit2063, %bb.asw
  call void @llvm.lifetime.end.p0(ptr nonnull %449) #24
  br label %bb.bae

bb.asx:                                           ; preds = %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %455) #24
  store i32 0, ptr %455, align 8, !tbaa !769
  %i.iqr = getelementptr inbounds nuw i8, ptr %455, i64 4 ; 2 uses
  %i.iqs = load i8, ptr %i.iqr, align 4
  %i.iqt = and i8 %i.iqs, -2
  store i8 %i.iqt, ptr %i.iqr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %456) #24
  store i32 0, ptr %456, align 8, !tbaa !769
  %i.iqu = getelementptr inbounds nuw i8, ptr %456, i64 4 ; 2 uses
  %i.iqv = load i8, ptr %i.iqu, align 4
  %i.iqw = and i8 %i.iqv, -2
  store i8 %i.iqw, ptr %i.iqu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %457) #24
  %i.iqx = getelementptr inbounds nuw i8, ptr %457, i64 8 ; 2 uses
  store i32 1, ptr %i.iqx, align 8, !tbaa !454
  store i64 0, ptr %457, align 8, !tbaa !440
  %i.iqy = getelementptr inbounds nuw i8, ptr %457, i64 12
  store i8 0, ptr %i.iqy, align 4, !tbaa !456
  %i.iqz = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.ira = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.irb = load i32, ptr %1, align 8
  %i.irc = lshr i32 %i.irb, 19
  %i.ird = and i32 %i.irc, 1
  %i.ire = zext nneg i32 %i.ird to i64
  %i.irf = getelementptr inbounds nuw [8 x i8], ptr %i.ira, i64 %i.ire
  %i.irg = load ptr, ptr %i.irf, align 8, !tbaa !990
  %i.irh = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.iqz, ptr noundef %i.irg, ptr noundef nonnull align 8 dereferenceable(56) %455)
  br i1 %i.irh, label %bb.asy, label %bb.aub

bb.asy:                                           ; preds = %bb.asx
  %i.iri = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.irj = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.irk = load i32, ptr %i.irj, align 8
  %i.irl = lshr i32 %i.irk, 19
  %i.irm = and i32 %i.irl, 1
  %i.irn = zext nneg i32 %i.irm to i64
  %i.iro = getelementptr inbounds nuw [8 x i8], ptr %i.irj, i64 %i.irn
  %i.irp = getelementptr inbounds nuw i8, ptr %i.iro, i64 48
  %i.irq = load ptr, ptr %i.irp, align 8, !tbaa !990
  %i.irr = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.iri, ptr noundef %i.irq, ptr noundef nonnull align 8 dereferenceable(56) %456)
  br i1 %i.irr, label %bb.asz, label %bb.aub

bb.asz:                                           ; preds = %bb.asy
  %i.irs = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.irt = load i32, ptr %i.irs, align 8
  %i.iru = lshr i32 %i.irt, 19
  %i.irv = and i32 %i.iru, 1
  %i.irw = zext nneg i32 %i.irv to i64
  %i.irx = getelementptr inbounds nuw [8 x i8], ptr %i.irs, i64 %i.irw
  %i.iry = getelementptr inbounds nuw i8, ptr %i.irx, i64 56
  %i.irz = load ptr, ptr %i.iry, align 8, !tbaa !990
  %i.isa = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.isb = call fastcc noundef zeroext i1 @_ZL15EvaluateIntegerPKN5clang4ExprERN4llvm6APSIntERN12_GLOBAL__N_18EvalInfoE(ptr noundef %i.irz, ptr noundef nonnull align 8 dereferenceable(13) %457, ptr noundef nonnull align 8 dereferenceable(984) %i.isa)
  br i1 %i.isb, label %bb.ata, label %bb.aub

bb.ata:                                           ; preds = %bb.asz
  %switch = icmp samesign ult i32 %.1.i.i, 3339
  %i.isc = getelementptr inbounds nuw i8, ptr %456, i64 16
  %i.isd = load i32, ptr %i.isc, align 8, !tbaa !1288 ; 2 uses
  %i.ise = lshr i32 %i.isd, 3                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %458) #24
  %i.isf = getelementptr inbounds nuw i8, ptr %458, i64 16
  store ptr %i.isf, ptr %458, align 8, !tbaa !743
  %i.isg = getelementptr inbounds nuw i8, ptr %458, i64 8 ; 6 uses
  store i32 0, ptr %i.isg, align 8, !tbaa !745
  %i.ish = getelementptr inbounds nuw i8, ptr %458, i64 12 ; 2 uses
  store i32 64, ptr %i.ish, align 4, !tbaa !744
  %i.isi = zext i32 %i.isd to i64
  call void @_ZN4llvm15SmallVectorImplIN5clang7APValueEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %458, i64 noundef %i.isi)
  %.not8172806 = icmp eq i32 %i.ise, 0
  br i1 %.not8172806, label %._crit_edge2810, label %.lr.ph2809

.lr.ph2809:                                       ; preds = %bb.ata
  %i.isj = getelementptr inbounds nuw i8, ptr %459, i64 8 ; 3 uses
  %i.isk = getelementptr inbounds nuw i8, ptr %460, i64 8 ; 2 uses
  %i.isl = getelementptr inbounds nuw i8, ptr %455, i64 8
  %i.ism = getelementptr inbounds nuw i8, ptr %461, i64 8 ; 2 uses
  %i.isn = getelementptr inbounds nuw i8, ptr %456, i64 8
  %i.iso = getelementptr inbounds nuw i8, ptr %462, i64 8 ; 2 uses
  %i.isp = getelementptr inbounds nuw i8, ptr %464, i64 8 ; 3 uses
  %i.isq = getelementptr inbounds nuw i8, ptr %463, i64 8
  %i.isr = getelementptr inbounds nuw i8, ptr %465, i64 4 ; 2 uses
  %i.iss = getelementptr inbounds nuw i8, ptr %465, i64 8
  %i.ist = getelementptr inbounds nuw i8, ptr %465, i64 16
  %i.isu = getelementptr inbounds nuw i8, ptr %465, i64 20
  %i.isv = ptrtoint ptr %465 to i64
  %i.isw = zext nneg i32 %i.ise to i64
  br label %bb.atc

._crit_edge2810:                                  ; preds = %_ZN4llvm5APIntD2Ev.exit2073, %bb.ata
  call void @llvm.lifetime.start.p0(ptr nonnull %466) #24
  %i.isx = load ptr, ptr %458, align 8, !tbaa !743
  %i.isy = load i32, ptr %i.isg, align 8, !tbaa !745
  call void @_ZN5clang7APValueC2EPKS0_j(ptr noundef nonnull align 8 dereferenceable(56) %466, ptr noundef %i.isx, i32 noundef %i.isy)
  %i.isz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val896 = load ptr, ptr %i.isz, align 8, !tbaa !2317
  %i.ita = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.val896, ptr noundef nonnull align 8 dereferenceable(56) %466) #24 ; 0 uses
  %i.itb = load i32, ptr %466, align 8, !tbaa !769
  %switch.i2066 = icmp ult i32 %i.itb, 2
  br i1 %switch.i2066, label %_ZN5clang7APValueD2Ev.exit2067, label %bb.atb

bb.atb:                                           ; preds = %._crit_edge2810
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %466) #24
  br label %_ZN5clang7APValueD2Ev.exit2067

_ZN5clang7APValueD2Ev.exit2067:                   ; preds = %._crit_edge2810, %bb.atb
  call void @llvm.lifetime.end.p0(ptr nonnull %466) #24
  call void @_ZN4llvm11SmallVectorIN5clang7APValueELj64EED2Ev(ptr noundef nonnull align 8 dead_on_return(3600) dereferenceable(3600) %458) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %458) #24
  br label %bb.aub

bb.atc:                                           ; preds = %.lr.ph2809, %_ZN4llvm5APIntD2Ev.exit2073
  %indvars.iv3086 = phi i64 [ 0, %.lr.ph2809 ], [ %indvars.iv.next3087, %_ZN4llvm5APIntD2Ev.exit2073 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %459) #24
  store i32 64, ptr %i.isj, align 8, !tbaa !454
  store i64 0, ptr %459, align 8, !tbaa !440
  call void @llvm.lifetime.start.p0(ptr nonnull %460) #24
  store i32 64, ptr %i.isk, align 8, !tbaa !454
  store i64 0, ptr %460, align 8, !tbaa !440
  %i.itc = shl nuw nsw i64 %indvars.iv3086, 3
  br label %bb.atd

bb.atd:                                           ; preds = %bb.atc, %_ZN4llvm5APIntD2Ev.exit2071
  %indvars.iv3080 = phi i64 [ 0, %bb.atc ], [ %indvars.iv.next3081, %_ZN4llvm5APIntD2Ev.exit2071 ] ; 3 uses
  %i.itd = add nuw nsw i64 %indvars.iv3080, %i.itc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %461) #24
  %i.ite = load ptr, ptr %i.isl, align 8, !tbaa !1207
  %i.itf = getelementptr inbounds nuw [56 x i8], ptr %i.ite, i64 %i.itd ; 2 uses
  %i.itg = getelementptr inbounds nuw i8, ptr %i.itf, i64 8 ; 2 uses
  %i.ith = getelementptr inbounds nuw i8, ptr %i.itf, i64 16
  %i.iti = load i32, ptr %i.ith, align 8, !tbaa !454 ; 2 uses
  store i32 %i.iti, ptr %i.ism, align 8, !tbaa !454
  %i.itj = icmp ult i32 %i.iti, 65
  br i1 %i.itj, label %bb.ate, label %bb.atf

bb.ate:                                           ; preds = %bb.atd
  %i.itk = load i64, ptr %i.itg, align 8, !tbaa !440
  store i64 %i.itk, ptr %461, align 8, !tbaa !440
  br label %_ZN4llvm5APIntC2ERKS0_.exit2068

bb.atf:                                           ; preds = %bb.atd
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %461, ptr noundef nonnull align 8 dereferenceable(12) %i.itg) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit2068

_ZN4llvm5APIntC2ERKS0_.exit2068:                  ; preds = %bb.ate, %bb.atf
  call void @llvm.lifetime.start.p0(ptr nonnull %462) #24
  %i.itl = load ptr, ptr %i.isn, align 8, !tbaa !1207
  %i.itm = getelementptr inbounds nuw [56 x i8], ptr %i.itl, i64 %i.itd ; 2 uses
  %i.itn = getelementptr inbounds nuw i8, ptr %i.itm, i64 8 ; 2 uses
  %i.ito = getelementptr inbounds nuw i8, ptr %i.itm, i64 16
  %i.itp = load i32, ptr %i.ito, align 8, !tbaa !454 ; 2 uses
  store i32 %i.itp, ptr %i.iso, align 8, !tbaa !454
  %i.itq = icmp ult i32 %i.itp, 65
  br i1 %i.itq, label %bb.atg, label %bb.ath

bb.atg:                                           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit2068
  %i.itr = load i64, ptr %i.itn, align 8, !tbaa !440
  store i64 %i.itr, ptr %462, align 8, !tbaa !440
  br label %_ZN4llvm5APIntC2ERKS0_.exit2069

bb.ath:                                           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit2068
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %462, ptr noundef nonnull align 8 dereferenceable(12) %i.itn) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit2069

_ZN4llvm5APIntC2ERKS0_.exit2069:                  ; preds = %bb.atg, %bb.ath
  %indvars.iv3080.tr = trunc i64 %indvars.iv3080 to i32
  %i.its = shl i32 %indvars.iv3080.tr, 3          ; 2 uses
  call void @_ZN4llvm5APInt10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(12) %459, ptr noundef nonnull align 8 dereferenceable(12) %461, i32 noundef %i.its) #24
  call void @_ZN4llvm5APInt10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(12) %460, ptr noundef nonnull align 8 dereferenceable(12) %462, i32 noundef %i.its) #24
  %i.itt = load i32, ptr %i.iso, align 8, !tbaa !454
  %i.itu = icmp ugt i32 %i.itt, 64
  br i1 %i.itu, label %bb.ati, label %_ZN4llvm5APIntD2Ev.exit2070

bb.ati:                                           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit2069
  %i.itv = load ptr, ptr %462, align 8, !tbaa !440 ; 2 uses
  %i.itw = icmp eq ptr %i.itv, null
  br i1 %i.itw, label %_ZN4llvm5APIntD2Ev.exit2070, label %bb.atj

bb.atj:                                           ; preds = %bb.ati
  call void @_ZdaPv(ptr noundef nonnull %i.itv) #26
  br label %_ZN4llvm5APIntD2Ev.exit2070

_ZN4llvm5APIntD2Ev.exit2070:                      ; preds = %_ZN4llvm5APIntC2ERKS0_.exit2069, %bb.ati, %bb.atj
  call void @llvm.lifetime.end.p0(ptr nonnull %462) #24
  %i.itx = load i32, ptr %i.ism, align 8, !tbaa !454
  %i.ity = icmp ugt i32 %i.itx, 64
  br i1 %i.ity, label %bb.atk, label %_ZN4llvm5APIntD2Ev.exit2071

bb.atk:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit2070
  %i.itz = load ptr, ptr %461, align 8, !tbaa !440 ; 2 uses
  %i.iua = icmp eq ptr %i.itz, null
  br i1 %i.iua, label %_ZN4llvm5APIntD2Ev.exit2071, label %bb.atl

bb.atl:                                           ; preds = %bb.atk
  call void @_ZdaPv(ptr noundef nonnull %i.itz) #26
  br label %_ZN4llvm5APIntD2Ev.exit2071

_ZN4llvm5APIntD2Ev.exit2071:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2070, %bb.atk, %bb.atl
  call void @llvm.lifetime.end.p0(ptr nonnull %461) #24
  %indvars.iv.next3081 = add nuw nsw i64 %indvars.iv3080, 1 ; 2 uses
  %.not818 = icmp eq i64 %indvars.iv.next3081, 8
  br i1 %.not818, label %.preheader2781, label %bb.atd, !llvm.loop !2480

bb.atm:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit2091
  %i.iub = load i32, ptr %i.isk, align 8, !tbaa !454
  %i.iuc = icmp ugt i32 %i.iub, 64
  br i1 %i.iuc, label %bb.atn, label %_ZN4llvm5APIntD2Ev.exit2072

bb.atn:                                           ; preds = %bb.atm
  %i.iud = load ptr, ptr %460, align 8, !tbaa !440 ; 2 uses
  %i.iue = icmp eq ptr %i.iud, null
  br i1 %i.iue, label %_ZN4llvm5APIntD2Ev.exit2072, label %bb.ato

bb.ato:                                           ; preds = %bb.atn
  call void @_ZdaPv(ptr noundef nonnull %i.iud) #26
  br label %_ZN4llvm5APIntD2Ev.exit2072

_ZN4llvm5APIntD2Ev.exit2072:                      ; preds = %bb.atm, %bb.atn, %bb.ato
  call void @llvm.lifetime.end.p0(ptr nonnull %460) #24
  %i.iuf = load i32, ptr %i.isj, align 8, !tbaa !454
  %i.iug = icmp ugt i32 %i.iuf, 64
  br i1 %i.iug, label %bb.atp, label %_ZN4llvm5APIntD2Ev.exit2073

bb.atp:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit2072
  %i.iuh = load ptr, ptr %459, align 8, !tbaa !440 ; 2 uses
  %i.iui = icmp eq ptr %i.iuh, null
  br i1 %i.iui, label %_ZN4llvm5APIntD2Ev.exit2073, label %bb.atq

bb.atq:                                           ; preds = %bb.atp
  call void @_ZdaPv(ptr noundef nonnull %i.iuh) #26
  br label %_ZN4llvm5APIntD2Ev.exit2073

_ZN4llvm5APIntD2Ev.exit2073:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2072, %bb.atp, %bb.atq
  call void @llvm.lifetime.end.p0(ptr nonnull %459) #24
  %indvars.iv.next3087 = add nuw nsw i64 %indvars.iv3086, 1 ; 2 uses
  %.not817 = icmp eq i64 %indvars.iv.next3087, %i.isw
  br i1 %.not817, label %._crit_edge2810, label %bb.atc, !llvm.loop !2481

.preheader2781:                                   ; preds = %_ZN4llvm5APIntD2Ev.exit2071, %_ZN4llvm5APIntD2Ev.exit2091
  %indvars.iv3083 = phi i64 [ %indvars.iv.next3084, %_ZN4llvm5APIntD2Ev.exit2091 ], [ 0, %_ZN4llvm5APIntD2Ev.exit2071 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %463) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %464) #24
  %i.iuj = shl nuw nsw i64 %indvars.iv3083, 3     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  %i.iuk = load i32, ptr %i.isj, align 8, !tbaa !454, !noalias !2482 ; 3 uses
  store i32 %i.iuk, ptr %i.isp, align 8, !tbaa !454, !alias.scope !2482
  %i.iul = icmp ult i32 %i.iuk, 65
  br i1 %i.iul, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.thread.i:             ; preds = %.preheader2781
  %i.ium = load i64, ptr %459, align 8, !tbaa !440, !noalias !2482
  store i64 %i.ium, ptr %464, align 8, !tbaa !440, !alias.scope !2482
  br label %bb.atr

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %.preheader2781
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %464, ptr noundef nonnull align 8 dereferenceable(12) %459) #24
  %.pr.i2074 = load i32, ptr %i.isp, align 8, !tbaa !454, !alias.scope !2482 ; 2 uses
  %i.iun = icmp ult i32 %.pr.i2074, 65
  br i1 %i.iun, label %bb.atr, label %bb.atu

bb.atr:                                           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i
  %i.iuo = phi i32 [ %i.iuk, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %.pr.i2074, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.iup = zext nneg i32 %i.iuo to i64
  %i.iuq = icmp eq i64 %i.iuj, %i.iup
  br i1 %i.iuq, label %bb.ats, label %bb.att

bb.ats:                                           ; preds = %bb.atr
  store i64 0, ptr %464, align 8, !tbaa !440, !alias.scope !2482
  br label %_ZNK4llvm5APInt4lshrEj.exit

bb.att:                                           ; preds = %bb.atr
  %i.iur = load i64, ptr %464, align 8, !tbaa !440, !alias.scope !2482
  %i.ius = lshr i64 %i.iur, %i.iuj
  store i64 %i.ius, ptr %464, align 8, !tbaa !440, !alias.scope !2482
  br label %_ZNK4llvm5APInt4lshrEj.exit

bb.atu:                                           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.iut = trunc nuw nsw i64 %i.iuj to i32
  call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %464, i32 noundef %i.iut) #24
  br label %_ZNK4llvm5APInt4lshrEj.exit

_ZNK4llvm5APInt4lshrEj.exit:                      ; preds = %bb.ats, %bb.att, %bb.atu
  call void @_ZNK4llvm5APInt9getLoBitsEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %463, ptr noundef nonnull align 8 dereferenceable(12) %464, i32 noundef 8) #24
  %i.iuu = load i32, ptr %i.isq, align 8, !tbaa !454
  %i.iuv = icmp ult i32 %i.iuu, 65                ; 2 uses
  %i.iuw = load ptr, ptr %463, align 8            ; 3 uses
  %spec.select.i2075 = select i1 %i.iuv, ptr %463, ptr %i.iuw
  %.0.i2076 = load i64, ptr %spec.select.i2075, align 8, !tbaa !440
  %i.iux = trunc i64 %.0.i2076 to i8
  %i.iuy = icmp eq ptr %i.iuw, null
  %or.cond2728 = select i1 %i.iuv, i1 true, i1 %i.iuy
  br i1 %or.cond2728, label %_ZN4llvm5APIntD2Ev.exit2077, label %bb.atv

bb.atv:                                           ; preds = %_ZNK4llvm5APInt4lshrEj.exit
  call void @_ZdaPv(ptr noundef nonnull %i.iuw) #26
  br label %_ZN4llvm5APIntD2Ev.exit2077

_ZN4llvm5APIntD2Ev.exit2077:                      ; preds = %_ZNK4llvm5APInt4lshrEj.exit, %bb.atv
  %i.iuz = load i32, ptr %i.isp, align 8, !tbaa !454
  %i.iva = icmp ugt i32 %i.iuz, 64
  br i1 %i.iva, label %bb.atw, label %_ZN4llvm5APIntD2Ev.exit2078

bb.atw:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit2077
  %i.ivb = load ptr, ptr %464, align 8, !tbaa !440 ; 2 uses
  %i.ivc = icmp eq ptr %i.ivb, null
  br i1 %i.ivc, label %_ZN4llvm5APIntD2Ev.exit2078, label %bb.atx

bb.atx:                                           ; preds = %bb.atw
  call void @_ZdaPv(ptr noundef nonnull %i.ivb) #26
  br label %_ZN4llvm5APIntD2Ev.exit2078

_ZN4llvm5APIntD2Ev.exit2078:                      ; preds = %_ZN4llvm5APIntD2Ev.exit2077, %bb.atw, %bb.atx
  call void @llvm.lifetime.end.p0(ptr nonnull %464) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %463) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %465) #24
  %i.ivd = call noundef zeroext i8 @_Z10GFNIAffinehRKN4llvm5APIntERKNS_6APSIntEb(i8 noundef zeroext %i.iux, ptr noundef nonnull align 8 dereferenceable(12) %460, ptr noundef nonnull align 8 dereferenceable(13) %457, i1 noundef zeroext %switch)
  %i.ive = zext i8 %i.ivd to i64
  %i.ivf = load i8, ptr %i.isr, align 4
  %i.ivg = and i8 %i.ivf, -2
  store i8 %i.ivg, ptr %i.isr, align 4
  store i32 2, ptr %465, align 8, !tbaa !769
  store i64 %i.ive, ptr %i.iss, align 8
  store i32 8, ptr %i.ist, align 8, !tbaa !454
  store i8 0, ptr %i.isu, align 4, !tbaa !456
  %i.ivh = load i32, ptr %i.isg, align 8, !tbaa !745 ; 2 uses
  %i.ivi = zext i32 %i.ivh to i64                 ; 2 uses
  %i.ivj = add nuw nsw i64 %i.ivi, 1              ; 2 uses
  %i.ivk = load i32, ptr %i.ish, align 4, !tbaa !744
  %.not.i.i.not.i2081 = icmp ult i32 %i.ivh, %i.ivk
  %.pre3.i2082 = load ptr, ptr %458, align 8, !tbaa !743 ; 4 uses
  br i1 %.not.i.i.not.i2081, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2087, label %bb.aty, !prof !826

bb.aty:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit2078
  %i.ivl = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i2082, i64 %i.ivi
  %i.ivm = icmp uge ptr %465, %.pre3.i2082
  %i.ivn = icmp ult ptr %465, %i.ivl
  %spec.select.i.i.i.i.i2083 = and i1 %i.ivm, %i.ivn
  br i1 %spec.select.i.i.i.i.i2083, label %bb.atz, label %.critedge.i.i.i2084, !prof !1087

bb.atz:                                           ; preds = %bb.aty
  %i.ivo = ptrtoint ptr %.pre3.i2082 to i64
  %i.ivp = sub i64 %i.isv, %i.ivo
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %458, i64 noundef %i.ivj)
  %i.ivq = load ptr, ptr %458, align 8, !tbaa !743 ; 2 uses
  %i.ivr = getelementptr inbounds i8, ptr %i.ivq, i64 %i.ivp
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2087

.critedge.i.i.i2084:                              ; preds = %bb.aty
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %458, i64 noundef %i.ivj)
  %.pre.i2085 = load ptr, ptr %458, align 8, !tbaa !743
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2087

_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2087: ; preds = %_ZN4llvm5APIntD2Ev.exit2078, %bb.atz, %.critedge.i.i.i2084
  %i.ivs = phi ptr [ %.pre3.i2082, %_ZN4llvm5APIntD2Ev.exit2078 ], [ %i.ivq, %bb.atz ], [ %.pre.i2085, %.critedge.i.i.i2084 ]
  %.016.i.i.i2086 = phi ptr [ %465, %_ZN4llvm5APIntD2Ev.exit2078 ], [ %i.ivr, %bb.atz ], [ %465, %.critedge.i.i.i2084 ]
  %i.ivt = load i32, ptr %i.isg, align 8, !tbaa !745
  %i.ivu = zext i32 %i.ivt to i64
  %i.ivv = getelementptr inbounds nuw [56 x i8], ptr %i.ivs, i64 %i.ivu
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ivv, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i2086) #24
  %i.ivw = load i32, ptr %i.isg, align 8, !tbaa !745
  %i.ivx = add i32 %i.ivw, 1
  store i32 %i.ivx, ptr %i.isg, align 8, !tbaa !745
  %i.ivy = load i32, ptr %465, align 8, !tbaa !769
  %switch.i2088 = icmp ult i32 %i.ivy, 2
  br i1 %switch.i2088, label %_ZN4llvm5APIntD2Ev.exit2091, label %bb.aua

bb.aua:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2087
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %465) #24
  br label %_ZN4llvm5APIntD2Ev.exit2091

_ZN4llvm5APIntD2Ev.exit2091:                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2087, %bb.aua
  call void @llvm.lifetime.end.p0(ptr nonnull %465) #24
  %indvars.iv.next3084 = add nuw nsw i64 %indvars.iv3083, 1 ; 2 uses
  %.not819 = icmp eq i64 %indvars.iv.next3084, 8
  br i1 %.not819, label %bb.atm, label %.preheader2781, !llvm.loop !2485

bb.aub:                                           ; preds = %bb.asx, %bb.asy, %bb.asz, %_ZN5clang7APValueD2Ev.exit2067
  %.77 = phi i1 [ true, %_ZN5clang7APValueD2Ev.exit2067 ], [ false, %bb.asz ], [ false, %bb.asy ], [ false, %bb.asx ]
  %i.ivz = load i32, ptr %i.iqx, align 8, !tbaa !454
  %i.iwa = icmp ugt i32 %i.ivz, 64
  br i1 %i.iwa, label %bb.auc, label %_ZN4llvm5APIntD2Ev.exit2092

bb.auc:                                           ; preds = %bb.aub
  %i.iwb = load ptr, ptr %457, align 8, !tbaa !440 ; 2 uses
  %i.iwc = icmp eq ptr %i.iwb, null
  br i1 %i.iwc, label %_ZN4llvm5APIntD2Ev.exit2092, label %bb.aud

bb.aud:                                           ; preds = %bb.auc
  call void @_ZdaPv(ptr noundef nonnull %i.iwb) #26
  br label %_ZN4llvm5APIntD2Ev.exit2092

_ZN4llvm5APIntD2Ev.exit2092:                      ; preds = %bb.aub, %bb.auc, %bb.aud
  call void @llvm.lifetime.end.p0(ptr nonnull %457) #24
  %i.iwd = load i32, ptr %456, align 8, !tbaa !769
  %switch.i2093 = icmp ult i32 %i.iwd, 2
  br i1 %switch.i2093, label %_ZN5clang7APValueD2Ev.exit2094, label %bb.aue

bb.aue:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit2092
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %456) #24
  br label %_ZN5clang7APValueD2Ev.exit2094

_ZN5clang7APValueD2Ev.exit2094:                   ; preds = %_ZN4llvm5APIntD2Ev.exit2092, %bb.aue
  call void @llvm.lifetime.end.p0(ptr nonnull %456) #24
  %i.iwe = load i32, ptr %455, align 8, !tbaa !769
  %switch.i2095 = icmp ult i32 %i.iwe, 2
  br i1 %switch.i2095, label %_ZN5clang7APValueD2Ev.exit2096, label %bb.auf

bb.auf:                                           ; preds = %_ZN5clang7APValueD2Ev.exit2094
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %455) #24
  br label %_ZN5clang7APValueD2Ev.exit2096

_ZN5clang7APValueD2Ev.exit2096:                   ; preds = %_ZN5clang7APValueD2Ev.exit2094, %bb.auf
  call void @llvm.lifetime.end.p0(ptr nonnull %455) #24
  br label %bb.bae

bb.aug:                                           ; preds = %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %467) #24
  store i32 0, ptr %467, align 8, !tbaa !769
  %i.iwf = getelementptr inbounds nuw i8, ptr %467, i64 4 ; 2 uses
  %i.iwg = load i8, ptr %i.iwf, align 4
  %i.iwh = and i8 %i.iwg, -2
  store i8 %i.iwh, ptr %i.iwf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %468) #24
  store i32 0, ptr %468, align 8, !tbaa !769
  %i.iwi = getelementptr inbounds nuw i8, ptr %468, i64 4 ; 2 uses
  %i.iwj = load i8, ptr %i.iwi, align 4
  %i.iwk = and i8 %i.iwj, -2
  store i8 %i.iwk, ptr %i.iwi, align 4
  %i.iwl = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.iwm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iwn = load i32, ptr %1, align 8
  %i.iwo = lshr i32 %i.iwn, 19
  %i.iwp = and i32 %i.iwo, 1
  %i.iwq = zext nneg i32 %i.iwp to i64
  %i.iwr = getelementptr inbounds nuw [8 x i8], ptr %i.iwm, i64 %i.iwq
  %i.iws = load ptr, ptr %i.iwr, align 8, !tbaa !990
  %i.iwt = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.iwl, ptr noundef %i.iws, ptr noundef nonnull align 8 dereferenceable(56) %467)
  br i1 %i.iwt, label %bb.auh, label %bb.aun

bb.auh:                                           ; preds = %bb.aug
  %i.iwu = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.iwv = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.iww = load i32, ptr %i.iwv, align 8
  %i.iwx = lshr i32 %i.iww, 19
  %i.iwy = and i32 %i.iwx, 1
  %i.iwz = zext nneg i32 %i.iwy to i64
  %i.ixa = getelementptr inbounds nuw [8 x i8], ptr %i.iwv, i64 %i.iwz
  %i.ixb = getelementptr inbounds nuw i8, ptr %i.ixa, i64 48
  %i.ixc = load ptr, ptr %i.ixb, align 8, !tbaa !990
  %i.ixd = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.iwu, ptr noundef %i.ixc, ptr noundef nonnull align 8 dereferenceable(56) %468)
  br i1 %i.ixd, label %bb.aui, label %bb.aun

bb.aui:                                           ; preds = %bb.auh
  %i.ixe = getelementptr inbounds nuw i8, ptr %467, i64 16
  %i.ixf = load i32, ptr %i.ixe, align 8, !tbaa !1288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %469) #24
  %i.ixg = getelementptr inbounds nuw i8, ptr %469, i64 16
  store ptr %i.ixg, ptr %469, align 8, !tbaa !743
  %i.ixh = getelementptr inbounds nuw i8, ptr %469, i64 8 ; 6 uses
  store i32 0, ptr %i.ixh, align 8, !tbaa !745
  %i.ixi = getelementptr inbounds nuw i8, ptr %469, i64 12 ; 2 uses
  store i32 64, ptr %i.ixi, align 4, !tbaa !744
  %i.ixj = zext i32 %i.ixf to i64                 ; 2 uses
  call void @_ZN4llvm15SmallVectorImplIN5clang7APValueEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %469, i64 noundef %i.ixj)
  %.not8162801 = icmp eq i32 %i.ixf, 0
  br i1 %.not8162801, label %._crit_edge2803, label %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104.lr.ph

_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104.lr.ph: ; preds = %bb.aui
  %i.ixk = getelementptr inbounds nuw i8, ptr %467, i64 8
  %i.ixl = getelementptr inbounds nuw i8, ptr %468, i64 8
  %i.ixm = getelementptr inbounds nuw i8, ptr %470, i64 4 ; 2 uses
  %i.ixn = getelementptr inbounds nuw i8, ptr %470, i64 8
  %i.ixo = getelementptr inbounds nuw i8, ptr %470, i64 16
  %i.ixp = getelementptr inbounds nuw i8, ptr %470, i64 20
  %i.ixq = ptrtoint ptr %470 to i64
  br label %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104

._crit_edge2803:                                  ; preds = %_ZN4llvm5APIntD2Ev.exit2115, %bb.aui
  call void @llvm.lifetime.start.p0(ptr nonnull %471) #24
  %i.ixr = load ptr, ptr %469, align 8, !tbaa !743
  %i.ixs = load i32, ptr %i.ixh, align 8, !tbaa !745
  call void @_ZN5clang7APValueC2EPKS0_j(ptr noundef nonnull align 8 dereferenceable(56) %471, ptr noundef %i.ixr, i32 noundef %i.ixs)
  %i.ixt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val895 = load ptr, ptr %i.ixt, align 8, !tbaa !2317
  %i.ixu = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.val895, ptr noundef nonnull align 8 dereferenceable(56) %471) #24 ; 0 uses
  %i.ixv = load i32, ptr %471, align 8, !tbaa !769
  %switch.i2097 = icmp ult i32 %i.ixv, 2
  br i1 %switch.i2097, label %_ZN5clang7APValueD2Ev.exit2098, label %bb.auj

bb.auj:                                           ; preds = %._crit_edge2803
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %471) #24
  br label %_ZN5clang7APValueD2Ev.exit2098

_ZN5clang7APValueD2Ev.exit2098:                   ; preds = %._crit_edge2803, %bb.auj
  call void @llvm.lifetime.end.p0(ptr nonnull %471) #24
  call void @_ZN4llvm11SmallVectorIN5clang7APValueELj64EED2Ev(ptr noundef nonnull align 8 dead_on_return(3600) dereferenceable(3600) %469) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %469) #24
  br label %bb.aun

_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104:      ; preds = %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104.lr.ph, %_ZN4llvm5APIntD2Ev.exit2115
  %indvars.iv3077 = phi i64 [ 0, %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104.lr.ph ], [ %indvars.iv.next3078, %_ZN4llvm5APIntD2Ev.exit2115 ] ; 3 uses
  %i.ixw = load ptr, ptr %i.ixk, align 8, !tbaa !1207
  %i.ixx = getelementptr inbounds nuw [56 x i8], ptr %i.ixw, i64 %indvars.iv3077 ; 2 uses
  %i.ixy = getelementptr inbounds nuw i8, ptr %i.ixx, i64 8 ; 2 uses
  %i.ixz = getelementptr inbounds nuw i8, ptr %i.ixx, i64 16
  %i.iya = load i32, ptr %i.ixz, align 8, !tbaa !454
  %i.iyb = icmp ult i32 %i.iya, 65
  %i.iyc = load ptr, ptr %i.ixy, align 8
  %spec.select.i2099 = select i1 %i.iyb, ptr %i.ixy, ptr %i.iyc
  %.0.i2100 = load i64, ptr %spec.select.i2099, align 8, !tbaa !440
  %i.iyd = trunc i64 %.0.i2100 to i16
  %i.iye = load ptr, ptr %i.ixl, align 8, !tbaa !1207
  %i.iyf = getelementptr inbounds nuw [56 x i8], ptr %i.iye, i64 %indvars.iv3077 ; 2 uses
  %i.iyg = getelementptr inbounds nuw i8, ptr %i.iyf, i64 8 ; 2 uses
  %i.iyh = getelementptr inbounds nuw i8, ptr %i.iyf, i64 16
  %i.iyi = load i32, ptr %i.iyh, align 8, !tbaa !454
  %i.iyj = icmp ult i32 %i.iyi, 65
  %i.iyk = load ptr, ptr %i.iyg, align 8
  %spec.select.i2101 = select i1 %i.iyj, ptr %i.iyg, ptr %i.iyk
  %.0.i2102 = load i64, ptr %spec.select.i2101, align 8, !tbaa !440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %470) #24
  %i.iyl = trunc i64 %.0.i2102 to i32             ; 2 uses
  %i.iym = and i32 %i.iyl, 1
  %.not18.i = icmp eq i32 %i.iym, 0
  %i.iyn = and i64 %.0.i2102, 128
  %.not18.7.i = icmp eq i64 %i.iyn, 0
  %i.iyo = and i16 %i.iyd, 255
  %i.iyp = insertelement <2 x i32> poison, i32 %i.iyl, i64 0 ; 2 uses
  %i.iyq = shufflevector <2 x i32> %i.iyp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.iyr = and <2 x i32> %i.iyq, <i32 2, i32 4>
  %i.iys = icmp eq <2 x i32> %i.iyr, zeroinitializer
  %i.iyt = shufflevector <2 x i32> %i.iyp, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.iyu = and <4 x i32> %i.iyt, <i32 32, i32 64, i32 8, i32 16>
  %i.iyv = icmp eq <4 x i32> %i.iyu, zeroinitializer
  %i.iyw = insertelement <8 x i16> poison, i16 %i.iyo, i64 0
  %i.iyx = shufflevector <8 x i16> %i.iyw, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.iyy = shl nuw nsw <8 x i16> %i.iyx, <i16 5, i16 6, i16 3, i16 4, i16 1, i16 2, i16 0, i16 7>
  %i.iyz = insertelement <8 x i1> poison, i1 %.not18.i, i64 6
  %i.iza = insertelement <8 x i1> %i.iyz, i1 %.not18.7.i, i64 7
  %i.izb = shufflevector <4 x i1> %i.iyv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.izc = shufflevector <8 x i1> %i.izb, <8 x i1> %i.iza, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.izd = shufflevector <2 x i1> %i.iys, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ize = shufflevector <8 x i1> %i.izc, <8 x i1> %i.izd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.izf = select <8 x i1> %i.ize, <8 x i16> zeroinitializer, <8 x i16> %i.iyy ; 2 uses
  %i.izg = call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> %i.izf) ; 4 uses
  %534 = extractelement <8 x i16> %i.izf, i64 7
  %.not17.i = icmp samesign ult i16 %534, 16384
  %535 = select i1 %.not17.i, i16 0, i16 18112
  %536 = and i16 %i.izg, 8192
  %.not17.1.i = icmp eq i16 %536, 0
  %537 = select i1 %.not17.1.i, i16 0, i16 9056
  %538 = and i16 %i.izg, 4096
  %.not17.2.i = icmp eq i16 %538, 0
  %539 = select i1 %.not17.2.i, i16 0, i16 4528
  %540 = and i16 %i.izg, 2048
  %.not17.3.i = icmp eq i16 %540, 0
  %541 = select i1 %.not17.3.i, i16 0, i16 2264
  %542 = xor i16 %537, %535
  %543 = xor i16 %542, %539
  %544 = xor i16 %543, %541
  %.3.3.i = xor i16 %544, %i.izg                  ; 4 uses
  %i.izh = and i16 %.3.3.i, 1024
  %.not17.4.i = icmp eq i16 %i.izh, 0
  %i.izi = select i1 %.not17.4.i, i16 0, i16 108
  %i.izj = and i16 %.3.3.i, 512
  %.not17.5.i = icmp eq i16 %i.izj, 0
  %i.izk = select i1 %.not17.5.i, i16 0, i16 54
  %i.izl = and i16 %.3.3.i, 256
  %.not17.6.i = icmp eq i16 %i.izl, 0
  %i.izm = select i1 %.not17.6.i, i16 0, i16 27
  %.3.3.i.masked = and i16 %.3.3.i, 255
  %i.izn = xor i16 %i.izk, %.3.3.i.masked
  %i.izo = xor i16 %i.izn, %i.izi
  %i.izp = xor i16 %i.izo, %i.izm
  %i.izq = zext nneg i16 %i.izp to i64
  %i.izr = load i8, ptr %i.ixm, align 4
  %i.izs = and i8 %i.izr, -2
  store i8 %i.izs, ptr %i.ixm, align 4
  store i32 2, ptr %470, align 8, !tbaa !769
  store i64 %i.izq, ptr %i.ixn, align 8
  store i32 8, ptr %i.ixo, align 8, !tbaa !454
  store i8 0, ptr %i.ixp, align 4, !tbaa !456
  %i.izt = load i32, ptr %i.ixh, align 8, !tbaa !745 ; 2 uses
  %i.izu = zext i32 %i.izt to i64                 ; 2 uses
  %i.izv = add nuw nsw i64 %i.izu, 1              ; 2 uses
  %i.izw = load i32, ptr %i.ixi, align 4, !tbaa !744
  %.not.i.i.not.i2105 = icmp ult i32 %i.izt, %i.izw
  %.pre3.i2106 = load ptr, ptr %469, align 8, !tbaa !743 ; 4 uses
  br i1 %.not.i.i.not.i2105, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2111, label %bb.auk, !prof !826

bb.auk:                                           ; preds = %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104
  %i.izx = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i2106, i64 %i.izu
  %i.izy = icmp uge ptr %470, %.pre3.i2106
  %i.izz = icmp ult ptr %470, %i.izx
  %spec.select.i.i.i.i.i2107 = and i1 %i.izy, %i.izz
  br i1 %spec.select.i.i.i.i.i2107, label %bb.aul, label %.critedge.i.i.i2108, !prof !1087

bb.aul:                                           ; preds = %bb.auk
  %i.jaa = ptrtoint ptr %.pre3.i2106 to i64
  %i.jab = sub i64 %i.ixq, %i.jaa
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %469, i64 noundef %i.izv)
  %i.jac = load ptr, ptr %469, align 8, !tbaa !743 ; 2 uses
  %i.jad = getelementptr inbounds i8, ptr %i.jac, i64 %i.jab
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2111

.critedge.i.i.i2108:                              ; preds = %bb.auk
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %469, i64 noundef %i.izv)
  %.pre.i2109 = load ptr, ptr %469, align 8, !tbaa !743
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2111

_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2111: ; preds = %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104, %bb.aul, %.critedge.i.i.i2108
  %i.jae = phi ptr [ %.pre3.i2106, %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104 ], [ %i.jac, %bb.aul ], [ %.pre.i2109, %.critedge.i.i.i2108 ]
  %.016.i.i.i2110 = phi ptr [ %470, %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104 ], [ %i.jad, %bb.aul ], [ %470, %.critedge.i.i.i2108 ]
  %i.jaf = load i32, ptr %i.ixh, align 8, !tbaa !745
  %i.jag = zext i32 %i.jaf to i64
  %i.jah = getelementptr inbounds nuw [56 x i8], ptr %i.jae, i64 %i.jag
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.jah, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i2110) #24
  %i.jai = load i32, ptr %i.ixh, align 8, !tbaa !745
  %i.jaj = add i32 %i.jai, 1
  store i32 %i.jaj, ptr %i.ixh, align 8, !tbaa !745
  %i.jak = load i32, ptr %470, align 8, !tbaa !769
  %switch.i2112 = icmp ult i32 %i.jak, 2
  br i1 %switch.i2112, label %_ZN4llvm5APIntD2Ev.exit2115, label %bb.aum

bb.aum:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2111
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %470) #24
  br label %_ZN4llvm5APIntD2Ev.exit2115

_ZN4llvm5APIntD2Ev.exit2115:                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit2111, %bb.aum
  call void @llvm.lifetime.end.p0(ptr nonnull %470) #24
  %indvars.iv.next3078 = add nuw nsw i64 %indvars.iv3077, 1 ; 2 uses
  %.not816 = icmp eq i64 %indvars.iv.next3078, %i.ixj
  br i1 %.not816, label %._crit_edge2803, label %_ZN5clang7APValueC2EN4llvm6APSIntE.exit2104, !llvm.loop !2486

bb.aun:                                           ; preds = %bb.aug, %bb.auh, %_ZN5clang7APValueD2Ev.exit2098
  %.78 = phi i1 [ true, %_ZN5clang7APValueD2Ev.exit2098 ], [ false, %bb.auh ], [ false, %bb.aug ]
  %i.jal = load i32, ptr %468, align 8, !tbaa !769
  %switch.i2116 = icmp ult i32 %i.jal, 2
  br i1 %switch.i2116, label %_ZN5clang7APValueD2Ev.exit2117, label %bb.auo

bb.auo:                                           ; preds = %bb.aun
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %468) #24
  br label %_ZN5clang7APValueD2Ev.exit2117

_ZN5clang7APValueD2Ev.exit2117:                   ; preds = %bb.aun, %bb.auo
  call void @llvm.lifetime.end.p0(ptr nonnull %468) #24
  %i.jam = load i32, ptr %467, align 8, !tbaa !769
  %switch.i2118 = icmp ult i32 %i.jam, 2
  br i1 %switch.i2118, label %_ZN5clang7APValueD2Ev.exit2119, label %bb.aup

bb.aup:                                           ; preds = %_ZN5clang7APValueD2Ev.exit2117
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %467) #24
  br label %_ZN5clang7APValueD2Ev.exit2119

_ZN5clang7APValueD2Ev.exit2119:                   ; preds = %_ZN5clang7APValueD2Ev.exit2117, %bb.aup
  call void @llvm.lifetime.end.p0(ptr nonnull %467) #24
  br label %bb.bae

bb.auq:                                           ; preds = %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit, %_Z30ConvertBuiltinIDToX86BuiltinIDRKN5clang10ASTContextEPKNS_8CallExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %472) #24
  store i32 0, ptr %472, align 8, !tbaa !769
  %i.jan = getelementptr inbounds nuw i8, ptr %472, i64 4 ; 2 uses
  %i.jao = load i8, ptr %i.jan, align 4
  %i.jap = and i8 %i.jao, -2
  store i8 %i.jap, ptr %i.jan, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %473) #24
  store i32 0, ptr %473, align 8, !tbaa !769
  %i.jaq = getelementptr inbounds nuw i8, ptr %473, i64 4 ; 2 uses
  %i.jar = load i8, ptr %i.jaq, align 4
  %i.jas = and i8 %i.jar, -2
  store i8 %i.jas, ptr %i.jaq, align 4
  %i.jat = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.jau = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jav = load i32, ptr %1, align 8
  %i.jaw = lshr i32 %i.jav, 19
  %i.jax = and i32 %i.jaw, 1
  %i.jay = zext nneg i32 %i.jax to i64
  %i.jaz = getelementptr inbounds nuw [8 x i8], ptr %i.jau, i64 %i.jay
  %i.jba = load ptr, ptr %i.jaz, align 8, !tbaa !990
  %i.jbb = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.jat, ptr noundef %i.jba, ptr noundef nonnull align 8 dereferenceable(56) %472)
  br i1 %i.jbb, label %bb.aur, label %bb.avf

bb.aur:                                           ; preds = %bb.auq
  %i.jbc = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.jbd = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.jbe = load i32, ptr %i.jbd, align 8
  %i.jbf = lshr i32 %i.jbe, 19
  %i.jbg = and i32 %i.jbf, 1
  %i.jbh = zext nneg i32 %i.jbg to i64
  %i.jbi = getelementptr inbounds nuw [8 x i8], ptr %i.jbd, i64 %i.jbh
  %i.jbj = getelementptr inbounds nuw i8, ptr %i.jbi, i64 48
  %i.jbk = load ptr, ptr %i.jbj, align 8, !tbaa !990
  %i.jbl = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.jbc, ptr noundef %i.jbk, ptr noundef nonnull align 8 dereferenceable(56) %473)
  br i1 %i.jbl, label %bb.aus, label %bb.avf

bb.aus:                                           ; preds = %bb.aur
  call void @llvm.lifetime.start.p0(ptr nonnull %474) #24
  %i.jbm = getelementptr inbounds nuw i8, ptr %474, i64 8 ; 3 uses
  store i32 1, ptr %i.jbm, align 8, !tbaa !454
  store i64 0, ptr %474, align 8, !tbaa !440
  %i.jbn = getelementptr inbounds nuw i8, ptr %474, i64 12
  store i8 0, ptr %i.jbn, align 4, !tbaa !456
  %i.jbo = load ptr, ptr %i.c, align 8, !tbaa !2335 ; 2 uses
  %i.jbp = load i32, ptr %i.jbo, align 8
  %i.jbq = lshr i32 %i.jbp, 19
  %i.jbr = and i32 %i.jbq, 1
  %i.jbs = zext nneg i32 %i.jbr to i64
  %i.jbt = getelementptr inbounds nuw [8 x i8], ptr %i.jbo, i64 %i.jbs
  %i.jbu = getelementptr inbounds nuw i8, ptr %i.jbt, i64 56
  %i.jbv = load ptr, ptr %i.jbu, align 8, !tbaa !990
  %i.jbw = load ptr, ptr %0, align 8, !tbaa !2309, !nonnull !412, !align !413
  %i.jbx = call fastcc noundef zeroext i1 @_ZL15EvaluateIntegerPKN5clang4ExprERN4llvm6APSIntERN12_GLOBAL__N_18EvalInfoE(ptr noundef %i.jbv, ptr noundef nonnull align 8 dereferenceable(13) %474, ptr noundef nonnull align 8 dereferenceable(984) %i.jbw) ; 2 uses
  br i1 %i.jbx, label %bb.aut, label %bb.avc

bb.aut:                                           ; preds = %bb.aus
  %i.jby = getelementptr inbounds nuw i8, ptr %472, i64 16
  %i.jbz = load i32, ptr %i.jby, align 8, !tbaa !1288 ; 3 uses
  %i.jca = getelementptr inbounds nuw i8, ptr %473, i64 16
  %i.jcb = load i32, ptr %i.jca, align 8, !tbaa !1288 ; 3 uses
  %i.jcc = load i32, ptr %i.jbm, align 8, !tbaa !454
  %i.jcd = icmp ult i32 %i.jcc, 65
  %i.jce = load ptr, ptr %474, align 8
  %spec.select.i2120 = select i1 %i.jcd, ptr %474, ptr %i.jce
  %.0.i2121 = load i64, ptr %spec.select.i2120, align 8, !tbaa !440
  call void @llvm.lifetime.start.p0(ptr nonnull %475) #24
  %i.jcf = getelementptr inbounds nuw i8, ptr %475, i64 16
  store ptr %i.jcf, ptr %475, align 8, !tbaa !743
  %i.jcg = getelementptr inbounds nuw i8, ptr %475, i64 8 ; 7 uses
  store i32 0, ptr %i.jcg, align 8, !tbaa !745
  %i.jch = getelementptr inbounds nuw i8, ptr %475, i64 12 ; 3 uses
  store i32 16, ptr %i.jch, align 4, !tbaa !744
  %i.jci = zext i32 %i.jbz to i64                 ; 2 uses
  call void @_ZN4llvm15SmallVectorImplIN5clang7APValueEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %475, i64 noundef %i.jci)
  %.not = icmp eq i32 %i.jbz, 0
  br i1 %.not, label %.._crit_edge2800_crit_edge, label %.lr.ph2799

.._crit_edge2800_crit_edge:                       ; preds = %bb.aut
  %.pre3289 = load i32, ptr %i.jcg, align 8, !tbaa !745
  br label %._crit_edge2800

.lr.ph2799:                                       ; preds = %bb.aut
  %i.jcj = udiv i32 %i.jbz, %i.jcb
  %i.jck = zext i32 %i.jcj to i64
  %i.jcl = urem i64 %.0.i2121, %i.jck
  %i.jcm = trunc nuw i64 %i.jcl to i32
  %i.jcn = mul i32 %i.jcb, %i.jcm                 ; 2 uses
  %i.jco = add i32 %i.jcn, %i.jcb
  %i.jcp = getelementptr inbounds nuw i8, ptr %472, i64 8
  %i.jcq = getelementptr inbounds nuw i8, ptr %473, i64 8
  %i.jcr = zext i32 %i.jco to i64
  %i.jcs = zext i32 %i.jcn to i64                 ; 2 uses
  br label %bb.auv

._crit_edge2800:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backERKS2_.exit2130, %.._crit_edge2800_crit_edge
  %i.jct = phi i32 [ %.pre3289, %.._crit_edge2800_crit_edge ], [ %storemerge, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backERKS2_.exit2130 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %476) #24
  %i.jcu = load ptr, ptr %475, align 8, !tbaa !743
  call void @_ZN5clang7APValueC2EPKS0_j(ptr noundef nonnull align 8 dereferenceable(56) %476, ptr noundef %i.jcu, i32 noundef %i.jct)
  %i.jcv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val894 = load ptr, ptr %i.jcv, align 8, !tbaa !2317
  %i.jcw = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.val894, ptr noundef nonnull align 8 dereferenceable(56) %476) #24 ; 0 uses
end_hunk_4
