Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Metadata?download=true
inline.NumInlined: 13117
inline.NumDeleted: 6188
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_S4_S6_S8_Lb0EEEbEOT_DpOT0_:bb.a
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aj
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.i, ptr %i.al, align 8, !tbaa !2202
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2151, !noalias !2205 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2197, !noalias !2205 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2150, !noalias !2205 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !1786
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !16
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #26
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !1786
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !16
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !16
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !822

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !78, !llvm.loop !2210

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !822

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !1786
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !823

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !75
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !78, !llvm.loop !2210

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !2196
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.258", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2150
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2151
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2197
  store i32 0, ptr %i.p, align 16, !tbaa !2187
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2196
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2151
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2197
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2150 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2197 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2150
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !1786
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2211

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !2198
  %i.ag = shl nuw i32 1, %i.aa
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !75
  %i.aj = add i32 %.0.i19, -1
  %i.ak = and i32 %i.aj, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2212

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !2213

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2150
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.al = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2187
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !2187
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !2151
  %i.ar = zext i32 %i.al to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !2150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2214
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !2214
  %i.d = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !73
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.ar, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.aq, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = sub i32 %.03337, %i.ae
  %i.ag = and i32 %i.af, %i.i
  %i.ah = sub i32 %i.x, %i.ae
  %i.ai = and i32 %i.ah, %i.i
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ak = zext i32 %.03337 to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  store ptr %i.z, ptr %i.al, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !84
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ap = add i32 %i.x, 1
  %i.aq = and i32 %i.ap, %i.i                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !75
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.ay = and i32 %.033.lcssa, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = xor i32 %i.az, -1
  %i.bb = lshr i32 %.033.lcssa, 5
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !75
  %i.bf = and i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !63, !noalias !2215 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72, !noalias !2215 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !73, !noalias !2215 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !76

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.z = icmp eq ptr %i.i, %i.y
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2221
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !72
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !75
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2214
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !74
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !84
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63, !noalias !2222 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72, !noalias !2222 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73, !noalias !2222 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !77

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !78, !llvm.loop !2220

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2221
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.57", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !63
  store ptr %i.y, ptr %i.q, align 8, !tbaa !72
  store i32 0, ptr %i.p, align 16, !tbaa !2214
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2221
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2227

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !84
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !75
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2228

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2229

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !73
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2214
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2214
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataEPNS_15MetadataAsValueENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELb1EE15growAndPushBackESB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !83
  %i.g = load i32, ptr %i.a, align 8, !tbaa !79
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !79
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS2_JEEES3_IPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !2230 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2230 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2230 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !2230
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !76

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !165
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E15LookupBucketForIS2_EEbRKT_RPSH_.exit, label %bb.c, !prof !77

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !75
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !78, !llvm.loop !2235

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2236
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E22findBucketForInsertionIS2_EEPSH_RKT_SL_.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E15LookupBucketForIS2_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2236
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E22findBucketForInsertionIS2_EEPSH_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E22findBucketForInsertionIS2_EEPSH_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E15LookupBucketForIS2_EEbRKT_RPSH_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !78, !llvm.loop !2235

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2236
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.317", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEEC2EjNS_12DenseMapBaseISH_S1_SB_SD_SG_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #26 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !151
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !151
  br label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEEC2EjNS_12DenseMapBaseISH_S1_SB_SD_SG_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEEC2EjNS_12DenseMapBaseISH_S1_SB_SD_SG_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit.thread, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEEC2EjNS_12DenseMapBaseISH_S1_SB_SD_SG_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2243
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !151
  br label %bb.b

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEEC2EjNS_12DenseMapBaseISH_S1_SB_SD_SG_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !151
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !151
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !151
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE13maybeMoveFastEOSH_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !151 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !151
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #26
  br label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i23 = icmp eq i64 %i.ab, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75 ; 2 uses
  %.not11.i21 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !165 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.014.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !75
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, !llvm.loop !2245

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  store ptr %i.aj, ptr %i.bg, align 8, !tbaa !165
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false)
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !75
  %i.bn = add i32 %.0.i22, -1
  %i.bo = and i32 %i.bn, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2246

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !2247

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre30 = load i32, ptr %0, align 8
  %.pre31 = and i32 %.pre30, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre31, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !151 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = mul nuw nsw i64 %i.bx, 24
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #26
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SB_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SF_EEEES5_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_SJ_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEET_SJ_SJ_T0_.exit"
  %i.g = icmp eq i64 %i.de, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46, !llvm.loop !2248

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa42 = phi i64 [ %i.c, %.lr.ph ], [ %i.ec, %bb.b ] ; 2 uses
  %.026.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = lshr i64 %.lcssa42, 3                    ; 2 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = and i64 %.lcssa42, 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.014.us.i.i.i = phi i64 [ %i.ao, %"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.j, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us.i.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !216  ; 2 uses
  %i.t = icmp slt i64 %.014.us.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.030.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.014.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.030.i.us.i.i.i, 1              ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i.us.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !216
  %.val29.i.us.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !216
  %i.z = getelementptr i8, ptr %.val.i.us.i.i.i, i64 8
  %.val.val.i.us.i.i.i = load i64, ptr %i.z, align 8, !tbaa !218
  %i.aa = getelementptr i8, ptr %.val29.i.us.i.i.i, i64 8
  %.val29.val.i.us.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !218
  %i.ab = icmp ult i64 %.val.val.i.us.i.i.i, %.val29.val.i.us.i.i.i
  %i.ac = or disjoint i64 %i.u, 1
  %spec.select.i.us.i.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.v ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !216
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !216
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.l
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !2249

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.ah = getelementptr i8, ptr %i.s, i64 8
  %.val14.val.i.i.us.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !218
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.0133.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.048.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.04.in.i.i.us.i.i.i = add nsw i64 %.0133.i.i.us.i.i.i, -1
  %.048.i.i.us.i.i.i = lshr i64 %.04.in.i.i.us.i.i.i, 1 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.i.i.us.i.i.i
  %.val.i.i.us.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !216 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val.i.i.us.i.i.i, i64 8
  %.val.val.i.i.us.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !218
  %i.ak = icmp ult i64 %.val.val.i.i.us.i.i.i, %.val14.val.i.i.us.i.i.i
  br i1 %i.ak, label %bb.d, label %"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0133.i.i.us.i.i.i
  store ptr %.val.i.i.us.i.i.i, ptr %i.al, align 8, !tbaa !216
  %i.am = icmp samesign ugt i64 %.048.i.i.us.i.i.i, %.014.us.i.i.i
  br i1 %i.am, label %bb.c, label %"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !2250

"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.013.lcssa.i.i.us.i.i.i = phi i64 [ %.014.us.i.i.i, %.split.us.i.i.i ], [ %.048.i.i.us.i.i.i, %bb.d ], [ %.0133.i.i.us.i.i.i, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us.i.i.i
  store ptr %i.s, ptr %i.an, align 8, !tbaa !216
  %.not.us.i.i.i = icmp eq i64 %.014.us.i.i.i, 0
  %i.ao = add nsw i64 %.014.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i5.i.preheader, label %.split.us.i.i.i, !llvm.loop !2251

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIPPSt4pairIN4llvm12PointerUnionIJPNS1_15MetadataAsValueEPNS1_8MetadataEPNS1_14DebugValueUserEEEEmElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23ReplaceableMetadataImpl18getAllArgListUsersEvE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2293
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !243
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !231
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !75
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2294
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !107
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !107
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !108
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231, !noalias !2295 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243, !noalias !2295 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !244, !noalias !2295 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !77

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !78, !llvm.loop !2292

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2293
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.55", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !231
  store ptr %i.y, ptr %i.q, align 8, !tbaa !243
  store i32 0, ptr %i.p, align 16, !tbaa !2294
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2293
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !231    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !244  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !243  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !244
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2300

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !108
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !75
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2301

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2302

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !244
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2294
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2294
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPNS_15ValueAsMetadataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2294
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !2294
  %i.d = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !243  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !244
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.ar, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.aq, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = sub i32 %.03337, %i.ae
  %i.ag = and i32 %i.af, %i.i
  %i.ah = sub i32 %i.x, %i.ae
  %i.ai = and i32 %i.ah, %i.i
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ak = zext i32 %.03337 to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  store ptr %i.z, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ap = add i32 %i.x, 1
  %i.aq = and i32 %i.ap, %i.i                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !75
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.ay = and i32 %.033.lcssa, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = xor i32 %i.az, -1
  %i.bb = lshr i32 %.033.lcssa, 5
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !75
  %i.bf = and i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !75
  ret void
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !207
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !77
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2310
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !2311
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %i.ah, 4
  %i.aj = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  %i.ak = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ak)
  %i.al = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2310
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !731
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !719
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.am = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.an = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ao = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = lshr i64 %i.as, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = or i32 %i.av, %i.ay
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !75
  %i.ba = load i32, ptr %i.af, align 8, !tbaa !2311
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.af, align 8, !tbaa !2311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = load ptr, ptr %1, align 8, !tbaa !393
  store ptr %i.bc, ptr %i.ao, align 8, !tbaa !393
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !719, !noalias !2312 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731, !noalias !2312 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !732, !noalias !2312 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !393    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !112
  %.024 = and i32 %i.j, %i.g                      ; 3 uses
  %i.k = zext i32 %.024 to i64                    ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !75
  %i.p = and i32 %.024, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph, label %.thread, !prof !76

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw i32 %.025, 1
  %.0 = and i32 %i.s, %i.g                        ; 3 uses
  %i.t = zext i32 %.0 to i64                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75
  %i.y = and i32 %.0, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !78, !llvm.loop !2309

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !393
  %i.ad = icmp eq ptr %i.h, %i.ac                 ; 3 uses
  br i1 %i.ad, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2310
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.63", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !732
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !719
  store ptr %i.y, ptr %i.q, align 8, !tbaa !731
  store i32 0, ptr %i.p, align 16, !tbaa !2311
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2310
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !719    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !732  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !731  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !719
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !732
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !393  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !112
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.x, %bb.b ], [ %i.af, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.y = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !75 ; 2 uses
  %i.ac = and i32 %.0.i7, 31                      ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  %i.af = add i32 %.0.i7, 1
  br i1 %i.ae, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2317

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.y
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !393
  %i.ai = shl nuw i32 1, %i.ac
  %i.aj = or i32 %i.ai, %i.ab
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !75
  %i.ak = add i32 %.0.i17, -1
  %i.al = and i32 %i.ak, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2318

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2319

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !732
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !2311
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !2311
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.aw, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7MDTupleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(31) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.971", align 8   ; 5 uses
  %3 = alloca %"struct.std::array.970", align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !762, !noalias !2320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2325, !noalias !2320 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !765, !noalias !2320 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !754
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i16, ptr %i.k, align 4, !tbaa !755
  %i.m = zext i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.q = load i8, ptr %i.p, align 2, !tbaa !756, !range !581, !noundef !58
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 48
  %i.t = or disjoint i64 %i.o, %i.s               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not1.i.i = icmp eq i64 %i.v, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %i.t, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !74
  store <2 x ptr> %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.v, ptr %i.y, align 8
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %i.t, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load <2 x ptr>, ptr %1, align 8, !tbaa !74
  store <2 x ptr> %i.ab, ptr %i.aa, align 8
  %i.ac = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit: ; preds = %bb.c, %bb.d
  %.0.in.in.i.i = phi i64 [ %i.z, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = trunc i64 %.0.in.in.i.i to i32
  %.0.i.i = xor i32 %i.ad, -313160499
  %.019 = and i32 %.0.i.i, %i.g                   ; 3 uses
  %i.ae = zext i32 %.019 to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !75
  %i.ai = and i32 %.019, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !76

bb.e:                                             ; preds = %.lr.ph
  %i.al = add nuw i32 %.020, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.aq = and i32 %.0, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph, label %.thread, !prof !78

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit, %bb.e
  %i.at = phi i64 [ %i.am, %bb.e ], [ %i.ae, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ] ; 2 uses
  %.020 = phi i32 [ %.0, %bb.e ], [ %.019, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !749
  %i.aw = call noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_10DILocationEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(31) %1, ptr noundef %i.av)
  br i1 %i.aw, label %.thread.loopexit.split.loop.exit, label %bb.e, !prof !77

.thread.loopexit.split.loop.exit:                 ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.loopexit.split.loop.exit, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ], [ %i.ax, %.thread.loopexit.split.loop.exit ], [ null, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_10DILocationEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !754
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !112
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_10DILocationEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i16, ptr %i.f, align 4, !tbaa !755
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !111
  %i.j = icmp eq i16 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_10DILocationEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !751    ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 2
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm10DILocation11getRawScopeEv.exit.i, label %_ZNK4llvm10DILocation11getRawScopeEv.exit.thread.i

_ZNK4llvm10DILocation11getRawScopeEv.exit.i:      ; preds = %bb.c
  %i.o = lshr i64 %i.m, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  br label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i

_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i
  %i.ab = phi ptr [ %i.y, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.p, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i ], [ %i.u, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.aa, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !111
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %.lobit.i.i = lshr i8 %i.aj, 7
  %i.ak = zext i32 %i.af to i64
  %i.al = zext i16 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, %i.ak
  %i.ao = zext nneg i8 %.lobit.i.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 48
  %i.aq = or disjoint i64 %i.ap, %i.an            ; 2 uses
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.0.i.i.i, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ad, ptr %i.at, align 8
  %i.au = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %i.aq, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ab, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0.i.i.i, ptr %i.aw, align 8
  %i.ax = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.0.in.in.i.i = phi i64 [ %i.au, %bb.c ], [ %i.ax, %bb.d ]
  %i.ay = trunc i64 %.0.in.in.i.i to i32
  %.0.i.i = xor i32 %i.ay, -313160499
  %.024 = and i32 %.0.i.i, %i.g                   ; 3 uses
  %i.az = zext i32 %.024 to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = lshr i64 %i.az, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = and i32 %.024, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !749
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.bi = add nuw i32 %.025, 1
  %.0 = and i32 %i.bi, %i.g                       ; 3 uses
  %i.bj = zext i32 %.0 to i64                     ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = lshr i64 %i.bj, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !75
  %i.bo = and i32 %.0, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %bb.f, label %.thread, !prof !78, !llvm.loop !2333

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.br = phi ptr [ %i.ba, %.lr.ph ], [ %i.bk, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !749
  %i.bt = icmp eq ptr %i.bh, %i.bs                ; 3 uses
  br i1 %i.bt, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa31.sink = phi ptr [ %i.ba, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bk, %bb.e ], [ %i.br, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bt, %bb.e ], [ %i.bt, %bb.f ]
  store ptr %.lcssa31.sink, ptr %2, align 8, !tbaa !2326
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.67", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !765
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !762
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2325
  store i32 0, ptr %i.p, align 16, !tbaa !2327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2326
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.971", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.970", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !762
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2325
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !765  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2325 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !762
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !765
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.u, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.u, %.lr.ph ], [ %i.cb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !749 ; 7 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i:  ; preds = %bb.c
  %i.ae = lshr i64 %i.ac, 2
  %i.af = and i64 %i.ae, 15
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %i.aj = and i64 %i.ac, 960
  %i.ak = icmp eq i64 %i.aj, 128
  br i1 %i.ak, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !79
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i
  %i.ar = phi ptr [ %i.an, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ], [ %i.ai, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i9.i.i.i = phi ptr [ %i.am, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ], [ %i.ah, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i9.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  br label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i
  %i.au = phi ptr [ %i.ar, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.ai, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ], [ %i.an, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.at, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !111
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %.lobit.i.i.i = lshr i8 %i.bc, 7
  %i.bd = zext i32 %i.ay to i64
  %i.be = zext i16 %i.ba to i64
  %i.bf = shl nuw nsw i64 %i.be, 32
  %i.bg = or disjoint i64 %i.bf, %i.bd
  %i.bh = zext nneg i8 %.lobit.i.i.i to i64
  %i.bi = shl nuw nsw i64 %i.bh, 48
  %i.bj = or disjoint i64 %i.bi, %i.bg            ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not1.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %i.bj, ptr %3, align 8
  store ptr %i.au, ptr %i.o, align 8
  store ptr %.0.i.i.i.i, ptr %i.p, align 8
  store i64 %i.aw, ptr %i.q, align 8
  %i.bk = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %i.bj, ptr %2, align 8
  store ptr %i.au, ptr %i.r, align 8
  store ptr %.0.i.i.i.i, ptr %i.s, align 8
  %i.bl = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.0.in.in.i.i.i = phi i64 [ %i.bk, %bb.d ], [ %i.bl, %bb.e ]
  %i.bm = trunc i64 %.0.in.in.i.i.i to i32
  %.0.i.i.i = xor i32 %i.bm, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i
  %.0.i.i.pn.i = phi i32 [ %.0.i.i.i, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i ], [ %i.bu, %bb.f ]
  %.0.i7 = and i32 %.0.i.i.pn.i, %i.k             ; 3 uses
  %i.bn = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bo = lshr i64 %i.bn, 5                       ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !75 ; 2 uses
  %i.br = and i32 %.0.i7, 31                      ; 2 uses
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  %i.bu = add i32 %.0.i7, 1
  br i1 %i.bt, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2334

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bn
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !749
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !749
  %i.by = shl nuw i32 1, %i.br
  %i.bz = or i32 %i.by, %i.bq
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !75
  %i.ca = add i32 %.0.i18, -1
  %i.cb = and i32 %i.ca, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2335

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2336

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !765
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !2327
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !2327
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ch = load ptr, ptr %1, align 8, !tbaa !762
  %i.ci = zext i32 %i.cc to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.ci, 31
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = and i64 %i.cl, 1073741820
  %i.cn = add nuw nsw i64 %i.cm, %i.cj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ch, i64 noundef %i.cn, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !765
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_12DIExpressionEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !2337
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i, %i.h
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.22.0.copyload.i, 3
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i, ptr %i.b, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !775, !noalias !2338 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !787, !noalias !2338 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !788, !noalias !2338 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !773    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !407  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !410
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
bb.e:                                             ; preds = %.loopexit
  %i.au = shl i32 %i.aq, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.au)
  %i.av = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2344
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.e
  %i.aw = phi ptr [ %.pre.i, %bb.e ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !787
  %i.ay = load ptr, ptr %0, align 8, !tbaa !775
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !75
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !75
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !2345
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !2345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !773
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !773
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.al, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !775, !noalias !2346 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !787, !noalias !2346 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788, !noalias !2346 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !773    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !407  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !410
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.j, i64 noundef %i.o) #26
  %i.q = trunc i64 %i.p to i32
  %i.r = xor i32 %i.q, -313160499
  %.024 = and i32 %i.r, %i.g                      ; 3 uses
  %i.s = zext i32 %.024 to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  %i.x = and i32 %.024, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %i.aa = load ptr, ptr %1, align 8, !tbaa !773
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = add nuw i32 %.025, 1
  %.0 = and i32 %i.ab, %i.g                       ; 3 uses
  %i.ac = zext i32 %.0 to i64                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %.0, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %.thread, !prof !78, !llvm.loop !2343

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ak = phi ptr [ %i.t, %.lr.ph ], [ %i.ad, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !773
  %i.am = icmp eq ptr %i.aa, %i.al                ; 3 uses
  br i1 %i.am, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ], [ %i.ak, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.am, %bb.c ], [ %i.am, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2344
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.71", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !788
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !775
  store ptr %i.y, ptr %i.q, align 8, !tbaa !787
  store i32 0, ptr %i.p, align 16, !tbaa !2345
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2344
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !775
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !787
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !788  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !787  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !775
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !788
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !773  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !407  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !410
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.x, i64 noundef %i.ac) #26
  %i.ae = trunc i64 %i.ad to i32
  %i.af = xor i32 %i.ae, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.af, %bb.b ], [ %i.an, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ag = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ah = lshr i64 %i.ag, 5                       ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !75 ; 2 uses
  %i.ak = and i32 %.0.i7, 31                      ; 2 uses
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  %i.an = add i32 %.0.i7, 1
  br i1 %i.am, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2351

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ag
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !773
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !773
  %i.ar = shl nuw i32 1, %i.ak
  %i.as = or i32 %i.ar, %i.aj
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !75
  %i.at = add i32 %.0.i18, -1
  %i.au = and i32 %i.at, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2352

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2353

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !788
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2345
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !2345
  %i.az = icmp eq i32 %i.av, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !775
  %i.bb = zext i32 %i.av to i64                   ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !788
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1000", align 16 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !807, !noalias !2354 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !819, !noalias !2354 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !820, !noalias !2354 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !805    ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.s, ptr %2, align 16
  %i.t = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.u = trunc i64 %i.t to i32
  %i.v = xor i32 %i.u, -313160499
  %.024.i = and i32 %i.v, %i.h                    ; 3 uses
  %i.w = zext i32 %.024.i to i64                  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75
  %i.ab = and i32 %.024.i, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit, !prof !76

.lr.ph.i:                                         ; preds = %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i
  %i.ae = load ptr, ptr %1, align 8, !tbaa !805
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.af = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.af, %i.h                     ; 3 uses
  %i.ag = zext i32 %.0.i to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !75
  %i.al = and i32 %.0.i, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %bb.f, label %.loopexit, !prof !78, !llvm.loop !2359

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ao = phi ptr [ %i.x, %.lr.ph.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.025.i = phi i32 [ %.024.i, %.lr.ph.i ], [ %.0.i, %bb.e ]
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !805
  %i.aq = icmp eq ptr %i.ae, %i.ap
  br i1 %i.aq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.e, !prof !77

.loopexit:                                        ; preds = %bb.e, %bb.a, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i
  %.lcssa30.sink.i.ph = phi ptr [ %i.x, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i ], [ null, %bb.a ], [ %i.ah, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2360
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !2361
  %i.at = load i32, ptr %i.e, align 4, !tbaa !820 ; 2 uses
  %i.au = shl i32 %i.as, 2
  %i.av = add i32 %i.au, 4
  %i.aw = mul i32 %i.at, 3
  %.not.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.g, !prof !77

bb.g:                                             ; preds = %.loopexit
  %i.ax = shl i32 %i.at, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ax)
  %i.ay = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2360
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.g
  %i.az = phi ptr [ %.pre.i, %bb.g ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !819
  %i.bb = load ptr, ptr %0, align 8, !tbaa !807
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 31
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = lshr i64 %i.bf, 5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bm = or i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !75
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !2361
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ar, align 8, !tbaa !2361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !805
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !805
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ao, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1000", align 16 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !807, !noalias !2362 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !819, !noalias !2362 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !820, !noalias !2362 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !805    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.r, ptr %3, align 16
  %i.s = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.t = trunc i64 %i.s to i32
  %i.u = xor i32 %i.t, -313160499
  %.024 = and i32 %i.u, %i.g                      ; 3 uses
  %i.v = zext i32 %.024 to i64                    ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = lshr i64 %i.v, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75
  %i.aa = and i32 %.024, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !805
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ae = add nuw i32 %.025, 1
  %.0 = and i32 %i.ae, %i.g                       ; 3 uses
  %i.af = zext i32 %.0 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !75
  %i.ak = and i32 %.0, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.f, label %.thread, !prof !78, !llvm.loop !2359

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.an = phi ptr [ %i.w, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !805
  %i.ap = icmp eq ptr %i.ad, %i.ao                ; 3 uses
  br i1 %i.ap, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.w, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ag, %bb.e ], [ %i.an, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ap, %bb.e ], [ %i.ap, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2360
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.75", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !820
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !807
  store ptr %i.y, ptr %i.q, align 8, !tbaa !819
  store i32 0, ptr %i.p, align 16, !tbaa !2361
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2360
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1000", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !807
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !819
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !820  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !819  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !807
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !820
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !805  ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = lshr i64 %i.x, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ad
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.in.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %bb.c ]
  %i.af = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.af, ptr %2, align 16
  %i.ag = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = xor i32 %i.ah, -313160499
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ai, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i ], [ %i.aq, %bb.e ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aj = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75 ; 2 uses
  %i.an = and i32 %.0.i7, 31                      ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i7, 1
  br i1 %i.ap, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2367

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !805
  store ptr %i.at, ptr %i.as, align 8, !tbaa !805
  %i.au = shl nuw i32 1, %i.an
  %i.av = or i32 %i.au, %i.am
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !75
  %i.aw = add i32 %.0.i18, -1
  %i.ax = and i32 %i.aw, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2368

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2369

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !820
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2361
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !2361
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !807
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !820
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

declare void @_ZN4llvm13GenericDINode15recalculateHashEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !839
  %i.c = tail call noundef zeroext i16 @_ZNK4llvm13GenericDINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !841
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = and i64 %i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  br label %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.i, 2
  %i.n = and i64 %i.m, 15
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.o
  br label %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i

_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i:  ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ]
  %i.q = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !81
  %i.r = icmp eq ptr %i.g, %i.q
  br i1 %i.r, label %bb.e, label %_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit

bb.e:                                             ; preds = %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i
  %i.s = tail call noundef zeroext i1 @_ZNK4llvm12MDNodeOpsKey10compareOpsINS_13GenericDINodeEEEbPKT_j(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit: ; preds = %bb.e, %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i, %bb.a
  %i.t = phi i1 [ false, %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i ], [ false, %bb.a ], [ %i.s, %bb.e ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MDNodeOpsKey10compareOpsINS_13GenericDINodeEEEbPKT_j(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !717
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !112
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZN4llvm12MDNodeOpsKey10compareOpsINS_9MDOperandEEEbNS_8ArrayRefIT_EEPKNS_6MDNodeEj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !391  ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !2370 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16 ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i:        ; preds = %bb.c
  %i.l = trunc i64 %i.j to i32
  %i.m = lshr i32 %i.l, 6
  %i.n = and i32 %i.m, 15
  %i.o = sub i32 %i.n, %2
  %i.p = zext i32 %i.o to i64
  %.not.i = icmp eq i64 %.sroa.22.0.copyload, %i.p
  br i1 %.not.i, label %bb.e, label %_ZN4llvm12MDNodeOpsKey10compareOpsINS_9MDOperandEEEbNS_8ArrayRefIT_EEPKNS_6MDNodeEj.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i: ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %1, i64 -24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79
  %i.s = sub i32 %i.r, %2
  %i.t = zext i32 %i.s to i64
  %.not7.i = icmp eq i64 %.sroa.22.0.copyload, %i.t
  br i1 %.not7.i, label %bb.d, label %_ZN4llvm12MDNodeOpsKey10compareOpsINS_9MDOperandEEEbNS_8ArrayRefIT_EEPKNS_6MDNodeEj.exit

bb.d:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i
  %i.u = getelementptr inbounds i8, ptr %1, i64 -32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode8op_beginEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i
  %i.w = lshr i64 %i.j, 2
  %i.x = and i64 %i.w, 15
  %i.y = sub nsw i64 0, %i.x
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.0.0 = phi ptr [ %i.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.au, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1000", align 4  ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !842, !noalias !2381 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !854, !noalias !2381 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !855, !noalias !2381 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !420    ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !112
  %i.l = tail call noundef zeroext i16 @_ZNK4llvm13GenericDINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26
  %i.m = load i64, ptr %i.i, align 8              ; 2 uses
  %i.n = and i64 %i.m, 2
  %.not.i.i.i.i4.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i4.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.m, 2
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.s
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.u = zext i16 %i.l to i32
  %i.v = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.k, ptr %3, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.u, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.v, ptr %i.x, align 4
  %i.y = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.z = trunc i64 %i.y to i32
  %i.aa = xor i32 %i.z, -313160499
  %.024 = and i32 %i.aa, %i.g                     ; 3 uses
  %i.ab = zext i32 %.024 to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %.024, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !420
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ak = add nuw i32 %.025, 1
  %.0 = and i32 %i.ak, %i.g                       ; 3 uses
  %i.al = zext i32 %.0 to i64                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.al ; 2 uses
  %i.an = lshr i64 %i.al, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.aq = and i32 %.0, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %bb.f, label %.thread, !prof !78, !llvm.loop !2378

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.at = phi ptr [ %i.ac, %.lr.ph ], [ %i.am, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !420
  %i.av = icmp eq ptr %i.aj, %i.au                ; 3 uses
  br i1 %i.av, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ac, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.am, %bb.e ], [ %i.at, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.av, %bb.e ], [ %i.av, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2379
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.79", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !855
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !842
  store ptr %i.y, ptr %i.q, align 8, !tbaa !854
  store i32 0, ptr %i.p, align 16, !tbaa !2380
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2379
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1000", align 4  ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !842
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !854
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !855  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !854  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !842
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !855
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !420  ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !112
  %i.ab = call noundef zeroext i16 @_ZNK4llvm13GenericDINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #26
  %i.ac = load i64, ptr %i.y, align 8             ; 2 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i4.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i4.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.ac, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ai
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.af, %bb.d ]
  %i.ak = zext i16 %i.ab to i32
  %i.al = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.aa, ptr %2, align 4
  store i32 %i.ak, ptr %i.o, align 4
  store ptr %i.al, ptr %i.p, align 4
  %i.am = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.an = trunc i64 %i.am to i32
  %i.ao = xor i32 %i.an, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ao, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i ], [ %i.aw, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ap = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.aq = lshr i64 %i.ap, 5                       ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75 ; 2 uses
  %i.at = and i32 %.0.i7, 31                      ; 2 uses
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  %i.aw = add i32 %.0.i7, 1
  br i1 %i.av, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2386

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aq
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ap
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !420
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !420
  %i.ba = shl nuw i32 1, %i.at
  %i.bb = or i32 %i.ba, %i.as
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !75
  %i.bc = add i32 %.0.i18, -1
  %i.bd = and i32 %i.bc, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2387

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2388

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !855
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !2380
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !2380
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !842
  %i.bk = zext i32 %i.be to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !855
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.970", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.970", align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !879, !noalias !2389 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2394, !noalias !2389 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !882, !noalias !2389 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2395   ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.h, align 4, !tbaa !39
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !553  ; 3 uses
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !151
  %i.r = icmp eq i32 %i.o, 0
  %i.s = sub nuw nsw i32 64, %i.o
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = shl i64 %i.q, %i.t
  %i.v = ashr exact i64 %i.u, %i.t
  %.0.i.i.i.i.i = select i1 %i.r, i64 0, i64 %i.v
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.e ], [ %i.x, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %.0.i.i.i.i, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !74
  store <2 x ptr> %i.ab, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.h, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !74
  store <2 x ptr> %i.ai, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit: ; preds = %bb.g, %.thread.i.i
  %.1.in.in.i.i = phi i64 [ %i.al, %.thread.i.i ], [ %i.ae, %bb.g ]
  %.1.in.i.i = trunc i64 %.1.in.in.i.i to i32
  %.1.i.i = xor i32 %.1.in.i.i, -313160499
  %.019 = and i32 %.1.i.i, %i.g                   ; 3 uses
  %i.am = zext i32 %.019 to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.aq = and i32 %.019, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph, label %.thread, !prof !76

bb.h:                                             ; preds = %.lr.ph
  %i.at = add nuw i32 %.020, 1
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !553 ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !151
  %i.af = icmp eq i32 %i.ac, 0
  %i.ag = sub nuw nsw i32 64, %i.ac
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = shl i64 %i.ae, %i.ah
  %i.aj = ashr exact i64 %i.ai, %i.ah
  %.0.i.i.i.i.i = select i1 %i.af, i64 0, i64 %i.aj
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !151
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.g ], [ %i.al, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 %.0.i.i.i.i, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.v, ptr %i.ao, align 8
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit

.thread.i.i:                                      ; preds = %bb.e, %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.s, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.r, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.v, ptr %i.as, align 8
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit: ; preds = %bb.i, %.thread.i.i
  %.1.in.in.i.i = phi i64 [ %i.at, %.thread.i.i ], [ %i.ap, %bb.i ]
  %.1.in.i.i = trunc i64 %.1.in.in.i.i to i32
  %.1.i.i = xor i32 %.1.in.i.i, -313160499
  %.024 = and i32 %.1.i.i, %i.g                   ; 3 uses
  %i.au = zext i32 %.024 to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = lshr i64 %i.au, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = and i32 %.024, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !872
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bd = add nuw i32 %.025, 1
  %.0 = and i32 %i.bd, %i.g                       ; 3 uses
  %i.be = zext i32 %.0 to i64                     ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.be, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !75
  %i.bj = and i32 %.0, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %.thread, !prof !78, !llvm.loop !2407

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.bm = phi ptr [ %i.av, %.lr.ph ], [ %i.bf, %bb.j ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.j ]
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !872
  %i.bo = icmp eq ptr %i.bc, %i.bn                ; 3 uses
  br i1 %i.bo, label %.thread, label %bb.j, !prof !77

.thread:                                          ; preds = %bb.k, %bb.j, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa32.sink = phi ptr [ %i.av, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bf, %bb.j ], [ %i.bm, %bb.k ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bo, %bb.j ], [ %i.bo, %bb.k ]
  store ptr %.lcssa32.sink, ptr %2, align 8, !tbaa !2400
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.83", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !882
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !879
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2394
  store i32 0, ptr %i.p, align 16, !tbaa !2401
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2400
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.970", align 8   ; 7 uses
  %3 = alloca %"struct.std::array.970", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !879
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2394
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !882  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2394 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !879
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !882
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.v, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.v, %.lr.ph ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !872 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.al = load ptr, ptr %.in8.i.i, align 8, !tbaa !81 ; 2 uses
  %i.am = load ptr, ptr %.pn.i.i, align 8, !tbaa !81 ; 4 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.an = load ptr, ptr %.in.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i
  %i.aq = load i8, ptr %i.am, align 4, !tbaa !39
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !553 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 65
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !151
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = sub nuw nsw i32 64, %i.aw
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = ashr exact i64 %i.bc, %i.bb
  %.0.i.i.i.i.i.i = select i1 %i.az, i64 0, i64 %i.bd
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !151
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i, %bb.h ], [ %i.bf, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %.0.i.i.i.i.i, ptr %3, align 8
  store ptr %i.al, ptr %i.o, align 8
  store ptr %i.an, ptr %i.p, align 8
  store ptr %i.ap, ptr %i.q, align 8
  %i.bg = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i

.thread.i.i.i:                                    ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.am, ptr %2, align 8
  store ptr %i.al, ptr %i.r, align 8
  store ptr %i.an, ptr %i.s, align 8
  store ptr %i.ap, ptr %i.t, align 8
  %i.bh = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i: ; preds = %.thread.i.i.i, %bb.j
  %.1.in.in.i.i.i = phi i64 [ %i.bh, %.thread.i.i.i ], [ %i.bg, %bb.j ]
  %.1.in.i.i.i = trunc i64 %.1.in.in.i.i.i to i32
  %.1.i.i.i = xor i32 %.1.in.i.i.i, -313160499
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i
  %.1.i.i.pn.i = phi i32 [ %.1.i.i.i, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i ], [ %i.bp, %bb.k ]
  %.0.i7 = and i32 %.1.i.i.pn.i, %i.k             ; 3 uses
  %i.bi = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bj = lshr i64 %i.bi, 5                       ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75 ; 2 uses
  %i.bm = and i32 %.0.i7, 31                      ; 2 uses
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bn to i1
  %i.bp = add i32 %.0.i7, 1
  br i1 %i.bo, label %bb.k, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2408

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bj
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bi
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !872
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !872
  %i.bt = shl nuw i32 1, %i.bm
  %i.bu = or i32 %i.bt, %i.bl
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !75
  %i.bv = add i32 %.0.i18, -1
  %i.bw = and i32 %i.bv, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2409

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2410

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !882
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bx = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !2401
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !2401
  %i.cb = icmp eq i32 %i.bx, 0
  br i1 %i.cb, label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cc = load ptr, ptr %1, align 8, !tbaa !879
  %i.cd = zext i32 %i.bx to i64                   ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !553
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_12DIEnumeratorEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %i.b, 65
  br i1 %i.g, label %.split.i, label %_ZNK4llvm5APInteqERKS0_.exit.i

.split.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %0, align 8, !tbaa !151
  %i.i = load i64, ptr %i.c, align 8, !tbaa !151
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_12DIEnumeratorEE7isKeyOfEPKS1_.exit

_ZNK4llvm5APInteqERKS0_.exit.i:                   ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.c) #31
  br i1 %i.k, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_12DIEnumeratorEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i, %.split.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !892, !range !581, !noundef !58
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !112
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i8
  %i.r = icmp eq i8 %i.m, %i.q
  br i1 %i.r, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_12DIEnumeratorEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !890
  %i.u = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = and i64 %i.v, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ab = phi ptr [ %i.k, %.lr.ph ], [ %i.u, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !428
  %i.ad = icmp eq ptr %i.r, %i.ac                 ; 3 uses
  br i1 %i.ad, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2417
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array.1000", align 8  ; 5 uses
  %2 = alloca %"struct.llvm::MDNodeKeyImpl.1039", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !553  ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !553
  %i.e = icmp ult i32 %i.d, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !151
  store i64 %i.f, ptr %2, align 8, !tbaa !151
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.a) #26
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.j = getelementptr inbounds i8, ptr %0, i64 -32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.l = lshr i64 %i.h, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !81
  store ptr %i.q, ptr %i.p, align 8, !tbaa !890
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !112
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.r, align 8, !tbaa !892
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.w = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(25) %2) #26
  store i64 %i.w, ptr %1, align 8
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !908
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !553
  %i.ab = icmp ugt i32 %i.aa, 64
  br i1 %i.ab, label %bb.f, label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit
  %i.ac = load ptr, ptr %2, align 8, !tbaa !151   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #28
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit

_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit: ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit, %bb.f, %bb.g
  %i.ae = trunc i64 %i.z to i32
  %i.af = xor i32 %i.ae, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %i.af
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.87", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !906
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !893
  store ptr %i.y, ptr %i.q, align 8, !tbaa !905
  store i32 0, ptr %i.p, align 16, !tbaa !2418
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2417
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1000", align 8  ; 5 uses
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.1039", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !893
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !905
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !906  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !905  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !893
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !906
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !428  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !553 ; 2 uses
  store i32 %i.ac, ptr %i.o, align 8, !tbaa !553
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !151
  store i64 %i.ae, ptr %3, align 8, !tbaa !151
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #26
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i64 %i.ag, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i

bb.g:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  %i.ak = lshr i64 %i.ag, 2
  %i.al = and i64 %i.ak, 15
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i

_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.aj, %bb.f ]
  %i.ao = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !81
  store ptr %i.ao, ptr %i.p, align 8, !tbaa !890
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !112
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %i.q, align 8, !tbaa !892
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.at = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(25) %3) #26
  store i64 %i.at, ptr %2, align 8
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !908
  store ptr %i.au, ptr %i.r, align 8
  %i.av = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aw = load i32, ptr %i.o, align 8, !tbaa !553
  %i.ax = icmp ugt i32 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit

bb.h:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i
  %i.ay = load ptr, ptr %3, align 8, !tbaa !151   ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #28
  br label %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i, %bb.h, %bb.i
  %i.ba = trunc i64 %i.av to i32
  %i.bb = xor i32 %i.ba, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %i.bb, %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit ], [ %i.bj, %bb.j ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bc = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bd = lshr i64 %i.bc, 5                       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !75 ; 2 uses
  %i.bg = and i32 %.0.i7, 31                      ; 2 uses
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  %i.bj = add i32 %.0.i7, 1
  br i1 %i.bi, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2424

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !428
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !428
  %i.bn = shl nuw i32 1, %i.bg
  %i.bo = or i32 %i.bn, %i.bf
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !75
  %i.bp = add i32 %.0.i18, -1
  %i.bq = and i32 %i.bp, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2425

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2426

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !906
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.br = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !2418
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !2418
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !893
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !906
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.b = zext i16 %i.a to i32
  store i32 %i.b, ptr %0, align 8, !tbaa !2427
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.e, 2
  %i.j = and i64 %i.i, 15
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.k
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

_ZNK4llvm6DIType10getRawNameEv.exit:              ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  store ptr %i.n, ptr %i.c, align 8, !tbaa !2429
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %1, align 8, !tbaa !39
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %_ZNK4llvm7DIScope10getRawFileEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit
  %i.r = load i64, ptr %i.d, align 8              ; 2 uses
  %i.s = and i64 %i.r, 2
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %1, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = lshr i64 %i.r, 2
  %i.w = and i64 %i.v, 15
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

_ZNK4llvm6MDNode10getOperandEj.exit.i:            ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ]
  %i.z = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !81
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit

_ZNK4llvm7DIScope10getRawFileEv.exit:             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit, %_ZNK4llvm6MDNode10getOperandEj.exit.i
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1061", align 4  ; 8 uses
  %4 = alloca %"struct.llvm::MDNodeKeyImpl.1054", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !924, !noalias !2455 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1665, !noalias !2455 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !932, !noalias !2455 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.m = load i32, ptr %4, align 8, !tbaa !75
  store i32 %i.m, ptr %3, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load <2 x ptr>, ptr %i.i, align 8, !tbaa !165
  store <2 x ptr> %i.o, ptr %i.n, align 4
  %i.p = load i32, ptr %i.j, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load <2 x ptr>, ptr %i.k, align 8, !tbaa !74
  store <2 x ptr> %i.s, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.u = load <2 x i32>, ptr %i.l, align 8, !tbaa !75
  store <2 x i32> %i.u, ptr %i.t, align 4
  %i.v = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.w = trunc i64 %i.v to i32
  %i.x = xor i32 %i.w, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.024 = and i32 %i.x, %i.g                      ; 3 uses
  %i.y = zext i32 %.024 to i64                    ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.ad = and i32 %.024, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %i.ag = load ptr, ptr %1, align 8, !tbaa !430
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ah = add nuw i32 %.025, 1
  %.0 = and i32 %i.ah, %i.g                       ; 3 uses
  %i.ai = zext i32 %.0 to i64                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = and i32 %.0, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %.thread, !prof !78, !llvm.loop !2460

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.aq = phi ptr [ %i.z, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !430
  %i.as = icmp eq ptr %i.ag, %i.ar                ; 3 uses
  br i1 %i.as, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.aj, %bb.c ], [ %i.aq, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.as, %bb.c ], [ %i.as, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2453
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.91", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !932
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !924
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1665
  store i32 0, ptr %i.p, align 16, !tbaa !2454
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2453
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1061", align 4  ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !924
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1665
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !932  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1665 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !924
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !932
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i25 = icmp eq i64 %i.n, 0
  br i1 %.not.i25, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph28, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75   ; 2 uses
  %.not11.i23 = icmp eq i32 %i.w, 0
  br i1 %.not11.i23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.x = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i24 = phi i32 [ %i.w, %.lr.ph ], [ %i.cd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.y = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i24, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !430 ; 11 uses
  %i.ad = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.c
  %i.ai = lshr i64 %i.ag, 2
  %i.aj = and i64 %i.ai, 15
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.ap = icmp eq i8 %i.ao, 16
  br i1 %i.ap, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread38

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread38:  ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !81
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37

_ZNK4llvm6DIType10getRawNameEv.exit.i.thread:     ; preds = %bb.c
  %i.ar = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81 ; 2 uses
  %i.av = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.aw = icmp eq i8 %i.av, 16
  br i1 %i.aw, label %_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_.exit, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge

_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !81
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_.exit

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37:  ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread38
  %i.ay = phi ptr [ %i.aq, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread38 ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  %i.az = lshr i64 %i.ag, 2
  %i.ba = and i64 %i.az, 15
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bb
  br label %_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_.exit: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37
  %.pn = phi ptr [ %i.bc, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37 ], [ %.pre, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.as, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ] ; 2 uses
  %i.bd = phi ptr [ %i.an, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37 ], [ %i.au, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.au, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ]
  %i.be = phi ptr [ %i.ay, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread37 ], [ %i.ax, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ]
  %.in44 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bf = load i32, ptr %.in44, align 8, !tbaa !558
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.bg = load ptr, ptr %.in, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !81
  %i.bj = call noundef i32 @_ZNK4llvm6DIType14getAlignInBitsEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ac) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.ae, ptr %2, align 4
  store ptr %i.bd, ptr %i.o, align 4
  store ptr %i.be, ptr %i.p, align 4
  store i32 %i.bf, ptr %i.q, align 4
  store ptr %i.bg, ptr %i.r, align 4
  store ptr %i.bi, ptr %i.s, align 4
  store i32 %i.bj, ptr %i.t, align 4
  store i32 %i.bl, ptr %i.u, align 4
  %i.bm = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = xor i32 %i.bn, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_.exit
  %.pn.i = phi i32 [ %i.bo, %_ZN4llvm13MDNodeKeyImplINS_11DIBasicTypeEEC2EPKS1_.exit ], [ %i.bw, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bp = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bq = lshr i64 %i.bp, 5                       ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !75 ; 2 uses
  %i.bt = and i32 %.0.i7, 31                      ; 2 uses
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  %i.bw = add i32 %.0.i7, 1
  br i1 %i.bv, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2461

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bq
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bp
  %i.bz = load ptr, ptr %i.ab, align 8, !tbaa !430
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !430
  %i.ca = shl nuw i32 1, %i.bt
  %i.cb = or i32 %i.ca, %i.bs
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !75
  %i.cc = add i32 %.0.i24, -1
  %i.cd = and i32 %i.cc, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2462

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2463

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre33 = load i32, ptr %i.d, align 4, !tbaa !932
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ce = phi i32 [ %.pre33, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !2454
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !2454
  %i.ci = icmp eq i32 %i.ce, 0
  br i1 %i.ci, label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cj = load ptr, ptr %1, align 8, !tbaa !924
  %i.ck = zext i32 %i.ce to i64                   ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 1073741820
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cj, i64 noundef %i.cp, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.b = zext i16 %i.a to i32
  store i32 %i.b, ptr %0, align 8, !tbaa !2464
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 16 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.e, 2
  %i.j = and i64 %i.i, 15
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.k
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

_ZNK4llvm6DIType10getRawNameEv.exit:              ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  store ptr %i.n, ptr %i.c, align 8, !tbaa !2470
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %1, align 8, !tbaa !39
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %_ZNK4llvm7DIScope10getRawFileEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit
  %i.r = load i64, ptr %i.d, align 8              ; 2 uses
  %i.s = and i64 %i.r, 2
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %1, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = lshr i64 %i.r, 2
  %i.w = and i64 %i.v, 15
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

_ZNK4llvm6MDNode10getOperandEj.exit.i:            ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ]
  %i.z = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !81
end_hunk_10
begin_hunk_11_@_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE13isSubsetEqualEPKS1_S4_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.c, 2
  %i.h = and i64 %i.g, 15
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

_ZNK4llvm6DIType10getRawNameEv.exit:              ; preds = %bb.b, %bb.c
  %.pn = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.k = load ptr, ptr %.in, align 8, !tbaa !81   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 3 uses
  %i.n = icmp ne i16 %i.a, 13
  %i.o = icmp eq ptr %i.m, null
  %or.cond.not23.i = or i1 %i.n, %i.o
  %.not.i.i.i4 = icmp eq ptr %i.k, null
  %or.cond21.i = or i1 %.not.i.i.i4, %or.cond.not23.i
  br i1 %or.cond21.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit
  %i.p = load i8, ptr %i.k, align 4, !tbaa !39
  %i.q = icmp eq i8 %i.p, 14
  br i1 %i.q, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i: ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i
  %i.u = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i
  %i.w = lshr i64 %i.s, 2
  %i.x = and i64 %i.w, 15
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.y
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %.not15.i = icmp eq ptr %i.ab, null
  br i1 %.not15.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i
  %i.ac = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.ad = icmp eq i16 %i.ac, 13
  br i1 %i.ad, label %bb.h, label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 2
  %.not.i.i.i.i16.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i16.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.thread.i

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.h
  %i.ah = lshr i64 %i.af, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81
  %i.an = icmp eq ptr %i.m, %i.am
  br i1 %i.an, label %_ZNK4llvm6DIType11getRawScopeEv.exit.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit

_ZNK4llvm6DIType10getRawNameEv.exit.thread.i:     ; preds = %bb.h
  %i.ao = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81
  %i.as = icmp eq ptr %i.m, %i.ar
  br i1 %i.as, label %_ZNK4llvm6DIType11getRawScopeEv.exit.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit

_ZNK4llvm6DIType11getRawScopeEv.exit.i:           ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.thread.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i5 = phi ptr [ %i.ap, %_ZNK4llvm6DIType10getRawNameEv.exit.thread.i ], [ %i.ak, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i5, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81
  %i.av = icmp eq ptr %i.k, %i.au
  br label %_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit

_ZN4llvm21MDNodeSubsetEqualImplINS_13DIDerivedTypeEE11isODRMemberEjPKNS_8MetadataEPKNS_8MDStringEPKS1_.exit: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit, %bb.d, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i, %bb.g, %_ZNK4llvm6DIType10getRawNameEv.exit.i, %_ZNK4llvm6DIType10getRawNameEv.exit.thread.i, %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %.1.i = phi i1 [ false, %_ZNK4llvm6DIType10getRawNameEv.exit ], [ false, %_ZNK4llvm6DIType10getRawNameEv.exit.thread.i ], [ false, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ false, %_ZNK4llvm6DIType10getRawNameEv.exit.i ], [ false, %bb.g ], [ %i.av, %_ZNK4llvm6DIType11getRawScopeEv.exit.i ], [ false, %bb.d ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.95", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !950
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !947
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1671
  store i32 0, ptr %i.p, align 16, !tbaa !2496
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2495
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1076", align 4  ; 10 uses
  %3 = alloca %"struct.std::array.1000", align 8  ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !947
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1671
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !950  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1671 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !947
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !950
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i32 = icmp eq i64 %i.n, 0
  br i1 %.not.i32, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph35, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75   ; 2 uses
  %.not11.i30 = icmp eq i32 %i.w, 0
  br i1 %.not11.i30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.x = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i31 = phi i32 [ %i.w, %.lr.ph ], [ %i.cr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.y = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i31, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !432 ; 12 uses
  %i.ad = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26 ; 2 uses
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.c
  %i.ai = lshr i64 %i.ag, 2
  %i.aj = and i64 %i.ai, 15
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.ap = icmp eq i8 %i.ao, 16
  br i1 %i.ap, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread47

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread47:  ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !81
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46

_ZNK4llvm6DIType10getRawNameEv.exit.i.thread:     ; preds = %bb.c
  %i.ar = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81 ; 2 uses
  %i.av = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.aw = icmp eq i8 %i.av, 16
  br i1 %i.aw, label %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge

_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !81
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46:  ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread47
  %i.ay = phi ptr [ %i.aq, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread47 ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  %i.az = lshr i64 %i.ag, 2
  %i.ba = and i64 %i.az, 15
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bb
  br label %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i

_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i:    ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46
  %.pn = phi ptr [ %i.bc, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46 ], [ %.pre, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.as, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ] ; 2 uses
  %i.bd = phi ptr [ %i.an, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46 ], [ %i.au, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.au, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ] ; 6 uses
  %i.be = phi ptr [ %i.ay, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread46 ], [ %i.ax, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ]
  %.in53 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bf = load i32, ptr %.in53, align 8, !tbaa !558
  %.in24 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.bg = load ptr, ptr %.in24, align 8, !tbaa !81
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.bh = load ptr, ptr %.in, align 8, !tbaa !81  ; 6 uses
  %i.bi = call noundef i32 @_ZNK4llvm6DIType14getAlignInBitsEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ac) #26 ; 0 uses
  %i.bj = call i64 @_ZNK4llvm13DIDerivedType14getPtrAuthDataEv(ptr noundef nonnull align 8 dereferenceable(36) %i.ac) #26 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !439
  %i.bm = icmp eq i16 %i.ad, 13
  br i1 %i.bm, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i8, ptr %i.bh, align 4, !tbaa !39
  %i.bo = icmp eq i8 %i.bn, 14
  br i1 %i.bo, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i, label %.thread.i.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.f
  %i.bp = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = and i64 %i.bq, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.bh, i64 -32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

bb.h:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i
  %i.bu = lshr i64 %i.bq, 2
  %i.bv = and i64 %i.bu, 15
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bw
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bx, %bb.h ], [ %i.bt, %bb.g ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81
  %.not7.i.i = icmp eq ptr %i.bz, null
  br i1 %.not7.i.i, label %.thread.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.bd, ptr %3, align 8
  store ptr %i.bh, ptr %i.o, align 8
  %i.ca = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i, %bb.f, %bb.e, %bb.d, %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i
  %i.cb = phi ptr [ null, %bb.d ], [ %i.bd, %bb.e ], [ %i.bd, %bb.f ], [ %i.bd, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i ], [ %i.bd, %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.ae, ptr %2, align 4
  store ptr %i.cb, ptr %i.p, align 4
  store ptr %i.be, ptr %i.q, align 4
  store i32 %i.bf, ptr %i.r, align 4
  store ptr %i.bh, ptr %i.s, align 4
  store ptr %i.bg, ptr %i.t, align 4
  store i32 %i.bl, ptr %i.u, align 4
  %i.cc = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 44) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit: ; preds = %bb.i, %.thread.i.i
  %.1.in.in.i.i = phi i64 [ %i.cc, %.thread.i.i ], [ %i.ca, %bb.i ]
  %.1.in.i.i = trunc i64 %.1.in.in.i.i to i32
  %.1.i.i = xor i32 %.1.in.i.i, -313160499
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %.1.i.i, %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit ], [ %i.ck, %bb.j ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.cd = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ce = lshr i64 %i.cd, 5                       ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !75 ; 2 uses
  %i.ch = and i32 %.0.i7, 31                      ; 2 uses
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = trunc i32 %i.ci to i1
  %i.ck = add i32 %.0.i7, 1
  br i1 %i.cj, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2502

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ce
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cd
  %i.cn = load ptr, ptr %i.ab, align 8, !tbaa !432
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !432
  %i.co = shl nuw i32 1, %i.ch
  %i.cp = or i32 %i.co, %i.cg
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !75
  %i.cq = add i32 %.0.i31, -1
  %i.cr = and i32 %i.cq, %.0.i31                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cr, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2503

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2504

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre40 = load i32, ptr %i.d, align 4, !tbaa !950
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cs = phi i32 [ %.pre40, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !2496
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !2496
  %i.cw = icmp eq i32 %i.cs, 0
  br i1 %i.cw, label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cx = load ptr, ptr %1, align 8, !tbaa !947
  %i.cy = zext i32 %i.cs to i64                   ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cy, 31
  %i.db = lshr i64 %i.da, 3
  %i.dc = and i64 %i.db, 1073741820
  %i.dd = add nuw nsw i64 %i.dc, %i.cz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cx, i64 noundef %i.dd, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !950
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1091", align 16 ; 9 uses
  %4 = alloca %"struct.llvm::MDNodeKeyImpl.1085", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !958, !noalias !2546 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1678, !noalias !2546 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !966, !noalias !2546 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_15DICompositeTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.o = load <2 x ptr>, ptr %i.i, align 8, !tbaa !165
  store <2 x ptr> %i.o, ptr %3, align 16
  %i.p = load i32, ptr %i.j, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.p, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load <2 x ptr>, ptr %i.k, align 8, !tbaa !74
  %i.t = shufflevector <2 x ptr> %i.s, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.t, ptr %i.r, align 4
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  store ptr %i.u, ptr %i.v, align 4
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 44
  store ptr %i.w, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 52
  store ptr %i.y, ptr %i.z, align 4
  %i.aa = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = xor i32 %i.ab, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.024 = and i32 %i.ac, %i.g                     ; 3 uses
  %i.ad = zext i32 %.024 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !75
  %i.ai = and i32 %.024, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %i.al = load ptr, ptr %1, align 8, !tbaa !434
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.am = add nuw i32 %.025, 1
  %.0 = and i32 %i.am, %i.g                       ; 3 uses
  %i.an = zext i32 %.0 to i64                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = lshr i64 %i.an, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !75
  %i.as = and i32 %.0, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %bb.d, label %.thread, !prof !78, !llvm.loop !2551

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.av = phi ptr [ %i.ae, %.lr.ph ], [ %i.ao, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !434
  %i.ax = icmp eq ptr %i.al, %i.aw                ; 3 uses
  br i1 %i.ax, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ae, %bb.b ], [ null, %bb.a ], [ %i.ao, %bb.c ], [ %i.av, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ax, %bb.c ], [ %i.ax, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2544
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.99", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !966
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !958
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1678
  store i32 0, ptr %i.p, align 16, !tbaa !2545
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2544
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1091", align 16 ; 9 uses
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.1085", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !958
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1678
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !966  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1678 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !958
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !966
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_15DICompositeTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ah = load <2 x ptr>, ptr %i.o, align 8, !tbaa !165
  store <2 x ptr> %i.ah, ptr %2, align 16
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !75
  store i32 %i.ai, ptr %i.u, align 16
  %i.aj = load <2 x ptr>, ptr %i.q, align 8, !tbaa !74
  %i.ak = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ak, ptr %i.v, align 4
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !74
  store ptr %i.al, ptr %i.w, align 4
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !74
  store ptr %i.am, ptr %i.x, align 4
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !74
  store ptr %i.an, ptr %i.y, align 4
  %i.ao = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = xor i32 %i.ap, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi i32 [ %i.aq, %bb.c ], [ %i.ay, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ar = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.as = lshr i64 %i.ar, 5                       ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !75 ; 2 uses
  %i.av = and i32 %.0.i7, 31                      ; 2 uses
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  %i.ay = add i32 %.0.i7, 1
  br i1 %i.ax, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2552

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ar
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !434
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !434
  %i.bc = shl nuw i32 1, %i.av
  %i.bd = or i32 %i.bc, %i.au
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !75
  %i.be = add i32 %.0.i18, -1
  %i.bf = and i32 %i.be, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2553

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2554

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !966
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bg = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !2545
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !2545
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bl = load ptr, ptr %1, align 8, !tbaa !958
  %i.bm = zext i32 %i.bg to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !966
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1106", align 4  ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !978, !noalias !2555 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !990, !noalias !2555 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !991, !noalias !2555 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !976    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !439
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.m = load i8, ptr %i.l, align 4, !tbaa !450
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %i.o, 2
  %i.t = and i64 %i.s, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.u
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.k, ptr %2, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.m, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 5
  store ptr %i.x, ptr %i.z, align 1
  %i.aa = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = xor i32 %i.ab, -313160499
  %.024.i = and i32 %i.ac, %i.h                   ; 3 uses
  %i.ad = zext i32 %.024.i to i64                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !75
  %i.ai = and i32 %.024.i, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i, label %.loopexit, !prof !76

.lr.ph.i:                                         ; preds = %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i
  %i.al = load ptr, ptr %1, align 8, !tbaa !976
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.am = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.am, %i.h                     ; 3 uses
  %i.an = zext i32 %.0.i to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an ; 2 uses
  %i.ap = lshr i64 %i.an, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !75
  %i.as = and i32 %.0.i, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %bb.f, label %.loopexit, !prof !78, !llvm.loop !2560

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.av = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ao, %bb.e ] ; 2 uses
  %.025.i = phi i32 [ %.024.i, %.lr.ph.i ], [ %.0.i, %bb.e ]
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !976
  %i.ax = icmp eq ptr %i.al, %i.aw
  br i1 %i.ax, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.e, !prof !77

.loopexit:                                        ; preds = %bb.e, %bb.a, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i
  %.lcssa30.sink.i.ph = phi ptr [ %i.ae, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i ], [ null, %bb.a ], [ %i.ao, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2561
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !2562
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !991 ; 2 uses
  %i.bb = shl i32 %i.az, 2
  %i.bc = add i32 %i.bb, 4
  %i.bd = mul i32 %i.ba, 3
  %.not.i = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.g, !prof !77

bb.g:                                             ; preds = %.loopexit
  %i.be = shl i32 %i.ba, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.be)
  %i.bf = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2561
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1106", align 4  ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !978, !noalias !2563 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !990, !noalias !2563 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !991, !noalias !2563 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !976    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !439
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.l = load i8, ptr %i.k, align 4, !tbaa !450
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2
  %i.s = and i64 %i.r, 15
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.j, ptr %3, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.l, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  store ptr %i.w, ptr %i.y, align 1
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !976
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !78, !llvm.loop !2560

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !976
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2561
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.103", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !991
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !978
  store ptr %i.y, ptr %i.q, align 8, !tbaa !990
  store i32 0, ptr %i.p, align 16, !tbaa !2562
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2561
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1106", align 4  ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !978
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !990
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !991  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !990  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !978
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !991
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !976  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !439
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !450
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.z, ptr %2, align 4
  store i8 %i.ab, ptr %i.o, align 4
  store ptr %i.am, ptr %i.p, align 1
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2568

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !976
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !976
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !75
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2569

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2570

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !991
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2562
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2562
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !978
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !991
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_6DIFileEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1008   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i, label %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i

_ZNK4llvm6DIFile14getRawFilenameEv.exit.i:        ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i:       ; preds = %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i
  %.sroa.0.0.i.i.i.i6.i = phi ptr [ %i.l, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %.in.i, align 8, !tbaa !1010
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i6.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !579, !range !581, !noundef !58 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp eq i8 %i.t, %.sroa.5.0.copyload.i   ; 2 uses
  %brmerge.not.i.i = and i1 %i.v, %i.u
  br i1 %brmerge.not.i.i, label %.split.i, label %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i

.split.i:                                         ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.47.0.copyload.i = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 8
  %i.y = load i32, ptr %i.w, align 8, !tbaa !2571
  %i.z = icmp eq i32 %i.y, %.sroa.0.0.copyload.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, %.sroa.47.0.copyload.i
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i: ; preds = %bb.b
  br i1 %i.v, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i, %.split.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1011
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !590
  %i.ai = icmp eq ptr %i.af, %i.ah
  br label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit: ; preds = %bb.c, %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i, %.split.i, %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i
  %i.aj = phi i1 [ false, %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i ], [ false, %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i ], [ false, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i ], [ %i.ai, %bb.c ], [ false, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i ], [ false, %.split.i ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1121", align 16 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1012, !noalias !2572 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1024, !noalias !2572 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1025, !noalias !2572 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !455    ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %3 = alloca %"struct.std::array.1121", align 16 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1012, !noalias !2580 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1024, !noalias !2580 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1025, !noalias !2580 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !455    ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.16.copyload.i = load i32, ptr %i.r, align 8
  %.sroa.81.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.81.16.copyload.i = load ptr, ptr %.sroa.81.16..sroa_idx.i, align 8
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.9.16.copyload.i = load i8, ptr %.sroa.9.16..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !590
  %i.u = trunc nuw i8 %.sroa.9.16.copyload.i to i1 ; 2 uses
  %i.v = select i1 %i.u, i32 %.sroa.6.16.copyload.i, i32 0
  %i.w = select i1 %i.u, ptr %.sroa.81.16.copyload.i, ptr null
  %i.x = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.x, ptr %3, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.v, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20
  store ptr %i.w, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.t, ptr %i.aa, align 4
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  %.024 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.024 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !75
  %i.aj = and i32 %.024, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !455
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.an = add nuw i32 %.025, 1
  %.0 = and i32 %i.an, %i.g                       ; 3 uses
  %i.ao = zext i32 %.0 to i64                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75
  %i.at = and i32 %.0, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.f, label %.thread, !prof !78, !llvm.loop !2577

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aw = phi ptr [ %i.af, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !455
  %i.ay = icmp eq ptr %i.am, %i.ax                ; 3 uses
  br i1 %i.ay, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.af, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ap, %bb.e ], [ %i.aw, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2578
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.107", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1025
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1012
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1024
  store i32 0, ptr %i.p, align 16, !tbaa !2579
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2578
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1121", align 16 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1012
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1024
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1025 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1024 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1012
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1025
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !455  ; 6 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ae = lshr i64 %i.aa, 2
  %i.af = and i64 %i.ae, 15
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ag
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ad, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.16.copyload.i.i = load i32, ptr %i.ai, align 8
  %.sroa.81.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.81.16.copyload.i.i = load ptr, ptr %.sroa.81.16..sroa_idx.i.i, align 8
  %.sroa.9.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.9.16.copyload.i.i = load i8, ptr %.sroa.9.16..sroa_idx.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !590
  %i.al = trunc nuw i8 %.sroa.9.16.copyload.i.i to i1 ; 2 uses
  %i.am = select i1 %i.al, i32 %.sroa.6.16.copyload.i.i, i32 0
  %i.an = select i1 %i.al, ptr %.sroa.81.16.copyload.i.i, ptr null
  %i.ao = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.ao, ptr %2, align 16
  store i32 %i.am, ptr %i.o, align 16
  store ptr %i.an, ptr %i.p, align 4
  store ptr %i.ak, ptr %i.q, align 4
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ar, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i ], [ %i.az, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.as = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75 ; 2 uses
  %i.aw = and i32 %.0.i7, 31                      ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i7, 1
  br i1 %i.ay, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2585

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !455
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !455
  %i.bd = shl nuw i32 1, %i.aw
  %i.be = or i32 %i.bd, %i.av
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !75
  %i.bf = add i32 %.0.i18, -1
  %i.bg = and i32 %i.bf, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2586

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2587

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1025
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2579
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2579
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1012
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13MDNodeKeyImplINS_12DISubprogramEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 26 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  br label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  br label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit

_ZNK4llvm12DISubprogram11getRawScopeEv.exit:      ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  store ptr %i.k, ptr %0, align 8, !tbaa !2588
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = and i64 %i.m, 2
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit
  %i.o = getelementptr inbounds i8, ptr %1, i64 -32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  br label %_ZNK4llvm12DISubprogram10getRawNameEv.exit

bb.e:                                             ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit
  %i.q = lshr i64 %i.m, 2
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.s
  br label %_ZNK4llvm12DISubprogram10getRawNameEv.exit

_ZNK4llvm12DISubprogram10getRawNameEv.exit:       ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.p, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  store ptr %i.v, ptr %i.l, align 8, !tbaa !2590
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2
  %.not.i.i.i.i21 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12DISubprogram10getRawNameEv.exit
  %i.z = getelementptr inbounds i8, ptr %1, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  br label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit

bb.g:                                             ; preds = %_ZNK4llvm12DISubprogram10getRawNameEv.exit
  %i.ab = lshr i64 %i.x, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ad
  br label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i.i22 = phi ptr [ %i.ae, %bb.g ], [ %i.aa, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i22, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !2591
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i8, ptr %1, align 8, !tbaa !39
  %i.aj = icmp eq i8 %i.ai, 16
  br i1 %i.aj, label %_ZNK4llvm7DIScope10getRawFileEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit
  %i.ak = load i64, ptr %i.a, align 8             ; 2 uses
  %i.al = and i64 %i.ak, 2
  %.not.i.i.i23 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds i8, ptr %1, i64 -32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i
end_hunk_14
begin_hunk_15_@_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualEPKS1_S4_:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ao = lshr i64 %i.ak, 2
  %i.ap = and i64 %i.ao, 15
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.an, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  %.not21.i = icmp eq ptr %i.at, null
  br i1 %.not21.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !2604
  %i.aw = and i32 %i.av, 8
  %.not32.i = icmp eq i32 %i.aw, 0
  br i1 %.not32.i, label %bb.f, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = and i64 %i.ay, 2
  %.not.i.i.i.i7 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i7, label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i, label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i

_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i:    ; preds = %bb.f
  %i.ba = lshr i64 %i.ay, 2
  %i.bb = and i64 %i.ba, 15
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81
  %i.bg = icmp eq ptr %i.ae, %i.bf
  br i1 %i.bg, label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i: ; preds = %bb.f
  %i.bh = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bl = icmp eq ptr %i.ae, %i.bk
  br i1 %i.bl, label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i: ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !81
  %i.bo = icmp eq ptr %i.ad, %i.bn
  br i1 %i.bo, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i: ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !81
  %i.br = icmp eq ptr %i.ad, %i.bq
  br i1 %i.br, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i
  %i.bs = and i64 %i.ay, 896
  %i.bt = icmp samesign ugt i64 %i.bs, 576
  br i1 %i.bt, label %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i, label %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !79
  %i.bw = icmp ugt i32 %i.bv, 9
  br i1 %i.bw, label %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i, label %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i

_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %.sroa.0.0.i.i.i.i25.i = phi ptr [ %i.bi, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ], [ %i.bd, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i25.i, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !81
  br label %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i

_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i: ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.bz = phi ptr [ %i.by, %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ]
  %i.ca = icmp eq ptr %i.af, %i.bz
  br label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit: ; preds = %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit, %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i, %bb.e, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i, %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i
  %.1.i = phi i1 [ false, %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit ], [ false, %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i ], [ false, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ false, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i ], [ false, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i ], [ false, %bb.e ], [ %i.ca, %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i ], [ false, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i ], [ false, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.111", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1055
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1042
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1054
  store i32 0, ptr %i.p, align 16, !tbaa !2620
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2619
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1121", align 8  ; 8 uses
  %3 = alloca %"struct.std::array.1000", align 8  ; 5 uses
  %4 = alloca %"struct.llvm::MDNodeKeyImpl.1130", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1042
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1054
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1055 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1054 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1042
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1055
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75  ; 2 uses
  %.not11.i19 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.aa, %.lr.ph ], [ %i.cb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !459
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_12DISubprogramEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %i.ag)
  %i.ah = load ptr, ptr %4, align 8, !tbaa !2588  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null           ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !39
  %i.aj = icmp eq i8 %i.ai, 14
  br i1 %i.aj, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i: ; preds = %bb.d
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = and i64 %i.al, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !83
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i
  %i.ap = lshr i64 %i.al, 2
  %i.aq = and i64 %i.ap, 15
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ar
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.as, %bb.f ], [ %i.ao, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81 ; 2 uses
  %.not7.i = icmp eq ptr %i.au, null
  br i1 %.not7.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !366 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !385
  br label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i: ; preds = %bb.g, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i, %bb.d, %bb.c
  %.sroa.6.0.i = phi i64 [ %i.ay, %bb.g ], [ 0, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.015.0.i = phi ptr [ %i.ax, %bb.g ], [ null, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.az = load i32, ptr %i.o, align 4, !tbaa !2603
  %i.ba = and i32 %i.az, 8
  %.not.i8 = icmp eq i32 %i.ba, 0
  br i1 %.not.i8, label %bb.h, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i

bb.h:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !2591 ; 2 uses
  %.not8.i = icmp eq ptr %i.bb, null
  %brmerge.i = or i1 %.not.i.i.i, %.not8.i
  br i1 %brmerge.i, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i

_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i: ; preds = %bb.h
  %i.bc = load i8, ptr %i.ah, align 4, !tbaa !39
  %i.bd = icmp eq i8 %i.bc, 14
  br i1 %i.bd, label %bb.i, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i

bb.i:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.bb, ptr %3, align 8
  %i.be = call noundef i64 @_ZN4llvm10hash_valueENS_9StringRefE(ptr %.sroa.015.0.i, i64 %.sroa.6.0.i) #26
  store i64 %i.be, ptr %i.q, align 8
  %i.bf = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit

_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i, %bb.h, %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !908
  store ptr %i.bg, ptr %2, align 8
  %i.bh = call noundef i64 @_ZN4llvm10hash_valueENS_9StringRefE(ptr %.sroa.015.0.i, i64 %.sroa.6.0.i) #26
  store i64 %i.bh, ptr %i.v, align 8
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !74
  store ptr %i.bi, ptr %i.w, align 8
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !74
  store ptr %i.bj, ptr %i.x, align 8
  %i.bk = load i32, ptr %i.u, align 8, !tbaa !75
  store i32 %i.bk, ptr %i.y, align 8
  %i.bl = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit

_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit: ; preds = %bb.i, %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i
  %.0.in.in.i = phi i64 [ %i.bl, %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i ], [ %i.bf, %bb.i ]
  %i.bm = trunc i64 %.0.in.in.i to i32
  %.0.i9 = xor i32 %i.bm, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit
  %.pn.i = phi i32 [ %.0.i9, %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit ], [ %i.bu, %bb.j ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bn = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bo = lshr i64 %i.bn, 5                       ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !75 ; 2 uses
  %i.br = and i32 %.0.i7, 31                      ; 2 uses
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  %i.bu = add i32 %.0.i7, 1
  br i1 %i.bt, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2626

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bn
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !459
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !459
  %i.by = shl nuw i32 1, %i.br
  %i.bz = or i32 %i.by, %i.bq
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !75
  %i.ca = add i32 %.0.i20, -1
  %i.cb = and i32 %i.ca, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2627

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2628

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1055
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !2620
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !2620
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ch = load ptr, ptr %1, align 8, !tbaa !1042
  %i.ci = zext i32 %i.cc to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.ci, 31
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = and i64 %i.cl, 1073741820
  %i.cn = add nuw nsw i64 %i.cm, %i.cj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ch, i64 noundef %i.cn, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1055
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1074
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.c, 2
  %i.h = and i64 %i.g, 15
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.m = icmp eq ptr %i.a, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_14DILexicalBlockEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1076
  %i.p = load i8, ptr %1, align 8, !tbaa !39
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.e
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1072   ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i: ; preds = %bb.b
  %i.l = lshr i64 %i.j, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %i.r = load i8, ptr %i.h, align 8, !tbaa !39
  %i.s = icmp eq i8 %i.r, 16
  br i1 %i.s, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i: ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 2 uses
  %i.x = load i8, ptr %i.h, align 8, !tbaa !39
  %i.y = icmp eq i8 %i.x, 16
  br i1 %i.y, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i:        ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i
  %i.z = phi ptr [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %.sroa.0.0.i.i.i6.i.i = phi ptr [ %i.u, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.o, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %i.aa = load ptr, ptr %.sroa.0.0.i.i.i6.i.i, align 8, !tbaa !81
  br label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i
  %i.ab = phi ptr [ %i.z, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ac = phi ptr [ %i.aa, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !112
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !464
  %i.ah = zext i16 %i.ag to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ab, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ae, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ah, ptr %i.ak, align 4
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.am = trunc i64 %i.al to i32
  %i.an = xor i32 %i.am, -313160499
  %.024 = and i32 %i.an, %i.g                     ; 3 uses
  %i.ao = zext i32 %.024 to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75
  %i.at = and i32 %.024, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit
  %i.aw = load ptr, ptr %1, align 8, !tbaa !1072
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ax = add nuw i32 %.025, 1
  %.0 = and i32 %i.ax, %i.g                       ; 3 uses
  %i.ay = zext i32 %.0 to i64                     ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = lshr i64 %i.ay, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !75
  %i.bd = and i32 %.0, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %bb.d, label %.thread, !prof !78, !llvm.loop !2634

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bg = phi ptr [ %i.ap, %.lr.ph ], [ %i.az, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1072
  %i.bi = icmp eq ptr %i.aw, %i.bh                ; 3 uses
  br i1 %i.bi, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ap, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.az, %bb.c ], [ %i.bg, %bb.d ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bi, %bb.c ], [ %i.bi, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2635
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.115", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1092
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1079
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1091
  store i32 0, ptr %i.p, align 16, !tbaa !2636
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2635
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.971", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1079
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1091
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1092 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1091 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1079
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1092
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1072 ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i: ; preds = %bb.c
  %i.ac = lshr i64 %i.aa, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %i.ai = load i8, ptr %i.y, align 8, !tbaa !39
  %i.aj = icmp eq i8 %i.ai, 16
  br i1 %i.aj, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i: ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81 ; 2 uses
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !39
  %i.ap = icmp eq i8 %i.ao, 16
  br i1 %i.ap, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.aq = phi ptr [ %i.an, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.ah, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %.sroa.0.0.i.i.i6.i.i.i = phi ptr [ %i.al, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.af, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %i.ar = load ptr, ptr %.sroa.0.0.i.i.i6.i.i.i, align 8, !tbaa !81
  br label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.as = phi ptr [ %i.aq, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.ah, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.an, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.at = phi ptr [ %i.ar, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.y, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.y, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !464
  %i.ay = zext i16 %i.ax to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.as, ptr %2, align 8
  store ptr %i.at, ptr %i.o, align 8
  store i32 %i.av, ptr %i.p, align 8
  store i32 %i.ay, ptr %i.q, align 4
  %i.az = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.bb, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i ], [ %i.bj, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bc = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bd = lshr i64 %i.bc, 5                       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !75 ; 2 uses
  %i.bg = and i32 %.0.i7, 31                      ; 2 uses
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  %i.bj = add i32 %.0.i7, 1
  br i1 %i.bi, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2642

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !1072
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !1072
  %i.bn = shl nuw i32 1, %i.bg
  %i.bo = or i32 %i.bn, %i.bf
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !75
  %i.bp = add i32 %.0.i18, -1
  %i.bq = and i32 %i.bp, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2643

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2644

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1092
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.br = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !2636
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !2636
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !1079
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1092
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1111
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.c, 2
  %i.h = and i64 %i.g, 15
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.m = icmp eq ptr %i.a, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1113
  %i.p = load i8, ptr %1, align 8, !tbaa !39
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %1, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = lshr i64 %i.c, 2
  %i.u = and i64 %i.t, 15
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.v
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i5.i = phi ptr [ %i.w, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.sroa.0.0.i.i.i5.i, align 8, !tbaa !81
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i, %bb.d
  %i.y = phi ptr [ %i.x, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %1, %bb.d ]
  %i.z = icmp eq ptr %i.o, %i.y
  br i1 %i.z, label %bb.h, label %_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit

bb.h:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1114
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !112
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br label %_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit: ; preds = %bb.h, %_ZNK4llvm7DIScope10getRawFileEv.exit.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i
  %i.af = phi i1 [ false, %_ZNK4llvm7DIScope10getRawFileEv.exit.i ], [ false, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i ], [ %i.ae, %bb.h ]
  ret i1 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1166", align 8  ; 6 uses
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1127, !noalias !2653 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1128, !noalias !2653 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1109   ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i: ; preds = %bb.b
  %i.l = lshr i64 %i.j, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %i.r = load i8, ptr %i.h, align 8, !tbaa !39
  %i.s = icmp eq i8 %i.r, 16
  br i1 %i.s, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i: ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 2 uses
  %i.x = load i8, ptr %i.h, align 8, !tbaa !39
  %i.y = icmp eq i8 %i.x, 16
  br i1 %i.y, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i:        ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i
  %i.z = phi ptr [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %.sroa.0.0.i.i.i5.i.i = phi ptr [ %i.u, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.o, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %i.aa = load ptr, ptr %.sroa.0.0.i.i.i5.i.i, align 8, !tbaa !81
  br label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i
  %i.ab = phi ptr [ %i.z, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ac = phi ptr [ %i.aa, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ab, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ae, ptr %i.ag, align 8
  %i.ah = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = xor i32 %i.ai, -313160499
  %.024 = and i32 %i.aj, %i.g                     ; 3 uses
  %i.ak = zext i32 %.024 to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75
  %i.ap = and i32 %.024, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !1109
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.at = add nuw i32 %.025, 1
  %.0 = and i32 %i.at, %i.g                       ; 3 uses
  %i.au = zext i32 %.0 to i64                     ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = lshr i64 %i.au, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = and i32 %.0, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.d, label %.thread, !prof !78, !llvm.loop !2650

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bc = phi ptr [ %i.al, %.lr.ph ], [ %i.av, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1109
  %i.be = icmp eq ptr %i.as, %i.bd                ; 3 uses
  br i1 %i.be, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.al, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.av, %bb.c ], [ %i.bc, %bb.d ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.be, %bb.c ], [ %i.be, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2651
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.119", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1128
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1115
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1127
  store i32 0, ptr %i.p, align 16, !tbaa !2652
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2651
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1166", align 8  ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1115
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1127
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1128 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1127 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1128
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1109 ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i: ; preds = %bb.c
  %i.ab = lshr i64 %i.z, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81 ; 2 uses
  %i.ah = load i8, ptr %i.x, align 8, !tbaa !39
  %i.ai = icmp eq i8 %i.ah, 16
  br i1 %i.ai, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i: ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.an = load i8, ptr %i.x, align 8, !tbaa !39
  %i.ao = icmp eq i8 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.ap = phi ptr [ %i.am, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.ag, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %.sroa.0.0.i.i.i5.i.i.i = phi ptr [ %i.ak, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.ae, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %i.aq = load ptr, ptr %.sroa.0.0.i.i.i5.i.i.i, align 8, !tbaa !81
  br label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.ar = phi ptr [ %i.ap, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.ag, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.am, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.as = phi ptr [ %i.aq, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.x, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.x, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.ar, ptr %2, align 8
  store ptr %i.as, ptr %i.o, align 8
  store i32 %i.au, ptr %i.p, align 8
  %i.av = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aw = trunc i64 %i.av to i32
  %i.ax = xor i32 %i.aw, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ax, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i ], [ %i.bf, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ay = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.az = lshr i64 %i.ay, 5                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !75 ; 2 uses
  %i.bc = and i32 %.0.i7, 31                      ; 2 uses
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  %i.bf = add i32 %.0.i7, 1
  br i1 %i.be, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2658

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !1109
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !1109
  %i.bj = shl nuw i32 1, %i.bc
  %i.bk = or i32 %i.bj, %i.bb
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !75
  %i.bl = add i32 %.0.i18, -1
  %i.bm = and i32 %i.bl, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2659

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2660

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1128
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !2652
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !2652
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !1115
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_11DINamespaceEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1147   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i, label %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i

_ZNK4llvm11DINamespace11getRawScopeEv.exit.i:     ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = icmp eq ptr %i.a, %i.j
  br i1 %i.k, label %_ZNK4llvm11DINamespace10getRawNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i: ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %1, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = icmp eq ptr %i.a, %i.o
  br i1 %i.p, label %_ZNK4llvm11DINamespace10getRawNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DINamespace10getRawNameEv.exit.i:      ; preds = %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.m, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i ], [ %i.h, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %.in.i, align 8, !tbaa !1149
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm11DINamespace10getRawNameEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1150, !range !581, !noundef !58
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %.lobit.i = lshr i8 %i.x, 7
  %i.y = icmp eq i8 %i.v, %.lobit.i
  br label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit: ; preds = %bb.b, %_ZNK4llvm11DINamespace10getRawNameEv.exit.i, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i
  %i.z = phi i1 [ false, %_ZNK4llvm11DINamespace10getRawNameEv.exit.i ], [ false, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i ], [ %i.y, %bb.b ], [ false, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1000", align 16 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1151, !noalias !2661 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1163, !noalias !2661 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1164, !noalias !2661 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
end_hunk_17
begin_hunk_18_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bm = or i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !75
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !2668
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ar, align 8, !tbaa !2668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1145
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !1145
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ao, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1000", align 16 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1151, !noalias !2669 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1163, !noalias !2669 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1164, !noalias !2669 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.r = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.r, ptr %3, align 16
  %i.s = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.t = trunc i64 %i.s to i32
  %i.u = xor i32 %i.t, -313160499
  %.024 = and i32 %i.u, %i.g                      ; 3 uses
  %i.v = zext i32 %.024 to i64                    ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = lshr i64 %i.v, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75
  %i.aa = and i32 %.024, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1145
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ae = add nuw i32 %.025, 1
  %.0 = and i32 %i.ae, %i.g                       ; 3 uses
  %i.af = zext i32 %.0 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !75
  %i.ak = and i32 %.0, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.f, label %.thread, !prof !78, !llvm.loop !2666

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.an = phi ptr [ %i.w, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1145
  %i.ap = icmp eq ptr %i.ad, %i.ao                ; 3 uses
  br i1 %i.ap, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.w, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ag, %bb.e ], [ %i.an, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ap, %bb.e ], [ %i.ap, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2667
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.123", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1164
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1151
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1163
  store i32 0, ptr %i.p, align 16, !tbaa !2668
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2667
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1000", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1151
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1163
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1164 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1163 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1164
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1145 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = lshr i64 %i.x, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ad
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %bb.c ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.af = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.af, ptr %2, align 16
  %i.ag = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = xor i32 %i.ah, -313160499
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ai, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i ], [ %i.aq, %bb.e ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aj = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75 ; 2 uses
  %i.an = and i32 %.0.i7, 31                      ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i7, 1
  br i1 %i.ap, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2674

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !1145
  store ptr %i.at, ptr %i.as, align 8, !tbaa !1145
  %i.au = shl nuw i32 1, %i.an
  %i.av = or i32 %i.au, %i.am
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !75
  %i.aw = add i32 %.0.i18, -1
  %i.ax = and i32 %i.aw, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2675

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2676

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1164
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2668
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !2668
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1151
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm13MDNodeKeyImplINS_8DIModuleEE7isKeyOfEPKS1_(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1183 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 2
  %.not.i.i.i = icmp eq i64 %i.e, 0               ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK4llvm8DIModule11getRawScopeEv.exit, label %_ZNK4llvm8DIModule11getRawScopeEv.exit.thread

_ZNK4llvm8DIModule11getRawScopeEv.exit:           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = icmp eq ptr %i.b, %i.k
  br i1 %i.l, label %_ZNK4llvm8DIModule10getRawNameEv.exit, label %bb.h

_ZNK4llvm8DIModule11getRawScopeEv.exit.thread:    ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %1, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.q = icmp eq ptr %i.b, %i.p
  br i1 %i.q, label %_ZNK4llvm8DIModule10getRawNameEv.exit.thread, label %bb.h

_ZNK4llvm8DIModule10getRawNameEv.exit:            ; preds = %_ZNK4llvm8DIModule11getRawScopeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1184
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit, label %bb.h

_ZNK4llvm8DIModule10getRawNameEv.exit.thread:     ; preds = %_ZNK4llvm8DIModule11getRawScopeEv.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1184
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit.thread, label %bb.h

_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit: ; preds = %_ZNK4llvm8DIModule10getRawNameEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1185
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %_ZNK4llvm8DIModule17getRawIncludePathEv.exit, label %bb.h

_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit.thread: ; preds = %_ZNK4llvm8DIModule10getRawNameEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1185
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %.thread21, label %bb.h

.thread21:                                        ; preds = %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2677
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit, label %bb.h

_ZNK4llvm8DIModule17getRawIncludePathEv.exit:     ; preds = %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2677
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit, label %bb.h

_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit:    ; preds = %_ZNK4llvm8DIModule17getRawIncludePathEv.exit, %.thread21
  %.sroa.0.0.i.i.i.i14 = phi ptr [ %i.n, %.thread21 ], [ %i.i, %_ZNK4llvm8DIModule17getRawIncludePathEv.exit ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %.in, align 8, !tbaa !2678
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i14, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !1181
  %i.ba = load i8, ptr %1, align 8, !tbaa !39
  %i.bb = icmp eq i8 %i.ba, 16
  br i1 %i.bb, label %_ZNK4llvm7DIScope10getRawFileEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

end_hunk_18
begin_hunk_19_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !483
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.aq, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.970", align 16  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1188, !noalias !2687 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1200, !noalias !2687 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1201, !noalias !2687 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !483    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i9.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.in9.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %.in7.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.r = load <2 x ptr>, ptr %.in7.i, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load <2 x ptr>, ptr %.in9.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.r, ptr %3, align 16
  store <2 x ptr> %i.t, ptr %i.s, align 16
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = trunc i64 %i.u to i32
  %i.w = xor i32 %i.v, -313160499
  %.024 = and i32 %i.w, %i.g                      ; 3 uses
  %i.x = zext i32 %.024 to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !75
  %i.ac = and i32 %.024, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !483
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ag = add nuw i32 %.025, 1
  %.0 = and i32 %i.ag, %i.g                       ; 3 uses
  %i.ah = zext i32 %.0 to i64                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !75
  %i.am = and i32 %.0, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %bb.f, label %.thread, !prof !78, !llvm.loop !2684

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ap = phi ptr [ %i.y, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !483
  %i.ar = icmp eq ptr %i.af, %i.aq                ; 3 uses
  br i1 %i.ar, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.y, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ai, %bb.e ], [ %i.ap, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ar, %bb.e ], [ %i.ar, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2685
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.127", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1201
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1188
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1200
  store i32 0, ptr %i.p, align 16, !tbaa !2686
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2685
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.970", align 16  ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1188
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1201 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1200 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1201
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.q, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.r = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.q, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.s = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !483  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 2
  %.not.i.i.i9.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i9.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = lshr i64 %i.y, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %.in9.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %.in7.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.ag = load <2 x ptr>, ptr %.in7.i.i, align 8, !tbaa !81
  %i.ah = load <2 x ptr>, ptr %.in9.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.ag, ptr %2, align 16
  store <2 x ptr> %i.ah, ptr %i.o, align 16
  %i.ai = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = xor i32 %i.aj, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ak, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i ], [ %i.as, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.al = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75 ; 2 uses
  %i.ap = and i32 %.0.i7, 31                      ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i7, 1
  br i1 %i.ar, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2692

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !483
  store ptr %i.av, ptr %i.au, align 8, !tbaa !483
  %i.aw = shl nuw i32 1, %i.ap
  %i.ax = or i32 %i.aw, %i.ao
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !75
  %i.ay = add i32 %.0.i18, -1
  %i.az = and i32 %i.ay, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2693

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2694

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1201
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !2686
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !2686
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !1188
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1220   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i: ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i: ; preds = %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %.in.i, align 8, !tbaa !1222
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !1223, !range !581, !noundef !58
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %.lobit.i = lshr i8 %i.v, 7
  %i.w = icmp eq i8 %i.t, %.lobit.i
  br label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit: ; preds = %bb.b, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i
  %i.x = phi i1 [ false, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ], [ %i.w, %bb.b ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ]
  ret i1 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1212", align 16 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1224, !noalias !2695 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236, !noalias !2695 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1237, !noalias !2695 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1218   ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.lobit.i.i.i = lshr i8 %i.t, 7
  %i.u = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.u, ptr %2, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %.lobit.i.i.i, ptr %i.v, align 16
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
end_hunk_19
begin_hunk_20_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  store ptr %i.bs, ptr %i.bc, align 8, !tbaa !1218
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.bc, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ar, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1212", align 16 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1224, !noalias !2703 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1236, !noalias !2703 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1237, !noalias !2703 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1218   ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %.lobit.i.i = lshr i8 %i.s, 7
  %i.t = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.t, ptr %3, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.lobit.i.i, ptr %i.u, align 16
  %i.v = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.w = trunc i64 %i.v to i32
  %i.x = xor i32 %i.w, -313160499
  %.024 = and i32 %i.x, %i.g                      ; 3 uses
  %i.y = zext i32 %.024 to i64                    ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.ad = and i32 %.024, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1218
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ah = add nuw i32 %.025, 1
  %.0 = and i32 %i.ah, %i.g                       ; 3 uses
  %i.ai = zext i32 %.0 to i64                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = and i32 %.0, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %.thread, !prof !78, !llvm.loop !2700

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aq = phi ptr [ %i.z, %.lr.ph ], [ %i.aj, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1218
  %i.as = icmp eq ptr %i.ag, %i.ar                ; 3 uses
  br i1 %i.as, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.z, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.aj, %bb.e ], [ %i.aq, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.as, %bb.e ], [ %i.as, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2701
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.131", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1237
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1224
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1236
  store i32 0, ptr %i.p, align 16, !tbaa !2702
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2701
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1212", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1236
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1237 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1236 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1237
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.q, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.r = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.q, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.s = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1218 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = lshr i64 %i.y, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.lobit.i.i.i = lshr i8 %i.ah, 7
  %i.ai = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.ai, ptr %2, align 16
  store i8 %.lobit.i.i.i, ptr %i.o, align 16
  %i.aj = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ak = trunc i64 %i.aj to i32
  %i.al = xor i32 %i.ak, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.al, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i ], [ %i.at, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.am = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75 ; 2 uses
  %i.aq = and i32 %.0.i7, 31                      ; 2 uses
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  %i.at = add i32 %.0.i7, 1
  br i1 %i.as, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2708

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.am
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !1218
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1218
  %i.ax = shl nuw i32 1, %i.aq
  %i.ay = or i32 %i.ax, %i.ap
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !75
  %i.az = add i32 %.0.i18, -1
  %i.ba = and i32 %i.az, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2709

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2710

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1237
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2702
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2702
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !1224
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1254
  %i.b = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.c = zext i16 %i.b to i32
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1256 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0           ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i: ; preds = %bb.b
  %i.j = lshr i64 %i.h, 2
  %i.k = and i64 %i.j, 15
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = icmp eq ptr %i.f, %i.n
  br i1 %i.o, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i: ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %1, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = icmp eq ptr %i.f, %i.r
  br i1 %i.s, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i: ; preds = %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.q, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ], [ %i.m, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %.in.i, align 8, !tbaa !1257
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !1258, !range !581, !noundef !58
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %.lobit.i = lshr i8 %i.aa, 7
  %i.ab = icmp eq i8 %i.y, %.lobit.i
  br i1 %i.ab, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1259
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  br label %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ag = lshr i64 %i.h, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ai
  br label %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i

_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i7.i = phi ptr [ %i.aj, %bb.f ], [ %i.af, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i7.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.am = icmp eq ptr %i.ad, %i.al
  br label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit: ; preds = %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i, %bb.c, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i, %bb.a
  %i.an = phi i1 [ false, %bb.c ], [ false, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ], [ false, %bb.a ], [ %i.am, %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ]
  ret i1 %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !2711
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2711 ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !2711
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2712
end_hunk_20
begin_hunk_21_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1227", align 4  ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1260, !noalias !2713 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1272, !noalias !2713 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1273, !noalias !2713 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !491    ; 4 uses
  %i.i = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.lobit.i6.in.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.lobit.i6.in.i = load i8, ptr %.lobit.i6.in.in.i, align 1
  %.lobit.i6.i = lshr i8 %.lobit.i6.in.i, 7
  %i.s = zext i16 %i.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.s, ptr %3, align 4
  store <2 x ptr> %i.w, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %.lobit.i6.i, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 21
  store ptr %i.u, ptr %i.y, align 1
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !491
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !78, !llvm.loop !2718

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !491
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2711
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.135", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1273
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1260
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1272
  store i32 0, ptr %i.p, align 16, !tbaa !2712
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2711
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1227", align 4  ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1260
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1272
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1273 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1272 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1260
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1273
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !491  ; 4 uses
  %i.z = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i64 %i.ab, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.af = lshr i64 %i.ab, 2
  %i.ag = and i64 %i.af, 15
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ah
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %.lobit.i6.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.lobit.i6.in.i.i = load i8, ptr %.lobit.i6.in.in.i.i, align 1
  %.lobit.i6.i.i = lshr i8 %.lobit.i6.in.i.i, 7
  %i.aj = zext i16 %i.z to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.am = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.aj, ptr %2, align 4
  store <2 x ptr> %i.am, ptr %i.o, align 4
  store i8 %.lobit.i6.i.i, ptr %i.p, align 4
  store ptr %i.al, ptr %i.q, align 1
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2719

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !491
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !491
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !75
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2720

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2721

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1273
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2712
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2712
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1260
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  br label %_ZNK4llvm10DIVariable11getRawScopeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  br label %_ZNK4llvm10DIVariable11getRawScopeEv.exit

_ZNK4llvm10DIVariable11getRawScopeEv.exit:        ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !81
  store ptr %i.j, ptr %0, align 8, !tbaa !2722
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = and i64 %i.l, 2
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm10DIVariable11getRawScopeEv.exit
  %i.n = getelementptr inbounds i8, ptr %1, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83
  br label %_ZNK4llvm10DIVariable10getRawNameEv.exit

bb.e:                                             ; preds = %_ZNK4llvm10DIVariable11getRawScopeEv.exit
  %i.p = lshr i64 %i.l, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  br label %_ZNK4llvm10DIVariable10getRawNameEv.exit

_ZNK4llvm10DIVariable10getRawNameEv.exit:         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  store ptr %i.u, ptr %i.k, align 8, !tbaa !2724
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.a, align 8              ; 2 uses
  %i.x = and i64 %i.w, 2
  %.not.i.i.i.i13 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm10DIVariable10getRawNameEv.exit
  %i.y = getelementptr inbounds i8, ptr %1, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  br label %_ZNK4llvm16DIGlobalVariable17getRawLinkageNameEv.exit

bb.g:                                             ; preds = %_ZNK4llvm10DIVariable10getRawNameEv.exit
  %i.aa = lshr i64 %i.w, 2
  %i.ab = and i64 %i.aa, 15
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac
  br label %_ZNK4llvm16DIGlobalVariable17getRawLinkageNameEv.exit

_ZNK4llvm16DIGlobalVariable17getRawLinkageNameEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i.i14 = phi ptr [ %i.ad, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i14, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  store ptr %i.af, ptr %i.v, align 8, !tbaa !2725
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ai = and i64 %i.ah, 2
  %.not.i.i.i15 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm16DIGlobalVariable17getRawLinkageNameEv.exit
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  br label %_ZNK4llvm10DIVariable10getRawFileEv.exit

bb.i:                                             ; preds = %_ZNK4llvm16DIGlobalVariable17getRawLinkageNameEv.exit
  %i.al = lshr i64 %i.ah, 2
  %i.am = and i64 %i.al, 15
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.an
  br label %_ZNK4llvm10DIVariable10getRawFileEv.exit

_ZNK4llvm10DIVariable10getRawFileEv.exit:         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i16 = phi ptr [ %i.ao, %bb.i ], [ %i.ak, %bb.h ]
end_hunk_21
begin_hunk_22_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %3 = alloca %"struct.std::array.1242", align 16 ; 11 uses
  %4 = alloca %"struct.llvm::MDNodeKeyImpl.1236", align 16 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1295, !noalias !2743 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2740, !noalias !2743 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1298, !noalias !2743 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 49
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.p = load <2 x ptr>, ptr %4, align 16, !tbaa !165
  store <2 x ptr> %i.p, ptr %3, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load <2 x ptr>, ptr %i.i, align 16, !tbaa !165
  store <2 x ptr> %i.r, ptr %i.q, align 16
  %i.s = load i32, ptr %i.j, align 16, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.s, ptr %i.t, align 16
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  store ptr %i.u, ptr %i.v, align 4
  %i.w = load i8, ptr %i.l, align 16, !tbaa !2194, !range !581, !noundef !58
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 %i.w, ptr %i.x, align 4
  %i.y = load i8, ptr %i.m, align 1, !tbaa !2194, !range !581, !noundef !58
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 45
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 46
  store ptr %i.aa, ptr %i.ab, align 2
  %i.ac = load ptr, ptr %i.o, align 16, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 54
  store ptr %i.ac, ptr %i.ad, align 2
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 62) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.af = trunc i64 %i.ae to i32
  %i.ag = xor i32 %i.af, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.024 = and i32 %i.ag, %i.g                     ; 3 uses
  %i.ah = zext i32 %.024 to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !75
  %i.am = and i32 %.024, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %i.ap = load ptr, ptr %1, align 8, !tbaa !493
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.aq = add nuw i32 %.025, 1
  %.0 = and i32 %i.aq, %i.g                       ; 3 uses
  %i.ar = zext i32 %.0 to i64                     ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.ar, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75
  %i.aw = and i32 %.0, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %bb.d, label %.thread, !prof !78, !llvm.loop !2748

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.az = phi ptr [ %i.ai, %.lr.ph ], [ %i.as, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !493
  %i.bb = icmp eq ptr %i.ap, %i.ba                ; 3 uses
  br i1 %i.bb, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ], [ %i.as, %bb.c ], [ %i.az, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.bb, %bb.c ], [ %i.bb, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2741
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.139", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1298
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1295
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2740
  store i32 0, ptr %i.p, align 16, !tbaa !2742
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2741
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1242", align 16 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1295
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2740
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1298 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2740 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1298
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i43 = icmp eq i64 %i.n, 0
  br i1 %.not.i43, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 54
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75   ; 2 uses
  %.not11.i41 = icmp eq i32 %i.x, 0
  br i1 %.not11.i41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.y = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i42 = phi i32 [ %i.x, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.z = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i42, i1 true)
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !493 ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 2
  %.not.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = lshr i64 %i.af, 2
  %i.ak = and i64 %i.aj, 15
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit: ; preds = %bb.d, %bb.e
  %.pn = phi ptr [ %i.am, %bb.e ], [ %i.ai, %bb.d ] ; 6 uses
  %.in35 = getelementptr inbounds nuw i8, ptr %.pn, i64 48
  %i.an = load ptr, ptr %.in35, align 8, !tbaa !81
  %.in34 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ao = load i32, ptr %.in34, align 8, !tbaa !628
  %.in32 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ap = load ptr, ptr %.in32, align 8, !tbaa !81
  %.in27 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.aq = load ptr, ptr %.in27, align 8, !tbaa !81
  %.in26 = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.ar = load ptr, ptr %.in26, align 8, !tbaa !81
  %.in25 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.as = load i8, ptr %.in25, align 4, !tbaa !630, !range !581, !noundef !58
  %.in = getelementptr inbounds nuw i8, ptr %i.ad, i64 21
  %i.at = load i8, ptr %.in, align 1, !tbaa !632, !range !581, !noundef !58
  %i.au = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %i.aw = load <2 x ptr>, ptr %.pn, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.aw, ptr %2, align 16
  store ptr %i.aq, ptr %i.o, align 16
  store ptr %i.ap, ptr %i.p, align 8
  store i32 %i.ao, ptr %i.q, align 16
  store ptr %i.ar, ptr %i.r, align 4
  store i8 %i.as, ptr %i.s, align 4
  store i8 %i.at, ptr %i.t, align 1
  store ptr %i.an, ptr %i.u, align 2
  store ptr %i.av, ptr %i.v, align 2
  %i.ax = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 62) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ay = trunc i64 %i.ax to i32
  %i.az = xor i32 %i.ay, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit
  %.pn.i = phi i32 [ %i.az, %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit ], [ %i.bh, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ba = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bb = lshr i64 %i.ba, 5                       ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75 ; 2 uses
  %i.be = and i32 %.0.i7, 31                      ; 2 uses
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  %i.bh = add i32 %.0.i7, 1
  br i1 %i.bg, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2749

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ba
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !493
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !493
  %i.bl = shl nuw i32 1, %i.be
  %i.bm = or i32 %i.bl, %i.bd
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !75
  %i.bn = add i32 %.0.i42, -1
  %i.bo = and i32 %i.bn, %.0.i42                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2750

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2751

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1298
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !2742
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !2742
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !1295
  %i.bv = zext i32 %i.bp to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E7find_asINS_13MDNodeKeyImplIS2_EEEENS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEERKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::DenseMapIterator.1254") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1257", align 16 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1314, !noalias !2752 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1704, !noalias !2752 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1322, !noalias !2752 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !165
  store <2 x ptr> %i.m, ptr %3, align 16
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.o, align 16
  %i.p = load i32, ptr %i.i, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.u = load <2 x i32>, ptr %i.k, align 8, !tbaa !75
  store <2 x i32> %i.u, ptr %i.t, align 4
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 44
  store ptr %i.v, ptr %i.w, align 4
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.019.i.i = and i32 %i.z, %i.g                  ; 3 uses
  %i.aa = zext i32 %.019.i.i to i64               ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.ae = and i32 %.019.i.i, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i, label %.loopexit, !prof !76

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw i32 %.020.i.i, 1
  %.0.i.i = and i32 %i.ah, %i.g                   ; 3 uses
  %i.ai = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !75
  %i.am = and i32 %.0.i.i, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i, label %.loopexit, !prof !78

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.ap = phi i64 [ %i.ai, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %.020.i.i = phi i32 [ %.0.i.i, %bb.c ], [ %.019.i.i, %bb.b ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !495
  %i.as = call noundef zeroext i1 @_ZNK4llvm13MDNodeKeyImplINS_15DILocalVariableEE7isKeyOfEPKS1_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ar)
  br i1 %i.as, label %bb.d, label %bb.c, !prof !77

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.au = load ptr, ptr %1, align 8, !tbaa !1314, !noalias !2757 ; 2 uses
  %i.av = load i32, ptr %i.d, align 4, !tbaa !1322, !noalias !2757
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
end_hunk_22
begin_hunk_23_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !495    ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 4 uses
  %.in14.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i32, ptr %.in14.i, align 8, !tbaa !628
  %.in12.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.s = load ptr, ptr %.in12.i, align 8, !tbaa !81
  %.in8.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.t = load ptr, ptr %.in8.i, align 8, !tbaa !81
  %.in7.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.in7.i = load i16, ptr %.in7.in.i, align 4
  %i.u = zext i16 %.in7.i to i32
  %.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i32, ptr %.in.i, align 8, !tbaa !636
  %i.w = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.y, ptr %3, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.s, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.r, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.t, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.u, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.v, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 44
  store ptr %i.x, ptr %i.ae, align 4
  %i.af = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ag = trunc i64 %i.af to i32
  %i.ah = xor i32 %i.ag, -313160499
  %.024 = and i32 %i.ah, %i.g                     ; 3 uses
  %i.ai = zext i32 %.024 to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = and i32 %.024, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !495
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %.025, 1
  %.0 = and i32 %i.ar, %i.g                       ; 3 uses
  %i.as = zext i32 %.0 to i64                     ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = lshr i64 %i.as, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !75
  %i.ax = and i32 %.0, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.thread, !prof !78, !llvm.loop !2773

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ba = phi ptr [ %i.aj, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !495
  %i.bc = icmp eq ptr %i.aq, %i.bb                ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.aj, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.at, %bb.e ], [ %i.ba, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bc, %bb.e ], [ %i.bc, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2774
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.143", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1322
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1314
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1704
  store i32 0, ptr %i.p, align 16, !tbaa !2775
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2774
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1257", align 16 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1314
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1704
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1322 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1704 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1314
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1322
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.v, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.v, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !495 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in14.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.al = load i32, ptr %.in14.i.i, align 8, !tbaa !628
  %.in12.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.am = load ptr, ptr %.in12.i.i, align 8, !tbaa !81
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.an = load ptr, ptr %.in8.i.i, align 8, !tbaa !81
  %.in7.in.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.in7.i.i = load i16, ptr %.in7.in.i.i, align 4
  %i.ao = zext i16 %.in7.i.i to i32
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ap = load i32, ptr %.in.i.i, align 8, !tbaa !636
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81
  %i.as = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.as, ptr %2, align 16
  store ptr %i.am, ptr %i.o, align 16
  store i32 %i.al, ptr %i.p, align 8
  store ptr %i.an, ptr %i.q, align 4
  store i32 %i.ao, ptr %i.r, align 4
  store i32 %i.ap, ptr %i.s, align 8
  store ptr %i.ar, ptr %i.t, align 4
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.au = trunc i64 %i.at to i32
  %i.av = xor i32 %i.au, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.av, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i ], [ %i.bd, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aw = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !75 ; 2 uses
  %i.ba = and i32 %.0.i7, 31                      ; 2 uses
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  %i.bd = add i32 %.0.i7, 1
  br i1 %i.bc, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2781

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !495
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !495
  %i.bh = shl nuw i32 1, %i.ba
  %i.bi = or i32 %i.bh, %i.az
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !75
  %i.bj = add i32 %.0.i18, -1
  %i.bk = and i32 %i.bj, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2782

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2783

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1322
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !2775
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !2775
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !1314
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1274", align 1  ; 5 uses
  %3 = alloca %"struct.std::array.1273", align 16 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1342, !noalias !2784 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2789, !noalias !2784 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1345, !noalias !2784 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !165
  store <2 x ptr> %i.j, ptr %3, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load <2 x i32>, ptr %i.h, align 8, !tbaa !75
  store <2 x i32> %i.l, ptr %i.k, align 16
  %i.m = load i8, ptr %i.i, align 8, !tbaa !2194, !range !581, !noundef !58
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8, !tbaa !2486, !range !581, !noundef !58
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i8 1, ptr %2, align 1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i32 %i.s, ptr %i.t, align 1
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 5) #26
  %i.v = xor i64 %i.u, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.v, %bb.c ], [ -6123094709308576955, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.w, align 1
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.019 = and i32 %i.z, %i.g                      ; 3 uses
  %i.aa = zext i32 %.019 to i64                   ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.ae = and i32 %.019, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !76

bb.d:                                             ; preds = %.lr.ph
  %i.ah = add nuw i32 %.020, 1
  %.0 = and i32 %i.ah, %i.g                       ; 3 uses
  %i.ai = zext i32 %.0 to i64                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !75
  %i.am = and i32 %.0, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph, label %.thread, !prof !78

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit, %bb.d
  %i.ap = phi i64 [ %i.ai, %bb.d ], [ %i.aa, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ] ; 2 uses
  %.020 = phi i32 [ %.0, %bb.d ], [ %.019, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !497
  %i.as = call noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_7DILabelEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef %i.ar)
  br i1 %i.as, label %.thread.loopexit.split.loop.exit, label %bb.d, !prof !77

.thread.loopexit.split.loop.exit:                 ; preds = %.lr.ph
end_hunk_23
begin_hunk_24_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i

_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !641
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i8, ptr %i.v, align 4, !tbaa !643, !range !581, !noundef !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.x, align 4 ; 2 uses
  %i.y = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store <2 x ptr> %i.y, ptr %4, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.s, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.u, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.w, ptr %i.ab, align 8
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i, 4294967296
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 1, ptr %3, align 1
  %.sroa.132.36.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i32 %.sroa.132.36.extract.trunc.i, ptr %i.ad, align 1
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 5) #26
  %i.af = xor i64 %i.ae, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i, %bb.e
  %.sroa.0.0.i.i.i.i.i1.i = phi i64 [ %i.af, %bb.e ], [ -6123094709308576955, %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i64 %.sroa.0.0.i.i.i.i.i1.i, ptr %i.ag, align 1
  %i.ah = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = xor i32 %i.ai, -313160499
  %.024 = and i32 %i.aj, %i.g                     ; 3 uses
  %i.ak = zext i32 %.024 to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75
  %i.ap = and i32 %.024, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !497
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.at = add nuw i32 %.025, 1
  %.0 = and i32 %i.at, %i.g                       ; 3 uses
  %i.au = zext i32 %.0 to i64                     ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = lshr i64 %i.au, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = and i32 %.0, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %.thread, !prof !78, !llvm.loop !2799

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.bc = phi ptr [ %i.al, %.lr.ph ], [ %i.av, %bb.f ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.f ]
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !497
  %i.be = icmp eq ptr %i.as, %i.bd                ; 3 uses
  br i1 %i.be, label %.thread, label %bb.f, !prof !77

.thread:                                          ; preds = %bb.g, %bb.f, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.al, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.av, %bb.f ], [ %i.bc, %bb.g ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.be, %bb.f ], [ %i.be, %bb.g ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2792
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.147", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1345
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1342
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2789
  store i32 0, ptr %i.p, align 16, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2792
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1274", align 1  ; 5 uses
  %3 = alloca %"struct.std::array.1273", align 16 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1342
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2789
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1345 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2789 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1342
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1345
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.u, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.u, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !497 ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.ac, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !641
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !643, !range !581, !noundef !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aq, align 4 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.ar, ptr %3, align 16
  store i32 %i.al, ptr %i.o, align 16
  store i32 %i.an, ptr %i.p, align 4
  store i8 %i.ap, ptr %i.q, align 8
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967296
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i8 1, ptr %2, align 1
  %.sroa.132.36.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  store i32 %.sroa.132.36.extract.trunc.i.i, ptr %i.r, align 1
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 5) #26
  %i.au = xor i64 %i.at, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i: ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i
  %.sroa.0.0.i.i.i.i.i1.i.i = phi i64 [ %i.au, %bb.f ], [ -6123094709308576955, %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i1.i.i, ptr %i.s, align 1
  %i.av = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aw = trunc i64 %i.av to i32
  %i.ax = xor i32 %i.aw, -313160499
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ax, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i ], [ %i.bf, %bb.g ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ay = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.az = lshr i64 %i.ay, 5                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !75 ; 2 uses
  %i.bc = and i32 %.0.i7, 31                      ; 2 uses
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  %i.bf = add i32 %.0.i7, 1
  br i1 %i.be, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2800

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !497
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !497
  %i.bj = shl nuw i32 1, %i.bc
  %i.bk = or i32 %i.bj, %i.bb
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !75
  %i.bl = add i32 %.0.i18, -1
  %i.bm = and i32 %i.bl, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2801

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2802

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1345
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !2793
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !2793
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !1342
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1353   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0           ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i, label %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i

_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i:   ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i:   ; preds = %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i, %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %.in.i, align 8, !tbaa !1355
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1356
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !647
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1357 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i, label %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i

_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i: ; preds = %bb.c
  %i.z = lshr i64 %i.c, 2
  %i.aa = and i64 %i.z, 15
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = icmp eq ptr %i.y, %i.ae
  br i1 %i.af, label %_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i: ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.ak = icmp eq ptr %i.y, %i.aj
  br i1 %i.ak, label %_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i: ; preds = %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i, %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i
  %.sroa.0.0.i.i.i.i11.i = phi ptr [ %i.ah, %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i ], [ %i.ac, %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i ]
  %.in17.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %.in17.i, align 8, !tbaa !1358
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i11.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = icmp eq ptr %i.al, %i.an
end_hunk_24
begin_hunk_25_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %3 = alloca %"struct.std::array.1061", align 16 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1361, !noalias !2811 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1373, !noalias !2811 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1374, !noalias !2811 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !499    ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %.in12.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.in8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i32, ptr %.in8.i, align 8, !tbaa !647
  %.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.s = load i32, ptr %.in.i, align 4, !tbaa !649
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.y = load <2 x ptr>, ptr %.in12.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.v, ptr %3, align 16
  store i32 %i.r, ptr %i.w, align 16
  store <2 x ptr> %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.s, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.u, ptr %i.aa, align 8
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  %.024 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.024 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !75
  %i.aj = and i32 %.024, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !499
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.an = add nuw i32 %.025, 1
  %.0 = and i32 %i.an, %i.g                       ; 3 uses
  %i.ao = zext i32 %.0 to i64                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75
  %i.at = and i32 %.0, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.f, label %.thread, !prof !78, !llvm.loop !2808

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aw = phi ptr [ %i.af, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !499
  %i.ay = icmp eq ptr %i.am, %i.ax                ; 3 uses
  br i1 %i.ay, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.af, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ap, %bb.e ], [ %i.aw, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2809
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.151", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1374
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1361
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1373
  store i32 0, ptr %i.p, align 16, !tbaa !2810
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2809
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1061", align 16 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1361
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1373
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1374 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1373 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1361
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1374
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !499  ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i64 %i.ab, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.af = lshr i64 %i.ab, 2
  %i.ag = and i64 %i.af, 15
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ah
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ae, %bb.d ] ; 3 uses
  %.in12.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aj = load i32, ptr %.in8.i.i, align 8, !tbaa !647
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ak = load i32, ptr %.in.i.i, align 4, !tbaa !649
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81
  %i.an = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !81
  %i.ao = load <2 x ptr>, ptr %.in12.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.an, ptr %2, align 16
  store i32 %i.aj, ptr %i.o, align 16
  store <2 x ptr> %i.ao, ptr %i.p, align 4
  store i32 %i.ak, ptr %i.q, align 4
  store ptr %i.am, ptr %i.r, align 8
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ar, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i ], [ %i.az, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.as = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75 ; 2 uses
  %i.aw = and i32 %.0.i7, 31                      ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i7, 1
  br i1 %i.ay, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2816

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !499
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !499
  %i.bd = shl nuw i32 1, %i.aw
  %i.be = or i32 %i.bd, %i.av
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !75
  %i.bf = add i32 %.0.i18, -1
  %i.bg = and i32 %i.bf, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2817

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2818

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1374
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2810
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2810
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1361
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1374
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1391
  %i.b = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.c = zext i16 %i.b to i32
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1393 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.i, label %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.thread.i

_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.i: ; preds = %bb.b
  %i.j = lshr i64 %i.h, 2
  %i.k = and i64 %i.j, 15
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = icmp eq ptr %i.f, %i.n
  br i1 %i.o, label %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.thread.i: ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %1, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = icmp eq ptr %i.f, %i.r
  br i1 %i.s, label %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i: ; preds = %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1394
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK4llvm16DIImportedEntity7getFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i: ; preds = %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1394
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZNK4llvm16DIImportedEntity7getFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity7getFileEv.exit.i:     ; preds = %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i, %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.q, %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i ], [ %i.m, %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %.in.i, align 8, !tbaa !1395
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZNK4llvm16DIImportedEntity7getFileEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1396
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !112
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1397 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.i, label %_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.thread.i

_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.i: ; preds = %bb.d
  %i.ao = lshr i64 %i.h, 2
  %i.ap = and i64 %i.ao, 15
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.au = icmp eq ptr %i.an, %i.at
  br i1 %i.au, label %_ZNK4llvm16DIImportedEntity14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.thread.i: ; preds = %bb.d
  %i.av = getelementptr inbounds i8, ptr %1, i64 -32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.az = icmp eq ptr %i.an, %i.ay
  br i1 %i.az, label %_ZNK4llvm16DIImportedEntity14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit
end_hunk_25
begin_hunk_26_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1412, !noalias !2821 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !501    ; 4 uses
  %i.i = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #26
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %.in12.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.s = load i32, ptr %.in12.i, align 4, !tbaa !112
  %.in10.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.t = load ptr, ptr %.in10.i, align 8, !tbaa !81
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.u = load ptr, ptr %.in.i, align 8, !tbaa !81
  %i.v = zext i16 %i.i to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.v, ptr %3, align 4
  store <2 x ptr> %i.z, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store ptr %i.t, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.s, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.u, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.x, ptr %i.ad, align 4
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.af = trunc i64 %i.ae to i32
  %i.ag = xor i32 %i.af, -313160499
  %.024 = and i32 %i.ag, %i.g                     ; 3 uses
  %i.ah = zext i32 %.024 to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !75
  %i.am = and i32 %.024, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !501
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.aq = add nuw i32 %.025, 1
  %.0 = and i32 %i.aq, %i.g                       ; 3 uses
  %i.ar = zext i32 %.0 to i64                     ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.ar, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75
  %i.aw = and i32 %.0, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %bb.f, label %.thread, !prof !78, !llvm.loop !2826

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.az = phi ptr [ %i.ai, %.lr.ph ], [ %i.as, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !501
  %i.bb = icmp eq ptr %i.ap, %i.ba                ; 3 uses
  br i1 %i.bb, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ai, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.as, %bb.e ], [ %i.az, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bb, %bb.e ], [ %i.bb, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2819
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.155", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1412
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1399
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1411
  store i32 0, ptr %i.p, align 16, !tbaa !2820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2819
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1061", align 4  ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1399
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1412 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1411 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1399
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1412
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.u, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.u, %.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !501 ; 4 uses
  %i.ab = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in12.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.al = load i32, ptr %.in12.i.i, align 4, !tbaa !112
  %.in10.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.am = load ptr, ptr %.in10.i.i, align 8, !tbaa !81
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.an = load ptr, ptr %.in.i.i, align 8, !tbaa !81
  %i.ao = zext i16 %i.ab to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !81
  %i.ar = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.ao, ptr %2, align 4
  store <2 x ptr> %i.ar, ptr %i.o, align 4
  store ptr %i.am, ptr %i.p, align 4
  store i32 %i.al, ptr %i.q, align 4
  store ptr %i.an, ptr %i.r, align 4
  store ptr %i.aq, ptr %i.s, align 4
  %i.as = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.at = trunc i64 %i.as to i32
  %i.au = xor i32 %i.at, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.au, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i ], [ %i.bc, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.av = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.aw = lshr i64 %i.av, 5                       ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75 ; 2 uses
  %i.az = and i32 %.0.i7, 31                      ; 2 uses
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  %i.bc = add i32 %.0.i7, 1
  br i1 %i.bb, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2827

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.av
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !501
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !501
  %i.bg = shl nuw i32 1, %i.az
  %i.bh = or i32 %i.bg, %i.ay
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !75
  %i.bi = add i32 %.0.i18, -1
  %i.bj = and i32 %i.bi, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2828

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2829

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1412
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bk = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !2820
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !2820
  %i.bo = icmp eq i32 %i.bk, 0
  br i1 %i.bo, label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1399
  %i.bq = zext i32 %i.bk to i64                   ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_7DIMacroEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1429
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !111
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1431
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !112
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1432 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm7DIMacro10getRawNameEv.exit.i, label %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i

_ZNK4llvm7DIMacro10getRawNameEv.exit.i:           ; preds = %bb.c
  %i.p = lshr i64 %i.n, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = icmp eq ptr %i.l, %i.t
  br i1 %i.u, label %_ZNK4llvm7DIMacro11getRawValueEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i:    ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %1, i64 -32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = icmp eq ptr %i.l, %i.x
  br i1 %i.y, label %_ZNK4llvm7DIMacro11getRawValueEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

_ZNK4llvm7DIMacro11getRawValueEv.exit.i:          ; preds = %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i6.i = phi ptr [ %i.w, %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i ], [ %i.s, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %.in.i, align 8, !tbaa !1433
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i6.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.ac = icmp eq ptr %i.z, %i.ab
  br label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit: ; preds = %_ZNK4llvm7DIMacro11getRawValueEv.exit.i, %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i, %bb.b, %bb.a
  %i.ad = phi i1 [ false, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %_ZNK4llvm7DIMacro11getRawValueEv.exit.i ], [ false, %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1434, !noalias !2830 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1446, !noalias !2830 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1447, !noalias !2830 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !509    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !112
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
end_hunk_26
begin_hunk_27_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1434, !noalias !2838 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1446, !noalias !2838 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1447, !noalias !2838 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !509    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !112
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2
  %i.s = and i64 %i.r, 15
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ]
  %i.v = zext i16 %i.j to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.v, ptr %3, align 4
  store i32 %i.l, ptr %i.w, align 4
  store <2 x ptr> %i.y, ptr %i.x, align 4
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !509
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !78, !llvm.loop !2835

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !509
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2836
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.159", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1447
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1434
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1446
  store i32 0, ptr %i.p, align 16, !tbaa !2837
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2836
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1434
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1446
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1447 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1446 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1434
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1447
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !509  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !112
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ]
  %i.al = zext i16 %i.z to i32
  %i.am = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.al, ptr %2, align 4
  store i32 %i.ab, ptr %i.o, align 4
  store <2 x ptr> %i.am, ptr %i.p, align 4
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2843

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !509
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !509
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !75
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2844

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2845

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1447
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2837
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2837
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1434
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1447
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1466
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !111
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1468
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !112
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1469 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i, label %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i

_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i:      ; preds = %bb.c
  %i.p = lshr i64 %i.n, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = icmp eq ptr %i.l, %i.t
  br i1 %i.u, label %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i: ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %1, i64 -32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = icmp eq ptr %i.l, %i.x
  br i1 %i.y, label %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i:  ; preds = %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i
  %.sroa.0.0.i.i.i6.i = phi ptr [ %i.w, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i ], [ %i.s, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %.in.i, align 8, !tbaa !1470
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.ac = icmp eq ptr %i.z, %i.ab
  br label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit: ; preds = %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i, %bb.b, %bb.a
  %i.ad = phi i1 [ false, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i ], [ false, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1471, !noalias !2846 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1483, !noalias !2846 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1484, !noalias !2846 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1464   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !112
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %i.o, 2
  %i.t = and i64 %i.s, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.u
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i
end_hunk_27
begin_hunk_28_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1471, !noalias !2854 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1483, !noalias !2854 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1484, !noalias !2854 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1464   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !112
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2
  %i.s = and i64 %i.r, 15
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ]
  %i.v = zext i16 %i.j to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.v, ptr %3, align 4
  store i32 %i.l, ptr %i.w, align 4
  store <2 x ptr> %i.y, ptr %i.x, align 4
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1464
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !78, !llvm.loop !2851

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1464
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2852
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.163", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1484
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1471
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1483
  store i32 0, ptr %i.p, align 16, !tbaa !2853
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2852
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1471
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1483
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1484 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1483 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1471
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1484
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1464 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !112
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ]
  %i.al = zext i16 %i.z to i32
  %i.am = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.al, ptr %2, align 4
  store i32 %i.ab, ptr %i.o, align 4
  store <2 x ptr> %i.am, ptr %i.p, align 4
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !75 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2859

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !1464
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !1464
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !75
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2860

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2861

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1484
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2853
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2853
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1471
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1503   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i, label %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i

_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i:   ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83   ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i:    ; preds = %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1505
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i: ; preds = %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1505
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i:    ; preds = %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1506
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i: ; preds = %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1506
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i:    ; preds = %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i9.i = phi ptr [ %i.l, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %.in.i, align 8, !tbaa !1507
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i9.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1508
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112
  %i.aq = icmp eq i32 %i.an, %i.ap
  br label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit: ; preds = %bb.b, %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i
  %i.ar = phi i1 [ false, %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i ], [ false, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i ], [ %i.aq, %bb.b ], [ false, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1121", align 16 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1509, !noalias !2862 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1521, !noalias !2862 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1522, !noalias !2862 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_28
begin_hunk_29_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.0.0 = phi ptr [ %i.be, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.at, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1121", align 16 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1509, !noalias !2870 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1521, !noalias !2870 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1522, !noalias !2870 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1501   ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !112
  %i.t = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x ptr> %i.t, ptr %3, align 16
  store <2 x ptr> %i.v, ptr %i.u, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.s, ptr %i.w, align 16
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.024 = and i32 %i.z, %i.g                      ; 3 uses
  %i.aa = zext i32 %.024 to i64                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.af = and i32 %.024, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1501
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.aj = add nuw i32 %.025, 1
  %.0 = and i32 %i.aj, %i.g                       ; 3 uses
  %i.ak = zext i32 %.0 to i64                     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75
  %i.ap = and i32 %.0, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %.thread, !prof !78, !llvm.loop !2867

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.as = phi ptr [ %i.ab, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1501
  %i.au = icmp eq ptr %i.ai, %i.at                ; 3 uses
  br i1 %i.au, label %.thread, label %bb.e, !prof !77

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ab, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.al, %bb.e ], [ %i.as, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.au, %bb.e ], [ %i.au, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2868
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.167", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1522
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1509
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1521
  store i32 0, ptr %i.p, align 16, !tbaa !2869
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2868
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1121", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1509
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1521
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1522 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1521 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1509
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1522
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1501 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ad = lshr i64 %i.z, 2
  %i.ae = and i64 %i.ad, 15
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.af
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !112
  %i.aj = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !81
  %i.ak = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x ptr> %i.aj, ptr %2, align 16
  store <2 x ptr> %i.ak, ptr %i.o, align 16
  store i32 %i.ai, ptr %i.p, align 16
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.am = trunc i64 %i.al to i32
  %i.an = xor i32 %i.am, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.an, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i ], [ %i.av, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ao = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !75 ; 2 uses
  %i.as = and i32 %.0.i7, 31                      ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  %i.av = add i32 %.0.i7, 1
  br i1 %i.au, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2875

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ao
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !1501
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !1501
  %i.az = shl nuw i32 1, %i.as
  %i.ba = or i32 %i.az, %i.ar
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !75
  %i.bb = add i32 %.0.i18, -1
  %i.bc = and i32 %i.bb, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2876

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2877

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1522
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !2869
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !2869
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !1509
  %i.bj = zext i32 %i.bd to i64                   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bi, i64 noundef %i.bo, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.b = zext i16 %i.a to i32
  store i32 %i.b, ptr %0, align 8, !tbaa !2878
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.e, 2
  %i.j = and i64 %i.i, 15
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.k
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

_ZNK4llvm6DIType10getRawNameEv.exit:              ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  store ptr %i.n, ptr %i.c, align 8, !tbaa !2880
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.d, align 8              ; 2 uses
  %i.q = and i64 %i.p, 2
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit
  %i.r = getelementptr inbounds i8, ptr %1, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  br label %_ZNK4llvm12DIStringType18getRawStringLengthEv.exit

bb.e:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit
  %i.t = lshr i64 %i.p, 2
  %i.u = and i64 %i.t, 15
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.v
  br label %_ZNK4llvm12DIStringType18getRawStringLengthEv.exit

_ZNK4llvm12DIStringType18getRawStringLengthEv.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.s, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  store ptr %i.y, ptr %i.o, align 8, !tbaa !2881
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 2
  %.not.i.i.i9 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12DIStringType18getRawStringLengthEv.exit
  %i.ac = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  br label %_ZNK4llvm12DIStringType21getRawStringLengthExpEv.exit

bb.g:                                             ; preds = %_ZNK4llvm12DIStringType18getRawStringLengthEv.exit
  %i.ae = lshr i64 %i.aa, 2
  %i.af = and i64 %i.ae, 15
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ag
  br label %_ZNK4llvm12DIStringType21getRawStringLengthExpEv.exit

_ZNK4llvm12DIStringType21getRawStringLengthExpEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i10 = phi ptr [ %i.ah, %bb.g ], [ %i.ad, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i10, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !2882
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.d, align 8             ; 2 uses
  %i.am = and i64 %i.al, 2
  %.not.i.i.i11 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm12DIStringType21getRawStringLengthExpEv.exit
  %i.an = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !83
  br label %_ZNK4llvm12DIStringType23getRawStringLocationExpEv.exit

bb.i:                                             ; preds = %_ZNK4llvm12DIStringType21getRawStringLengthExpEv.exit
  %i.ap = lshr i64 %i.al, 2
  %i.aq = and i64 %i.ap, 15
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ar
  br label %_ZNK4llvm12DIStringType23getRawStringLocationExpEv.exit

_ZNK4llvm12DIStringType23getRawStringLocationExpEv.exit: ; preds = %bb.h, %bb.i
end_hunk_29
begin_hunk_30_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !75
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !75
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !2894
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !2894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1539
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !1539
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.al, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.971", align 4   ; 6 uses
  %4 = alloca %"struct.llvm::MDNodeKeyImpl.1354", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1541, !noalias !2895 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1553, !noalias !2895 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1554, !noalias !2895 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.k = load i32, ptr %4, align 8, !tbaa !75
  store i32 %i.k, ptr %3, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !165
  store <2 x ptr> %i.m, ptr %i.l, align 4
  %i.n = load i32, ptr %i.j, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.n, ptr %i.o, align 4
  %i.p = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.q = trunc i64 %i.p to i32
  %i.r = xor i32 %i.q, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.024 = and i32 %i.r, %i.g                      ; 3 uses
  %i.s = zext i32 %.024 to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  %i.x = and i32 %.024, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1539
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = add nuw i32 %.025, 1
  %.0 = and i32 %i.ab, %i.g                       ; 3 uses
  %i.ac = zext i32 %.0 to i64                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %.0, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %.thread, !prof !78, !llvm.loop !2892

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ak = phi ptr [ %i.t, %.lr.ph ], [ %i.ad, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1539
  %i.am = icmp eq ptr %i.aa, %i.al                ; 3 uses
  br i1 %i.am, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ], [ %i.ak, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.am, %bb.c ], [ %i.am, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2893
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.171", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1554
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1541
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1553
  store i32 0, ptr %i.p, align 16, !tbaa !2894
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2893
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.971", align 4   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1541
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1553
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1554 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1553 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1541
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1554
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i29 = icmp eq i64 %i.n, 0
  br i1 %.not.i29, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph32, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75   ; 2 uses
  %.not11.i27 = icmp eq i32 %i.s, 0
  br i1 %.not11.i27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i28 = phi i32 [ %i.s, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i28, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1539 ; 5 uses
  %i.z = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.ac, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_.exit: ; preds = %bb.d, %bb.e
  %.pn = phi ptr [ %i.aj, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  %.in21 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ak = load ptr, ptr %.in21, align 8, !tbaa !81
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.al = load ptr, ptr %.in, align 8, !tbaa !81
  %i.am = call noundef i32 @_ZNK4llvm6DIType14getAlignInBitsEv(ptr noundef nonnull align 8 dereferenceable(28) %i.y) #26 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 %i.aa, ptr %2, align 4
  store ptr %i.ak, ptr %i.o, align 4
  store ptr %i.al, ptr %i.p, align 4
  store i32 %i.ao, ptr %i.q, align 4
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_.exit
  %.pn.i = phi i32 [ %i.ar, %_ZN4llvm13MDNodeKeyImplINS_12DIStringTypeEEC2EPKS1_.exit ], [ %i.az, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.as = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75 ; 2 uses
  %i.aw = and i32 %.0.i7, 31                      ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i7, 1
  br i1 %i.ay, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2900

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !1539
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !1539
  %i.bd = shl nuw i32 1, %i.aw
  %i.be = or i32 %i.bd, %i.av
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !75
  %i.bf = add i32 %.0.i28, -1
  %i.bg = and i32 %i.bf, %.0.i28                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2901

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2902

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1554
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2894
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2894
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1541
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.970", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.970", align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1578, !noalias !2903 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2908, !noalias !2903 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1581, !noalias !2903 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2909   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.i = load i8, ptr %i.h, align 4, !tbaa !39
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !553  ; 3 uses
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.m, align 8, !tbaa !151
  %i.r = icmp eq i32 %i.o, 0
  %i.s = sub nuw nsw i32 64, %i.o
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = shl i64 %i.q, %i.t
  %i.v = ashr exact i64 %i.u, %i.t
  %.0.i.i.i.i.i = select i1 %i.r, i64 0, i64 %i.v
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i:  ; preds = %bb.e, %bb.d
  %.0.i.i5.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.d ], [ %i.x, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %.0.i.i5.i.i, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !74
  store <2 x ptr> %i.ab, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.h, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !74
  store <2 x ptr> %i.ai, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit: ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i
  %.0.in.in.i.i = phi i64 [ %i.ae, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i ], [ %i.al, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i ]
  %i.am = trunc i64 %.0.in.in.i.i to i32
  %.0.i.i = xor i32 %i.am, -313160499
  %.019 = and i32 %.0.i.i, %i.g                   ; 3 uses
  %i.an = zext i32 %.019 to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75
  %i.ar = and i32 %.019, 31
  %i.as = lshr i32 %i.aq, %i.ar
end_hunk_30
begin_hunk_31_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !553 ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !151
  %i.af = icmp eq i32 %i.ac, 0
  %i.ag = sub nuw nsw i32 64, %i.ac
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = shl i64 %i.ae, %i.ah
  %i.aj = ashr exact i64 %i.ai, %i.ah
  %.0.i.i.i.i.i = select i1 %i.af, i64 0, i64 %i.aj
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !151
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i:  ; preds = %bb.g, %bb.f
  %.0.i.i5.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.f ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 %.0.i.i5.i.i, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.v, ptr %i.ao, align 8
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i, %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.s, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.r, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.v, ptr %i.as, align 8
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i
  %.0.in.in.i.i = phi i64 [ %i.ap, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i ], [ %i.at, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i ]
  %i.au = trunc i64 %.0.in.in.i.i to i32
  %.0.i.i = xor i32 %i.au, -313160499
  %.024 = and i32 %.0.i.i, %i.g                   ; 3 uses
  %i.av = zext i32 %.024 to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !75
  %i.ba = and i32 %.024, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1571
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.be = add nuw i32 %.025, 1
  %.0 = and i32 %i.be, %i.g                       ; 3 uses
  %i.bf = zext i32 %.0 to i64                     ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = lshr i64 %i.bf, 5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75
  %i.bk = and i32 %.0, 31
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %.thread, !prof !78, !llvm.loop !2921

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.bn = phi ptr [ %i.aw, %.lr.ph ], [ %i.bg, %bb.h ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.h ]
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1571
  %i.bp = icmp eq ptr %i.bd, %i.bo                ; 3 uses
  br i1 %i.bp, label %.thread, label %bb.h, !prof !77

.thread:                                          ; preds = %bb.i, %bb.h, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa32.sink = phi ptr [ %i.aw, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bg, %bb.h ], [ %i.bn, %bb.i ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bp, %bb.h ], [ %i.bp, %bb.i ]
  store ptr %.lcssa32.sink, ptr %2, align 8, !tbaa !2914
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.175", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1581
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1578
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2908
  store i32 0, ptr %i.p, align 16, !tbaa !2915
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2914
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.970", align 8   ; 7 uses
  %3 = alloca %"struct.std::array.970", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1578
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2908
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1581 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2908 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1578
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1581
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.v, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.v, %.lr.ph ], [ %i.bx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1571 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  br label %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.al = load ptr, ptr %.in8.i.i, align 8, !tbaa !81 ; 2 uses
  %i.am = load ptr, ptr %.pn.i.i, align 8, !tbaa !81 ; 4 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.an = load ptr, ptr %.in.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i: ; preds = %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i
  %i.aq = load i8, ptr %i.am, align 4, !tbaa !39
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.f, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !553 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 65
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !151
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = sub nuw nsw i32 64, %i.aw
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = ashr exact i64 %i.bc, %i.bb
  %.0.i.i.i.i.i.i = select i1 %i.az, i64 0, i64 %i.bd
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !151
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i

_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i5.i.i.i = phi i64 [ %.0.i.i.i.i.i.i, %bb.g ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %.0.i.i5.i.i.i, ptr %3, align 8
  store ptr %i.al, ptr %i.o, align 8
  store ptr %i.an, ptr %i.p, align 8
  store ptr %i.ap, ptr %i.q, align 8
  %i.bg = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i, %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.am, ptr %2, align 8
  store ptr %i.al, ptr %i.r, align 8
  store ptr %i.an, ptr %i.s, align 8
  store ptr %i.ap, ptr %i.t, align 8
  %i.bh = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i
  %.0.in.in.i.i.i = phi i64 [ %i.bg, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i ], [ %i.bh, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i ]
  %i.bi = trunc i64 %.0.in.in.i.i.i to i32
  %.0.i.i.i = xor i32 %i.bi, -313160499
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i
  %.0.i.i.pn.i = phi i32 [ %.0.i.i.i, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i ], [ %i.bq, %bb.i ]
  %.0.i7 = and i32 %.0.i.i.pn.i, %i.k             ; 3 uses
  %i.bj = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bk = lshr i64 %i.bj, 5                       ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !75 ; 2 uses
  %i.bn = and i32 %.0.i7, 31                      ; 2 uses
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  %i.bq = add i32 %.0.i7, 1
  br i1 %i.bp, label %bb.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2922

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.i
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bj
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !1571
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !1571
  %i.bu = shl nuw i32 1, %i.bn
  %i.bv = or i32 %i.bu, %i.bm
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !75
  %i.bw = add i32 %.0.i18, -1
  %i.bx = and i32 %i.bw, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bx, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2923

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2924

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1581
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.by = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !2915
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !2915
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cd = load ptr, ptr %1, align 8, !tbaa !1578
  %i.ce = zext i32 %i.by to i64                   ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13MDNodeKeyImplINS_14DISubrangeTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 18 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.b, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.h
  br label %_ZNK4llvm6DIType10getRawNameEv.exit

_ZNK4llvm6DIType10getRawNameEv.exit:              ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  store ptr %i.k, ptr %0, align 8, !tbaa !2925
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %1, align 8, !tbaa !39
  %i.n = icmp eq i8 %i.m, 16
  br i1 %i.n, label %_ZNK4llvm7DIScope10getRawFileEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %1, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = lshr i64 %i.o, 2
end_hunk_31
begin_hunk_32_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1589
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !75
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !75
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !2945
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.af, align 8, !tbaa !2945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load ptr, ptr %1, align 8, !tbaa !537
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !537
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ac, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.1382", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1589, !noalias !2946 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1601, !noalias !2946 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1602, !noalias !2946 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !537
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_14DISubrangeTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %i.h)
  %i.i = call noundef i32 @_ZNK4llvm13MDNodeKeyImplINS_14DISubrangeTypeEE12getHashValueEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !75
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !537
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.s = add nuw i32 %.025, 1
  %.0 = and i32 %i.s, %i.g                        ; 3 uses
  %i.t = zext i32 %.0 to i64                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75
  %i.y = and i32 %.0, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %bb.d, label %.thread, !prof !78, !llvm.loop !2943

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ab = phi ptr [ %i.k, %.lr.ph ], [ %i.u, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !537
  %i.ad = icmp eq ptr %i.r, %i.ac                 ; 3 uses
  br i1 %i.ad, label %.thread, label %bb.c, !prof !77

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2944
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.179", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1602
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1589
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1601
  store i32 0, ptr %i.p, align 16, !tbaa !2945
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2944
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::MDNodeKeyImpl.1382", align 8 ; 15 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1589
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1601
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1602 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1601 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1589
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1602
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.aa, %.lr.ph ], [ %i.eq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !537 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 18 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ai, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.am = lshr i64 %i.ai, 2
  %i.an = and i64 %i.am, 15
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ao
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.al, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81
  store ptr %i.ar, ptr %2, align 8, !tbaa !2925
  %i.as = load i8, ptr %i.ag, align 8, !tbaa !39
  %i.at = icmp eq i8 %i.as, 16
  br i1 %i.at, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.au = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.av = and i64 %i.au, 2
  %.not.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ay = lshr i64 %i.au, 2
  %i.az = and i64 %i.ay, 15
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ba
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %i.ax, %bb.g ]
  %i.bc = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !81
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.bd = phi ptr [ %i.bc, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %i.ag, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !2927
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !558
  store i32 %i.bf, ptr %i.p, align 8, !tbaa !2928
  %i.bg = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 2
  %.not.i.i.i13.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i13.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bi = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

bb.j:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bk = lshr i64 %i.bg, 2
  %i.bl = and i64 %i.bk, 15
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bm
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

_ZNK4llvm6DIType11getRawScopeEv.exit.i:           ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i15.i = phi ptr [ %i.bn, %bb.j ], [ %i.bj, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i15.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !81
  store ptr %i.bp, ptr %i.q, align 8, !tbaa !2929
  %i.bq = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.br = and i64 %i.bq, 2
  %.not.i.i.i16.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i16.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.bs = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

bb.l:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.bu = lshr i64 %i.bq, 2
  %i.bv = and i64 %i.bu, 15
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bw
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i:      ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i18.i = phi ptr [ %i.bx, %bb.l ], [ %i.bt, %bb.k ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i18.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81
  store ptr %i.bz, ptr %i.r, align 8, !tbaa !2930
  %i.ca = call noundef i32 @_ZNK4llvm6DIType14getAlignInBitsEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ag) #26
  store i32 %i.ca, ptr %i.s, align 8, !tbaa !2931
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !439
  store i32 %i.cc, ptr %i.t, align 4, !tbaa !2932
  %i.cd = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.ce = and i64 %i.cd, 2
  %.not.i.i.i19.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i19.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  %i.cf = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !83
  br label %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i

bb.n:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  %i.ch = lshr i64 %i.cd, 2
  %i.ci = and i64 %i.ch, 15
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cj
  br label %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i

_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i21.i = phi ptr [ %i.ck, %bb.n ], [ %i.cg, %bb.m ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i21.i, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !81
  store ptr %i.cm, ptr %i.u, align 8, !tbaa !2933
  %i.cn = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.co = and i64 %i.cn, 2
  %.not.i.i.i22.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i22.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i
  %i.cp = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !83
  br label %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i

bb.p:                                             ; preds = %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i
  %i.cr = lshr i64 %i.cn, 2
  %i.cs = and i64 %i.cr, 15
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ct
  br label %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i

_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i24.i = phi ptr [ %i.cu, %bb.p ], [ %i.cq, %bb.o ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i24.i, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !81
  store ptr %i.cw, ptr %i.v, align 8, !tbaa !2934
  %i.cx = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.cy = and i64 %i.cx, 2
  %.not.i.i.i25.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i25.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i
  %i.cz = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !83
  br label %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i

bb.r:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i
  %i.db = lshr i64 %i.cx, 2
  %i.dc = and i64 %i.db, 15
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dd
  br label %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i

_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i27.i = phi ptr [ %i.de, %bb.r ], [ %i.da, %bb.q ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i27.i, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !81
  store ptr %i.dg, ptr %i.w, align 8, !tbaa !2935
  %i.dh = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.di = and i64 %i.dh, 2
  %.not.i.i.i28.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i28.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i
  %i.dj = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !83
  br label %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit.i

bb.t:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i
  %i.dl = lshr i64 %i.dh, 2
  %i.dm = and i64 %i.dl, 15
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dn
  br label %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit.i

_ZNK4llvm14DISubrangeType12getRawStrideEv.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i.i30.i = phi ptr [ %i.do, %bb.t ], [ %i.dk, %bb.s ]
end_hunk_32
begin_hunk_33_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2977
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm10MDNodeInfoINS_16DIFixedPointTypeEE12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array.1406", align 16 ; 10 uses
  %2 = alloca %"struct.llvm::MDNodeKeyImpl.1400", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.h = load <2 x ptr>, ptr %i.a, align 8, !tbaa !165
  store <2 x ptr> %i.h, ptr %1, align 16
  %i.i = load i32, ptr %i.b, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.i, ptr %i.j, align 16
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store ptr %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load <2 x i32>, ptr %i.d, align 8, !tbaa !75
  store <2 x i32> %i.n, ptr %i.m, align 4
  %i.o = load i32, ptr %i.e, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.o, ptr %i.p, align 4
  %i.q = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #26
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.q, ptr %i.r, align 8
  %i.s = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.s, ptr %i.t, align 16
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 56) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !553
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.y) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.c, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !553
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.d, label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEED2Ev.exit

bb.d:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !151 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #28
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEED2Ev.exit

_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEED2Ev.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.d, %bb.e
  %i.af = trunc i64 %i.u to i32
  %i.ag = xor i32 %i.af, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %i.ag
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.183", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1627
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1624
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1715
  store i32 0, ptr %i.p, align 16, !tbaa !2978
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2977
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1406", align 16 ; 10 uses
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.1400", align 8 ; 17 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1624
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1715
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1627 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1715 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1627
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !75 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.aj, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ak = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.aj, %.lr.ph ], [ %i.ei, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.al = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !539 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aq = call noundef zeroext i16 @_ZNK4llvm6DINode6getTagEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26
  %i.ar = zext i16 %i.aq to i32
  store i32 %i.ar, ptr %3, align 8, !tbaa !2954
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 8 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = and i64 %i.at, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ax = lshr i64 %i.at, 2
  %i.ay = and i64 %i.ax, 15
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.az
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ba, %bb.e ], [ %i.aw, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !2956
  %i.bd = load i8, ptr %i.ap, align 8, !tbaa !39
  %i.be = icmp eq i8 %i.bd, 16
  br i1 %i.be, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.bf = load i64, ptr %i.as, align 8            ; 2 uses
  %i.bg = and i64 %i.bf, 2
  %.not.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.bj = lshr i64 %i.bf, 2
  %i.bk = and i64 %i.bj, 15
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bl
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bi, %bb.g ]
  %i.bn = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !81
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.bo = phi ptr [ %i.bn, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %i.ap, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  store ptr %i.bo, ptr %i.p, align 8, !tbaa !2957
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !558
  store i32 %i.bq, ptr %i.q, align 8, !tbaa !2958
  %i.br = load i64, ptr %i.as, align 8            ; 2 uses
  %i.bs = and i64 %i.br, 2
  %.not.i.i.i14.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i14.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bt = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

bb.j:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bv = lshr i64 %i.br, 2
  %i.bw = and i64 %i.bv, 15
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bx
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

_ZNK4llvm6DIType11getRawScopeEv.exit.i:           ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i16.i = phi ptr [ %i.by, %bb.j ], [ %i.bu, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i16.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81
  store ptr %i.ca, ptr %i.r, align 8, !tbaa !2959
  %i.cb = load i64, ptr %i.as, align 8            ; 2 uses
  %i.cc = and i64 %i.cb, 2
  %.not.i.i.i17.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i17.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.cd = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

bb.l:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.cf = lshr i64 %i.cb, 2
  %i.cg = and i64 %i.cf, 15
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ch
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i:      ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i19.i = phi ptr [ %i.ci, %bb.l ], [ %i.ce, %bb.k ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i19.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !81
  store ptr %i.ck, ptr %i.s, align 8, !tbaa !2960
  %i.cl = call noundef i32 @_ZNK4llvm6DIType14getAlignInBitsEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ap) #26
  store i32 %i.cl, ptr %i.t, align 8, !tbaa !2961
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !559
  store i32 %i.cn, ptr %i.u, align 4, !tbaa !2962
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !439
  store i32 %i.cp, ptr %i.v, align 8, !tbaa !2963
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !75
  store <2 x i32> %i.cr, ptr %i.w, align 4, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !553 ; 2 uses
  store i32 %i.cu, ptr %i.z, align 8, !tbaa !553
  %i.cv = icmp ult i32 %i.cu, 65
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !151
  store i64 %i.cw, ptr %i.y, align 8, !tbaa !151
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.n:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #26
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.n, %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !553 ; 2 uses
  store i32 %i.cz, ptr %i.ab, align 8, !tbaa !553
  %i.da = icmp ult i32 %i.cz, 65
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.db = load i64, ptr %i.cx, align 8, !tbaa !151
  store i64 %i.db, ptr %i.aa, align 8, !tbaa !151
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit

bb.p:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.cx) #26
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dc = load <2 x ptr>, ptr %i.o, align 8, !tbaa !165
  store <2 x ptr> %i.dc, ptr %2, align 16
  %i.dd = load i32, ptr %i.q, align 8, !tbaa !75
  store i32 %i.dd, ptr %i.ac, align 16
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !74
  store ptr %i.de, ptr %i.ad, align 4
  %i.df = load <2 x i32>, ptr %i.v, align 8, !tbaa !75
  store <2 x i32> %i.df, ptr %i.ae, align 4
  %i.dg = load i32, ptr %i.x, align 8, !tbaa !75
  store i32 %i.dg, ptr %i.af, align 4
  %i.dh = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #26
  store i64 %i.dh, ptr %i.ag, align 8
  %i.di = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #26
  store i64 %i.di, ptr %i.ah, align 16
  %i.dj = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 56) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dk = load i32, ptr %i.ab, align 8, !tbaa !553
  %i.dl = icmp ugt i32 %i.dk, 64
  br i1 %i.dl, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.q:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit
  %i.dm = load ptr, ptr %i.aa, align 8, !tbaa !151 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.dm) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.r, %bb.q, %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit
  %i.do = load i32, ptr %i.z, align 8, !tbaa !553
  %i.dp = icmp ugt i32 %i.do, 64
  br i1 %i.dp, label %bb.s, label %_ZN4llvm10MDNodeInfoINS_16DIFixedPointTypeEE12getHashValueEPKS1_.exit

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !151 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN4llvm10MDNodeInfoINS_16DIFixedPointTypeEE12getHashValueEPKS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #28
end_hunk_33
begin_hunk_34_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1758
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3084
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3077
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1747
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !75
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1758
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !74
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !74
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1747, !noalias !3085 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3077, !noalias !3085 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1744, !noalias !3085 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !77

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !78, !llvm.loop !3083

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3084
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.620", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1744
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1747
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3077
  store i32 0, ptr %i.p, align 16, !tbaa !1758
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !165
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3084
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !165
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !75
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !75
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !75
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1747   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3077
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1744 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3077 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1747
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1744
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3090

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !74
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !75
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3091

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3092

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1744
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1758
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1758
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !1744
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8MetadataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE18growAndEmplaceBackIJRPNS_6MDNodeEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !691    ; 5 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !363
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZN4llvm23ReplaceableMetadataImpl11getOrCreateERNS_8MetadataE(ptr noundef nonnull align 4 dereferenceable(8) %i.h) ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  store ptr %i.g, ptr %2, align 8, !tbaa !18, !alias.scope !3093
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  %i.n = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPvSt4pairINS_12PointerUnionIJPNS_15MetadataAsValueEPNS_8MetadataEPNS_14DebugValueUserEEEEmELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SC_EEEES2_SC_SE_SH_E24lookupOrInsertIntoBucketIS2_JSC_EEES3_IPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !3096 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i64, ptr %i.k, align 8, !tbaa !35
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.k, align 8, !tbaa !35
  br label %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.h, align 4, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.q, 3
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.r, align 8, !tbaa !41
  br label %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit

_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit:    ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !83     ; 3 uses
  %i.t = load i32, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit, %_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.s, %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit ] ; 4 uses
  %i.w = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !363 ; 3 uses
  store ptr %i.w, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !363
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = call noundef zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %.09.i.i.i.i.i.i) ; 0 uses
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !363
  br label %_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.v
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3101

_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm13TrackingMDRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !83  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !79 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.aa = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm13TrackingMDRefD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ac, %_ZN4llvm13TrackingMDRefD2Ev.exit.i.i ], [ %i.ab, %.lr.ph.i.preheader.i ]
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !363 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i5, label %_ZN4llvm13TrackingMDRefD2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %i.ad)
  br label %_ZN4llvm13TrackingMDRefD2Ev.exit.i.i

_ZN4llvm13TrackingMDRefD2Ev.exit.i.i:             ; preds = %bb.g, %.lr.ph.i.i
  %.not.i.i6 = icmp eq ptr %.pre.i, %i.ac
  br i1 %.not.i.i6, label %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1824

_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit.loopexit: ; preds = %_ZN4llvm13TrackingMDRefD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit.loopexit, %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.ae = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE19moveElementsForGrowEPS1_.exit.loopexit ], [ %i.s, %_ZN4llvm13TrackingMDRefC2EPNS_8MetadataE.exit ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i ] ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseINS_13TrackingMDRefELb0EE21takeAllocationForGrowEPS1_m.exit, label %bb.h
end_hunk_34
begin_hunk_35_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit, label %bb.c, !prof !77

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !75
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !78, !llvm.loop !3154

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3155
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3147
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3155
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2142
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2132
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !75
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3147
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2130
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2130
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !83
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 1, ptr %i.bl, align 4, !tbaa !207
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2132, !noalias !3156 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2142, !noalias !3156 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2143, !noalias !3156 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2130   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !76

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2130
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !77

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !78, !llvm.loop !3154

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3155
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.297", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2143
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2132
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2142
  store i32 0, ptr %i.p, align 16, !tbaa !3147
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3155   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2244 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !165
  store ptr %i.z, ptr %2, align 16, !tbaa !3155
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !165
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !2244
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !75
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !75
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !75
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !75
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !75 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !3161

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3162

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2143 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !2132
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 5
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2132
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2142
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2143 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2142 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2132
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2143
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bs, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2130 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3163

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !2130
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !207
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !79 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_11InstructionEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_11InstructionEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !83
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !207
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !207
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !83
  store i32 0, ptr %i.be, align 4, !tbaa !207
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.ay, 1
  br i1 %.not, label %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i.thread, label %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i

_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e
  %i.bg = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 8) #26
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !79 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i ], [ 1, %bb.e ]
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !83
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !83
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 8 %i.bh, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4llvm11InstructionES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !79
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_11InstructionEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !79
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !75
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bo) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj1EEC2EOS3_.exit.i, %bb.f
  %i.br = add i32 %.0.i16, -1
  %i.bs = and i32 %i.br, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bs, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3164

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3165

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !2143
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bt = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !3147
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !3147
  %i.bx = icmp eq i32 %i.bt, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !2132
  %i.bz = zext i32 %i.bt to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 5
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !2143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DIAssignIDENS_11SmallVectorIPNS_11InstructionELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !83
  %i.g = load i32, ptr %i.a, align 8, !tbaa !79
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !79
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm11Instruction21addAnnotationMetadataENS2_11SmallVectorINS2_9StringRefELj3EEEE3$_0EclIPKNS2_9MDOperandEEEbT_"(ptr nofree readonly captures(none) %.0.val, ptr %.0.val1.8.val) unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val1.8.val, i64 24 ; 3 uses
  %i.b = load i64, ptr %.0.val1.8.val, align 8, !tbaa !385
  %.sroa.22.0.copyload.fr.i.i = freeze i64 %i.b   ; 5 uses
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.22.0.copyload.fr.i.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2187
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83   ; 2 uses
end_hunk_35
