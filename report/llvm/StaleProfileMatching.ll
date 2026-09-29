Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StaleProfileMatching?download=true
inline.NumInlined: 3349
inline.NumDeleted: 1846
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E15LookupBucketForIjEEbRKT_RPSG_:bb.a
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !339
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !341, !llvm.loop !3

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !339
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !243

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !431
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.584", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !350
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !348
  store ptr %i.y, ptr %i.q, align 8, !tbaa !349
  store i32 0, ptr %i.p, align 16, !tbaa !351
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !422
  %i.aa = load ptr, ptr %0, align 8, !tbaa !431
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !422
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !422
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !422
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !339 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !339
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !339
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !339
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !339
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !348
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !349
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !350  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !349  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !350
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !339  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !339  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !339
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, !llvm.loop !932

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !339
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = shl nuw i32 1, %i.ab
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !339
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.af, align 4, !tbaa !339
  %i.am = add i32 %.0.i18, -1
  %i.an = and i32 %i.am, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !933

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSB_EEEEjSB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !934

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !350
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !351
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !351
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !348
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairIPKNS_9FlowBlockEPKNS_4yaml4bolt23BinaryBasicBlockProfileEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSE_EEEEjSE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK4llvm4bolt12StaleMatcher16matchWithOpcodesENS0_16BlendedBlockHashE(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.020.0.extract.trunc = trunc i64 %1 to i16
  %.sroa.3.0.extract.shift = lshr i64 %1, 16      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i16 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %1, 32
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i16
  %.sroa.6.0.extract.shift = lshr i64 %1, 48
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %1, 56
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !222 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load i16, ptr %i.d, align 2, !tbaa !282
  %i.f = icmp eq i16 %i.e, %.sroa.3.0.extract.trunc
  br i1 %i.f, label %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit, label %bb.c, !llvm.loop !935

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %.sroa.3.0.extract.shift, 65535
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !253  ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !252
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !222  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i16, ptr %i.p, align 2, !tbaa !282
  %i.r = icmp eq i16 %i.q, %.sroa.3.0.extract.trunc
  br i1 %i.r, label %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i16 %i.v, %.sroa.3.0.extract.trunc
  br i1 %i.s, label %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !222 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !282  ; 2 uses
  %i.w = zext i16 %i.v to i64
  %i.x = urem i64 %i.w, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.x, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !9

_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !353  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !353 ; 2 uses
  %.not32 = icmp eq ptr %i.z, %i.ab
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit
  %i.ac = and i64 %1, 65535                       ; 2 uses
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.ad = xor i64 %.sroa.014.1, %1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit
  %.024.lcssa = phi ptr [ null, %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit ], [ %.125, %._crit_edge.loopexit ]
  %.sroa.014.0.lcssa = phi i64 [ %1, %_ZNKSt13unordered_mapItSt6vectorISt4pairIN4llvm4bolt16BlendedBlockHashEPNS2_9FlowBlockEESaIS7_EESt4hashItESt8equal_toItESaIS1_IKtS9_EEE4findERSE_.exit ], [ %i.ad, %._crit_edge.loopexit ]
  %i.ae = and i64 %.sroa.014.0.lcssa, 281470681743360
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i8
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.036 = phi i64 [ -1, %.lr.ph ], [ %.1, %bb.k ] ; 2 uses
  %.sroa.011.035 = phi ptr [ %i.z, %.lr.ph ], [ %i.be, %bb.k ] ; 7 uses
  %.sroa.014.034 = phi i64 [ 0, %.lr.ph ], [ %.sroa.014.1, %bb.k ]
  %.02433 = phi ptr [ null, %.lr.ph ], [ %.125, %bb.k ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.011.035, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !197
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.011.035, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !198
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.011.035, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !192
  %i.an = load i16, ptr %.sroa.011.035, align 2, !tbaa !66 ; 2 uses
  %i.ao = zext i16 %i.an to i64                   ; 2 uses
  %.not15.i = icmp ult i16 %i.an, %.sroa.020.0.extract.trunc
  %2 = sub nsw i64 %i.ao, %i.ac
  %i.ap = sub nsw i64 %i.ac, %i.ao
  %3 = select i1 %.not15.i, i64 %i.ap, i64 %2
  %i.aq = icmp ne i8 %i.ai, %.sroa.7.0.extract.trunc
  %i.ar = zext i1 %i.aq to i64
  %i.as = icmp ne i8 %i.ak, %.sroa.6.0.extract.trunc
  %i.at = zext i1 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %.not.i = icmp eq i16 %i.am, %.sroa.5.0.extract.trunc
  %i.av = shl nuw nsw i64 %i.au, 32
  %i.aw = select i1 %.not.i, i64 0, i64 65536
  %i.ax = or disjoint i64 %i.av, %i.aw
  %i.ay = add nsw i64 %i.ax, %3                   ; 2 uses
  %i.az = icmp eq ptr %.02433, null
  %i.ba = icmp ult i64 %i.ay, %.036
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.035, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !216
  %i.bd = load i64, ptr %.sroa.011.035, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.125 = phi ptr [ %i.bc, %bb.j ], [ %.02433, %bb.i ] ; 2 uses
  %.sroa.014.1 = phi i64 [ %i.bd, %bb.j ], [ %.sroa.014.034, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %i.ay, %bb.j ], [ %.036, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.035, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.ab
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %._crit_edge
  %.sroa.022.0 = phi ptr [ %.024.lcssa, %._crit_edge ], [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.323.0 = phi i8 [ %i.ag, %._crit_edge ], [ 0, %..loopexit_crit_edge21.i.i.i.i ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i.i.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.022.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.323.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK4llvm4bolt12StaleMatcher21matchWithPseudoProbesENS_8ArrayRefINS_4yaml4bolt15PseudoProbeInfoEEERKNS0_17YAMLProfileReader19InlineTreeNodeMapTyE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::DenseMap.812", align 8 ; 8 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 120), align 8, !tbaa !261, !range !29, !noundef !30
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.idx = mul nuw nsw i64 %2, 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not81 = icmp eq i64 %2, 0
  br i1 %.not81, label %_ZN4llvm8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.d

._crit_edge85:                                    ; preds = %._crit_edge80
  %.pre109 = load i32, ptr %i.j, align 4, !tbaa !434, !noalias !967 ; 2 uses
  %.pre111 = load i32, ptr %i.k, align 8, !tbaa !435, !noalias !967
  %i.l = icmp eq i32 %.pre111, 0
  %i.m = zext i32 %.pre109 to i64                 ; 6 uses
  %.idx177 = shl nuw nsw i64 %i.m, 4              ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %.pre109, 0       ; 4 uses
  %or.cond60 = select i1 %i.l, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond60, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge85
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5                         ; 2 uses
  %i.p = load i32, ptr %i.al, align 4, !tbaa !339, !noalias !968 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.r = icmp eq i64 %i.o, 1
  br i1 %i.r, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit.thread, label %.lr.ph202

.lr.ph.i.i.i:                                     ; preds = %.lr.ph202
  %i.s = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.o
  br i1 %i.t, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit.thread, label %.lr.ph202, !llvm.loop !940

.lr.ph202:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.u = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !339, !noalias !968 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !940

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph202
  %i.y = shl i64 %i.u, 9
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit.thread: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %._crit_edge85
  br i1 %.not.i.not.i.i, label %_ZN4llvm8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.s

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit: ; preds = %bb.c, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.y, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.p, %bb.c ], [ %i.w, %._crit_edge.i.loopexit.i.i ]
  %i.z = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.aa = shl nuw nsw i32 %i.z, 4
  %.idx176 = zext nneg i32 %i.aa to i64
  %i.ab = or disjoint i64 %.012.lcssa.i.i.i, %.idx176 ; 2 uses
  %.not6386 = icmp eq i64 %i.ab, %.idx177
  br i1 %.not6386, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit
  %i.ac = add nuw nsw i64 %i.m, 31
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  br label %bb.t

bb.d:                                             ; preds = %.lr.ph84, %._crit_edge80
  %i.ae = phi ptr [ null, %.lr.ph84 ], [ %i.al, %._crit_edge80 ] ; 2 uses
  %i.af = phi ptr [ null, %.lr.ph84 ], [ %.pre107, %._crit_edge80 ] ; 2 uses
  %.02982 = phi ptr [ %1, %.lr.ph84 ], [ %i.am, %._crit_edge80 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02982, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !969 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02982, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !969 ; 2 uses
  %.not6176 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not6176, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.02982, i64 8
  br label %bb.e

._crit_edge80:                                    ; preds = %._crit_edge, %bb.d
  %i.al = phi ptr [ %i.ae, %bb.d ], [ %i.at, %._crit_edge ] ; 5 uses
  %.pre107 = phi ptr [ %i.af, %bb.d ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02982, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.c
  br i1 %.not, label %._crit_edge85, label %bb.d

bb.e:                                             ; preds = %.lr.ph79, %._crit_edge
  %i.an = phi ptr [ %i.ae, %.lr.ph79 ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.ao = phi ptr [ %i.af, %.lr.ph79 ], [ %i.au, %._crit_edge ] ; 2 uses
  %.sroa.048.077 = phi ptr [ %i.ah, %.lr.ph79 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.048.077, align 4, !tbaa !339 ; 2 uses
  %i.aq = load ptr, ptr %.02982, align 8, !tbaa !360 ; 2 uses
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !360 ; 2 uses
  %.not6274 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not6274, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.as = mul i32 %i.ap, 37
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit, %bb.e
  %i.at = phi ptr [ %i.an, %bb.e ], [ %i.ho, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit ] ; 2 uses
  %i.au = phi ptr [ %i.ao, %bb.e ], [ %i.hp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.048.077, i64 4 ; 2 uses
  %.not61 = icmp eq ptr %i.av, %i.aj
  br i1 %.not61, label %._crit_edge80, label %bb.e

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit
  %i.aw = phi ptr [ %i.an, %.lr.ph ], [ %i.ho, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit ] ; 4 uses
  %i.ax = phi ptr [ %i.ao, %.lr.ph ], [ %i.hp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit ] ; 4 uses
  %.sroa.044.075 = phi ptr [ %i.aq, %.lr.ph ], [ %i.hr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9FlowBlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit ] ; 2 uses
  %i.ay = load i64, ptr %.sroa.044.075, align 8, !tbaa !36 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !972, !noalias !973 ; 3 uses
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !974, !noalias !973 ; 2 uses
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !975, !noalias !973 ; 4 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = add i32 %i.bb, -1                       ; 2 uses
  %.017.i.i.i.i.i = and i32 %i.bd, %i.as          ; 3 uses
  %i.be = zext i32 %.017.i.i.i.i.i to i64         ; 2 uses
  %i.bf = lshr i64 %i.be, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !339, !noalias !976
  %i.bi = and i32 %.017.i.i.i.i.i, 31
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !340

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = add nuw i32 %.018.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.bl, %i.bd            ; 3 uses
  %i.bm = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.bn = lshr i64 %i.bm, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !339, !noalias !976
  %i.bq = and i32 %.0.i.i.i.i.i, 31
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !341

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %i.bt = phi i64 [ %i.bm, %bb.h ], [ %i.be, %bb.g ]
  %.018.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.h ], [ %.017.i.i.i.i.i, %bb.g ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !339, !noalias !976
  %i.bw = icmp eq i32 %i.ap, %i.bv
  br i1 %i.bw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPKNS_30MCDecodedPseudoProbeInlineTreeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.loopexit.i.i, label %bb.h, !prof !243

.loopexit.i.i.i.i:                                ; preds = %bb.h, %bb.g, %bb.f
  %i.bx = zext i32 %i.bb to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bx
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjPKNS_30MCDecodedPseudoProbeInlineTreeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i.i

end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_StaleProfileMatching.cpp:bb.a
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL29StaleMatchingRebalanceUnknownE) #19
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4optsL29StaleMatchingRebalanceUnknownE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL24StaleMatchingJoinIslandsE, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 120), align 8, !tbaa !261
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4optsL24StaleMatchingJoinIslandsE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingJoinIslandsE, ptr nonnull align 1 dereferenceable(28) @.str.15, i64 27) #19
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 32), align 8, !tbaa !1049
  store i64 46, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 40), align 8, !tbaa !36
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 120), align 8, !tbaa !261
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 137), align 1, !tbaa !441
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 136), align 8, !tbaa !1050
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 10), align 2
  %i.v = and i16 %i.u, -97
  %i.w = or disjoint i16 %i.v, 64
  store i16 %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingJoinIslandsE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingJoinIslandsE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingJoinIslandsE) #19
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4optsL24StaleMatchingJoinIslandsE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL25StaleMatchingCostBlockIncE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL25StaleMatchingCostBlockIncE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL25StaleMatchingCostBlockIncE, ptr nonnull align 1 dereferenceable(30) @.str.18, i64 29) #19
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 32), align 8, !tbaa !1049
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 40), align 8, !tbaa !36
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 140), align 4, !tbaa !442
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 136), align 8, !tbaa !1051
  %i.y = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 10), align 2
  %i.z = and i16 %i.y, -97
  %i.aa = or disjoint i16 %i.z, 64
  store i16 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockIncE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL25StaleMatchingCostBlockIncE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL25StaleMatchingCostBlockIncE) #19
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL25StaleMatchingCostBlockIncE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL25StaleMatchingCostBlockDecE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL25StaleMatchingCostBlockDecE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL25StaleMatchingCostBlockDecE, ptr nonnull align 1 dereferenceable(30) @.str.21, i64 29) #19
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 32), align 8, !tbaa !1049
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 40), align 8, !tbaa !36
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 140), align 4, !tbaa !442
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 136), align 8, !tbaa !1051
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 10), align 2
  %i.ad = and i16 %i.ac, -97
  %i.ae = or disjoint i16 %i.ad, 64
  store i16 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL25StaleMatchingCostBlockDecE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL25StaleMatchingCostBlockDecE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL25StaleMatchingCostBlockDecE) #19
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL25StaleMatchingCostBlockDecE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL24StaleMatchingCostJumpIncE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL24StaleMatchingCostJumpIncE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingCostJumpIncE, ptr nonnull align 1 dereferenceable(29) @.str.24, i64 28) #19
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 32), align 8, !tbaa !1049
  store i64 43, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 40), align 8, !tbaa !36
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 140), align 4, !tbaa !442
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 136), align 8, !tbaa !1051
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 10), align 2
  %i.ah = and i16 %i.ag, -97
  %i.ai = or disjoint i16 %i.ah, 64
  store i16 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpIncE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingCostJumpIncE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingCostJumpIncE) #19
  %i.aj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL24StaleMatchingCostJumpIncE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL24StaleMatchingCostJumpDecE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL24StaleMatchingCostJumpDecE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingCostJumpDecE, ptr nonnull align 1 dereferenceable(29) @.str.27, i64 28) #19
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 32), align 8, !tbaa !1049
  store i64 43, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 40), align 8, !tbaa !36
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 140), align 4, !tbaa !442
  store i32 150, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 136), align 8, !tbaa !1051
  %i.ak = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 10), align 2
  %i.al = and i16 %i.ak, -97
  %i.am = or disjoint i16 %i.al, 64
  store i16 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL24StaleMatchingCostJumpDecE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingCostJumpDecE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL24StaleMatchingCostJumpDecE) #19
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL24StaleMatchingCostJumpDecE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, ptr nonnull align 1 dereferenceable(38) @.str.30, i64 37) #19
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 32), align 8, !tbaa !1049
  store i64 53, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 40), align 8, !tbaa !36
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 140), align 4, !tbaa !442
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 136), align 8, !tbaa !1051
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 10), align 2
  %i.ap = and i16 %i.ao, -97
  %i.aq = or disjoint i16 %i.ap, 64
  store i16 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL32StaleMatchingCostBlockUnknownIncE) #19
  %i.ar = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL32StaleMatchingCostBlockUnknownIncE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, ptr nonnull align 1 dereferenceable(37) @.str.33, i64 36) #19
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 32), align 8, !tbaa !1049
  store i64 52, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 40), align 8, !tbaa !36
  store i32 140, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 140), align 4, !tbaa !442
  store i32 140, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 136), align 8, !tbaa !1051
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 64
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL31StaleMatchingCostJumpUnknownIncE) #19
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL31StaleMatchingCostJumpUnknownIncE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i32 noundef 0, i32 noundef 0) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 120), align 8, !tbaa !372
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, ptr nonnull align 1 dereferenceable(40) @.str.36, i64 39) #19
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 32), align 8, !tbaa !1049
  store i64 65, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 40), align 8, !tbaa !36
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 120), align 8, !tbaa !372
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 140), align 4, !tbaa !442
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 136), align 8, !tbaa !1051
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 64
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE) #19
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4optsL33StaleMatchingCostJumpUnknownFTIncE, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4opts29StaleMatchingWithPseudoProbesE, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 120), align 8, !tbaa !261
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 128), align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 144), align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4opts29StaleMatchingWithPseudoProbesE, ptr nonnull align 1 dereferenceable(34) @.str.39, i64 33) #19
  store ptr @.str.40, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 32), align 8, !tbaa !1049
  store i64 49, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 40), align 8, !tbaa !36
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 120), align 8, !tbaa !261
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 137), align 1, !tbaa !441
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 136), align 8, !tbaa !1050
  %i.ba = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 10), align 2
  %i.bb = and i16 %i.ba, -97
  %i.bc = or disjoint i16 %i.bb, 64
  store i16 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts29StaleMatchingWithPseudoProbesE, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4opts29StaleMatchingWithPseudoProbesE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #19
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4opts29StaleMatchingWithPseudoProbesE) #19
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4opts29StaleMatchingWithPseudoProbesE, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null}
!1 = distinct !{!1, !195}
!2 = distinct !{!2, !195}
!3 = distinct !{!3, !195}
!4 = distinct !{!4, !195}
!5 = distinct !{!5, !195}
!6 = distinct !{!6, !195}
!7 = distinct !{!7, !195}
!8 = distinct !{!8, !195}
!9 = distinct !{!9, !195}
!10 = distinct !{!10, !195}
!11 = distinct !{!11, !195}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"vtable pointer", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !16, i64 0}
!23 = !{!"_ZTSSt14_Function_base", !16, i64 0, !22, i64 16}
!24 = !{!23, !22, i64 16}
!25 = !{!"any p2 pointer", !22, i64 0}
!26 = !{!"bool", !16, i64 0}
!27 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !25, i64 0, !17, i64 8, !17, i64 12, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!27, !25, i64 0}
!32 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !22, i64 0, !17, i64 8, !17, i64 12}
!33 = !{!32, !22, i64 0}
!34 = !{!32, !17, i64 8}
!35 = !{!"long", !16, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTSN4llvm4bolt16BinaryBasicBlockE", !22, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSN4llvm6MCInstE", !22, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIN4llvm6MCInstESaIS1_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIN4llvm6MCInstESaIS1_EE", !42, i64 0}
!44 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_4bolt16BinaryBasicBlockEvEE", !32, i64 0}
!45 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEE", !46, i64 0}
!48 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEvEE", !32, i64 0}
!49 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELb1EEE", !48, i64 0}
!50 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEEE", !49, i64 0}
!51 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EEE", !50, i64 0}
!52 = !{!"p1 _ZTSN4llvm4bolt14BinaryFunctionE", !22, i64 0}
!53 = !{!"p1 _ZTSN4llvm8MCSymbolE", !22, i64 0}
!54 = !{!"_ZTSSt4pairIjjE", !17, i64 0, !17, i64 4}
!55 = !{!"p1 _ZTSSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS5_EE", !22, i64 0}
!56 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EELb0EE", !55, i64 0}
!57 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !56, i64 0}
!58 = !{!"_ZTSSt5tupleIJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !57, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_ELb1ELb1EE", !59, i64 0}
!61 = !{!"_ZTSSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !60, i64 0}
!62 = !{!"_ZTSN4llvm4bolt11FragmentNumE", !17, i64 0}
!63 = !{!"_ZTSN4llvm4bolt16BinaryBasicBlockE", !43, i64 0, !47, i64 24, !47, i64 40, !51, i64 56, !47, i64 72, !47, i64 88, !52, i64 104, !53, i64 112, !54, i64 120, !54, i64 128, !61, i64 136, !17, i64 144, !17, i64 148, !35, i64 152, !17, i64 160, !17, i64 164, !17, i64 168, !17, i64 172, !62, i64 176, !26, i64 180, !26, i64 181, !35, i64 184}
!64 = !{!"short", !16, i64 0}
!65 = !{!"_ZTSN4llvm4bolt16BlendedBlockHashE", !64, i64 0, !64, i64 2, !64, i64 4, !16, i64 6, !16, i64 7}
!66 = !{!65, !64, i64 0}
!67 = !{!"_ZTSN4llvm4bolt14BinaryFunction5StateE", !16, i64 0}
!68 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_8MCSymbolEvEE", !32, i64 0}
!69 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_8MCSymbolELb1EEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_8MCSymbolEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_8MCSymbolELj1EEE", !16, i64 0}
!72 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj1EEE", !70, i64 0, !71, i64 16}
!73 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE", !32, i64 0}
!74 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !74, i64 0}
!76 = !{!"_ZTSN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEE", !75, i64 0}
!77 = !{!"p1 _ZTSN4llvm4bolt13BinarySectionE", !22, i64 0}
!78 = !{!"p1 _ZTSN4llvm4bolt13BinaryContextE", !22, i64 0}
!79 = !{!"p1 _ZTSN4llvm4bolt14BinaryLoopInfoE", !22, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm4bolt14BinaryLoopInfoELb0EE", !79, i64 0}
!81 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !80, i64 0}
!82 = !{!"_ZTSSt5tupleIJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !81, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_ELb1ELb1EE", !83, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !84, i64 0}
!86 = !{!"p1 _ZTSN4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEE", !22, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEELb0EE", !86, i64 0}
!88 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !87, i64 0}
!89 = !{!"_ZTSSt5tupleIJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_ELb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !91, i64 0}
!93 = !{!"_ZTSSt4lessImE"}
!94 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !93, i64 0}
!95 = !{!"_ZTSSt14_Rb_tree_color", !16, i64 0}
!96 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!97 = !{!"_ZTSSt18_Rb_tree_node_base", !95, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!98 = !{!"_ZTSSt15_Rb_tree_header", !97, i64 0, !35, i64 32}
!99 = !{!"_ZTSNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_Rb_tree_implIS3_Lb1EEE", !94, i64 0, !98, i64 8}
!100 = !{!"_ZTSSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE", !99, i64 0}
!101 = !{!"_ZTSSt3setImSt4lessImESaImEE", !100, i64 0}
!102 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairImEE", !22, i64 0}
!103 = !{!"p1 int", !22, i64 0}
!104 = !{!"_ZTSN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEE", !102, i64 0, !103, i64 8, !17, i64 16, !17, i64 20}
!105 = !{!"_ZTSN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm8DenseSetImNS_12DenseMapInfoImvEEEE", !105, i64 0}
!107 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPS2_EE", !22, i64 0}
!108 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE", !107, i64 0, !103, i64 8, !17, i64 16, !17, i64 20}
!109 = !{!"p1 omnipotent char", !22, i64 0}
!110 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !109, i64 0}
!111 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !110, i64 0, !35, i64 8, !16, i64 16}
!112 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_4bolt14BinaryFunctionEEE", !27, i64 0}
!113 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_4bolt14BinaryFunctionELj1EEE", !112, i64 0, !16, i64 24}
!114 = !{!"float", !16, i64 0}
!115 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt19IndirectCallProfileEvEE", !32, i64 0}
!116 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt19IndirectCallProfileELb1EEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt19IndirectCallProfileEEE", !116, i64 0}
!118 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4bolt19IndirectCallProfileELj4EEE", !16, i64 0}
!119 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EEE", !117, i64 0, !118, i64 16}
!120 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImPNS_9DWARFUnitEEE", !22, i64 0}
!121 = !{!"_ZTSN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEE", !120, i64 0, !103, i64 8, !17, i64 16, !17, i64 20}
!122 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockEEE", !22, i64 0}
!123 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !122, i64 0, !103, i64 8, !17, i64 16, !17, i64 20}
!124 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIjjEvEE", !32, i64 0}
!125 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EEE", !124, i64 0}
!126 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIjjEEE", !125, i64 0}
!127 = !{!"_ZTSN4llvm11SmallVectorISt4pairIjjELj0EEE", !126, i64 0}
!128 = !{!"_ZTSSt4lessIjE"}
!129 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !128, i64 0}
!130 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !129, i64 0, !98, i64 8}
!131 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE", !130, i64 0}
!132 = !{!"_ZTSSt3mapIjPN4llvm8MCSymbolESt4lessIjESaISt4pairIKjS2_EEE", !131, i64 0}
!133 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !129, i64 0, !98, i64 8}
!134 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !133, i64 0}
!135 = !{!"_ZTSSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE", !134, i64 0}
!136 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_16MCCFIInstructionEvEE", !32, i64 0}
!137 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EEE", !136, i64 0}
!138 = !{!"_ZTSN4llvm15SmallVectorImplINS_16MCCFIInstructionEEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm11SmallVectorINS_16MCCFIInstructionELj0EEE", !138, i64 0}
!140 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIiNS_11SmallVectorIiLj4EEEEE", !22, i64 0}
!141 = !{!"_ZTSN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEE", !140, i64 0, !103, i64 8, !17, i64 16, !17, i64 20}
!142 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEvEE", !32, i64 0}
!143 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EEE", !144, i64 0}
!146 = !{!"_ZTSN4llvm8ArrayRefIhEE", !109, i64 0, !35, i64 8}
!147 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !32, i64 0}
!148 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !147, i64 0}
!149 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !148, i64 0}
!150 = !{!"_ZTSN4llvm11SmallVectorImLj0EEE", !149, i64 0}
!151 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj0EEE", !70, i64 0}
!152 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt8optionalINS_4bolt11FragmentNumEEvEE", !32, i64 0}
!153 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt8optionalINS_4bolt11FragmentNumEELb1EEE", !152, i64 0}
!154 = !{!"_ZTSN4llvm15SmallVectorImplISt8optionalINS_4bolt11FragmentNumEEEE", !153, i64 0}
!155 = !{!"_ZTSN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EEE", !154, i64 0}
!156 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !129, i64 0, !98, i64 8}
!157 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE", !156, i64 0}
!158 = !{!"_ZTSSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE", !157, i64 0}
!159 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !94, i64 0, !98, i64 8}
!160 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE", !159, i64 0}
!161 = !{!"_ZTSSt3mapImPN4llvm4bolt9JumpTableESt4lessImESaISt4pairIKmS3_EEE", !160, i64 0}
!162 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairImmEvEE", !32, i64 0}
!163 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EEE", !162, i64 0}
!164 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairImmEEE", !163, i64 0}
!165 = !{!"_ZTSN4llvm11SmallVectorISt4pairImmELj0EEE", !164, i64 0}
!166 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !94, i64 0, !98, i64 8}
!167 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE", !166, i64 0}
!168 = !{!"_ZTSSt3mapImN4llvm4bolt10RelocationESt4lessImESaISt4pairIKmS2_EEE", !167, i64 0}
end_hunk_1
