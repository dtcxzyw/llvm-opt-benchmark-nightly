Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DarwinSDKInfo?download=true
inline.NumInlined: 1618
inline.NumDeleted: 787
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = load ptr, ptr %0, align 8, !tbaa !23
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 5                   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = lshr i64 %i.u, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %i.ab = or i32 %i.x, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !26
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !47
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array", align 4       ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23, !noalias !243 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24, !noalias !243 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25, !noalias !243 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 4                ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i64 %i.h, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = and i32 %i.k, 2147483647
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 4              ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 2147483647
  %i.q = lshr i64 %i.n, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 1048575
  %i.t = lshr i64 %i.n, 52
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1023
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 %i.i, ptr %3, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.l, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.s, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.v, ptr %i.z, align 4
  %i.aa = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = xor i32 %i.ab, -313160499
  %.025 = and i32 %i.ac, %i.g                     ; 3 uses
  %i.ad = zext i32 %.025 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26
  %i.ai = and i32 %.025, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread.lr.ph, label %.thread, !prof !27

_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread.lr.ph: ; preds = %bb.b
  %i.al = load i64, ptr %1, align 4, !noalias !244 ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = load i64, ptr %i.m, align 4, !noalias !244
  br label %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread
  %i.ao = add nuw i32 %.026, 1
  %.0 = and i32 %i.ao, %i.g                       ; 3 uses
  %i.ap = zext i32 %.0 to i64                     ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = lshr i64 %i.ap, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !26
  %i.au = and i32 %.0, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread, label %.thread, !prof !28, !llvm.loop !240

_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread: ; preds = %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread.lr.ph, %bb.c
  %i.ax = phi ptr [ %i.ae, %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread.lr.ph ], [ %i.aq, %bb.c ] ; 3 uses
  %.026 = phi i32 [ %.025, %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread.lr.ph ], [ %.0, %bb.c ]
  %i.ay = load i64, ptr %i.ax, align 4, !noalias !245 ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 4, !noalias !245
  %i.bc = icmp eq i32 %i.am, %i.az
  %i.bd = xor i64 %i.ay, %i.al
  %i.be = and i64 %i.bd, 9223372032559808512
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond.i.i = and i1 %i.bc, %i.bf
  %i.bg = xor i64 %i.bb, %i.an
  %i.bh = and i64 %i.bg, 4611686016279904255
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond = select i1 %or.cond.i.i, i1 %i.bi, i1 false ; 3 uses
  br i1 %or.cond, label %.thread, label %bb.c, !prof !29

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread, %bb.c, %bb.b, %bb.a
  %.lcssa31.sink = phi ptr [ %i.ae, %bb.b ], [ null, %bb.a ], [ %i.aq, %bb.c ], [ %i.ax, %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %or.cond, %bb.c ], [ %or.cond, %_ZN4llvm12DenseMapInfoINS_12VersionTupleEvE7isEqualERKS1_S4_.exit.thread ]
  store ptr %.lcssa31.sink, ptr %2, align 8, !tbaa !49
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #15 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !23
  store ptr %i.y, ptr %i.q, align 8, !tbaa !24
  store i32 0, ptr %i.p, align 16, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !48
  %i.aa = load ptr, ptr %0, align 8, !tbaa !49
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !48
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !48
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !26
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !26
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !26
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_12VersionTupleES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 5
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #15
  br label %_ZN4llvm8DenseMapINS_12VersionTupleES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_12VersionTupleES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 4       ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.s, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.t = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.s, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.w ; 4 uses
  %i.y = load i64, ptr %i.x, align 4              ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i64 %i.y, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 2147483647
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i64, ptr %i.ad, align 4            ; 3 uses
  %4 = trunc i64 %i.ae to i32
  %5 = and i32 %4, 2147483647
  %6 = lshr i64 %i.ae, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = and i32 %7, 1048575
  %i.af = lshr i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1023
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 %i.z, ptr %2, align 4
  store i32 %i.ac, ptr %3, align 4
  store i32 %5, ptr %i.o, align 4
  store i32 %8, ptr %i.p, align 4
  store i32 %i.ah, ptr %i.q, align 4
  %i.ai = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = xor i32 %i.aj, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi i32 [ %i.ak, %bb.c ], [ %i.as, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.al = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !26
  %i.ap = and i32 %.0.i7, 31                      ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i7, 1
  br i1 %i.ar, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !246

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.al ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !17
  %i.ax = shl nuw i32 1, %i.ap
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !26
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.at, align 4, !tbaa !26
  %i.ba = add i32 %.0.i21, -1
  %i.bb = and i32 %i.ba, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !247

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12VersionTupleES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !248

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !25
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !47
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapINS_12VersionTupleES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !23
  %i.bi = zext i32 %i.bc to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 4) #15
  store i32 0, ptr %i.d, align 4, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_12VersionTupleES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_12VersionTupleES1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12VersionTupleES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E24lookupOrInsertIntoBucketImJEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !83, !noalias !253 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84, !noalias !253 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82, !noalias !253 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !27

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E15LookupBucketForImEEbRKT_RPSB_.exit, label %bb.c, !prof !66

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !28, !llvm.loop !7

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !86
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit, label %bb.d, !prof !66

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E15LookupBucketForImEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !80
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !84
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 104               ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !26
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !86
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !44
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i8 0, ptr %i.bh, align 8, !tbaa !46
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E15LookupBucketForImEEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E15LookupBucketForImEEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E22findBucketForInsertionImEEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E15LookupBucketForImEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83, !noalias !258 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84, !noalias !258 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82, !noalias !258 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
end_hunk_0
