Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APINotesWriter?download=true
inline.NumInlined: 8467
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_:bb.a
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !61
  %i.v = zext i32 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 %i.r, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.z = load i32, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %.idx.i = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i
  %.sroa.011.014.i = xor i64 %i.x, -49064778989728563 ; 2 uses
  %.not15.i = icmp eq i32 %i.z, 0
  br i1 %.not15.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.011.017.i = phi i64 [ %.sroa.011.014.i, %.lr.ph.i ], [ %.sroa.011.0.i, %bb.c ]
  %.016.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ad = load i64, ptr %.016.i, align 8, !tbaa !126
  %i.ae = lshr i64 %i.ad, 33
  %i.af = trunc nuw nsw i64 %i.ae to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %.sroa.011.017.i, ptr %3, align 8
  store i32 %i.af, ptr %i.ac, align 8
  %i.ag = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %.sroa.011.0.i = xor i64 %i.ag, -49064778989728563 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit, label %bb.c

_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit: ; preds = %bb.c, %bb.b
  %.sroa.011.0.lcssa.i = phi i64 [ %.sroa.011.014.i, %bb.b ], [ %.sroa.011.0.i, %bb.c ]
  %i.ai = trunc i64 %.sroa.011.0.lcssa.i to i32
  %i.aj = and i32 %i.g, %i.ai                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = and i32 %i.aj, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit, %bb.d
  %i.as = phi ptr [ %i.ax, %bb.d ], [ %i.al, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit ] ; 2 uses
  %.024 = phi i32 [ %i.av, %bb.d ], [ %i.aj, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit ]
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.as) ; 3 uses
  br i1 %i.at, label %.thread, label %bb.d, !prof !183

bb.d:                                             ; preds = %.lr.ph
  %i.au = add nuw i32 %.024, 1
  %i.av = and i32 %i.au, %i.g                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !51
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !907

.thread:                                          ; preds = %.lr.ph, %bb.d, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit, %bb.a
  %.lcssa28.sink = phi ptr [ %i.al, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit ], [ null, %bb.a ], [ %i.ax, %bb.d ], [ %i.as, %.lr.ph ]
  %.2 = phi i1 [ false, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit ], [ false, %bb.a ], [ %i.at, %bb.d ], [ %i.at, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !901
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !478
  %i.b = load i32, ptr %1, align 8, !tbaa !478
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEeqERKS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61
  %.not.i = icmp eq i32 %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %_ZNK4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEeqERKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = zext i32 %i.f to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not9.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEeqERKS3_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.n = load i64, ptr %.0810.i.i.i.i.i, align 8, !tbaa !171
  %i.o = load i64, ptr %.011.i.i.i.i.i, align 8, !tbaa !171
  %.unshifted.i.i.i.i.i = xor i64 %i.o, %i.n
  %i.p = icmp ult i64 %.unshifted.i.i.i.i.i, 8589934592 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp ne ptr %i.q, %i.l
  %or.cond.not = select i1 %i.p, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEeqERKS3_.exit, !llvm.loop !908

_ZNK4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEeqERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.s
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.31", align 16 ; 10 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !458
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !453
  store ptr %i.y, ptr %i.q, align 8, !tbaa !457
  store i32 0, ptr %i.p, align 16, !tbaa !446
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !901    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !849 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store ptr %i.z, ptr %2, align 16, !tbaa !901
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !179
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !849
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !51
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !51
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !51
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !909

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !910

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !458 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !453
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 48
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.381", align 8   ; 5 uses
  %3 = alloca %"struct.std::array", align 8       ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !453
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !457
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !458  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !457  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !453
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !458
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph21, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.r, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.s = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.r, %.lr.ph ], [ %i.cq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.v ; 9 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !478
  %i.y = zext i32 %i.x to i64
  %i.z = xor i64 %i.y, -49064778989728563         ; 2 uses
  %i.aa = lshr i64 %i.z, 30
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 27
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -7723592293110705685     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !61
  %i.al = zext i32 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %i.ah, ptr %3, align 8
  store i64 %i.al, ptr %i.o, align 8
  %i.am = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx.i.i = shl nuw nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i
  %.sroa.011.014.i.i = xor i64 %i.am, -49064778989728563 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not15.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.011.017.i.i = phi i64 [ %.sroa.011.0.i.i, %.lr.ph.i.i ], [ %.sroa.011.014.i.i, %bb.c ]
  %.016.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.ar = load i64, ptr %.016.i.i, align 8, !tbaa !126
  %i.as = lshr i64 %i.ar, 33
  %i.at = trunc nuw nsw i64 %i.as to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %.sroa.011.017.i.i, ptr %2, align 8
  store i32 %i.at, ptr %i.p, align 8
  %i.au = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.av = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8 ; 2 uses
  %.sroa.011.0.i.i = xor i64 %i.au, -49064778989728563 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i, label %.lr.ph.i.i

_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.011.0.lcssa.i.i = phi i64 [ %.sroa.011.014.i.i, %bb.c ], [ %.sroa.011.0.i.i, %.lr.ph.i.i ]
  %i.aw = trunc i64 %.sroa.011.0.lcssa.i.i to i32
  %i.ax = and i32 %i.k, %i.aw                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51
  %i.bc = and i32 %i.ax, 31                       ; 2 uses
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i, %.lr.ph.i
  %.014.i = phi i32 [ %i.bg, %.lr.ph.i ], [ %i.ax, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i ]
  %i.bf = add i32 %.014.i, 1
  %i.bg = and i32 %i.bf, %i.k                     ; 3 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = and i32 %i.bg, 31                       ; 2 uses
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !911

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i
  %.lcssa12.i = phi i64 [ %i.ay, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i ], [ %i.bh, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.az, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i ], [ %i.bi, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.bc, %_ZN4llvm12DenseMapInfoIN5clang9api_notes18StoredObjCSelectorEvE12getHashValueERKS3_.exit.i ], [ %i.bl, %.lr.ph.i ]
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 7 uses
  %i.bp = load i32, ptr %i.w, align 8, !tbaa !478
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !478
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  store i32 2, ptr %i.bt, align 4, !tbaa !63
  %i.bu = load i32, ptr %i.aj, align 8, !tbaa !61 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  %i.bv = icmp eq ptr %i.bo, %i.w
  %or.cond = or i1 %i.bv, %.not.i.i.i.i
  br i1 %or.cond, label %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.e, label %_ZN4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !65
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !63
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !63
  store ptr %i.bx, ptr %i.ai, align 8, !tbaa !65
  store i32 0, ptr %i.bz, align 4, !tbaa !63
  br label %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.cb = zext i32 %i.bu to i64                   ; 2 uses
  %i.cc = icmp ugt i32 %i.bu, 2
  br i1 %i.cc, label %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull %i.br, i64 noundef %i.cb, i64 noundef 8) #17
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %.pre26 = zext i32 %.pre to i64
  %.not.i.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18PointerEmbeddedIntIjLi31EEELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi37 = phi i64 [ %.pre26, %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i ], [ %i.cb, %bb.e ]
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !65
  %gepdiff.i = shl nuw nsw i64 %.pre-phi37, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 8 %i.cd, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18PointerEmbeddedIntIjLi31EEELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_18PointerEmbeddedIntIjLi31EEELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPN4llvm18PointerEmbeddedIntIjLi31EEES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !61
  br label %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i.sink.split

_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_18PointerEmbeddedIntIjLi31EEELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.aj, align 8, !tbaa !61
  br label %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i

_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i: ; preds = %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i.sink.split, %._crit_edge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !126
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !126
  %i.ci = shl nuw i32 1, %.lcssa.i
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !51
  %i.cl = or i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !51
  %i.cm = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i
  call void @free(ptr noundef %i.cm) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN5clang9api_notes18StoredObjCSelectorC2EOS1_.exit.i, %bb.f
  %i.cp = add i32 %.0.i17, -1
  %i.cq = and i32 %i.cp, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !912

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !913

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre25 = load i32, ptr %i.d, align 4, !tbaa !458
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cr = phi i32 [ %.pre25, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !446
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !446
  %i.cv = icmp eq i32 %i.cr, 0
  br i1 %i.cv, label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.cw = load ptr, ptr %1, align 8, !tbaa !453
  %i.cx = zext i32 %i.cr to i64                   ; 2 uses
  %i.cy = mul nuw nsw i64 %i.cx, 48
  %i.cz = add nuw nsw i64 %i.cx, 31
  %i.da = lshr i64 %i.cz, 3
  %i.db = and i64 %i.da, 1073741820
  %i.dc = add nuw nsw i64 %i.db, %i.cy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cw, i64 noundef %i.dc, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !458
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.g
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11TypedefInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_T0_:bb.a
  %i.en = trunc nuw i8 %i.em to i1
  store i8 0, ptr %i.bs, align 8, !tbaa !642
  br i1 %i.en, label %bb.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang9api_notes12_GLOBAL__N_117emitVersionedInfoINS3_11TypedefInfoEEEvRN4llvm11raw_ostreamERNS7_15SmallVectorImplISt4pairINS7_12VersionTupleET_EEENS7_12function_refIFvS9_RKNS4_13MakeDependentISD_E4TypeEEEEEUlRKSB_ISC_S6_ESR_E_EclISP_PSP_EEbRSD_T0_.exit.thread13
  %i.eo = load ptr, ptr %i.bp, align 8, !tbaa !66 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !60
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang9api_notes12_GLOBAL__N_117emitVersionedInfoINS3_11TypedefInfoEEEvRN4llvm11raw_ostreamERNS7_15SmallVectorImplISt4pairINS7_12VersionTupleET_EEENS7_12function_refIFvS9_RKNS4_13MakeDependentISD_E4TypeEEEEEUlRKSB_ISC_S6_ESR_E_EclISP_PSP_EEbRSD_T0_.exit.thread13
  %i.et = load i8, ptr %i.ba, align 8, !tbaa !642, !range !343, !noundef !344
  %i.eu = trunc nuw i8 %i.et to i1
  store i8 0, ptr %i.ba, align 8, !tbaa !642
  br i1 %i.eu, label %bb.r, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.r:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ev = load ptr, ptr %i.ax, align 8, !tbaa !66 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.r
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !60
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.fa = load i8, ptr %i.ai, align 8, !tbaa !642, !range !343, !noundef !344
  %i.fb = trunc nuw i8 %i.fa to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !642
  br i1 %i.fb, label %bb.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.s:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.fc = load ptr, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.s
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !60
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.fh = load ptr, ptr %i.r, align 8, !tbaa !66  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.t
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.fj = load i64, ptr %i.t, align 8, !tbaa !60
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.c
  br i1 %i.fm, label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.fn = load i64, ptr %i.c, align 8, !tbaa !60
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #20
  br label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit

_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang9api_notes14APINotesWriter14ImplementationD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.c = load i32, ptr %i.b, align 4, !tbaa !664  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !659
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = mul nuw nsw i64 %i.f, 240
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.n = load i32, ptr %i.m, align 4, !tbaa !623  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !618
  %i.q = zext i32 %i.n to i64                     ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 448
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820
  %i.v = add nuw nsw i64 %i.u, %i.r
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.p, i64 noundef %i.v, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.y = load i32, ptr %i.x, align 4, !tbaa !579  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !574
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 112
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !540 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !535
  %i.am = zext i32 %i.aj to i64                   ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = add nuw nsw i64 %i.am, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.al, i64 noundef %i.ar, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.au = load i32, ptr %i.at, align 4, !tbaa !499 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !494
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  %i.ay = mul nuw nsw i64 %i.ax, 152
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aw, i64 noundef %i.bc, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !458 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !453
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !457
  %i.bk = zext i32 %i.bf to i64
  %i.bl = add nuw nsw i64 %i.bk, 31
  %i.bm = lshr i64 %i.bl, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !51 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bp = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.bo, %.lr.ph.i.i ], [ %i.bz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.br = or disjoint i32 %i.bq, %i.bp
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.bv) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.h, %bb.g
  %i.by = add i32 %.0.i3.i.i, -1
  %i.bz = and i32 %i.by, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !909

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bm
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !910

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.be, align 4, !tbaa !458 ; 2 uses
  %i.ca = icmp eq i32 %.pr.i, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.cb = load ptr, ptr %i.bd, align 8, !tbaa !453
  %i.cc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 48
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !368 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !363
  %i.cn = zext i32 %i.ck to i64                   ; 2 uses
  %i.co = mul nuw nsw i64 %i.cn, 432
  %i.cp = add nuw nsw i64 %i.cn, 31
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = and i64 %i.cq, 1073741820
  %i.cs = add nuw nsw i64 %i.cr, %i.co
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cm, i64 noundef %i.cs, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18StoredObjCSelectorENS_18PointerEmbeddedIntIjLi31EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !320 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !315
  %i.cy = zext i32 %i.cv to i64                   ; 2 uses
  %i.cz = mul nuw nsw i64 %i.cy, 408
  %i.da = add nuw nsw i64 %i.cy, 31
  %i.db = lshr i64 %i.da, 3
  %i.dc = and i64 %i.db, 1073741820
  %i.dd = add nuw nsw i64 %i.dc, %i.cz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cx, i64 noundef %i.dd, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit

_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !416 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !411
  %i.dj = zext i32 %i.dg to i64                   ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, 152
  %i.dl = add nuw nsw i64 %i.dj, 31
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = and i64 %i.dm, 1073741820
  %i.do = add nuw nsw i64 %i.dn, %i.dk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.di, i64 noundef %i.do, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit, %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !272 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !267
  %i.du = zext i32 %i.dr to i64                   ; 2 uses
  %i.dv = mul nuw nsw i64 %i.du, 168
  %i.dw = add nuw nsw i64 %i.du, 31
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = and i64 %i.dx, 1073741820
  %i.dz = add nuw nsw i64 %i.dy, %i.dv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dt, i64 noundef %i.dz, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit

_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !1400 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1401
  %i.ef = zext i32 %i.eb to i64                   ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = add nuw nsw i64 %i.ef, 31
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 1073741820
  %i.ek = add nuw nsw i64 %i.ej, %i.eg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ee, i64 noundef %i.ek, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit, %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1402 ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1403
  %i.eq = zext i32 %i.em to i64                   ; 2 uses
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.eq, 31
  %i.et = lshr i64 %i.es, 3
  %i.eu = and i64 %i.et, 1073741820
  %i.ev = add nuw nsw i64 %i.eu, %i.er
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ep, i64 noundef %i.ev, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit

_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !1400 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1401
  %i.fb = zext i32 %i.ex to i64                   ; 2 uses
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fb, 31
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = and i64 %i.fe, 1073741820
  %i.fg = add nuw nsw i64 %i.ff, %i.fc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fa, i64 noundef %i.fg, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1: ; preds = %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit, %bb.p
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !201 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !196
  %i.fm = zext i32 %i.fj to i64                   ; 2 uses
  %i.fn = shl nuw nsw i64 %i.fm, 8
  %i.fo = add nuw nsw i64 %i.fm, 31
  %i.fp = lshr i64 %i.fo, 3
  %i.fq = and i64 %i.fp, 1073741820
  %i.fr = add nuw nsw i64 %i.fq, %i.fn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fl, i64 noundef %i.fr, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1, %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !128
  %i.fv = icmp eq i32 %i.fu, 0
  %.pre13.i = load ptr, ptr %i.fs, align 8, !tbaa !145 ; 4 uses
  br i1 %i.fv, label %_ZN4llvm9StringMapINS_18PointerEmbeddedIntIjLi31EEENS_15MallocAllocatorEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !146 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %.idx.i = shl nuw nsw i64 %i.fy, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.fx, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapINS_18PointerEmbeddedIntIjLi31EEENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.012.i = phi ptr [ %i.gd, %bb.t ], [ %.pre13.i, %bb.r ] ; 2 uses
  %i.ga = load ptr, ptr %.012.i, align 8, !tbaa !147 ; 3 uses
  %.not10.i = icmp eq ptr %i.ga, null
  br i1 %.not10.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !184
  %i.gc = add i64 %i.gb, 17
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 noundef %i.gc, i64 noundef 8) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.gd, %i.fz
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.fs, align 8, !tbaa !145
  br label %_ZN4llvm9StringMapINS_18PointerEmbeddedIntIjLi31EEENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapINS_18PointerEmbeddedIntIjLi31EEENS_15MallocAllocatorEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, %bb.r, %.loopexit.loopexit.i
  %i.ge = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.r ], [ %.pre13.i, %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit ]
  tail call void @free(ptr noundef %i.ge) #17
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !65 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm9StringMapINS_18PointerEmbeddedIntIjLi31EEENS_15MallocAllocatorEED2Ev.exit
  tail call void @free(ptr noundef %i.gg) #17
  br label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit

_ZN4llvm11SmallVectorImLj64EED2Ev.exit:           ; preds = %_ZN4llvm9StringMapINS_18PointerEmbeddedIntIjLi31EEENS_15MallocAllocatorEED2Ev.exit, %bb.u
  %i.gj = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorImLj64EED2Ev.exit
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !60
  %i.gn = add i64 %i.gm, 1
  tail call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !664  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !659
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !663
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [240 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 216
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 14 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -216 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !642, !range !343, !noundef !344
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.y, align 8, !tbaa !642
  br i1 %i.aa, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !642, !range !343, !noundef !344
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !642
  br i1 %i.aj, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.d
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !60
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.aq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !642, !range !343, !noundef !344
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !642
  br i1 %i.as, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.at = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.e
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !60
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.az = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -144 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !60
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -184 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit

_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1358

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.bk = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.bk) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.f
  %i.bn = add i32 %.0.i3, -1
  %i.bo = and i32 %i.bn, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1404

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1405

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !623  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_7TagInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph16.preheader

.lr.ph16.preheader:                               ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !618
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !622
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph16.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i11 = icmp eq i32 %i.k, 0
  br i1 %.not11.i11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph16
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i12 = phi i32 [ %i.k, %.lr.ph ], [ %i.dh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i12, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [448 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 424
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 29 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -424 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -408
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !642, !range !343, !noundef !344
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.y, align 8, !tbaa !642
  br i1 %i.aa, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !642, !range !343, !noundef !344
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !642
  br i1 %i.aj, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.d
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !60
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.aq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !642, !range !343, !noundef !344
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !642
  br i1 %i.as, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.at = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.e
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !60
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.az = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bb = trunc nuw i8 %i.ba to i1
  store i8 0, ptr %i.az, align 8, !tbaa !642
  br i1 %i.bb, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -168
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -152 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7.i: ; preds = %bb.f
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !60
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.bi = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bk = trunc nuw i8 %i.bj to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !642
  br i1 %i.bk, label %bb.g, label %_ZN5clang9api_notes7TagInfoD2Ev.exit

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -208
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN5clang9api_notes7TagInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i: ; preds = %bb.g
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !60
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZN5clang9api_notes7TagInfoD2Ev.exit

_ZN5clang9api_notes7TagInfoD2Ev.exit:             ; preds = %bb.g, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i
  %i.br = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -224 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bt = trunc nuw i8 %i.bs to i1
  store i8 0, ptr %i.br, align 8, !tbaa !642
  br i1 %i.bt, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i2

bb.h:                                             ; preds = %_ZN5clang9api_notes7TagInfoD2Ev.exit
  %i.bu = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -256
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !66 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -240 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9: ; preds = %bb.h
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !60
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i2

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i2: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9, %_ZN5clang9api_notes7TagInfoD2Ev.exit
  %i.ca = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -264 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !642, !range !343, !noundef !344
  %i.cc = trunc nuw i8 %i.cb to i1
  store i8 0, ptr %i.ca, align 8, !tbaa !642
  br i1 %i.cc, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i3

bb.i:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i2
  %i.cd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -296
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !66 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -280 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i7: ; preds = %bb.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !60
  %i.ci = add i64 %i.ch, 1
  tail call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i3: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i7, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i2
  %i.cj = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -304 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !642, !range !343, !noundef !344
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !642
  br i1 %i.cl, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i4

bb.j:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i3
  %i.cm = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -336
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !66 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -320 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i5: ; preds = %bb.j
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !60
  %i.cr = add i64 %i.cq, 1
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i4

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i4: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i5, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i3
  %i.cs = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -368
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !66 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -352 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i4
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !60
  %i.cx = add i64 %i.cw, 1
  tail call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -392 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !60
  %i.dc = add i64 %i.db, 1
  tail call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #20
  br label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit

_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1316

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.dd = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.dd) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.k
  %i.dg = add i32 %.0.i12, -1
  %i.dh = and i32 %i.dg, %.0.i12                  ; 2 uses
  %.not11.i = icmp eq i32 %i.dh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1406

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_7TagInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph16, !llvm.loop !1407

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_7TagInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !579  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !574
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !578
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !60
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !605

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.aj = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEvENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.aj) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.c
  %i.am = add i32 %.0.i3, -1
  %i.an = and i32 %i.am, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1408

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1409

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !540  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !535
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !539
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph10.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i5 = icmp eq i32 %i.k, 0
  br i1 %.not11.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph10
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i6 = phi i32 [ %i.k, %.lr.ph ], [ %i.cr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i6, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [256 x i8], ptr %i.d, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZN5clang9api_notes12FunctionInfoD2Ev.exit ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 12 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !752  ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !754 ; 2 uses
  %.not4.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.bc, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i ], [ %i.z, %.lr.ph.i.i.i ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i, i64 160 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !341, !range !343, !noundef !344
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !341
  br i1 %i.ae, label %bb.c, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i, i64 144 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i, i64 96 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !60
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !60
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %.05.i, align 8, !tbaa !66 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #20
  br label %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i

_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i, i64 168 ; 2 uses
  %.not.i2 = icmp eq ptr %i.bc, %i.ab
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !916

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.pr = load ptr, ptr %i.y, align 8, !tbaa !752
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %.pr, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split ], [ %i.z, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !755
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #20
  br label %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit
  %i.bj = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -40 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !60
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !66 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !60
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !66 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -120 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !60
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !60
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20
  br label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit

_ZN5clang9api_notes12FunctionInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1234

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.cg = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELj1EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.cg) #17
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELj1EED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !393, !range !343, !noundef !344
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !393
  br i1 %i.cl, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELj1EED2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.cn) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalFunctionInfoEELj1EED2Ev.exit.i, %bb.f, %bb.g
  %i.cq = add i32 %.0.i6, -1
  %i.cr = and i32 %i.cq, %.0.i6                   ; 2 uses
  %.not11.i = icmp eq i32 %i.cr, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1410

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph10, !llvm.loop !1411

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !499  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !494
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !498
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [152 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = shl nuw nsw i64 %i.u, 7
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !60
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !524

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.ap = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.ap) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.c
  %i.as = add i32 %.0.i3, -1
  %i.at = and i32 %i.as, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1412

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1413

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !368  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !363
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.k, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.k, %.lr.ph ], [ %i.dv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [432 x i8], ptr %i.d, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 368
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZN5clang9api_notes12FunctionInfoD2Ev.exit ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 22 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -368 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -352
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176
  %i.z = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !346, !range !343, !noundef !344
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !346
  br i1 %i.ab, label %bb.c, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !341, !range !343, !noundef !344
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !341
  br i1 %i.ae, label %bb.d, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.al = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !60
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -120 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !60
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !66  ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #20
  br label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !752 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !754 ; 2 uses
  %.not4.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.cg, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i ], [ %i.bd, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit ] ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i, i64 160 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !341, !range !343, !noundef !344
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.bg, align 8, !tbaa !341
  br i1 %i.bi, label %bb.e, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2

bb.e:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i, i64 144 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i12: ; preds = %bb.e
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !60
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i12, %.lr.ph.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !66 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i, i64 96 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !60
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !66 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !60
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5
  %i.cb = load ptr, ptr %.05.i, align 8, !tbaa !66 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !60
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20
  br label %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i

_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i7
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i, i64 168 ; 2 uses
  %.not.i8 = icmp eq ptr %i.cg, %i.bf
  br i1 %.not.i8, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !916

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.pr = load ptr, ptr %i.bc, align 8, !tbaa !752
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit
  %i.ch = phi ptr [ %.pr, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split ], [ %i.bd, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit
  %i.ci = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -184
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !755
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #20
  br label %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit
  %i.cn = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -216 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !60
  %i.cs = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ct = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -264
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !66 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -248 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !60
  %i.cy = add i64 %i.cx, 1
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cz = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -312
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -296 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !60
  %i.de = add i64 %i.dd, 1
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -336 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !60
  %i.dj = add i64 %i.di, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #20
  br label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit

_ZN5clang9api_notes12FunctionInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1110

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.dk = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELj1EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.dk) #17
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELj1EED2Ev.exit.i: ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !393, !range !343, !noundef !344
  %i.dp = trunc nuw i8 %i.do to i1
  store i8 0, ptr %i.dn, align 8, !tbaa !393
  br i1 %i.dp, label %bb.h, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELj1EED2Ev.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !65 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.dr) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELj1EED2Ev.exit.i, %bb.h, %bb.i
  %i.du = add i32 %.0.i17, -1
  %i.dv = and i32 %i.du, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.dv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1414

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph21, !llvm.loop !1415

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !320  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph19.preheader

.lr.ph19.preheader:                               ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !315
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !319
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph19.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.k, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.k, %.lr.ph ], [ %i.do, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [408 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 376
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZN5clang9api_notes12FunctionInfoD2Ev.exit ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 22 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -376 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -360
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176
  %i.z = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !346, !range !343, !noundef !344
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !346
  br i1 %i.ab, label %bb.c, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !341, !range !343, !noundef !344
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !341
  br i1 %i.ae, label %bb.d, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.al = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !60
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -120 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !60
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !66  ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #20
  br label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -208 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !752 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !754 ; 2 uses
  %.not4.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.cg, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i ], [ %i.bd, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit ] ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i, i64 160 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !341, !range !343, !noundef !344
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.bg, align 8, !tbaa !341
  br i1 %i.bi, label %bb.e, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2

bb.e:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i, i64 144 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i12: ; preds = %bb.e
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !60
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i12, %.lr.ph.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !66 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i, i64 96 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !60
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !66 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !60
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5
  %i.cb = load ptr, ptr %.05.i, align 8, !tbaa !66 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !60
  %i.cf = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20
  br label %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i

_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i7
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i, i64 168 ; 2 uses
  %.not.i8 = icmp eq ptr %i.cg, %i.bf
  br i1 %.not.i8, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !916

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.pr = load ptr, ptr %i.bc, align 8, !tbaa !752
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit
  %i.ch = phi ptr [ %.pr, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exitthread-pre-split ], [ %i.bd, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit
  %i.ci = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !755
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #20
  br label %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit
  %i.cn = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -224 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !60
  %i.cs = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5clang9api_notes9ParamInfoESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ct = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -272
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !66 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -256 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !60
  %i.cy = add i64 %i.cx, 1
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cz = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -320
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -304 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !60
  %i.de = add i64 %i.dd, 1
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -344 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !60
  %i.dj = add i64 %i.di, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #20
  br label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit

_ZN5clang9api_notes12FunctionInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1058

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.dk = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.dk) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.g
  %i.dn = add i32 %.0.i15, -1
  %i.do = and i32 %i.dn, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.do, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1416

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph19, !llvm.loop !1417

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !416  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !411
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !415
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [152 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = shl nuw nsw i64 %i.u, 7
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !60
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !442

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.ap = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.ap) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.c
  %i.as = add i32 %.0.i3, -1
  %i.at = and i32 %i.as, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1418

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1419

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !272  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !267
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [168 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = mul nuw nsw i64 %i.u, 136
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -120
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -64 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -104 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !60
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !304

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.b
  %i.ap = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.ap) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.c
  %i.as = add i32 %.0.i3, -1
  %i.at = and i32 %i.as, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1420

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1421

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !201  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !200
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [256 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.u, 216
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit ], [ %i.v, %.lr.ph.i.preheader.i.i.i ] ; 14 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -216 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -200
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !642, !range !343, !noundef !344
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.y, align 8, !tbaa !642
  br i1 %i.aa, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -56 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !642, !range !343, !noundef !344
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !642
  br i1 %i.aj, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -72 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.d
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !60
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.aq = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -96 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !642, !range !343, !noundef !344
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !642
  br i1 %i.as, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.e:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.at = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -112 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.e
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !60
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.az = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -144 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !60
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -184 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit

_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !741

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i: ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i, %bb.b
  %i.bk = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i
  tail call void @free(ptr noundef %i.bk) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i, %bb.f
  %i.bn = add i32 %.0.i3, -1
  %i.bo = and i32 %i.bn, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1422

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1423

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E24lookupOrInsertIntoBucketIS4_JSB_EEES5_IPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.std::array.426", align 4   ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !196, !noalias !1424 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200, !noalias !1424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !201, !noalias !1424 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51
  %i.l = load i8, ptr %i.i, align 4, !tbaa !60
  %i.m = load i32, ptr %1, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 %i.m, ptr %3, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.l, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i32 %i.k, ptr %i.o, align 1
  %i.p = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.q = trunc i64 %i.p to i32
  %i.r = xor i32 %i.q, -313160499
  %.024.i = and i32 %i.r, %i.h                    ; 3 uses
  %i.s = zext i32 %.024.i to i64                  ; 2 uses
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = and i32 %.024.i, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i, label %.loopexit, !prof !716

.lr.ph.i:                                         ; preds = %bb.b
  %i.aa = load i32, ptr %1, align 4, !tbaa !717
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread.i, %.lr.ph.i
  %i.ab = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ao, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread.i ] ; 4 uses
  %.025.i = phi i32 [ %.024.i, %.lr.ph.i ], [ %.0.i, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread.i ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !717
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread.i, !prof !718

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.i, align 4, !tbaa !719
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !719
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread.i, !prof !718
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E24lookupOrInsertIntoBucketIS4_JSB_EEES5_IPSG_bEOT_DpOT0_:bb.a

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(232) %i.bv, ptr noundef nonnull align 8 dereferenceable(232) %i.cb) ; 0 uses
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_.exit: ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.i, %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.bd, %bb.f ], [ %i.bd, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit ], [ %i.ab, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.f ], [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E22findBucketForInsertionIS4_EEPSG_RKT_SK_.exit ], [ 0, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E15LookupBucketForIS4_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.426", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !196, !noalias !1432 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200, !noalias !1432 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !201, !noalias !1432 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = load i8, ptr %i.h, align 4, !tbaa !60
  %i.l = load i32, ptr %1, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 %i.l, ptr %3, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.k, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i32 %i.j, ptr %i.n, align 1
  %i.o = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.p = trunc i64 %i.o to i32
  %i.q = xor i32 %i.p, -313160499
  %.024 = and i32 %i.q, %i.g                      ; 3 uses
  %i.r = zext i32 %.024 to i64                    ; 2 uses
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51
  %i.w = and i32 %.024, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b
  %i.z = load i32, ptr %1, align 4, !tbaa !717
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread
  %i.aa = phi ptr [ %i.s, %.lr.ph ], [ %i.an, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread ] ; 4 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !717
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread, !prof !718

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.h, align 4, !tbaa !719
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !719
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread, !prof !718

_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit: ; preds = %bb.d
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !720
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !720
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %.thread, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread, !prof !721

_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.c, label %.thread, !prof !722, !llvm.loop !1429

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.an, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread ], [ %i.aa, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit.thread ], [ true, %_ZN4llvm12DenseMapInfoIN5clang9api_notes15ContextTableKeyEvE7isEqualERKS3_S6_.exit ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1430
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !201
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 8                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !196
  store ptr %i.y, ptr %i.q, align 8, !tbaa !200
  store i32 0, ptr %i.p, align 16, !tbaa !189
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !201 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !196
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS4_INS_12VersionTupleENS2_11ContextInfoEELj1EEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.426", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !196
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !201  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !196
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !201
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.r, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.s = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.r, %.lr.ph ], [ %i.da, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %i.v ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = load i8, ptr %i.x, align 4, !tbaa !60
  %i.ab = load i32, ptr %i.w, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 %i.ab, ptr %2, align 4
  store i8 %i.aa, ptr %i.o, align 4
  store i32 %i.z, ptr %i.p, align 1
  %i.ac = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = xor i32 %i.ad, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi i32 [ %i.ae, %bb.c ], [ %i.am, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.af = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = and i32 %.0.i7, 31                      ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  %i.am = add i32 %.0.i7, 1
  br i1 %i.al, label %bb.d, label %bb.e, !llvm.loop !1437

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %i.af ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !1431
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !729
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !729
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.at, ptr %i.as, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 0, ptr %i.au, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  store i32 1, ptr %i.av, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !61
  %.not.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIjN4llvm11SmallVectorIS_INS0_12VersionTupleEN5clang9api_notes11ContextInfoEELj1EEEEC2EOS8_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.az = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(232) %i.as, ptr noundef nonnull align 8 dereferenceable(232) %i.ay) ; 0 uses
  br label %_ZNSt4pairIjN4llvm11SmallVectorIS_INS0_12VersionTupleEN5clang9api_notes11ContextInfoEELj1EEEEC2EOS8_.exit.i

_ZNSt4pairIjN4llvm11SmallVectorIS_INS0_12VersionTupleEN5clang9api_notes11ContextInfoEELj1EEEEC2EOS8_.exit.i: ; preds = %bb.f, %bb.e
  %i.ba = shl nuw i32 1, %i.aj
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !51
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.an, align 4, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65 ; 3 uses
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt4pairIjN4llvm11SmallVectorIS_INS0_12VersionTupleEN5clang9api_notes11ContextInfoEELj1EEEEC2EOS8_.exit.i
  %i.bg = zext i32 %i.bf to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.bg, 216
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bi, %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit ], [ %i.bh, %.lr.ph.i.preheader.i.i.i ] ; 14 uses
  %i.bi = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -216 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -200
  %i.bk = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bm = trunc nuw i8 %i.bl to i1
  store i8 0, ptr %i.bk, align 8, !tbaa !642
  br i1 %i.bm, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !66 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -56 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bv = trunc nuw i8 %i.bu to i1
  store i8 0, ptr %i.bt, align 8, !tbaa !642
  br i1 %i.bv, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.h:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bw = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !66 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -72 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.h
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !60
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.cc = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -96 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !642, !range !343, !noundef !344
  %i.ce = trunc nuw i8 %i.cd to i1
  store i8 0, ptr %i.cc, align 8, !tbaa !642
  br i1 %i.ce, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.cf = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -128
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -112 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !60
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.cl = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -160
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !66 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -144 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !60
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cr = load ptr, ptr %i.bj, align 8, !tbaa !66 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -184 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !60
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #20
  br label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit

_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i.i11.i = icmp eq ptr %i.be, %i.bi
  br i1 %.not.i.i.i11.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !741

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i: ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit
  %.pre.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i, %_ZNSt4pairIjN4llvm11SmallVectorIS_INS0_12VersionTupleEN5clang9api_notes11ContextInfoEELj1EEEEC2EOS8_.exit.i
  %i.cw = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i ], [ %i.be, %_ZNSt4pairIjN4llvm11SmallVectorIS_INS0_12VersionTupleEN5clang9api_notes11ContextInfoEELj1EEEEC2EOS8_.exit.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i
  call void @free(ptr noundef %i.cw) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11ContextInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i, %bb.j
  %i.cz = add i32 %.0.i21, -1
  %i.da = and i32 %i.cz, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.da, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1438

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS5_INS_12VersionTupleENS3_11ContextInfoEELj1EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1439

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !201
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes15ContextTableKeyESt4pairIjNS_11SmallVectorIS8_INS_12VersionTupleENS6_11ContextInfoEELj1EEEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1447
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1448
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !183

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1447
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1445
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1401
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !51
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1448
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !51
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1401, !noalias !1449 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1445, !noalias !1449 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1400, !noalias !1449 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !51     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !716

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1447
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.19", align 16 ; 9 uses
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
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1400
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1401
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1445
  store i32 0, ptr %i.p, align 16, !tbaa !1448
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1447
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !51
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !51
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !51
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1401   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1445
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1400 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1445 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1401
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1400
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !1454

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !51
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !51
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !51
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1455

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1456

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1400
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1448
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !1448
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #17
  store i32 0, ptr %i.d, align 4, !tbaa !1400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1403, !noalias !1457 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1462, !noalias !1457 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1402, !noalias !1457 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !51     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !716

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !722, !llvm.loop !1463

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit, label %bb.c, !prof !183

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1464
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1465
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !183

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1464
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1462
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1403
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !51
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1465
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 0, ptr %i.bc, align 4, !tbaa !60
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1403, !noalias !1466 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1462, !noalias !1466 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1402, !noalias !1466 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !51     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !716

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1463

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1464
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.21", align 16 ; 9 uses
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
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1402
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1403
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1462
  store i32 0, ptr %i.p, align 16, !tbaa !1465
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1464
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !51
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !51
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !51
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit

_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1403
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1462
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1402 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1462 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1403
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1402
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !1471

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !60
  store i8 %i.aj, ptr %i.ah, align 4, !tbaa !60
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !51
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !51
  %i.an = add i32 %.0.i18, -1
  %i.ao = and i32 %i.an, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1472

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1473

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1402
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1465
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !1465
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !1403
  %i.av = zext i32 %i.ap to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 4) #17
  store i32 0, ptr %i.d, align 4, !tbaa !1402
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEE4killEv.exit

_ZN4llvm8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjhNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjhEEEEjhS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24lookupOrInsertIntoBucketIS3_JEEES5_IPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !267, !noalias !1474 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271, !noalias !1474 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !272, !noalias !1474 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51   ; 2 uses
  %i.k = mul i32 %i.j, 37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51   ; 2 uses
  %i.n = mul i32 %i.m, 37
  %i.o = load i8, ptr %1, align 4, !tbaa !60      ; 2 uses
  %i.p = sext i8 %i.o to i64
  %i.q = mul nsw i64 %i.p, 1512728442
  %i.r = zext i32 %i.n to i64
  %i.s = shl nuw i64 %i.r, 32
  %i.t = and i64 %i.q, 4294967294
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = zext i32 %i.k to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = and i64 %i.x, 4294967295
  %i.ab = or disjoint i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.h, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = and i32 %i.ag, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i, label %.loopexit, !prof !716

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i
  %i.ap = phi ptr [ %i.bb, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i ], [ %i.ai, %bb.b ] ; 4 uses
  %.024.i = phi i32 [ %i.az, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i ], [ %i.ag, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = icmp eq i32 %i.j, %i.ar
  br i1 %i.as, label %bb.c, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i, !prof !718

bb.c:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %i.av = icmp eq i32 %i.m, %i.au
  br i1 %i.av, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.i, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i, !prof !718

_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.i: ; preds = %bb.c
  %i.aw = load i8, ptr %i.ap, align 4, !tbaa !60
  %i.ax = icmp eq i8 %i.o, %i.aw
  br i1 %i.ax, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_.exit, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i, !prof !721

_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i: ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.i, %bb.c, %.lr.ph.i
  %i.ay = add nuw i32 %.024.i, 1
  %i.az = and i32 %i.ay, %i.h                     ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  %i.bc = lshr i64 %i.ba, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.bf = and i32 %i.az, 31
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit, !prof !722, !llvm.loop !1479

.loopexit:                                        ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ], [ %i.bb, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1480
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !260
  %i.bk = shl i32 %i.bj, 2
  %i.bl = add i32 %i.bk, 4
  %i.bm = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit, label %bb.d, !prof !183

bb.d:                                             ; preds = %.loopexit
  %i.bn = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bn)
  %i.bo = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1480
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !271
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !267
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.bp = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.br = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 9 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 168               ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 31
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = lshr i64 %i.bv, 5
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = or i32 %i.by, %i.cb
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !51
  %i.cd = load i32, ptr %i.bi, align 8, !tbaa !260
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bi, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load i8, ptr %1, align 4, !tbaa !60
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !267, !noalias !1481 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271, !noalias !1481 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !272, !noalias !1481 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 2 uses
  %i.j = mul i32 %i.i, 37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51   ; 2 uses
  %i.m = mul i32 %i.l, 37
  %i.n = load i8, ptr %1, align 4, !tbaa !60      ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = mul nsw i64 %i.o, 1512728442
  %i.q = zext i32 %i.m to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = and i64 %i.p, 4294967294
  %i.t = or disjoint i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = zext i32 %i.j to i64
  %i.y = shl nuw i64 %i.x, 32
  %i.z = and i64 %i.w, 4294967295
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.g, %i.ae                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [168 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread
  %i.ao = phi ptr [ %i.ba, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ah, %bb.b ] ; 4 uses
  %.024 = phi i32 [ %i.ay, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ %i.af, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = icmp eq i32 %i.i, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, !prof !718

bb.c:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %i.au = icmp eq i32 %i.l, %i.at
  br i1 %i.au, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, !prof !718

_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit: ; preds = %bb.c
  %i.av = load i8, ptr %i.ao, align 4, !tbaa !60
  %i.aw = icmp eq i8 %i.n, %i.av
  br i1 %i.aw, label %.thread, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, !prof !721

_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread: ; preds = %bb.c, %.lr.ph, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit
  %i.ax = add nuw i32 %.024, 1
  %i.ay = and i32 %i.ax, %i.g                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [168 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = lshr i64 %i.az, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = and i32 %i.ay, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1479

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ah, %bb.b ], [ null, %bb.a ], [ %i.ba, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ao, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ true, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1480
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.23", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !272
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 168                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !267
  store ptr %i.y, ptr %i.q, align 8, !tbaa !271
  store i32 0, ptr %i.p, align 16, !tbaa !260
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !272 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !267
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 168
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit

_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.616, align 8            ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = load ptr, ptr %1, align 8, !tbaa !267
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1480
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271
  store ptr %i.k, ptr %i.b, align 8, !tbaa !849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.l = load ptr, ptr %0, align 8, !tbaa !267
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !272
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.d, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = zext i32 %i.i to i64
  %i.q = add nuw nsw i64 %i.p, 31
  %i.r = lshr i64 %i.q, 5                         ; 2 uses
  %.not.i9 = icmp eq i64 %i.r, 0
  br i1 %.not.i9, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51   ; 2 uses
  %.not11.i7 = icmp eq i32 %i.t, 0
  br i1 %.not11.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph12
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.u = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0.i8 = phi i32 [ %i.t, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i8, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  call void @_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.w)
  %i.x = add i32 %.0.i8, -1
  %i.y = and i32 %i.x, %.0.i8                     ; 2 uses
  %.not11.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1486

._crit_edge:                                      ; preds = %bb.b, %.lr.ph12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph12, !llvm.loop !1487

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.h, align 4, !tbaa !272
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.z = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !260
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !260
  %i.ad = icmp eq i32 %i.z, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !267
  %i.af = zext i32 %i.z to i64                    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 168
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #17
  store i32 0, ptr %i.h, align 4, !tbaa !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit

_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1488, !nonnull !344, !align !692
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1480
  %i.c = zext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51
  %i.g = mul i32 %i.f, 37
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51
  %i.j = mul i32 %i.i, 37
  %i.k = load i8, ptr %i.d, align 4, !tbaa !60    ; 2 uses
  %i.l = sext i8 %i.k to i64
  %i.m = mul nsw i64 %i.l, 1512728442
  %i.n = zext i32 %i.j to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = and i64 %i.m, 4294967294
  %i.q = or disjoint i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = zext i32 %i.g to i64
  %i.v = shl nuw i64 %i.u, 32
  %i.w = and i64 %i.t, 4294967295
  %i.x = or disjoint i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1492, !nonnull !344, !align !1493
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51 ; 2 uses
  %i.af = and i32 %i.ae, %i.ab                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1494, !nonnull !344, !align !692
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !849 ; 2 uses
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  %i.an = and i32 %i.af, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.ar, %.lr.ph ], [ %i.af, %bb.a ]
  %i.aq = add i32 %.015, 1
  %i.ar = and i32 %i.aq, %i.ae                    ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = and i32 %i.ar, 31                       ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !1495

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa13 = phi i64 [ %i.aj, %bb.a ], [ %i.as, %.lr.ph ]
  %.lcssa12 = phi i64 [ %i.ak, %bb.a ], [ %i.at, %.lr.ph ]
  %.lcssa = phi i32 [ %i.an, %bb.a ], [ %i.aw, %.lr.ph ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1496, !nonnull !344, !align !692
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1480
  %i.bc = getelementptr inbounds nuw [168 x i8], ptr %i.bb, i64 %.lcssa13 ; 7 uses
  store i8 %i.k, ptr %i.bc, align 1, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.h, align 4, !tbaa !51
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !51
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !1488, !nonnull !344, !align !692
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1480 ; 2 uses
  %i.bk = getelementptr inbounds nuw [168 x i8], ptr %i.bj, i64 %i.c ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i32 0, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  store i32 1, ptr %i.bn, align 4, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !61
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEC2EOS7_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(152) %i.bh, ptr noundef nonnull align 8 dereferenceable(152) %i.bq) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !1488
  %.pre21 = load ptr, ptr %.pre, align 8, !tbaa !1480
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEC2EOS7_.exit

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEC2EOS7_.exit: ; preds = %._crit_edge, %bb.b
  %i.bs = phi ptr [ %i.bj, %._crit_edge ], [ %.pre21, %bb.b ]
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !1494, !nonnull !344, !align !692
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !849
  %i.bv = shl nuw i32 1, %.lcssa
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.lcssa12 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !51
  %i.by = or i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !51
  %i.bz = getelementptr inbounds nuw [168 x i8], ptr %i.bs, i64 %i.c ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELj1EEC2EOS7_.exit
  %i.ce = zext i32 %i.cd to i64
  %.idx.i = mul nuw nsw i64 %i.ce, 136
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.cg, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i ], [ %i.cf, %.lr.ph.i.preheader.i ] ; 7 uses
  %i.cg = getelementptr inbounds i8, ptr %.05.i.i, i64 -136 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.05.i.i, i64 -120
  %i.ci = getelementptr inbounds i8, ptr %.05.i.i, i64 -40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !60
  %i.cn = add i64 %i.cm, 1
  tail call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.co = getelementptr inbounds i8, ptr %.05.i.i, i64 -80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !60
  %i.ct = add i64 %i.cs, 1
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24lookupOrInsertIntoBucketIRKS3_JEEES5_IPSG_bEOT_DpOT0_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  store i32 1, ptr %i.ci, align 4, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_.exit: ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.br, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit ], [ %i.ap, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit ], [ 0, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !315, !noalias !1505 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !319, !noalias !1505 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !320, !noalias !1505 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 2 uses
  %i.j = mul i32 %i.i, 37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51   ; 2 uses
  %i.m = mul i32 %i.l, 37
  %i.n = load i8, ptr %1, align 4, !tbaa !60      ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = mul nsw i64 %i.o, 1512728442
  %i.q = zext i32 %i.m to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = and i64 %i.p, 4294967294
  %i.t = or disjoint i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = zext i32 %i.j to i64
  %i.y = shl nuw i64 %i.x, 32
  %i.z = and i64 %i.w, 4294967295
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.g, %i.ae                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [408 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread
  %i.ao = phi ptr [ %i.ba, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ah, %bb.b ] ; 4 uses
  %.024 = phi i32 [ %i.ay, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ %i.af, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = icmp eq i32 %i.i, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, !prof !718

bb.c:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %i.au = icmp eq i32 %i.l, %i.at
  br i1 %i.au, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, !prof !718

_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit: ; preds = %bb.c
  %i.av = load i8, ptr %i.ao, align 4, !tbaa !60
  %i.aw = icmp eq i8 %i.n, %i.av
  br i1 %i.aw, label %.thread, label %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, !prof !721

_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread: ; preds = %bb.c, %.lr.ph, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit
  %i.ax = add nuw i32 %.024, 1
  %i.ay = and i32 %i.ax, %i.g                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [408 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = lshr i64 %i.az, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = and i32 %i.ay, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1503

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ah, %bb.b ], [ null, %bb.a ], [ %i.ba, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ao, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit.thread ], [ true, %_ZN4llvm12DenseMapInfoISt5tupleIJjjcEEvE7isEqualERKS2_S5_.exit ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1504
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.27", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !320
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 408                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !315
  store ptr %i.y, ptr %i.q, align 8, !tbaa !319
  store i32 0, ptr %i.p, align 16, !tbaa !308
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !320 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !315
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 408
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit

_ZN4llvm8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !315
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !319
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !320  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !319  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !315
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !320
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i32 = icmp eq i64 %i.n, 0
  br i1 %.not.i32, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i30 = icmp eq i32 %i.p, 0
  br i1 %.not11.i30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph35
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i31 = phi i32 [ %i.p, %.lr.ph ], [ %i.fy, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjjcEENS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i31, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [408 x i8], ptr %i.a, i64 %i.t ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = mul i32 %i.w, 37
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = mul i32 %i.z, 37
  %i.ab = load i8, ptr %i.u, align 4, !tbaa !60   ; 2 uses
  %i.ac = sext i8 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, 1512728442
  %i.ae = zext i32 %i.aa to i64
  %i.af = shl nuw i64 %i.ae, 32
  %i.ag = and i64 %i.ad, 4294967294
  %i.ah = or disjoint i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -4658895280553007687     ; 2 uses
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = zext i32 %i.x to i64
  %i.am = shl nuw i64 %i.al, 32
  %i.an = and i64 %i.ak, 4294967295
  %i.ao = or disjoint i64 %i.an, %i.am
  %i.ap = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.aq = lshr i64 %i.ap, 31
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.k, %i.as                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %i.at, %bb.b ]
  %i.bb = add i32 %.015.i, 1
  %i.bc = and i32 %i.bb, %i.k                     ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5                       ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !51
  %i.bh = and i32 %i.bc, 31                       ; 2 uses
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1510

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa13.i = phi i64 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.av, %bb.b ], [ %i.be, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ay, %bb.b ], [ %i.bh, %.lr.ph.i ]
  %i.bk = getelementptr inbounds nuw [408 x i8], ptr %i.h, i64 %.lcssa13.i ; 7 uses
  store i8 %i.ab, ptr %i.bk, align 1, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.y, align 4, !tbaa !51
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load i32, ptr %i.v, align 4, !tbaa !51
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !65
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 0, ptr %i.br, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store i32 1, ptr %i.bs, align 4, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEC2EOS7_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(392) %i.bp, ptr noundef nonnull align 8 dereferenceable(392) %i.bv) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEC2EOS7_.exit.i: ; preds = %bb.c, %._crit_edge.i
  %i.bx = shl nuw i32 1, %.lcssa.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa12.i ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !51
  %i.ca = or i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65 ; 3 uses
  %i.cd = load i32, ptr %i.bt, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes14ObjCMethodInfoEELj1EEC2EOS7_.exit.i
  %i.ce = zext i32 %i.cd to i64
  %.idx.i.i = mul nuw nsw i64 %i.ce, 376
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.cg, %_ZN5clang9api_notes12FunctionInfoD2Ev.exit ], [ %i.cf, %.lr.ph.i.preheader.i.i ] ; 22 uses
  %i.cg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -376 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -360
  %i.ci = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176
  %i.cj = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !346, !range !343, !noundef !344
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !346
  br i1 %i.cl, label %bb.d, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !341, !range !343, !noundef !344
  %i.co = trunc nuw i8 %i.cn to i1
  store i8 0, ptr %i.cm, align 8, !tbaa !341
  br i1 %i.co, label %bb.e, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !66 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !60
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.cv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !60
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.db = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !66 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -120 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !60
  %i.dg = add i64 %i.df, 1
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dh = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !60
  %i.dl = add i64 %i.dk, 1
  tail call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #20
  br label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.dm = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -208 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !752 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !754 ; 2 uses
  %.not4.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.eq, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i ], [ %i.dn, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit ] ; 10 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i, i64 160 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !341, !range !343, !noundef !344
  %i.ds = trunc nuw i8 %i.dr to i1
  store i8 0, ptr %i.dq, align 8, !tbaa !341
  br i1 %i.ds, label %bb.f, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i8

bb.f:                                             ; preds = %.lr.ph.i7
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !66 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i, i64 144 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i19: ; preds = %bb.f
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !60
  %i.dy = add i64 %i.dx, 1
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i8

end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_:bb.a
  %i.as = and i32 %i.ar, %i.g                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [432 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = lshr i64 %i.at, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = and i32 %i.as, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1525

.thread:                                          ; preds = %.lr.ph, %bb.e, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ai, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ null, %bb.a ], [ %i.au, %bb.e ], [ %i.ap, %.lr.ph ]
  %.2 = phi i1 [ false, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ false, %bb.a ], [ %i.aq, %bb.e ], [ %i.aq, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1519
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !394
  %i.b = load i32, ptr %1, align 8, !tbaa !394
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !395
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !395
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !393, !range !343, !noundef !344 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i8, ptr %i.n, align 8, !tbaa !393, !range !343, !noundef !344
  %i.p = icmp eq i8 %i.l, %i.o                    ; 2 uses
  %brmerge.not.i.i = and i1 %i.p, %i.m
  br i1 %brmerge.not.i.i, label %bb.d, label %_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.r, %i.t
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = zext i32 %i.r to i64
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.y = load i64, ptr %.0810.i.i.i.i.i.i.i, align 8, !tbaa !171
  %i.z = load i64, ptr %.011.i.i.i.i.i.i.i, align 8, !tbaa !171
  %.unshifted.i.i.i.i.i.i.i = xor i64 %i.z, %i.y
  %i.aa = icmp ult i64 %.unshifted.i.i.i.i.i.i.i, 8589934592 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.ab, %i.w
  %or.cond.not = select i1 %i.aa, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit, !llvm.loop !908

_ZN5clang9api_noteseqERKNS0_16FunctionTableKeyES3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.ad = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.p, %bb.c ], [ true, %bb.e ], [ false, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.29", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !368
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 432                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !363
  store ptr %i.y, ptr %i.q, align 8, !tbaa !367
  store i32 0, ptr %i.p, align 16, !tbaa !356
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !368 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !363
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 432
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.624, align 8            ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = load ptr, ptr %1, align 8, !tbaa !363
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1519
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !367
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !368  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !367
  store ptr %i.k, ptr %i.b, align 8, !tbaa !849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.l = load ptr, ptr %0, align 8, !tbaa !363
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !368
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.d, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = zext i32 %i.i to i64
  %i.q = add nuw nsw i64 %i.p, 31
  %i.r = lshr i64 %i.q, 5                         ; 2 uses
  %.not.i9 = icmp eq i64 %i.r, 0
  br i1 %.not.i9, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51   ; 2 uses
  %.not11.i7 = icmp eq i32 %i.t, 0
  br i1 %.not11.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph12
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.u = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0.i8 = phi i32 [ %i.t, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i8, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  call void @_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.w)
  %i.x = add i32 %.0.i8, -1
  %i.y = and i32 %i.x, %.0.i8                     ; 2 uses
  %.not11.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1526

._crit_edge:                                      ; preds = %bb.b, %.lr.ph12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph12, !llvm.loop !1527

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.h, align 4, !tbaa !368
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.z = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !356
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !356
  %i.ad = icmp eq i32 %i.z, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !363
  %i.af = zext i32 %i.z to i64                    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 432
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #17
  store i32 0, ptr %i.h, align 4, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_13CXXMethodInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.381", align 8   ; 5 uses
  %3 = alloca %"struct.std::array", align 8       ; 5 uses
  %4 = alloca %"struct.std::array.426", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1528, !nonnull !344, !align !692
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1519
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = getelementptr inbounds nuw [432 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !393, !range !343, !noundef !344
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.h = load i32, ptr %i.d, align 8, !tbaa !51
  store i32 %i.h, ptr %4, align 4
  %i.i = load i32, ptr %i.e, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.g, ptr %i.k, align 4
  %i.l = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 9) #17
  %i.m = xor i64 %i.l, -49064778989728563         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.n = load i8, ptr %i.f, align 8, !tbaa !393, !range !343, !noundef !344
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61
  %i.s = zext i32 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %i.m, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !65   ; 2 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.sroa.010.013.i.i = xor i64 %i.u, -49064778989728563 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.w, 0
  br i1 %.not14.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.010.016.i.i = phi i64 [ %.sroa.010.013.i.i, %.lr.ph.i.i ], [ %.sroa.010.0.i.i, %bb.c ]
  %.015.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ae, %bb.c ] ; 2 uses
  %i.aa = load i64, ptr %.015.i.i, align 8, !tbaa !126
  %i.ab = lshr i64 %i.aa, 33
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %.sroa.010.016.i.i, ptr %2, align 8
  store i32 %i.ac, ptr %i.z, align 8
  %i.ad = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.sroa.010.0.i.i = xor i64 %i.ad, -49064778989728563 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, label %bb.c

_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.010.1.i.i = phi i64 [ %i.m, %bb.a ], [ %.sroa.010.013.i.i, %bb.b ], [ %.sroa.010.0.i.i, %bb.c ]
  %i.af = trunc i64 %.sroa.010.1.i.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1531, !nonnull !344, !align !1493
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51 ; 2 uses
  %i.aj = and i32 %i.ai, %i.af                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1532, !nonnull !344, !align !692
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !849 ; 2 uses
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5                       ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = and i32 %i.aj, 31                       ; 2 uses
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, %.lr.ph
  %.017 = phi i32 [ %i.av, %.lr.ph ], [ %i.aj, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ]
  %i.au = add i32 %.017, 1
  %i.av = and i32 %i.au, %i.ai                    ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = and i32 %i.av, 31                       ; 2 uses
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !1533

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit
  %.lcssa15 = phi i64 [ %i.an, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ %i.aw, %.lr.ph ]
  %.lcssa14 = phi i64 [ %i.ao, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ %i.ax, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ar, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ %i.ba, %.lr.ph ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1534, !nonnull !344, !align !692
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1519
  %i.bg = getelementptr inbounds nuw [432 x i8], ptr %i.bf, i64 %.lcssa15 ; 10 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1528, !nonnull !344, !align !692
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1519
  %i.bj = getelementptr inbounds nuw [432 x i8], ptr %i.bi, i64 %i.c ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8
  store i64 %i.bk, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  store i8 0, ptr %i.bo, align 8, !tbaa !393
  %i.bp = load i8, ptr %i.bn, align 8, !tbaa !393, !range !343, !noundef !344
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.d, label %_ZN5clang9api_notes16FunctionTableKeyC2EOS1_.exit

bb.d:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 2, ptr %i.bt, align 4, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bm) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i8 1, ptr %i.bo, align 8, !tbaa !393
  br label %_ZN5clang9api_notes16FunctionTableKeyC2EOS1_.exit

_ZN5clang9api_notes16FunctionTableKeyC2EOS1_.exit: ; preds = %._crit_edge, %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !1528, !nonnull !344, !align !692
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1519 ; 2 uses
  %i.ca = getelementptr inbounds nuw [432 x i8], ptr %i.bz, i64 %i.c ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS4_JEEES6_IPSF_bEOT_DpOT0_:bb.a
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 152               ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !51
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !51
  %i.bj = load i32, ptr %i.an, align 8, !tbaa !404
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.an, align 8, !tbaa !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 4
  store i64 %i.bl, ptr %i.av, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 1, ptr %i.bp, align 4, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ %i.ag, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !411, !noalias !1543 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415, !noalias !1543 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !416, !noalias !1543 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = load <2 x i32>, ptr %1, align 4, !tbaa !51
  store <2 x i32> %i.h, ptr %3, align 8
  %i.i = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.j = trunc i64 %i.i to i32
  %i.k = xor i32 %i.j, -313160499
  %.024 = and i32 %i.k, %i.g                      ; 3 uses
  %i.l = zext i32 %.024 to i64                    ; 2 uses
  %i.m = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = and i32 %.024, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %1, align 4, !tbaa !784
  %i.v = load i32, ptr %i.t, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.w = add nuw i32 %.025, 1
  %.0 = and i32 %i.w, %i.g                        ; 3 uses
  %i.x = zext i32 %.0 to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = and i32 %.0, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %.thread, !prof !722, !llvm.loop !1541

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.af = phi ptr [ %i.m, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !784
  %i.ah = icmp eq i32 %i.u, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.v, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.af, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1542
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.25", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !416
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 152                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !411
  store ptr %i.y, ptr %i.q, align 8, !tbaa !415
  store i32 0, ptr %i.p, align 16, !tbaa !404
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !416 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !411
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 152
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !411
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !416  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !411
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !416
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.bx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x i32> %i.v, ptr %2, align 8
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.z = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = and i32 %.0.i7, 31                      ; 2 uses
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  %i.ag = add i32 %.0.i7, 1
  br i1 %i.af, label %bb.c, label %bb.d, !llvm.loop !1548

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.z ; 5 uses
  %i.aj = load i64, ptr %i.u, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 1, ptr %i.an, align 4, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELj1EEC2EOS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.aq) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELj1EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELj1EEC2EOS7_.exit.i: ; preds = %bb.e, %bb.d
  %i.as = shl nuw i32 1, %i.ad
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ah, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 3 uses
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELj1EEC2EOS7_.exit.i
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 7
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 7 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !60
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !60
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i11.i = icmp eq ptr %i.aw, %i.ba
  br i1 %.not.i.i11.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !442

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELj1EEC2EOS7_.exit.i
  %i.bt = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.aw, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELj1EEC2EOS7_.exit.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  call void @free(ptr noundef %i.bt) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.f
  %i.bw = add i32 %.0.i21, -1
  %i.bx = and i32 %i.bw, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bx, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1549

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_9FieldInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1550

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !416
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.by = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !404
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !404
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.cd = load ptr, ptr %1, align 8, !tbaa !411
  %i.ce = zext i32 %i.by to i64                   ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, 152
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_9FieldInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_9FieldInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes9FieldInfoEEE12assignRemoteEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61   ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !61   ; 4 uses
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %.not = icmp ult i32 %i.j, %i.g
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %.not33 = icmp eq i32 %i.g, 0
  br i1 %.not33, label %_ZSt4moveIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes9FieldInfoEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS4_JEEES6_IPSF_bEOT_DpOT0_:bb.a
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 152               ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !51
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !51
  %i.bj = load i32, ptr %i.an, align 8, !tbaa !487
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.an, align 8, !tbaa !487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 4
  store i64 %i.bl, ptr %i.av, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 1, ptr %i.bp, align 4, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ %i.ag, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !494, !noalias !1559 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !498, !noalias !1559 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !499, !noalias !1559 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = load <2 x i32>, ptr %1, align 4, !tbaa !51
  store <2 x i32> %i.h, ptr %3, align 8
  %i.i = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.j = trunc i64 %i.i to i32
  %i.k = xor i32 %i.j, -313160499
  %.024 = and i32 %i.k, %i.g                      ; 3 uses
  %i.l = zext i32 %.024 to i64                    ; 2 uses
  %i.m = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = and i32 %.024, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %1, align 4, !tbaa !784
  %i.v = load i32, ptr %i.t, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.w = add nuw i32 %.025, 1
  %.0 = and i32 %i.w, %i.g                        ; 3 uses
  %i.x = zext i32 %.0 to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = and i32 %.0, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %.thread, !prof !722, !llvm.loop !1557

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.af = phi ptr [ %i.m, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !784
  %i.ah = icmp eq i32 %i.u, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.v, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.af, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1558
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.33", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !499
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 152                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !494
  store ptr %i.y, ptr %i.q, align 8, !tbaa !498
  store i32 0, ptr %i.p, align 16, !tbaa !487
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !499 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !494
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 152
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !494
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !498
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !499  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !498  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !494
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !499
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.bx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x i32> %i.v, ptr %2, align 8
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.z = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = and i32 %.0.i7, 31                      ; 2 uses
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  %i.ag = add i32 %.0.i7, 1
  br i1 %i.af, label %bb.c, label %bb.d, !llvm.loop !1564

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.z ; 5 uses
  %i.aj = load i64, ptr %i.u, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 1, ptr %i.an, align 4, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELj1EEC2EOS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.aq) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELj1EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELj1EEC2EOS7_.exit.i: ; preds = %bb.e, %bb.d
  %i.as = shl nuw i32 1, %i.ad
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ah, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 3 uses
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELj1EEC2EOS7_.exit.i
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 7
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 7 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !60
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !60
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %.not.i.i11.i = icmp eq ptr %i.aw, %i.ba
  br i1 %.not.i.i11.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !524

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELj1EEC2EOS7_.exit.i
  %i.bt = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.aw, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELj1EEC2EOS7_.exit.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  call void @free(ptr noundef %i.bt) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.f
  %i.bw = add i32 %.0.i21, -1
  %i.bx = and i32 %i.bw, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bx, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1565

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1566

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !499
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.by = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !487
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !487
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.cd = load ptr, ptr %1, align 8, !tbaa !494
  %i.ce = zext i32 %i.by to i64                   ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, 152
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalVariableInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes18GlobalVariableInfoEEE12assignRemoteEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61   ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !61   ; 4 uses
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %.not = icmp ult i32 %i.j, %i.g
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %.not33 = icmp eq i32 %i.g, 0
  br i1 %.not33, label %_ZSt4moveIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes18GlobalVariableInfoEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_:bb.a
  %i.n = load i8, ptr %i.h, align 8, !tbaa !393, !range !343, !noundef !344
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61
  %i.s = zext i32 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 %i.m, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !65   ; 2 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.sroa.010.013.i.i = xor i64 %i.u, -49064778989728563 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.w, 0
  br i1 %.not14.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.010.016.i.i = phi i64 [ %.sroa.010.013.i.i, %.lr.ph.i.i ], [ %.sroa.010.0.i.i, %bb.d ]
  %.015.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ae, %bb.d ] ; 2 uses
  %i.aa = load i64, ptr %.015.i.i, align 8, !tbaa !126
  %i.ab = lshr i64 %i.aa, 33
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %.sroa.010.016.i.i, ptr %3, align 8
  store i32 %i.ac, ptr %i.z, align 8
  %i.ad = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.sroa.010.0.i.i = xor i64 %i.ad, -49064778989728563 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, label %bb.d

_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.010.1.i.i = phi i64 [ %i.m, %bb.b ], [ %.sroa.010.013.i.i, %bb.c ], [ %.sroa.010.0.i.i, %bb.d ]
  %i.af = trunc i64 %.sroa.010.1.i.i to i32
  %i.ag = and i32 %i.g, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = and i32 %i.ag, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, %bb.e
  %i.ap = phi ptr [ %i.au, %bb.e ], [ %i.ai, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ] ; 2 uses
  %.024 = phi i32 [ %i.as, %bb.e ], [ %i.ag, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ]
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE7isEqualERKS3_S6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ap) ; 3 uses
  br i1 %i.aq, label %.thread, label %bb.e, !prof !183

bb.e:                                             ; preds = %.lr.ph
  %i.ar = add nuw i32 %.024, 1
  %i.as = and i32 %i.ar, %i.g                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = lshr i64 %i.at, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = and i32 %i.as, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1574

.thread:                                          ; preds = %.lr.ph, %bb.e, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ai, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ null, %bb.a ], [ %i.au, %bb.e ], [ %i.ap, %.lr.ph ]
  %.2 = phi i1 [ false, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ false, %bb.a ], [ %i.aq, %bb.e ], [ %i.aq, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1568
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.35", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !540
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 8                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !535
  store ptr %i.y, ptr %i.q, align 8, !tbaa !539
  store i32 0, ptr %i.p, align 16, !tbaa !528
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !540 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !535
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.636, align 8            ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = load ptr, ptr %1, align 8, !tbaa !535
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1568
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !539
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !540  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !539
  store ptr %i.k, ptr %i.b, align 8, !tbaa !849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.l = load ptr, ptr %0, align 8, !tbaa !535
  store ptr %i.l, ptr %i.c, align 8, !tbaa !1568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !540
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.d, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = zext i32 %i.i to i64
  %i.q = add nuw nsw i64 %i.p, 31
  %i.r = lshr i64 %i.q, 5                         ; 2 uses
  %.not.i9 = icmp eq i64 %i.r, 0
  br i1 %.not.i9, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !51   ; 2 uses
  %.not11.i7 = icmp eq i32 %i.t, 0
  br i1 %.not11.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph12
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.u = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0.i8 = phi i32 [ %i.t, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i8, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  call void @_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.w)
  %i.x = add i32 %.0.i8, -1
  %i.y = and i32 %i.x, %.0.i8                     ; 2 uses
  %.not11.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1575

._crit_edge:                                      ; preds = %bb.b, %.lr.ph12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph12, !llvm.loop !1576

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.h, align 4, !tbaa !540
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.z = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !528
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !528
  %i.ad = icmp eq i32 %i.z, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !535
  %i.af = zext i32 %i.z to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #17
  store i32 0, ptr %i.h, align 4, !tbaa !540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes16FunctionTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_18GlobalFunctionInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.381", align 8   ; 5 uses
  %3 = alloca %"struct.std::array", align 8       ; 5 uses
  %4 = alloca %"struct.std::array.426", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1577, !nonnull !344, !align !692
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !393, !range !343, !noundef !344
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.h = load i32, ptr %i.d, align 8, !tbaa !51
  store i32 %i.h, ptr %4, align 4
  %i.i = load i32, ptr %i.e, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.g, ptr %i.k, align 4
  %i.l = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 9) #17
  %i.m = xor i64 %i.l, -49064778989728563         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.n = load i8, ptr %i.f, align 8, !tbaa !393, !range !343, !noundef !344
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61
  %i.s = zext i32 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %i.m, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !65   ; 2 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.sroa.010.013.i.i = xor i64 %i.u, -49064778989728563 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.w, 0
  br i1 %.not14.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.010.016.i.i = phi i64 [ %.sroa.010.013.i.i, %.lr.ph.i.i ], [ %.sroa.010.0.i.i, %bb.c ]
  %.015.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ae, %bb.c ] ; 2 uses
  %i.aa = load i64, ptr %.015.i.i, align 8, !tbaa !126
  %i.ab = lshr i64 %i.aa, 33
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i64 %.sroa.010.016.i.i, ptr %2, align 8
  store i32 %i.ac, ptr %i.z, align 8
  %i.ad = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.sroa.010.0.i.i = xor i64 %i.ad, -49064778989728563 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, label %bb.c

_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.010.1.i.i = phi i64 [ %i.m, %bb.a ], [ %.sroa.010.013.i.i, %bb.b ], [ %.sroa.010.0.i.i, %bb.c ]
  %i.af = trunc i64 %.sroa.010.1.i.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1580, !nonnull !344, !align !1493
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51 ; 2 uses
  %i.aj = and i32 %i.ai, %i.af                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1581, !nonnull !344, !align !692
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !849 ; 2 uses
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5                       ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = and i32 %i.aj, 31                       ; 2 uses
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit, %.lr.ph
  %.017 = phi i32 [ %i.av, %.lr.ph ], [ %i.aj, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ]
  %i.au = add i32 %.017, 1
  %i.av = and i32 %i.au, %i.ai                    ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = and i32 %i.av, 31                       ; 2 uses
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !1582

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit
  %.lcssa15 = phi i64 [ %i.an, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ %i.aw, %.lr.ph ]
  %.lcssa14 = phi i64 [ %i.ao, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ %i.ax, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ar, %_ZN4llvm12DenseMapInfoIN5clang9api_notes16FunctionTableKeyEvE12getHashValueERKS3_.exit ], [ %i.ba, %.lr.ph ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1583, !nonnull !344, !align !692
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1568
  %i.bg = getelementptr inbounds nuw [256 x i8], ptr %i.bf, i64 %.lcssa15 ; 10 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1577, !nonnull !344, !align !692
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1568
  %i.bj = getelementptr inbounds nuw [256 x i8], ptr %i.bi, i64 %i.c ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8
  store i64 %i.bk, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  store i8 0, ptr %i.bo, align 8, !tbaa !393
  %i.bp = load i8, ptr %i.bn, align 8, !tbaa !393, !range !343, !noundef !344
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.d, label %_ZN5clang9api_notes16FunctionTableKeyC2EOS1_.exit

bb.d:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 2, ptr %i.bt, align 4, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_18PointerEmbeddedIntIjLi31EEEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bm) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store i8 1, ptr %i.bo, align 8, !tbaa !393
  br label %_ZN5clang9api_notes16FunctionTableKeyC2EOS1_.exit

_ZN5clang9api_notes16FunctionTableKeyC2EOS1_.exit: ; preds = %._crit_edge, %_ZNSt22_Optional_payload_baseIN4llvm11SmallVectorINS0_18PointerEmbeddedIntIjLi31EEELj2EEEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !1577, !nonnull !344, !align !692
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1568 ; 2 uses
  %i.ca = getelementptr inbounds nuw [256 x i8], ptr %i.bz, i64 %i.c ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E24lookupOrInsertIntoBucketIjJEEES3_IPSE_bEOT_DpOT0_:bb.a
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit, label %bb.d, !prof !183

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E15LookupBucketForIjEEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1591
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !578
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !574
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 7 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 112               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !51
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !567
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 1, ptr %i.bf, align 4, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E15LookupBucketForIjEEbRKT_RPSE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E15LookupBucketForIjEEbRKT_RPSE_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E15LookupBucketForIjEEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !574, !noalias !1592 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !578, !noalias !1592 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !579, !noalias !1592 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !51     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !716

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !722, !llvm.loop !1590

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1591
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.37", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !579
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 112                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !574
  store ptr %i.y, ptr %i.q, align 8, !tbaa !578
  store i32 0, ptr %i.p, align 16, !tbaa !567
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !579 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !574
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 112
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !574
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !578
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !579  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !578  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !574
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !579
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !1597

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %i.x ; 5 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.aj, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 1, ptr %i.ak, align 4, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEC2EOS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %i.an) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEC2EOS7_.exit.i: ; preds = %bb.e, %bb.d
  %i.ap = shl nuw i32 1, %i.ab
  %i.aq = load i32, ptr %i.af, align 4, !tbaa !51
  %i.ar = or i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.af, align 4, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 3 uses
  %i.au = load i32, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEC2EOS7_.exit.i
  %i.av = zext i32 %i.au to i64
  %.idx.i.i = mul nuw nsw i64 %i.av, 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i ], [ %i.aw, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.az = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !60
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !66 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i11.i = icmp eq ptr %i.at, %i.ax
  br i1 %.not.i.i11.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !605

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.as, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEC2EOS7_.exit.i
  %i.bk = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.at, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEC2EOS7_.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.bk) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.f
  %i.bn = add i32 %.0.i15, -1
  %i.bo = and i32 %i.bn, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1598

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1599

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !579
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !567
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !567
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !574
  %i.bv = zext i32 %i.bp to i64                   ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bv, 112
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !579
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjSC_EEEEjSC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16EnumConstantInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %.idx.i = mul nuw nsw i64 %i.i, 88
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.k, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i ], [ %i.j, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.05.i.i, i64 -88 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i, i64 -72
  %i.m = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !60
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i, i64 -56 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16EnumConstantInfoEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !60
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS4_JEEES6_IPSF_bEOT_DpOT0_:bb.a
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 448               ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !51
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !51
  %i.bj = load i32, ptr %i.an, align 8, !tbaa !611
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.an, align 8, !tbaa !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 4
  store i64 %i.bl, ptr %i.av, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 1, ptr %i.bp, align 4, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ %i.ag, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !618, !noalias !1608 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !622, !noalias !1608 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !623, !noalias !1608 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = load <2 x i32>, ptr %1, align 4, !tbaa !51
  store <2 x i32> %i.h, ptr %3, align 8
  %i.i = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.j = trunc i64 %i.i to i32
  %i.k = xor i32 %i.j, -313160499
  %.024 = and i32 %i.k, %i.g                      ; 3 uses
  %i.l = zext i32 %.024 to i64                    ; 2 uses
  %i.m = getelementptr inbounds nuw [448 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = and i32 %.024, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %1, align 4, !tbaa !784
  %i.v = load i32, ptr %i.t, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.w = add nuw i32 %.025, 1
  %.0 = and i32 %i.w, %i.g                        ; 3 uses
  %i.x = zext i32 %.0 to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [448 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = and i32 %.0, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %.thread, !prof !722, !llvm.loop !1606

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.af = phi ptr [ %i.m, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !784
  %i.ah = icmp eq i32 %i.u, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.v, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.af, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1607
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.39", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !623
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 448                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !618
  store ptr %i.y, ptr %i.q, align 8, !tbaa !622
  store i32 0, ptr %i.p, align 16, !tbaa !611
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !623 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !618
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 448
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_7TagInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !618
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !622
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !623  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !622  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !623
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i31 = icmp eq i64 %i.n, 0
  br i1 %.not.i31, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_7TagInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i29 = icmp eq i32 %i.p, 0
  br i1 %.not11.i29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph34
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i30 = phi i32 [ %i.p, %.lr.ph ], [ %i.el, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_7TagInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i30, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [448 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x i32> %i.v, ptr %2, align 8
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.z = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = and i32 %.0.i7, 31                      ; 2 uses
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  %i.ag = add i32 %.0.i7, 1
  br i1 %i.af, label %bb.c, label %bb.d, !llvm.loop !1613

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw [448 x i8], ptr %i.h, i64 %i.z ; 5 uses
  %i.aj = load i64, ptr %i.u, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 1, ptr %i.an, align 4, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELj1EEC2EOS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(440) %i.ak, ptr noundef nonnull align 8 dereferenceable(440) %i.aq) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELj1EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELj1EEC2EOS7_.exit.i: ; preds = %bb.e, %bb.d
  %i.as = shl nuw i32 1, %i.ad
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ah, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 3 uses
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes7TagInfoEELj1EEC2EOS7_.exit.i
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i = mul nuw nsw i64 %i.ay, 424
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 29 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -424 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -408
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !642, !range !343, !noundef !344
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !642
  br i1 %i.be, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !60
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !642
  br i1 %i.bn, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bo = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.g
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bu = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bw = trunc nuw i8 %i.bv to i1
  store i8 0, ptr %i.bu, align 8, !tbaa !642
  br i1 %i.bw, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.h:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !66 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.h
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !60
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.cd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !642, !range !343, !noundef !344
  %i.cf = trunc nuw i8 %i.ce to i1
  store i8 0, ptr %i.cd, align 8, !tbaa !642
  br i1 %i.cf, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.cg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -168
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -152 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7.i: ; preds = %bb.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !60
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.cm = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !642, !range !343, !noundef !344
  %i.co = trunc nuw i8 %i.cn to i1
  store i8 0, ptr %i.cm, align 8, !tbaa !642
  br i1 %i.co, label %bb.j, label %_ZN5clang9api_notes7TagInfoD2Ev.exit

bb.j:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i
  %i.cp = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -208
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !66 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN5clang9api_notes7TagInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i: ; preds = %bb.j
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !60
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #20
  br label %_ZN5clang9api_notes7TagInfoD2Ev.exit

_ZN5clang9api_notes7TagInfoD2Ev.exit:             ; preds = %bb.j, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i
  %i.cv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -224 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !642, !range !343, !noundef !344
  %i.cx = trunc nuw i8 %i.cw to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !642
  br i1 %i.cx, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i8

bb.k:                                             ; preds = %_ZN5clang9api_notes7TagInfoD2Ev.exit
  %i.cy = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -256
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !66 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -240 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15: ; preds = %bb.k
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !60
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i8

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i8: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15, %_ZN5clang9api_notes7TagInfoD2Ev.exit
  %i.de = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -264 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !tbaa !642, !range !343, !noundef !344
  %i.dg = trunc nuw i8 %i.df to i1
  store i8 0, ptr %i.de, align 8, !tbaa !642
  br i1 %i.dg, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i9

bb.l:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i8
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS4_JEEES6_IPSF_bEOT_DpOT0_:bb.a
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 240               ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !51
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !51
  %i.bj = load i32, ptr %i.an, align 8, !tbaa !652
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.an, align 8, !tbaa !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 4
  store i64 %i.bl, ptr %i.av, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 1, ptr %i.bp, align 4, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ %i.ag, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !659, !noalias !1624 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !663, !noalias !1624 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !664, !noalias !1624 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = load <2 x i32>, ptr %1, align 4, !tbaa !51
  store <2 x i32> %i.h, ptr %3, align 8
  %i.i = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.j = trunc i64 %i.i to i32
  %i.k = xor i32 %i.j, -313160499
  %.024 = and i32 %i.k, %i.g                      ; 3 uses
  %i.l = zext i32 %.024 to i64                    ; 2 uses
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = and i32 %.024, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !716

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %1, align 4, !tbaa !784
  %i.v = load i32, ptr %i.t, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.w = add nuw i32 %.025, 1
  %.0 = and i32 %i.w, %i.g                        ; 3 uses
  %i.x = zext i32 %.0 to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [240 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = and i32 %.0, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %.thread, !prof !722, !llvm.loop !1622

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.af = phi ptr [ %i.m, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !784
  %i.ah = icmp eq i32 %i.u, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.v, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !183

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ], [ %i.af, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1623
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.41", align 16 ; 11 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !664
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 240                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !659
  store ptr %i.y, ptr %i.q, align 8, !tbaa !663
  store i32 0, ptr %i.p, align 16, !tbaa !652
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !179
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !179
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !51
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !51
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !51
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !664 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !659
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 240
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.501", align 8   ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !659
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !663
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !664  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !663  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !659
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !664
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.cs, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [240 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store <2 x i32> %i.v, ptr %2, align 8
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.z = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = and i32 %.0.i7, 31                      ; 2 uses
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  %i.ag = add i32 %.0.i7, 1
  br i1 %i.af, label %bb.c, label %bb.d, !llvm.loop !1629

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.z ; 5 uses
  %i.aj = load i64, ptr %i.u, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 1, ptr %i.an, align 4, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELj1EEC2EOS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(232) %i.ak, ptr noundef nonnull align 8 dereferenceable(232) %i.aq) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELj1EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELj1EEC2EOS7_.exit.i: ; preds = %bb.e, %bb.d
  %i.as = shl nuw i32 1, %i.ad
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ah, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 3 uses
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELj1EEC2EOS7_.exit.i
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i = mul nuw nsw i64 %i.ay, 216
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 14 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -216 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200
  %i.bc = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !642, !range !343, !noundef !344
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !642
  br i1 %i.be, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !60
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !642
  br i1 %i.bn, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bo = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -88
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.g
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !60
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bu = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !642, !range !343, !noundef !344
  %i.bw = trunc nuw i8 %i.bv to i1
  store i8 0, ptr %i.bu, align 8, !tbaa !642
  br i1 %i.bw, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

bb.h:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !66 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.h
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !60
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.cd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !66 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -144 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !60
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -184 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !60
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit

_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i.i11.i = icmp eq ptr %i.aw, %i.ba
  br i1 %.not.i.i11.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1358

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZN5clang9api_notes14CommonTypeInfoD2Ev.exit
  %.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELj1EEC2EOS7_.exit.i
  %i.co = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.aw, %_ZN4llvm11SmallVectorISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELj1EEC2EOS7_.exit.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  call void @free(ptr noundef %i.co) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes11TypedefInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.i
  %i.cr = add i32 %.0.i21, -1
  %i.cs = and i32 %i.cr, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cs, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1630

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS3_11TypedefInfoEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1631

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !664
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ct = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !652
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !652
  %i.cx = icmp eq i32 %i.ct, 0
  br i1 %i.cx, label %_ZN4llvm8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS2_11TypedefInfoEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang9api_notes18SingleDeclTableKeyENS_11SmallVectorISt4pairINS_12VersionTupleENS6_11TypedefInfoEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
end_hunk_12
