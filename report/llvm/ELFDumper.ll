Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9668
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 240
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E24lookupOrInsertIntoBucketIS9_JSF_EEESt4pairIPSK_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2521
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2518
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !2512
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2522
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !166
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !166
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !417
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2512, !noalias !2523 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2518, !noalias !2523 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2519, !noalias !2523 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !2520

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2521
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2519
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2512
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2518
  store i32 0, ptr %i.p, align 16, !tbaa !2522
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2521
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2512
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2518
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2519 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2518 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2512
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2519
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, !llvm.loop !2528

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !417
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !546
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !546
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2529

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2530

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2519
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2522
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2522
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !2512
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !2519
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Dyn_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !91
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2270 ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !2531
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !2531
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !183, !alias.scope !2531
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !186, !alias.scope !2531
  store ptr %9, ptr %8, align 8, !alias.scope !2536
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !2536
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !183, !alias.scope !2536
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !186, !alias.scope !2536
  %i.x = inttoptr i64 %i.l to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !2541
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !2541
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !183, !alias.scope !2541
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !186, !alias.scope !2541
  store ptr %7, ptr %6, align 8, !alias.scope !2546
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !2546
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !183, !alias.scope !2546
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !186, !alias.scope !2546
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !258
  store ptr %6, ptr %5, align 8, !alias.scope !2551
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !2551
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !90, !alias.scope !2551
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !183, !alias.scope !2551
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !186, !alias.scope !2551
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE9push_backEOS1_:bb.a
  %i.az = load i64, ptr %i.at, align 8, !tbaa !90
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !90
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !89
  br label %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i

_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !89
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !182
  store i64 0, ptr %i.bb, align 8, !tbaa !89
  store i8 0, ptr %i.at, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, ptr noundef nonnull align 8 dereferenceable(28) %i.be, i64 28, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !1025
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !1025
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1075
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1075
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  br i1 %i.ah, label %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.an, %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i ] ; 8 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %.val.i.i, %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5920)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.092.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !317, !alias.scope !5922
  %i.bl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !88, !alias.scope !5917, !noalias !5920
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !182, !alias.scope !5920, !noalias !5917 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !89, !alias.scope !5920, !noalias !5917 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false), !alias.scope !5922
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !182, !alias.scope !5917, !noalias !5920
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !90, !alias.scope !5920, !noalias !5917
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !90, !alias.scope !5917, !noalias !5920
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !89, !alias.scope !5920, !noalias !5917
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.bw = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.bs, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !89, !alias.scope !5917, !noalias !5920
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !182, !alias.scope !5920, !noalias !5917
  store i64 0, ptr %i.bx, align 8, !tbaa !89, !alias.scope !5920, !noalias !5917
  store i8 0, ptr %i.bp, align 8, !tbaa !90, !alias.scope !5920, !noalias !5917
  %i.bz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bz, ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i64 28, i1 false), !alias.scope !5922
  %i.cb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 80 ; 2 uses
  %i.cd = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !1025, !alias.scope !5920, !noalias !5917
  store <2 x ptr> %i.cd, ptr %i.cb, align 8, !tbaa !1025, !alias.scope !5917, !noalias !5920
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1075, !alias.scope !5920, !noalias !5917
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !1075, !alias.scope !5917, !noalias !5920
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false), !alias.scope !5920, !noalias !5917
  %i.ch = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 104 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5923

_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i.i ], [ %i.ci, %_ZSt19__relocate_object_aIN12_GLOBAL__N_112GroupSectionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 104
  %.not.i31.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i31.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30.i.i
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !1077
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.cm) #32
  br label %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !1007
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !1010
  %i.cn = getelementptr inbounds nuw [104 x i8], ptr %i.an, i64 %i.al
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !1077
  br label %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN12_GLOBAL__N_112GroupSectionC2EOS0_.exit.i, %_ZNSt6vectorIN12_GLOBAL__N_112GroupSectionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #13 align 2 {
_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEC2EjNS_12DenseMapBaseISA_mS4_S6_S9_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.654", align 16 ; 8 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1035
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1026
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1034
  store i32 0, ptr %i.p, align 16, !tbaa !1039
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !5924
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !819
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !546 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !546
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEC2EjNS_12DenseMapBaseISA_mS4_S6_S9_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev.exit

_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEC2EjNS_12DenseMapBaseISA_mS4_S6_S9_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #13 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !1026 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !1034
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !1035 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !1034 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !1026
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !1035
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !546  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.k = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.at, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !167  ; 2 uses
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.e, %i.t                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 5                         ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !546  ; 2 uses
  %i.z = and i32 %i.u, 31                         ; 2 uses
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.u, %bb.b ]
  %i.ac = add i32 %.016.i, 1
  %i.ad = and i32 %i.ac, %i.e                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5                       ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !546 ; 2 uses
  %i.ai = and i32 %i.ad, 31                       ; 2 uses
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !5925

_ZZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.y, %bb.b ], [ %i.ah, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa15.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.lcssa13.i ; 2 uses
  store i64 %i.p, ptr %i.am, align 8, !tbaa !167
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1011
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !1011
  %i.aq = shl nuw i32 1, %.lcssa.i
  %i.ar = or i32 %i.aq, %.lcssa11.i
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !546
  %i.as = add i32 %.0.i21, -1
  %i.at = and i32 %i.as, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !5926

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !5927

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !1035
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.au = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.av, align 8, !tbaa !1039
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.aw, align 8, !tbaa !1039
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val11, i64 noundef %i.bd, i64 noundef 8) #31
  store i32 0, ptr %i.b, align 4, !tbaa !1035
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEE4killEv.exit

_ZN4llvm8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPKN12_GLOBAL__N_112GroupSectionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEEEmS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL20decodeAddrsigSectionIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_8ExpectedISt6vectorImSaImEEEERKNS1_7ELFFileIT_EERKNSB_4ShdrE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::Expected", align 8    ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Expected.291", align 8 ; 9 uses
  %7 = alloca %"class.llvm::Expected.679", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.291") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %6, align 8, !tbaa !175, !noalias !5928
  %i.e = inttoptr i64 %i.d to ptr
  store ptr null, ptr %6, align 8, !tbaa !175, !noalias !5928
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8
  store ptr %i.e, ptr %0, align 8, !tbaa !175, !alias.scope !5931
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !167
  call fastcc void @_ZL14toULEB128ArrayN4llvm8ArrayRefIhEE(ptr dead_on_unwind noalias writable align 8 %7, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1101 ; 2 uses
  %i.q = load ptr, ptr %7, align 8, !tbaa !1103   ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds i8, ptr null, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1113
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.x, label %bb.e, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i, !prof !1652

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i:    ; preds = %bb.d
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 4 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !1103
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1113
  %i.ac = icmp samesign ugt i64 %i.t, 8
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !5934

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %bb.r

bb.g:                                             ; preds = %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i
  %i.ad = icmp eq i64 %i.t, 8
  br i1 %i.ad, label %.thread65, label %bb.r

.thread65:                                        ; preds = %bb.g
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !167
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !167
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !1101
  br label %bb.s

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE8sectionsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %1) #31, !noalias !5935
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !166, !noalias !5935
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE34getSymbolIndexesForFunctionAddressEmSt8optionalIPKNS2_13Elf_Shdr_ImplIS5_EEE:bb.a
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.us
  %i.os = load ptr, ptr %28, align 8, !tbaa !177  ; 3 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN4llvm5ErrorD2Ev.exit120.us, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.us
  %i.ou = load ptr, ptr %i.os, align 8, !tbaa !23
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.os) #31, !inline_history !344
  br label %_ZN4llvm5ErrorD2Ev.exit120.us

_ZN4llvm5ErrorD2Ev.exit120.us:                    ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.us
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  %i.ox = load ptr, ptr %25, align 8, !tbaa !182  ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ju
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.us: ; preds = %_ZN4llvm5ErrorD2Ev.exit120.us
  %i.oz = load i64, ptr %i.ju, align 8, !tbaa !90
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.us: ; preds = %_ZN4llvm5ErrorD2Ev.exit120.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.us
  %i.pb = load ptr, ptr %26, align 8, !tbaa !182  ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.js
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.us
  %i.pd = load i64, ptr %i.js, align 8, !tbaa !90
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.us
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %i.pf = load ptr, ptr %22, align 8, !tbaa !182  ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.kc
  br i1 %i.pg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.us
  %i.ph = load i64, ptr %i.kc, align 8, !tbaa !90
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.us
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %.pre = load i8, ptr %i.jq, align 8
  %i.pj = trunc i8 %.pre to i1
  br i1 %i.pj, label %bb.au, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.us.jt1

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.us
  %i.pk = load ptr, ptr %20, align 8, !tbaa !175  ; 3 uses
  %.not.i.i131.us.jt1 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i131.us.jt1, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.us.jt1, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i132.us.jt1

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i132.us.jt1: ; preds = %bb.au
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !23
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(8) %i.pk) #31, !inline_history !3795
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.us.jt1

_ZN4llvm8ExpectedIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEEED2Ev.exit.us.jt0: ; preds = %_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE13getShndxTableEPKNS2_13Elf_Shdr_ImplIS5_EE.exit.us
  %i.po = load ptr, ptr %20, align 8, !tbaa !166
  %.not43.us = icmp eq ptr %3, %i.po
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br i1 %.not43.us, label %bb.av, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread.us

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.us.jt1: ; preds = %bb.au, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i132.us.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128.us
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

bb.av:                                            ; preds = %_ZN4llvm8ExpectedIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEEED2Ev.exit.us.jt0
  %i.pp = load i32, ptr %i.b, align 8, !tbaa !133 ; 2 uses
  %i.pq = load i32, ptr %i.c, align 4, !tbaa !134
  %.not.i133.us = icmp ult i32 %i.pp, %i.pq
  br i1 %.not.i133.us, label %bb.ax, label %bb.aw, !prof !752

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.kd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread.us

bb.ax:                                            ; preds = %bb.av
  %i.pr = zext i32 %i.pp to i64
  %i.ps = load ptr, ptr %0, align 8, !tbaa !132
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.pr
  store i32 %i.kd, ptr %i.pt, align 1
  %i.pu = load i32, ptr %i.b, align 8, !tbaa !133
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.b, align 8, !tbaa !133
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread.us

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread.us: ; preds = %_ZN4llvm8ExpectedIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEEED2Ev.exit.us.jt0, %bb.ax, %bb.aw
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0134.0175.us, i64 4 ; 2 uses
  %.not162.us = icmp eq ptr %i.pw, %i.jg
  br i1 %.not162.us, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %_ZN4llvm8ExpectedIPKNS_6object12Elf_Sym_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEEED2Ev.exit.us

.lr.ph178.split:                                  ; preds = %.lr.ph178, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread
  %.sroa.0134.0175 = phi ptr [ %i.qf, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread ], [ %i.je, %.lr.ph178 ] ; 2 uses
  %i.px = load i32, ptr %.sroa.0134.0175, align 4, !tbaa !546 ; 2 uses
  %i.py = load i32, ptr %i.b, align 8, !tbaa !133 ; 2 uses
  %i.pz = load i32, ptr %i.c, align 4, !tbaa !134
  %.not.i133 = icmp ult i32 %i.py, %i.pz
  br i1 %.not.i133, label %bb.az, label %bb.ay, !prof !752

.split180.us:                                     ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

.split182.us:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i90.us
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

.split184.us:                                     ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit91.us
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !6985
  unreachable

.split186.us:                                     ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !6991
  unreachable

bb.ay:                                            ; preds = %.lr.ph178.split
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.px)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread

bb.az:                                            ; preds = %.lr.ph178.split
  %i.qa = zext i32 %i.py to i64
  %i.qb = load ptr, ptr %0, align 8, !tbaa !132
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qa
  store i32 %i.px, ptr %i.qc, align 1
  %i.qd = load i32, ptr %i.b, align 8, !tbaa !133
  %i.qe = add i32 %i.qd, 1
  store i32 %i.qe, ptr %i.b, align 8, !tbaa !133
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread: ; preds = %bb.az, %bb.ay
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0134.0175, i64 4 ; 2 uses
  %.not162 = icmp eq ptr %i.qf, %i.jg
  br i1 %.not162, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %.lr.ph178.split

bb.ba:                                            ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit
  br i1 %.5, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qg = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.a
  br i1 %i.qh, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.qg) #31
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.thread.us, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.us.jt1, %bb.ai, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4findERKm.exit, %bb.bc, %bb.bb, %bb.ba
  ret void
}

declare noundef i64 @_ZNK4llvm13DataExtractor10getULEB128EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8optionalIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vISA_DpT_EERSA_E4typeEDpOSE_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98, !range !163, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !98
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6967 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNSt19_Optional_base_implIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit, label %.lr.ph7.preheader.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i:                      ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !6954
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6966
  %i.j = zext i32 %i.e to i64
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5
  br label %.lr.ph7.i.i.i.i.i

.lr.ph7.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !546  ; 2 uses
  %.not11.i2.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not11.i2.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph7.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i to i32
  %i.o = shl i32 %indvars.iv.tr.i.i.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i ] ; 3 uses
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i, i1 true)
  %i.q = or disjoint i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1905 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1907
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.aa = add i32 %.0.i3.i.i.i.i.i, -1
  %i.ab = and i32 %i.aa, %.0.i3.i.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !6994

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph7.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i, label %.lr.ph7.i.i.i.i.i, !llvm.loop !6995

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.pr.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6967 ; 2 uses
  %i.ac = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt19_Optional_base_implIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !6954
  %i.ae = zext i32 %.pr.i.i.i.i to i64            ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.ae, 31
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741820
  %i.aj = add nuw nsw i64 %i.ai, %i.af
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.aj, i64 noundef 8) #31
  br label %_ZNSt19_Optional_base_implIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEESt14_Optional_baseISA_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !98
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !6954, !noalias !6996 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6966, !noalias !6996 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !6967, !noalias !6996 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !167    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !1036

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !167
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !1037, !llvm.loop !7001

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !7002
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !7003
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !7002
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !6966
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !6954
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !546
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !546
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !7003
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !7003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !167
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !6954, !noalias !7004 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6966, !noalias !7004 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6967, !noalias !7004 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !167    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !546
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !167
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !7001

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7002
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.93", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !6967
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !6954
  store ptr %i.y, ptr %i.q, align 8, !tbaa !6966
  store i32 0, ptr %i.p, align 16, !tbaa !7003
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !7002   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1744 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store ptr %i.z, ptr %2, align 16, !tbaa !7002
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !819
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1744
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !546
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !546
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !546 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1905 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1907
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !6994

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !6995

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !6967 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !6954
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit

_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !6954
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6966
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6967 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6966 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !6954
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6967
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !167  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !546
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !7009

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !167
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !1744
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !1744
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1907
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !1907
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !546
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !546
  %i.bc = add i32 %.0.i17, -1
  %i.bd = and i32 %i.bc, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7010

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !7011

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !6967
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !7003
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !7003
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !6954
  %i.bk = zext i32 %i.be to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !6967
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit

_ZN4llvm8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !133
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #31
  %i.f = load ptr, ptr %0, align 8, !tbaa !132
  %i.g = load i32, ptr %i.a, align 8, !tbaa !133
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !133
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFvvEZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE_E9_M_invokeERKSt9_Any_data(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7012, !nonnull !17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !810, !range !163, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZSt10__invoke_rIvRZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEE15printStackSizesEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7014
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1152 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !455, !nonnull !17, !align !165 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !450
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !454  ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 14
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @.str.736, i64 noundef 14) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.k, ptr noundef nonnull align 1 dereferenceable(14) @.str.736, i64 14, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !454
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  store ptr %i.r, ptr %i.j, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i:           ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !455, !nonnull !17, !align !165
  %i.t = tail call noundef nonnull align 8 dereferenceable(105) ptr @_ZN4llvm21formatted_raw_ostream11PadToColumnEj(ptr noundef nonnull align 8 dereferenceable(105) %i.s, i32 noundef 9) #31 ; 0 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !455, !nonnull !17, !align !165 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !450
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !454  ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 4
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.129, i64 noundef 4) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3.i.i.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i.i
  store i32 1702521171, ptr %i.y, align 1
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !454
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.af, ptr %i.x, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit3.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit3.i.i.i:          ; preds = %bb.f, %bb.e
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !455, !nonnull !17, !align !165
  %i.ah = tail call noundef nonnull align 8 dereferenceable(105) ptr @_ZN4llvm21formatted_raw_ostream11PadToColumnEj(ptr noundef nonnull align 8 dereferenceable(105) %i.ag, i32 noundef 18) #31 ; 0 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !455, !nonnull !17, !align !165 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !450
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !454 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 10
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3.i.i.i
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull @.str.737, i64 noundef 10) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6.i.i.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit3.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.am, ptr noundef nonnull align 1 dereferenceable(10) @.str.737, i64 10, i1 false)
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !454
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  store ptr %i.at, ptr %i.al, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6.i.i.i

end_hunk_2
begin_hunk_3_@_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19printSectionDetailsEvENKUlmNS1_9StringRefEE_clEmS7_:bb.a
  %i.ai = phi ptr [ %.pre15, %bb.g ], [ %i.ah, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %.0.i9 = phi ptr [ %i.af, %bb.g ], [ %.0.i, %bb.i ], [ %.0.i, %bb.h ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i9, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !450
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 2
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit10
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i9, ptr noundef nonnull @.str.39, i64 noundef 2) #31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit10
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i9, i64 32 ; 2 uses
  store i16 10272, ptr %i.ai, align 1
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !454
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.ap, %bb.j ], [ %.0.i9, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i64 %i.c, ptr %6, align 8, !tbaa !601, !alias.scope !7018
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !606, !alias.scope !7018
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 8, ptr %i.au, align 8, !tbaa !607, !alias.scope !7018
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 1, ptr %i.av, align 4, !tbaa !608, !alias.scope !7018
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.aw, align 1, !tbaa !609, !alias.scope !7018
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.ax, align 2, !tbaa !610, !alias.scope !7018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7021)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !88, !alias.scope !7021
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !89, !alias.scope !7021
  store i8 0, ptr %i.ay, align 8, !tbaa !90, !alias.scope !7021
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !7021
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !529, !noalias !7021
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.bb, align 8, !tbaa !530, !noalias !7021
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.bc, align 4, !tbaa !531, !noalias !7021
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !noalias !7021
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !23, !noalias !7021
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %5, ptr %i.be, align 8, !tbaa !532, !noalias !7021
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #31
  %i.bf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23) %6) #31 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !7021
  %i.bg = load ptr, ptr %5, align 8, !tbaa !182
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !89
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.bg, i64 noundef %i.bh) #31 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !450
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !454 ; 2 uses
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull @.str.6, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 41, ptr %i.bm, align 1
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !454
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13

_ZN4llvm11raw_ostreamlsEPKc.exit13:               ; preds = %bb.l, %bb.m
  %i.br = load ptr, ptr %5, align 8, !tbaa !182   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ay
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !90
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bv = xor i64 %1, -1
  %i.bw = load ptr, ptr %0, align 8, !tbaa !7016, !nonnull !17, !align !165 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !167
  %i.by = and i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !167
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.883", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1185
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1188
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1189
  store i32 0, ptr %i.p, align 16, !tbaa !1190
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7024
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1188
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1189
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1185 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1189 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1185
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !546  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !546
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !7025

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !546
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !317
  %i.aj = shl nuw i32 1, %i.ab
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !546
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.af, align 4, !tbaa !546
  %i.am = add i32 %.0.i18, -1
  %i.an = and i32 %i.am, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7026

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !7027

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1185
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1190
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !1190
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !1188
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !1185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE15printAttributesEjSt10unique_ptrINS1_18ELFAttributeParserESt14default_deleteIS8_EES4_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 align 2 {
_ZN4llvm8ExpectedINS_8ArrayRefINS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit:
  %3 = alloca %"class.llvm::Expected", align 8    ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Expected", align 8    ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %12 = alloca %"class.llvm::Expected", align 8   ; 3 uses
  %13 = alloca %"class.llvm::Expected.291", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %25 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b, ptr nonnull @.str.764, i64 15) #31, !inline_history !874
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164, !nonnull !17, !align !165
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE8sectionsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %12, ptr noundef nonnull align 8 dereferenceable(96) %i.g) #31
  %.sroa.0.0.copyload.i = load ptr, ptr %12, align 8, !tbaa !166 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !167 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.2.0.copyload.i, 40
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  %.not125 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not125, label %_ZN4llvm9DictScopeD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.q = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %26, i64 33
  %i.aa = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 33
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 33
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 33
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 33
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 33
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  br label %bb.a

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %bb.ad, %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.ad
  %.0126 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.md, %bb.ad ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0126, i64 4 ; 4 uses
  %.0.copyload.i.i.i = load i32, ptr %i.bk, align 1
  %.not17 = icmp eq i32 %.0.copyload.i.i.i, 1879048195
  br i1 %.not17, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !164, !nonnull !17, !align !165
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.291") align 8 %13, ptr noundef nonnull align 8 dereferenceable(96) %i.bl, ptr noundef nonnull align 1 dereferenceable(40) %.0126) #31
  %i.bm = load i8, ptr %i.i, align 8
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E24lookupOrInsertIntoBucketIS9_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !7321
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !7320
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2039
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2025
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !7321
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !7321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !166
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !166
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2025, !noalias !7322 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2039, !noalias !7322 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2040, !noalias !7322 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !7319

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !7320
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1121", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2040
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2025
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2039
  store i32 0, ptr %i.p, align 16, !tbaa !7321
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7320
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2025   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2039
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2040 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2039 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2025
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2040
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !7327

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !166
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !546
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !7328

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !7329

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2040
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !7321
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !7321
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !2040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE28printGNUVersionSectionPrologERKNS2_13Elf_Shdr_ImplIS5_EERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected", align 8    ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.llvm::Expected.373", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %15 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %16 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %i.a = tail call fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE23getPrintableSectionNameERKNS2_13Elf_Shdr_ImplIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(40) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !455, !nonnull !17, !align !165 ; 5 uses
  tail call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.e) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !450
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.955, i64 noundef 10) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.955, i64 10, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !450
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.c, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.b, i64 noundef %i.c) #31 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c ; 2 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ab = phi ptr [ %.pre64, %bb.d ], [ %i.aa, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.y, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.956, i64 noundef 2) #31 ; 2 uses
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 8231, ptr %i.ab, align 1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !454
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %.pre66, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %.0.i.i14 = phi ptr [ %i.ai, %bb.g ], [ %.0.i, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !450
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 9
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE25printExpandedRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_:bb.a
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %_ZN4llvm9DictScopeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !167
  %i.y = and i64 %i.x, 4294967295
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(44) %i.w, ptr nonnull @.str.1253, i64 6, i64 %i.y) #31, !inline_history !7839
  br label %_ZN4llvm9DictScopeD2Ev.exit

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %bb.b, %bb.a
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE24printDefaultRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3, ptr %4, i64 %5) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE26printRelocationSectionInfoERKNS2_13Elf_Shdr_ImplIS5_EENS1_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr nofree readnone captures(none) %2, i64 %3, i32 noundef %4) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %5 = alloca %class.anon.407, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.234, i64 12, i32 noundef %4) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1254, i64 6) #31, !inline_history !865
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !791
  %i.n = ptrtoint ptr %5 to i64
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE19forEachRelocationDoERKNS2_13Elf_Shdr_ImplIS5_EENS1_12function_refIFvRKNS_10RelocationIS5_EEjSA_PS9_EEE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr nonnull @_ZN4llvm12function_refIFvRKN12_GLOBAL__N_110RelocationINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjRKNS3_13Elf_Shdr_ImplIS6_EEPSC_EE11callback_fnIZNS1_9ELFDumperIS6_E22printRelocationsHelperESD_EUlS9_jSD_SE_E_EEvlS9_jSD_SE_, i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(44) %i.j) #31, !inline_history !873
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE24printSectionGroupMembersENS1_9StringRefEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, ptr %1, i64 %2, i64 noundef %3) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.125, i64 4, ptr %1, i64 %2) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !7757, !nonnull !17, !align !165 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1085, i64 5, i64 noundef %3) #31
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE22printEmptyGroupMessageEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 640) (i8, ptr @_ZTVN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !3613, !range !163, !noundef !17
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !3613
  br i1 %i.j, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !90
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3615

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i
  tail call void @free(ptr noundef %i.p) #31
  br label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !90
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !98, !range !163, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !98
  br i1 %i.ab, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6966
  %i.ai = zext i32 %i.ad to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !546 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.an = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1905 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1907
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.az = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !6994

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !6995

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.bd = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #31
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !2519 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2512
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = mul nuw nsw i64 %i.bo, 24
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !90
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit:        ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !182 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !90
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !93, !range !163, !noundef !17
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !93
  br i1 %i.ci, label %bb.i, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !182 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.co = add i64 %i.cn, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit: ; preds = %bb.i, %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !182 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !90
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6:       ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !90
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !182 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !90
  %i.dg = add i64 %i.df, 1
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !182 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !90
  %i.dm = add i64 %i.dl, 1
  tail call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !182 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !90
  %i.ds = add i64 %i.dr, 1
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  tail call void @_ZN4llvm9ObjDumperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(1160) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1160) dereferenceable(1160) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1160) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE17printDynamicTableEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.615, align 8            ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E24lookupOrInsertIntoBucketIS9_JSF_EEESt4pairIPSK_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !10825
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !10822
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !10816
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !10826
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !10826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !8856
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !8856
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !9091
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10816, !noalias !10827 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10822, !noalias !10827 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10823, !noalias !10827 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8856   ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8856
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !10824

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !10825
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1457", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !10823
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !10816
  store ptr %i.y, ptr %i.q, align 8, !tbaa !10822
  store i32 0, ptr %i.p, align 16, !tbaa !10826
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10825
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10816
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10822
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10823 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10822 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !10816
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10823
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8856 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, !llvm.loop !10832

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !8856
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !9091
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !546
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !546
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !10833

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !10834

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !10823
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !10826
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !10826
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !10816
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !10823
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Dyn_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !91
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2270 ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !10835
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !10835
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !183, !alias.scope !10835
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !186, !alias.scope !10835
  store ptr %9, ptr %8, align 8, !alias.scope !10840
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !10840
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !183, !alias.scope !10840
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !186, !alias.scope !10840
  %i.x = inttoptr i64 %i.l to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !10845
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !10845
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !183, !alias.scope !10845
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !186, !alias.scope !10845
  store ptr %7, ptr %6, align 8, !alias.scope !10850
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !10850
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !183, !alias.scope !10850
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !186, !alias.scope !10850
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !258
  store ptr %6, ptr %5, align 8, !alias.scope !10855
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !10855
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !90, !alias.scope !10855
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !183, !alias.scope !10855
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !186, !alias.scope !10855
  store ptr %5, ptr %4, align 8, !alias.scope !10860
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !10860
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !183, !alias.scope !10860
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E24lookupOrInsertIntoBucketIS9_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !14545
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14544
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !10458
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !10444
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !14545
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !14545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !8856
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !8856
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10444, !noalias !14546 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10458, !noalias !14546 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10459, !noalias !14546 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8856   ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8856
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !14543

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !14544
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1775", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !10459
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !10444
  store ptr %i.y, ptr %i.q, align 8, !tbaa !10458
  store i32 0, ptr %i.p, align 16, !tbaa !14545
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14544
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10444  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10458
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10459 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10458 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !10444
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10459
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8856 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !14551

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !8856
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !546
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !14552

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !14553

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !10459
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !14545
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !14545
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !10459
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE28printGNUVersionSectionPrologERKNS2_13Elf_Shdr_ImplIS5_EERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected.1461", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.llvm::Expected.1571", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %15 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %16 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %i.a = tail call fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE23getPrintableSectionNameERKNS2_13Elf_Shdr_ImplIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(40) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9123, !nonnull !17, !align !165 ; 5 uses
  tail call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.e) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !450
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.955, i64 noundef 10) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.955, i64 10, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !450
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.c, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.b, i64 noundef %i.c) #31 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c ; 2 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ab = phi ptr [ %.pre64, %bb.d ], [ %i.aa, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.y, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.956, i64 noundef 2) #31 ; 2 uses
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 8231, ptr %i.ab, align 1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !454
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %.pre66, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %.0.i.i14 = phi ptr [ %i.ai, %bb.g ], [ %.0.i, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !450
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 9
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i14, ptr noundef nonnull @.str.957, i64 noundef 9) #31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE25printExpandedRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_:bb.a
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %_ZN4llvm9DictScopeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !167
  %i.y = and i64 %i.x, 4294967295
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(44) %i.w, ptr nonnull @.str.1253, i64 6, i64 %i.y) #31, !inline_history !7839
  br label %_ZN4llvm9DictScopeD2Ev.exit

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %bb.b, %bb.a
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE24printDefaultRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3, ptr %4, i64 %5) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE26printRelocationSectionInfoERKNS2_13Elf_Shdr_ImplIS5_EENS1_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr nofree readnone captures(none) %2, i64 %3, i32 noundef %4) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %5 = alloca %class.anon.1583, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.234, i64 12, i32 noundef %4) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1254, i64 6) #31, !inline_history !865
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !9402
  %i.n = ptrtoint ptr %5 to i64
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE19forEachRelocationDoERKNS2_13Elf_Shdr_ImplIS5_EENS1_12function_refIFvRKNS_10RelocationIS5_EEjSA_PS9_EEE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr nonnull @_ZN4llvm12function_refIFvRKN12_GLOBAL__N_110RelocationINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjRKNS3_13Elf_Shdr_ImplIS6_EEPSC_EE11callback_fnIZNS1_9ELFDumperIS6_E22printRelocationsHelperESD_EUlS9_jSD_SE_E_EEvlS9_jSD_SE_, i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(44) %i.j) #31, !inline_history !873
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE24printSectionGroupMembersENS1_9StringRefEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, ptr %1, i64 %2, i64 noundef %3) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.125, i64 4, ptr %1, i64 %2) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !14932, !nonnull !17, !align !165 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1085, i64 5, i64 noundef %3) #31
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE22printEmptyGroupMessageEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 640) (i8, ptr @_ZTVN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !3613, !range !163, !noundef !17
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !3613
  br i1 %i.j, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !90
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3615

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i
  tail call void @free(ptr noundef %i.p) #31
  br label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !90
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !98, !range !163, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !98
  br i1 %i.ab, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6966
  %i.ai = zext i32 %i.ad to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !546 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.an = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1905 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1907
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.az = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !6994

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !6995

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.bd = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #31
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10823 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !10816
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = mul nuw nsw i64 %i.bo, 24
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !90
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit:        ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !182 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !90
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !93, !range !163, !noundef !17
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !93
  br i1 %i.ci, label %bb.i, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !182 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.co = add i64 %i.cn, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit: ; preds = %bb.i, %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !182 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !90
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6:       ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !90
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !182 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !90
  %i.dg = add i64 %i.df, 1
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !182 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !90
  %i.dm = add i64 %i.dl, 1
  tail call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !182 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !90
  %i.ds = add i64 %i.dr, 1
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  tail call void @_ZN4llvm9ObjDumperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(1160) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1160) dereferenceable(1160) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1160) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE17printDynamicTableEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.615, align 8            ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E24lookupOrInsertIntoBucketIS9_JSF_EEESt4pairIPSK_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !17844
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !17841
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !17835
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !17845
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !17845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !15882
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !15882
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !417
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17835, !noalias !17846 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17841, !noalias !17846 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17842, !noalias !17846 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !15882  ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15882
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !17843

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !17844
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1874", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !17842
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !17835
  store ptr %i.y, ptr %i.q, align 8, !tbaa !17841
  store i32 0, ptr %i.p, align 16, !tbaa !17845
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !17844
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17835
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17841
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17842 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17841 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17835
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17842
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15882 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, !llvm.loop !17851

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !15882
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !417
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !546
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !546
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !17852

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !17853

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !17842
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !17845
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !17845
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !17835
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !17842
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_1ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Dyn_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb1EEEEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !91
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2270 ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !17854
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !17854
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !183, !alias.scope !17854
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !186, !alias.scope !17854
  store ptr %9, ptr %8, align 8, !alias.scope !17859
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !17859
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !183, !alias.scope !17859
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !186, !alias.scope !17859
  %i.x = inttoptr i64 %i.l to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !17864
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !17864
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !183, !alias.scope !17864
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !186, !alias.scope !17864
  store ptr %7, ptr %6, align 8, !alias.scope !17869
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !17869
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !183, !alias.scope !17869
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !186, !alias.scope !17869
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !258
  store ptr %6, ptr %5, align 8, !alias.scope !17874
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !17874
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !90, !alias.scope !17874
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !183, !alias.scope !17874
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !186, !alias.scope !17874
  store ptr %5, ptr %4, align 8, !alias.scope !17879
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !17879
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !183, !alias.scope !17879
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E24lookupOrInsertIntoBucketIS9_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21630
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21629
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !17475
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !17461
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !21630
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !21630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !15882
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !15882
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17461, !noalias !21631 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17475, !noalias !21631 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17476, !noalias !21631 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !15882  ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15882
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !21628

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !21629
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2148", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !17476
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !17461
  store ptr %i.y, ptr %i.q, align 8, !tbaa !17475
  store i32 0, ptr %i.p, align 16, !tbaa !21630
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !21629
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17461  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17475
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17476 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17475 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17461
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17476
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15882 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !21636

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !15882
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !546
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !21637

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !21638

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !17476
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !21630
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !21630
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !17476
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE28printGNUVersionSectionPrologERKNS2_13Elf_Shdr_ImplIS5_EERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected.1877", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.llvm::Expected.1980", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %15 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %16 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %i.a = tail call fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE23getPrintableSectionNameERKNS2_13Elf_Shdr_ImplIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(64) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16144, !nonnull !17, !align !165 ; 5 uses
  tail call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.e) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !450
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.955, i64 noundef 10) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.955, i64 10, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !450
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.c, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.b, i64 noundef %i.c) #31 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c ; 2 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ab = phi ptr [ %.pre64, %bb.d ], [ %i.aa, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.y, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.956, i64 noundef 2) #31 ; 2 uses
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 8231, ptr %i.ab, align 1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !454
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %.pre66, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %.0.i.i14 = phi ptr [ %i.ai, %bb.g ], [ %.0.i, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !450
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 9
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i14, ptr noundef nonnull @.str.957, i64 noundef 9) #31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18
end_hunk_10
begin_hunk_11_@_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE25printExpandedRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_:bb.a
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1841, !range !163, !noundef !17
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %_ZN4llvm9DictScopeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !167
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 336
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(44) %i.v, ptr nonnull @.str.1253, i64 6, i64 %i.w) #31, !inline_history !4431
  br label %_ZN4llvm9DictScopeD2Ev.exit

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %bb.b, %bb.a
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE24printDefaultRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, i64 %3, ptr %4, i64 %5) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE26printRelocationSectionInfoERKNS2_13Elf_Shdr_ImplIS5_EENS1_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr nofree readnone captures(none) %2, i64 %3, i32 noundef %4) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %5 = alloca %class.anon.1992, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.234, i64 12, i32 noundef %4) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1254, i64 6) #31, !inline_history !865
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !16428
  %i.n = ptrtoint ptr %5 to i64
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE19forEachRelocationDoERKNS2_13Elf_Shdr_ImplIS5_EENS1_12function_refIFvRKNS_10RelocationIS5_EEjSA_PS9_EEE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr nonnull @_ZN4llvm12function_refIFvRKN12_GLOBAL__N_110RelocationINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjRKNS3_13Elf_Shdr_ImplIS6_EEPSC_EE11callback_fnIZNS1_9ELFDumperIS6_E22printRelocationsHelperESD_EUlS9_jSD_SE_E_EEvlS9_jSD_SE_, i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(44) %i.j) #31, !inline_history !873
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE24printSectionGroupMembersENS1_9StringRefEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, ptr %1, i64 %2, i64 noundef %3) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.125, i64 4, ptr %1, i64 %2) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !22011, !nonnull !17, !align !165 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1085, i64 5, i64 noundef %3) #31
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE22printEmptyGroupMessageEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 640) (i8, ptr @_ZTVN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !3613, !range !163, !noundef !17
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !3613
  br i1 %i.j, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !90
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3615

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i
  tail call void @free(ptr noundef %i.p) #31
  br label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !90
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !98, !range !163, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !98
  br i1 %i.ab, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6966
  %i.ai = zext i32 %i.ad to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !546 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.an = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1905 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1907
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.az = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !6994

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !6995

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.bd = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #31
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17842 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17835
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = mul nuw nsw i64 %i.bo, 24
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !90
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit:        ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_1ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !182 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !90
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !93, !range !163, !noundef !17
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !93
  br i1 %i.ci, label %bb.i, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !182 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.co = add i64 %i.cn, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit: ; preds = %bb.i, %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !182 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !90
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6:       ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !90
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !182 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !90
  %i.dg = add i64 %i.df, 1
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !182 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !90
  %i.dm = add i64 %i.dl, 1
  tail call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !182 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !90
  %i.ds = add i64 %i.dr, 1
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  tail call void @_ZN4llvm9ObjDumperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(1160) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1160) dereferenceable(1160) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1160) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE17printDynamicTableEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.615, align 8            ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E24lookupOrInsertIntoBucketIS9_JSF_EEESt4pairIPSK_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !24905
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !24902
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !24896
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !24906
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !24906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !22947
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !22947
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !9091
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E22findBucketForInsertionIS9_EEPSK_RKT_SO_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E15LookupBucketForIS9_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24896, !noalias !24907 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24902, !noalias !24907 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24903, !noalias !24907 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !22947  ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22947
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !24904

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !24905
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2246", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !24903
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !24896
  store ptr %i.y, ptr %i.q, align 8, !tbaa !24902
  store i32 0, ptr %i.p, align 16, !tbaa !24906
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !24905
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24896
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24902
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24903 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24902 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !24896
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24903
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22947 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, !llvm.loop !24912

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !22947
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !9091
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !546
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !546
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !24913

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !24914

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !24903
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !24906
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !24906
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !24896
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !24903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS8_0ELm1ELm1EEEEENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SI_EEEESC_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Dyn_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb1EEEEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !91
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2270 ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !24915
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !24915
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !183, !alias.scope !24915
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !186, !alias.scope !24915
  store ptr %9, ptr %8, align 8, !alias.scope !24920
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !24920
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !183, !alias.scope !24920
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !186, !alias.scope !24920
  %i.x = inttoptr i64 %i.l to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !24925
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !24925
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !183, !alias.scope !24925
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !186, !alias.scope !24925
  store ptr %7, ptr %6, align 8, !alias.scope !24930
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !24930
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !183, !alias.scope !24930
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !186, !alias.scope !24930
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !258
  store ptr %6, ptr %5, align 8, !alias.scope !24935
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !24935
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !90, !alias.scope !24935
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !183, !alias.scope !24935
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !186, !alias.scope !24935
  store ptr %5, ptr %4, align 8, !alias.scope !24940
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !24940
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !183, !alias.scope !24940
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E24lookupOrInsertIntoBucketIS9_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !28691
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !752

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !28690
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !24536
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !24522
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !546
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !546
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !28691
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !28691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !22947
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !22947
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E15LookupBucketForIS9_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24522, !noalias !28692 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24536, !noalias !28692 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24537, !noalias !28692 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !22947  ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !546
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !1036

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22947
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !752

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !1037, !llvm.loop !28689

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !28690
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2520", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !24537
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #31 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !24522
  store ptr %i.y, ptr %i.q, align 8, !tbaa !24536
  store i32 0, ptr %i.p, align 16, !tbaa !28691
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !819
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28690
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !819
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !819
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !819
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !546 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !546
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !546
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !546
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !546
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24522  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24536
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24537 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24536 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !24522
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24537
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !546  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22947 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !546 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !546 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !28697

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !22947
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !546
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !28698

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !28699

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !24537
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !28691
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !28691
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #31
  store i32 0, ptr %i.d, align 4, !tbaa !24537
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISC_vEENSD_12DenseSetPairISC_EEEESC_SE_SG_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE28printGNUVersionSectionPrologERKNS2_13Elf_Shdr_ImplIS5_EERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected.2249", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.llvm::Expected.2352", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %15 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %16 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %i.a = tail call fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE23getPrintableSectionNameERKNS2_13Elf_Shdr_ImplIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(64) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23209, !nonnull !17, !align !165 ; 5 uses
  tail call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.e) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !450
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.955, i64 noundef 10) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.955, i64 10, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10 ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !450
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.c, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.b, i64 noundef %i.c) #31 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c ; 2 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ab = phi ptr [ %.pre64, %bb.d ], [ %i.aa, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.y, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.956, i64 noundef 2) #31 ; 2 uses
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 8231, ptr %i.ab, align 1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !454
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !454
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %.pre66, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %.0.i.i14 = phi ptr [ %i.ai, %bb.g ], [ %.0.i, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !450
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 9
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i14, ptr noundef nonnull @.str.957, i64 noundef 9) #31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18
end_hunk_13
begin_hunk_14_@_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE25printExpandedRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_:bb.a
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1841, !range !163, !noundef !17
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %_ZN4llvm9DictScopeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !167
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 336
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(44) %i.v, ptr nonnull @.str.1253, i64 6, i64 %i.w) #31, !inline_history !4431
  br label %_ZN4llvm9DictScopeD2Ev.exit

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %bb.b, %bb.a
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE24printDefaultRelRelaRelocERKNS_10RelocationIS5_EENS1_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, i64 %3, ptr %4, i64 %5) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE26printRelocationSectionInfoERKNS2_13Elf_Shdr_ImplIS5_EENS1_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr nofree readnone captures(none) %2, i64 %3, i32 noundef %4) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %5 = alloca %class.anon.2364, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.234, i64 12, i32 noundef %4) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1254, i64 6) #31, !inline_history !865
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !23489
  %i.n = ptrtoint ptr %5 to i64
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19forEachRelocationDoERKNS2_13Elf_Shdr_ImplIS5_EENS1_12function_refIFvRKNS_10RelocationIS5_EEjSA_PS9_EEE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr nonnull @_ZN4llvm12function_refIFvRKN12_GLOBAL__N_110RelocationINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjRKNS3_13Elf_Shdr_ImplIS6_EEPSC_EE11callback_fnIZNS1_9ELFDumperIS6_E22printRelocationsHelperESD_EUlS9_jSD_SE_E_EEvlS9_jSD_SE_, i64 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(44) %i.j) #31, !inline_history !873
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE24printSectionGroupMembersENS1_9StringRefEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %0, ptr %1, i64 %2, i64 noundef %3) unnamed_addr #0 align 2 {
_ZN4llvm9DictScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !7838
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.f, ptr nonnull @.str.125, i64 4, ptr %1, i64 %2) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !29072, !nonnull !17, !align !165 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(44) %i.j, ptr nonnull @.str.1085, i64 5, i64 noundef %3) #31
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #31, !inline_history !876
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_113JSONELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE22printEmptyGroupMessageEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1152) dereferenceable(1152) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 640) (i8, ptr @_ZTVN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !3613, !range !163, !noundef !17
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !3613
  br i1 %i.j, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !90
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3615

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZNSt14_Optional_baseIN4llvm6object12VersionEntryELb0ELb0EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i
  tail call void @free(ptr noundef %i.p) #31
  br label %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8optionalINS_6object12VersionEntryEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !182  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !90
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_6object12VersionEntryEELj0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !98, !range !163, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !98
  br i1 %i.ab, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6966
  %i.ai = zext i32 %i.ad to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !546 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.an = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1905 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1907
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.az = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !6994

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !6995

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !6967 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !6954
  %i.bd = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #31
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt6vectorIjSaIjEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !24903 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24896
  %i.bo = zext i32 %i.bk to i64                   ; 2 uses
  %i.bp = mul nuw nsw i64 %i.bo, 24
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapImSt6vectorIjSaIjEENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS4_EEEELb0ELb0EED2Ev.exit, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !90
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit:        ; preds = %_ZN4llvm8DenseMapIPKNS_6object13Elf_Shdr_ImplINS1_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS4_0ELm1ELm1EEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !182 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !90
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !93, !range !163, !noundef !17
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.cg, align 8, !tbaa !93
  br i1 %i.ci, label %bb.i, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !182 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.co = add i64 %i.cn, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit: ; preds = %bb.i, %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !182 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !90
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6:       ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_113DynRegionInfoELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !90
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9:       ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !182 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !90
  %i.dg = add i64 %i.df, 1
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !182 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !90
  %i.dm = add i64 %i.dl, 1
  tail call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !182 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !90
  %i.ds = add i64 %i.dr, 1
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #32
  br label %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18

_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit18:      ; preds = %_ZN12_GLOBAL__N_113DynRegionInfoD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  tail call void @_ZN4llvm9ObjDumperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(1160) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1160) dereferenceable(1160) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1160) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE17printDynamicTableEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.615, align 8            ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_14
