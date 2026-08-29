Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Constants?download=true
inline.NumInlined: 8012
inline.NumDeleted: 3366
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E24lookupOrInsertIntoBucketIjJEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.x = load i32, ptr %i.w, align 4, !tbaa !117
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1370

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit, label %bb.c, !prof !163

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1371
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1372
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1371
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1368
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1362
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !117
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !117
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1372
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !117
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !117
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !1373
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1362, !noalias !1375 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1368, !noalias !1375 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1369, !noalias !1375 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !117    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1370

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1371
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.97", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1369
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1362
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1368
  store i32 0, ptr %i.p, align 16, !tbaa !1372
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1362   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1369 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1368 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1362
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1369
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1380

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !118
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !118
  store ptr null, ptr %i.ai, align 8, !tbaa !118
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !117
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !117
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1381

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1382

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1369
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1372
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !1372
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1369 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1362
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1368
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.z, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i.i, %bb.b
  %i.y = add i32 %.0.i3.i, -1
  %i.z = and i32 %i.y, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1383

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1384

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1369 ; 2 uses
  %i.aa = icmp eq i32 %.pr, 0
  br i1 %i.aa, label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1362
  %i.ac = zext i32 %.pr to i64                    ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1385, !noalias !1386 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1391, !noalias !1386 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1392, !noalias !1386 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  %.024.i = and i32 %i.i, %i.h                    ; 3 uses
  %i.j = zext i32 %.024.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = and i32 %.024.i, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph.i, label %.loopexit, !prof !162

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.r, %i.h                      ; 3 uses
  %i.s = zext i32 %.0.i to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = and i32 %.0.i, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1393

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.aa)
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit, label %bb.c, !prof !163

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1394
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1395
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !1392 ; 2 uses
  %i.af = shl i32 %i.ad, 2
  %i.ag = add i32 %i.af, 4
  %i.ah = mul i32 %i.ae, 3
  %.not.i = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ai = shl i32 %i.ae, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ai)
  %i.aj = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1394
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ak = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 6 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1391
  %i.am = load ptr, ptr %0, align 8, !tbaa !1385
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 31
  %i.at = shl nuw i32 1, %i.as
  %i.au = lshr i64 %i.aq, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ax = or i32 %i.at, %i.aw
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !117
  %i.ay = load i32, ptr %i.ac, align 8, !tbaa !1395
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ac, align 8, !tbaa !1395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !59 ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !59
  %i.bd = icmp ult i32 %i.bc, 65
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit
  %i.be = load i64, ptr %1, align 8, !tbaa !29
  store i64 %i.be, ptr %i.ak, align 8, !tbaa !29
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.e, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr null, ptr %i.bf, align 8, !tbaa !1373
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm5APIntC2ERKS0_.exit
  %.sroa.0.0 = phi ptr [ %i.ak, %_ZN4llvm5APIntC2ERKS0_.exit ], [ %i.aa, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm5APIntC2ERKS0_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1385, !noalias !1396 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1391, !noalias !1396 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1392, !noalias !1396 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  %.024 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.024 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.024, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.025, 1
  %.0 = and i32 %i.q, %i.g                        ; 3 uses
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %.0, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1393

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.z) ; 3 uses
  br i1 %i.aa, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.aa, %bb.c ], [ %i.aa, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1394
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm5APInteqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !29
  %i.h = load i64, ptr %1, align 8, !tbaa !29
  %i.i = icmp eq i64 %i.g, %i.h
  br label %_ZNK4llvm5APInteqERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #31
  br label %_ZNK4llvm5APInteqERKS0_.exit

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.d, %bb.c, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.99", align 16 ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1392
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1385
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1391
  store i32 0, ptr %i.p, align 16, !tbaa !1395
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !1392 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !1385
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 24
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev.exit

_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1385
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1391
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1392 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1391 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1385
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1392
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.u) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !117
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, !llvm.loop !1401

_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.w ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !59
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !59
  %i.aj = load i64, ptr %i.u, align 8
  store i64 %i.aj, ptr %i.af, align 8
  store i32 0, ptr %i.ah, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !118
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !118
  store ptr null, ptr %i.al, align 8, !tbaa !118
  %i.an = shl nuw i32 1, %i.aa
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.ae, align 4, !tbaa !117
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !59
  %i.ar = icmp ugt i32 %i.aq, 64
  br i1 %i.ar, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, %bb.d, %bb.e
  %i.au = add i32 %.0.i21, -1
  %i.av = and i32 %i.au, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1402

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1403

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1392
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1395
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !1395
  %i.ba = icmp eq i32 %i.aw, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bb = load ptr, ptr %1, align 8, !tbaa !1385
  %i.bc = zext i32 %i.aw to i64                   ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit

_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1392 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1385
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1391
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %i.aa = icmp ugt i32 %i.z, 64
  br i1 %i.aa, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, %bb.f, %bb.g
  %i.ad = add i32 %.0.i3, -1
  %i.ae = and i32 %i.ad, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1404

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1405

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1406, !noalias !1407 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1412, !noalias !1407 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1413, !noalias !1407 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !1414
  %i.j = mul i32 %i.i, 37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.m = zext nneg i8 %i.l to i32
  %.0.i.i.i = sub i32 %i.j, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #29
  %i.p = zext i32 %.0.i.i.i to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = zext i32 %i.o to i64
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.h, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !162

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.al, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aj, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_5APIntEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw i32 %.024.i, 1
  %i.aj = and i32 %i.ai, %i.h                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = and i32 %i.aj, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1417

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.al, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1418
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1419
  %i.au = load i32, ptr %i.e, align 4, !tbaa !1413 ; 2 uses
  %i.av = shl i32 %i.at, 2
  %i.aw = add i32 %i.av, 4
  %i.ax = mul i32 %i.au, 3
  %.not.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ay = shl i32 %i.au, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ay)
  %i.az = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1418
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ba = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 6 uses
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !1412
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1406
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 5                 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = lshr i64 %i.bg, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !117
  %i.bn = or i32 %i.bj, %i.bm
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !117
  %i.bo = load i32, ptr %i.as, align 8, !tbaa !1419
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load i64, ptr %1, align 8
  store i64 %i.bq, ptr %i.ba, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !59
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !59
  %i.bw = load i64, ptr %i.bs, align 8
  store i64 %i.bw, ptr %i.br, align 8
  store i32 0, ptr %i.bu, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr null, ptr %i.bx, align 8, !tbaa !1373
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.ba, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1406, !noalias !1420 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1412, !noalias !1420 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1413, !noalias !1420 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !1414
  %i.i = mul i32 %i.h, 37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i8, ptr %i.j, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.l = zext nneg i8 %i.k to i32
  %.0.i.i = sub i32 %i.i, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #29
  %i.o = zext i32 %.0.i.i to i64
  %i.p = shl nuw i64 %i.o, 32
  %i.q = zext i32 %i.n to i64
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ak, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ai, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_5APIntEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.af) ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.ah = add nuw i32 %.024, 1
  %i.ai = and i32 %i.ah, %i.g                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.aj, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117
  %i.ao = and i32 %i.ai, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1417

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ak, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1418
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_5APIntEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1414
  %i.b = load i32, ptr %1, align 8, !tbaa !1414
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i8, ptr %i.d, align 4, !range !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i8, ptr %i.f, align 4, !range !18
  %i.h = icmp eq i8 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i32 %i.m, 65
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.j, align 8, !tbaa !29
  %i.s = load i64, ptr %i.k, align 8, !tbaa !29
  %i.t = icmp eq i64 %i.r, %i.s
  br label %_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.k) #31
  br label %_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_.exit

_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_.exit: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.v = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  ret i1 %i.v
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.101", align 16 ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1413
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1406
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1412
  store i32 0, ptr %i.p, align 16, !tbaa !1419
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !1413 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !1406
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1406
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1412
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1413 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1412 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1406
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1413
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bu, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1414
  %i.w = mul i32 %i.v, 37
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.z = zext nneg i8 %i.y to i32
  %.0.i.i.i = sub i32 %i.w, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ab = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #29
  %i.ac = zext i32 %.0.i.i.i to i64
  %i.ad = shl nuw i64 %i.ac, 32
  %i.ae = zext i32 %i.ab to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !117
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, !llvm.loop !1425

_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  %i.bc = load i64, ptr %i.u, align 8
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !59
  %i.bh = load i64, ptr %i.aa, align 8
  store i64 %i.bh, ptr %i.bd, align 8
  store i32 0, ptr %i.bf, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !118
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !118
  store ptr null, ptr %i.bj, align 8, !tbaa !118
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !117
  %i.bo = or i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !117
  %i.bp = load i32, ptr %i.bf, align 8, !tbaa !59
  %i.bq = icmp ugt i32 %i.bp, 64
  br i1 %i.bq, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, %bb.c, %bb.d
  %i.bt = add i32 %.0.i19, -1
  %i.bu = and i32 %i.bt, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1426

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1427

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1413
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bv = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1419
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !1419
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !1406
  %i.cb = zext i32 %i.bv to i64                   ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 5
  %i.cd = add nuw nsw i64 %i.cb, 31
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = and i64 %i.ce, 1073741820
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1413
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1413 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1406
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1412
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm11ConstantIntEEclEPS1_.exit.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %i.aa = icmp ugt i32 %i.z, 64
  br i1 %i.aa, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm11ConstantIntESt14default_deleteIS1_EED2Ev.exit.i, %bb.f, %bb.g
  %i.ae = add i32 %.0.i3, -1
  %i.af = and i32 %i.ae, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1428

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1429

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_11ConstantIntESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E24lookupOrInsertIntoBucketIjJEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1430, !noalias !1431 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1436, !noalias !1431 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1437, !noalias !1431 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !117    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !117
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !162

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !117
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1438

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit, label %bb.c, !prof !163

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1439
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1440
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1439
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1436
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1430
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !117
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !117
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1440
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !117
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !117
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !1441
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E22findBucketForInsertionIjEEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E15LookupBucketForIjEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1430, !noalias !1443 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1436, !noalias !1443 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1437, !noalias !1443 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !117    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1438

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1439
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.103", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1437
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1430
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1436
  store i32 0, ptr %i.p, align 16, !tbaa !1440
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1430   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1436
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1437 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1436 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1430
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1437
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1448

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !132
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !132
  store ptr null, ptr %i.ai, align 8, !tbaa !132
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !117
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !117
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1449

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1450

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1437
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1440
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !1440
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1437 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1430
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1436
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.z, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i.i, %bb.b
  %i.y = add i32 %.0.i3.i, -1
  %i.z = and i32 %i.y, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1451

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1452

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1437 ; 2 uses
  %i.aa = icmp eq i32 %.pr, 0
  br i1 %i.aa, label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1430
  %i.ac = zext i32 %.pr to i64                    ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS2_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E10destroyAllEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1453, !noalias !1454 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1459, !noalias !1454 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1460, !noalias !1454 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  %.024.i = and i32 %i.i, %i.h                    ; 3 uses
  %i.j = zext i32 %.024.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = and i32 %.024.i, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph.i, label %.loopexit, !prof !162

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.r, %i.h                      ; 3 uses
  %i.s = zext i32 %.0.i to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = and i32 %.0.i, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1461

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.aa)
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit, label %bb.c, !prof !163

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1462
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1463
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !1460 ; 2 uses
  %i.af = shl i32 %i.ad, 2
  %i.ag = add i32 %i.af, 4
  %i.ah = mul i32 %i.ae, 3
  %.not.i = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ai = shl i32 %i.ae, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ai)
  %i.aj = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1462
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ak = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 6 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1459
  %i.am = load ptr, ptr %0, align 8, !tbaa !1453
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 31
  %i.at = shl nuw i32 1, %i.as
  %i.au = lshr i64 %i.aq, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ax = or i32 %i.at, %i.aw
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !117
  %i.ay = load i32, ptr %i.ac, align 8, !tbaa !1463
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ac, align 8, !tbaa !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !59 ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !59
  %i.bd = icmp ult i32 %i.bc, 65
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit
  %i.be = load i64, ptr %1, align 8, !tbaa !29
  store i64 %i.be, ptr %i.ak, align 8, !tbaa !29
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.e, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr null, ptr %i.bf, align 8, !tbaa !1441
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm5APIntC2ERKS0_.exit
  %.sroa.0.0 = phi ptr [ %i.ak, %_ZN4llvm5APIntC2ERKS0_.exit ], [ %i.aa, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm5APIntC2ERKS0_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1453, !noalias !1464 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1459, !noalias !1464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1460, !noalias !1464 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  %.024 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.024 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.024, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.025, 1
  %.0 = and i32 %i.q, %i.g                        ; 3 uses
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %.0, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1461

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_5APIntEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.z) ; 3 uses
  br i1 %i.aa, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.aa, %bb.c ], [ %i.aa, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1462
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.105", align 16 ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1460
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1453
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1459
  store i32 0, ptr %i.p, align 16, !tbaa !1463
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !1460 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !1453
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 24
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev.exit

_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1453
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1459
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1460 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1459 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1453
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1460
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.u) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !117
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, !llvm.loop !1469

_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.w ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !59
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !59
  %i.aj = load i64, ptr %i.u, align 8
  store i64 %i.aj, ptr %i.af, align 8
  store i32 0, ptr %i.ah, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !132
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !132
  store ptr null, ptr %i.al, align 8, !tbaa !132
  %i.an = shl nuw i32 1, %i.aa
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.ae, align 4, !tbaa !117
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !59
  %i.ar = icmp ugt i32 %i.aq, 64
  br i1 %i.ar, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, %bb.d, %bb.e
  %i.au = add i32 %.0.i21, -1
  %i.av = and i32 %i.au, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1470

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1471

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1460
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1463
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !1463
  %i.ba = icmp eq i32 %i.aw, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bb = load ptr, ptr %1, align 8, !tbaa !1453
  %i.bc = zext i32 %i.aw to i64                   ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1460
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit

_ZN4llvm8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1460 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1453
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1459
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %i.aa = icmp ugt i32 %i.z, 64
  br i1 %i.aa, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, %bb.f, %bb.g
  %i.ad = add i32 %.0.i3, -1
  %i.ae = and i32 %i.ad, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1472

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1473

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_5APIntESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1474, !noalias !1475 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1480, !noalias !1475 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1481, !noalias !1475 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !1414
  %i.j = mul i32 %i.i, 37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.m = zext nneg i8 %i.l to i32
  %.0.i.i.i = sub i32 %i.j, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #29
  %i.p = zext i32 %.0.i.i.i to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = zext i32 %i.o to i64
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.h, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !162

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.al, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aj, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_5APIntEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw i32 %.024.i, 1
  %i.aj = and i32 %i.ai, %i.h                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = and i32 %i.aj, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1482

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.al, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1483
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1484
  %i.au = load i32, ptr %i.e, align 4, !tbaa !1481 ; 2 uses
  %i.av = shl i32 %i.at, 2
  %i.aw = add i32 %i.av, 4
  %i.ax = mul i32 %i.au, 3
  %.not.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ay = shl i32 %i.au, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ay)
  %i.az = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1483
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ba = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 6 uses
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !1480
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1474
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 5                 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = lshr i64 %i.bg, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !117
  %i.bn = or i32 %i.bj, %i.bm
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !117
  %i.bo = load i32, ptr %i.as, align 8, !tbaa !1484
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !1484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load i64, ptr %1, align 8
  store i64 %i.bq, ptr %i.ba, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !59
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !59
  %i.bw = load i64, ptr %i.bs, align 8
  store i64 %i.bw, ptr %i.br, align 8
  store i32 0, ptr %i.bu, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr null, ptr %i.bx, align 8, !tbaa !1441
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.ba, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1474, !noalias !1485 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1480, !noalias !1485 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1481, !noalias !1485 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !1414
  %i.i = mul i32 %i.h, 37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i8, ptr %i.j, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.l = zext nneg i8 %i.k to i32
  %.0.i.i = sub i32 %i.i, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #29
  %i.o = zext i32 %.0.i.i to i64
  %i.p = shl nuw i64 %i.o, 32
  %i.q = zext i32 %i.n to i64
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ak, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ai, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_5APIntEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.af) ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.ah = add nuw i32 %.024, 1
  %i.ai = and i32 %i.ah, %i.g                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.aj, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117
  %i.ao = and i32 %i.ai, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1482

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ak, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1483
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.107", align 16 ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1481
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1474
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1480
  store i32 0, ptr %i.p, align 16, !tbaa !1484
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !1481 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !1474
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1474
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1480
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1481 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1480 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1474
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1481
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bu, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1414
  %i.w = mul i32 %i.v, 37
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.z = zext nneg i8 %i.y to i32
  %.0.i.i.i = sub i32 %i.w, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ab = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_5APIntEvE12getHashValueERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #29
  %i.ac = zext i32 %.0.i.i.i to i64
  %i.ad = shl nuw i64 %i.ac, 32
  %i.ae = zext i32 %i.ab to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !117
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, !llvm.loop !1490

_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  %i.bc = load i64, ptr %i.u, align 8
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !59
  %i.bh = load i64, ptr %i.aa, align 8
  store i64 %i.bh, ptr %i.bd, align 8
  store i32 0, ptr %i.bf, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !132
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !132
  store ptr null, ptr %i.bj, align 8, !tbaa !132
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !117
  %i.bo = or i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !117
  %i.bp = load i32, ptr %i.bf, align 8, !tbaa !59
  %i.bq = icmp ugt i32 %i.bp, 64
  br i1 %i.bq, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, %bb.c, %bb.d
  %i.bt = add i32 %.0.i19, -1
  %i.bu = and i32 %i.bt, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1491

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1492

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1481
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bv = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1484
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !1484
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !1474
  %i.cb = zext i32 %i.bv to i64                   ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 5
  %i.cd = add nuw nsw i64 %i.cb, 31
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = and i64 %i.ce, 1073741820
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1481
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1481 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1474
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1480
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12ConstantByteEEclEPS1_.exit.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %i.aa = icmp ugt i32 %i.z, 64
  br i1 %i.aa, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #32
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12ConstantByteESt14default_deleteIS1_EED2Ev.exit.i, %bb.f, %bb.g
  %i.ae = add i32 %.0.i3, -1
  %i.af = and i32 %i.ae, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1493

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1494

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_5APIntEESt10unique_ptrINS_12ConstantByteESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1495, !noalias !1496 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1501, !noalias !1496 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1502, !noalias !1496 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = tail call i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.h, %i.j                       ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117
  %i.q = and i32 %i.k, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph.i, label %.loopexit, !prof !162

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.w, %bb.c ], [ %i.k, %bb.b ]
  %i.u = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  br i1 %i.u, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add nuw i32 %.024.i, 1
  %i.w = and i32 %i.v, %i.h                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1503

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1504
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1505
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !1502 ; 2 uses
  %i.ai = shl i32 %i.ag, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.ah, 3
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.al = shl i32 %i.ah, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.al)
  %i.am = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1504
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !1501
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1495
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 5                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !117
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !1505
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.af, align 8, !tbaa !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr null, ptr %i.bd, align 8, !tbaa !1506
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit ], [ %i.t, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E22findBucketForInsertionIS2_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E15LookupBucketForIS2_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1495, !noalias !1508 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1501, !noalias !1508 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1502, !noalias !1508 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = tail call i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.g, %i.i                       ; 3 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !117
  %i.p = and i32 %i.j, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.s = phi ptr [ %i.x, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.v, %bb.c ], [ %i.j, %bb.b ]
  %i.t = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.s) ; 3 uses
  br i1 %i.t, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.u = add nuw i32 %.024, 1
  %i.v = and i32 %i.u, %i.g                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117
  %i.ab = and i32 %i.v, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1503

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.s, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.t, %bb.c ], [ %i.t, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1504
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.not5.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not5.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  br label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  br label %_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit

_ZNK4llvm7APFloat14bitwiseIsEqualERKS0_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.d, %bb.d ], [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.0.i
}

declare i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.109", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1502
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1495
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1501
  store i32 0, ptr %i.p, align 16, !tbaa !1505
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1495
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1501
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1502 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1501 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1502
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = tail call i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #29
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.k, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = and i32 %i.x, 31                        ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.x, %bb.b ]
  %i.af = add i32 %.014.i, 1
  %i.ag = and i32 %i.af, %i.k                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !117
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !1513

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.y, %bb.b ], [ %i.ah, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.z, %bb.b ], [ %i.ai, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !107
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !107
  store ptr null, ptr %i.aq, align 8, !tbaa !107
  %i.as = shl nuw i32 1, %.lcssa.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !117
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !117
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #29
  %i.aw = add i32 %.0.i19, -1
  %i.ax = and i32 %i.aw, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1514

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1515

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1502
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1505
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1505
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1495
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1502
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit

_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1502 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1495
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1501
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.u, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %_ZNKSt14default_deleteIN4llvm10ConstantFPEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm10ConstantFPEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #29
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm10ConstantFPEEclEPS1_.exit.i.i.i, %bb.b
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #29
  %i.t = add i32 %.0.i3.i, -1
  %i.u = and i32 %i.t, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1516

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1517

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1502 ; 2 uses
  %i.v = icmp eq i32 %.pr, 0
  br i1 %i.v, label %_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE17deallocateBucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !1495
  %i.x = zext i32 %.pr to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 5
  %i.z = add nuw nsw i64 %i.x, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ac, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS3_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S6_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7APFloatESt10unique_ptrINS_10ConstantFPESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEEES2_S7_S9_SC_E10destroyAllEv.exit, %bb.c
  ret void
}

declare void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1518, !noalias !1519 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1524, !noalias !1519 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1525, !noalias !1519 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !1414
  %i.j = mul i32 %i.i, 37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.m = zext nneg i8 %i.l to i32
  %.0.i.i.i = sub i32 %i.j, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = tail call i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #29
  %i.p = zext i32 %.0.i.i.i to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = and i64 %i.o, 4294967295
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.h, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !162

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.al, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aj, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_7APFloatEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw i32 %.024.i, 1
  %i.aj = and i32 %i.ai, %i.h                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = and i32 %i.aj, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1526

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.al, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1527
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1528
  %i.au = load i32, ptr %i.e, align 4, !tbaa !1525 ; 2 uses
  %i.av = shl i32 %i.at, 2
  %i.aw = add i32 %i.av, 4
  %i.ax = mul i32 %i.au, 3
  %.not.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ay = shl i32 %i.au, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ay)
  %i.az = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1527
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ba = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !1524
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1518
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 40                ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = lshr i64 %i.bg, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !117
  %i.bn = or i32 %i.bj, %i.bm
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !117
  %i.bo = load i32, ptr %i.as, align 8, !tbaa !1528
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load i64, ptr %1, align 8
  store i64 %i.bq, ptr %i.ba, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr null, ptr %i.bt, align 8, !tbaa !1506
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.ba, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1518, !noalias !1529 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1524, !noalias !1529 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1525, !noalias !1529 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !1414
  %i.i = mul i32 %i.h, 37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i8, ptr %i.j, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.l = zext nneg i8 %i.k to i32
  %.0.i.i = sub i32 %i.i, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = tail call i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #29
  %i.o = zext i32 %.0.i.i to i64
  %i.p = shl nuw i64 %i.o, 32
  %i.q = and i64 %i.n, 4294967295
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !117
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ak, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ai, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_7APFloatEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.af) ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.ah = add nuw i32 %.024, 1
  %i.ai = and i32 %i.ah, %i.g                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.aj, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117
  %i.ao = and i32 %i.ai, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1526

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ak, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1527
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairINS_12ElementCountENS_7APFloatEEvE7isEqualERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1414
  %i.b = load i32, ptr %1, align 8, !tbaa !1414
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i8, ptr %i.d, align 4, !range !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i8, ptr %i.f, align 4, !range !18
  %i.h = icmp eq i8 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_.exit

bb.c:                                             ; preds = %bb.b
  %.not5.i.i = icmp eq ptr %i.l, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not5.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #29
  br label %_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat14bitwiseIsEqualERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #29
  br label %_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_.exit

_ZN4llvm12DenseMapInfoINS_7APFloatEvE7isEqualERKS1_S4_.exit: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.e ], [ %i.n, %bb.d ], [ false, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.111", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1525
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1518
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1524
  store i32 0, ptr %i.p, align 16, !tbaa !1528
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !117
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !117
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !117
  call void @_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1518
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1525 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1524 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1518
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1525
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1414
  %i.w = mul i32 %i.v, 37
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1416, !range !18, !noundef !19
  %i.z = zext nneg i8 %i.y to i32
  %.0.i.i.i = sub i32 %i.w, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ab = tail call i64 @_ZN4llvm10hash_valueERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #29
  %i.ac = zext i32 %.0.i.i.i to i64
  %i.ad = shl nuw i64 %i.ac, 32
  %i.ae = and i64 %i.ab, 4294967295
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !117
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !1534

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  %i.bc = load i64, ptr %i.u, align 8
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  tail call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #29
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !107
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !107
  store ptr null, ptr %i.bf, align 8, !tbaa !107
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !117
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !117
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #29
  %i.bl = add i32 %.0.i19, -1
  %i.bm = and i32 %i.bl, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1535

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1536

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1525
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1528
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !1528
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !1518
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 40
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1525
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1525 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1518
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1524
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.v, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %_ZNKSt14default_deleteIN4llvm10ConstantFPEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm10ConstantFPEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #29
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.r) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm10ConstantFPEEclEPS1_.exit.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #29
  %i.u = add i32 %.0.i3.i, -1
  %i.v = and i32 %i.u, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1537

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1538

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1525 ; 2 uses
  %i.w = icmp eq i32 %.pr, 0
  br i1 %i.w, label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !1518
  %i.y = zext i32 %.pr to i64                     ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 40
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_12ElementCountENS_7APFloatEESt10unique_ptrINS_10ConstantFPESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit, %bb.c
  ret void
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1539
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1124 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 268435455
  %i.k = zext nneg i32 %i.j to i64
  %.not.i.i = icmp eq i64 %i.g, %i.k
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %i.g to i32
  %.not1113.i.i = icmp eq i64 %i.g, 0
  br i1 %.not1113.i.i, label %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEPKS1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !1123
  %i.n = sub nsw i64 0, %i.g
  %i.o = getelementptr inbounds [32 x i8], ptr %1, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %.not12.i.i = icmp eq ptr %i.q, %i.s            ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp ne i32 %lftr.wideiv, %i.l
  %or.cond.not = select i1 %.not12.i.i, i1 %exitcond, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEPKS1_.exit, !llvm.loop !1540

_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEPKS1_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %.not12.i.i, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E9insert_asISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEESE_INS_16DenseMapIteratorIS3_S5_S8_SA_Lb0EEEbEOSE_IS3_S5_ERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.653") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !195, !noalias !1541 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209, !noalias !1541 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !210, !noalias !1541 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %3, align 8, !tbaa !846
  %.024.i = and i32 %i.i, %i.h                    ; 3 uses
  %i.j = zext i32 %.024.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = and i32 %.024.i, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph.i, label %.loopexit, !prof !162

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.r, %i.h                      ; 3 uses
  %i.s = zext i32 %.0.i to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = and i32 %.0.i, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i, label %.loopexit.loopexit, !prof !164, !llvm.loop !1546

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !212
  %i.ac = tail call noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ab)
  br i1 %i.ac, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit, label %bb.c, !prof !163

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit: ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !195, !noalias !1547
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !209, !noalias !1547
  br label %bb.e

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.e, align 4, !tbaa !210
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a, %bb.b
  %i.af = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.lcssa30.sink.i.ph = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %.loopexit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1550
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1551
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.af, 3
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.al = shl i32 %i.af, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.al)
  %i.am = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1550
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !209 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !195   ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !117
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !1551
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !1551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !212
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !212
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit
  %.sink26 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.ad, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ] ; 2 uses
  %.sink25 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %.sink22 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.ae, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %.sink = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %i.be = load i32, ptr %i.e, align 4, !tbaa !210, !noalias !19
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sink26, i64 %i.bf
  store ptr %.sink25, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink22, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.bh, align 8, !tbaa !1552
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !195, !noalias !1555 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209, !noalias !1555 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !210, !noalias !1555 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !846
  %.024 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.024 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.024, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.025, 1
  %.0 = and i32 %i.q, %i.g                        ; 3 uses
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %.0, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1546

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !212
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_9ArrayTypeENS_19ConstantAggrKeyTypeIS1_EEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.aa) ; 3 uses
  br i1 %i.ab, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1550
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.280", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !210
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !195
  store ptr %i.y, ptr %i.q, align 8, !tbaa !209
  store i32 0, ptr %i.p, align 16, !tbaa !1551
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1550
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !210  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !209  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !210
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.o, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !51
  store i32 32, ptr %i.q, align 4, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 268435455                ; 3 uses
  %i.af = icmp samesign ugt i32 %i.ae, 32
  br i1 %i.af, label %bb.d, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.ae to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.o, i64 noundef %i.ag, i64 noundef 8) #29
  %.pre.i.i = load i32, ptr %i.ac, align 4
  %.pre13.i.i = and i32 %.pre.i.i, 268435455
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i = phi i32 [ %i.ae, %bb.c ], [ %.pre13.i.i, %bb.d ] ; 2 uses
  %.not10.i.i = icmp eq i32 %.pre-phi.i.i, 0
  br i1 %.not10.i.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_13ConstantArrayEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i
  %i.ah = zext nneg i32 %.pre-phi.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i ] ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4
  %i.aj = and i32 %i.ai, 268435455
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %i.z, i64 %i.al
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !51  ; 2 uses
  %i.aq = load i32, ptr %i.q, align 4, !tbaa !120
  %.not.i.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !163

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %3, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  store ptr %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.p, align 8, !tbaa !51
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.p, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i: ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ah
  br i1 %.not.i.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_13ConstantArrayEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, label %bb.e, !llvm.loop !1560

_ZN4llvm19ConstantAggrKeyTypeINS_13ConstantArrayEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21
  %i.ax = load i32, ptr %i.p, align 8, !tbaa !51
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ay, 3
  %i.az = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.aw, i64 noundef %.idx.i.i.i.i) #29
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.ab, ptr %2, align 8
  store i32 %i.bb, ptr %i.r, align 8
  %i.bc = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bd = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.o
  br i1 %i.be, label %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo12getHashValueEPKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm19ConstantAggrKeyTypeINS_13ConstantArrayEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i
  call void @free(ptr noundef %i.bd) #29
  br label %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo12getHashValueEPKS1_.exit

_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm19ConstantAggrKeyTypeINS_13ConstantArrayEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, %bb.h
  %i.bf = trunc i64 %i.bc to i32
  %i.bg = xor i32 %i.bf, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %i.bg, %_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo12getHashValueEPKS1_.exit ], [ %i.bo, %bb.i ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bh = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !117 ; 2 uses
  %i.bl = and i32 %.0.i7, 31                      ; 2 uses
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  %i.bo = add i32 %.0.i7, 1
  br i1 %i.bn, label %bb.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1561

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bh
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !212
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !212
  %i.bs = shl nuw i32 1, %i.bl
  %i.bt = or i32 %i.bs, %i.bk
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !117
  %i.bu = add i32 %.0.i18, -1
  %i.bv = and i32 %i.bu, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1562

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1563

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !210
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1551
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !1551
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !195
  %i.cc = zext i32 %i.bw to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm17ConstantUniqueMapINS_13ConstantArrayEE7MapInfo12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 32, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 268435455                  ; 3 uses
  %i.i = icmp samesign ugt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef 8) #29
  %.pre.i = load i32, ptr %i.f, align 4
  %.pre13.i = and i32 %.pre.i, 268435455
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i32 [ %i.h, %bb.a ], [ %.pre13.i, %bb.b ] ; 2 uses
  %.not10.i = icmp eq i32 %.pre-phi.i, 0
  br i1 %.not10.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_13ConstantArrayEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i
  %i.k = zext nneg i32 %.pre-phi.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.l = load i32, ptr %i.f, align 4
  %i.m = and i32 %i.l, 268435455
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E9insert_asISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEESE_INS_16DenseMapIteratorIS3_S5_S8_SA_Lb0EEEbEOSE_IS3_S5_ERKT_:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !231 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !217   ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !117
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !1582
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !234
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !234
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit
  %.sink26 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.ad, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ] ; 2 uses
  %.sink25 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %.sink22 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.ae, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %.sink = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %i.be = load i32, ptr %i.e, align 4, !tbaa !232, !noalias !19
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sink26, i64 %i.bf
  store ptr %.sink25, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink22, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.bh, align 8, !tbaa !1583
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1586 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231, !noalias !1586 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232, !noalias !1586 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !880
  %.024 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.024 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.024, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.025, 1
  %.0 = and i32 %i.q, %i.g                        ; 3 uses
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %.0, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1577

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_10StructTypeENS_19ConstantAggrKeyTypeIS1_EEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.aa) ; 3 uses
  br i1 %i.ab, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1581
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.285", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !217
  store ptr %i.y, ptr %i.q, align 8, !tbaa !231
  store i32 0, ptr %i.p, align 16, !tbaa !1582
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1581
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !217
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !232
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.o, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !51
  store i32 32, ptr %i.q, align 4, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 268435455                ; 3 uses
  %i.af = icmp samesign ugt i32 %i.ae, 32
  br i1 %i.af, label %bb.d, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.ae to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.o, i64 noundef %i.ag, i64 noundef 8) #29
  %.pre.i.i = load i32, ptr %i.ac, align 4
  %.pre13.i.i = and i32 %.pre.i.i, 268435455
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i = phi i32 [ %i.ae, %bb.c ], [ %.pre13.i.i, %bb.d ] ; 2 uses
  %.not10.i.i = icmp eq i32 %.pre-phi.i.i, 0
  br i1 %.not10.i.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantStructEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i
  %i.ah = zext nneg i32 %.pre-phi.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i ] ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4
  %i.aj = and i32 %i.ai, 268435455
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %i.z, i64 %i.al
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !51  ; 2 uses
  %i.aq = load i32, ptr %i.q, align 4, !tbaa !120
  %.not.i.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !163

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %3, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  store ptr %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.p, align 8, !tbaa !51
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.p, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i: ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ah
  br i1 %.not.i.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantStructEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, label %bb.e, !llvm.loop !1591

_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantStructEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21
  %i.ax = load i32, ptr %i.p, align 8, !tbaa !51
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ay, 3
  %i.az = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.aw, i64 noundef %.idx.i.i.i.i) #29
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.ab, ptr %2, align 8
  store i32 %i.bb, ptr %i.r, align 8
  %i.bc = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bd = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.o
  br i1 %i.be, label %_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo12getHashValueEPKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantStructEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i
  call void @free(ptr noundef %i.bd) #29
  br label %_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo12getHashValueEPKS1_.exit

_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantStructEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, %bb.h
  %i.bf = trunc i64 %i.bc to i32
  %i.bg = xor i32 %i.bf, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %i.bg, %_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo12getHashValueEPKS1_.exit ], [ %i.bo, %bb.i ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bh = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !117 ; 2 uses
  %i.bl = and i32 %.0.i7, 31                      ; 2 uses
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  %i.bo = add i32 %.0.i7, 1
  br i1 %i.bn, label %bb.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1592

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bh
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !234
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !234
  %i.bs = shl nuw i32 1, %i.bl
  %i.bt = or i32 %i.bs, %i.bk
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !117
  %i.bu = add i32 %.0.i18, -1
  %i.bv = and i32 %i.bu, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1593

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1594

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !232
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1582
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !1582
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !217
  %i.cc = zext i32 %i.bw to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantStructENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm17ConstantUniqueMapINS_14ConstantStructEE7MapInfo12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 32, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 268435455                  ; 3 uses
  %i.i = icmp samesign ugt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef 8) #29
  %.pre.i = load i32, ptr %i.f, align 4
  %.pre13.i = and i32 %.pre.i, 268435455
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i32 [ %i.h, %bb.a ], [ %.pre13.i, %bb.b ] ; 2 uses
  %.not10.i = icmp eq i32 %.pre-phi.i, 0
  br i1 %.not10.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantStructEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i
  %i.k = zext nneg i32 %.pre-phi.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.l = load i32, ptr %i.f, align 4
  %i.m = and i32 %i.l, 268435455
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E9insert_asISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEESE_INS_16DenseMapIteratorIS3_S5_S8_SA_Lb0EEEbEOSE_IS3_S5_ERKT_:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !253 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !239   ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !117
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !1607
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !1607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !256
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !256
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit
  %.sink26 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.ad, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ] ; 2 uses
  %.sink25 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %.sink22 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ %i.ae, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %.sink = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEPSA_RKT_SL_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_.exit ]
  %i.be = load i32, ptr %i.e, align 4, !tbaa !254, !noalias !19
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sink26, i64 %i.bf
  store ptr %.sink25, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink22, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.bh, align 8, !tbaa !1608
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS2_EEEEEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239, !noalias !1611 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253, !noalias !1611 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254, !noalias !1611 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !915
  %.024 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.024 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.024, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.025, 1
  %.0 = and i32 %i.q, %i.g                        ; 3 uses
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %.0, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1602

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !256
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_10VectorTypeENS_19ConstantAggrKeyTypeIS1_EEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.aa) ; 3 uses
  br i1 %i.ab, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1606
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.290", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !239
  store ptr %i.y, ptr %i.q, align 8, !tbaa !253
  store i32 0, ptr %i.p, align 16, !tbaa !1607
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1606
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !239
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !239
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !254
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !256  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.o, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %i.p, align 8, !tbaa !51
  store i32 32, ptr %i.q, align 4, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 268435455                ; 3 uses
  %i.af = icmp samesign ugt i32 %i.ae, 32
  br i1 %i.af, label %bb.d, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.ae to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.o, i64 noundef %i.ag, i64 noundef 8) #29
  %.pre.i.i = load i32, ptr %i.ac, align 4
  %.pre13.i.i = and i32 %.pre.i.i, 268435455
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i = phi i32 [ %i.ae, %bb.c ], [ %.pre13.i.i, %bb.d ] ; 2 uses
  %.not10.i.i = icmp eq i32 %.pre-phi.i.i, 0
  br i1 %.not10.i.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantVectorEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i
  %i.ah = zext nneg i32 %.pre-phi.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i ] ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4
  %i.aj = and i32 %i.ai, 268435455
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %i.z, i64 %i.al
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !51  ; 2 uses
  %i.aq = load i32, ptr %i.q, align 4, !tbaa !120
  %.not.i.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !163

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ao)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %3, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  store ptr %i.ao, ptr %i.at, align 1
  %i.au = load i32, ptr %i.p, align 8, !tbaa !51
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.p, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i: ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ah
  br i1 %.not.i.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantVectorEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, label %bb.e, !llvm.loop !1616

_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantVectorEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.i, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21
  %i.ax = load i32, ptr %i.p, align 8, !tbaa !51
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ay, 3
  %i.az = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.aw, i64 noundef %.idx.i.i.i.i) #29
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.ab, ptr %2, align 8
  store i32 %i.bb, ptr %i.r, align 8
  %i.bc = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bd = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.o
  br i1 %i.be, label %_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo12getHashValueEPKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantVectorEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i
  call void @free(ptr noundef %i.bd) #29
  br label %_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo12getHashValueEPKS1_.exit

_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantVectorEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit.i, %bb.h
  %i.bf = trunc i64 %i.bc to i32
  %i.bg = xor i32 %i.bf, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %i.bg, %_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo12getHashValueEPKS1_.exit ], [ %i.bo, %bb.i ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bh = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !117 ; 2 uses
  %i.bl = and i32 %.0.i7, 31                      ; 2 uses
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  %i.bo = add i32 %.0.i7, 1
  br i1 %i.bn, label %bb.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1617

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bh
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !256
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !256
  %i.bs = shl nuw i32 1, %i.bl
  %i.bt = or i32 %i.bs, %i.bk
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !117
  %i.bu = add i32 %.0.i18, -1
  %i.bv = and i32 %i.bu, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1618

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1619

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !254
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1607
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !1607
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !239
  %i.cc = zext i32 %i.bw to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14ConstantVectorENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm17ConstantUniqueMapINS_14ConstantVectorEE7MapInfo12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 32, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 268435455                  ; 3 uses
  %i.i = icmp samesign ugt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef 8) #29
  %.pre.i = load i32, ptr %i.f, align 4
  %.pre13.i = and i32 %.pre.i, 268435455
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i32 [ %i.h, %bb.a ], [ %.pre13.i, %bb.b ] ; 2 uses
  %.not10.i = icmp eq i32 %.pre-phi.i, 0
  br i1 %.not10.i, label %_ZN4llvm19ConstantAggrKeyTypeINS_14ConstantVectorEEC2EPKS1_RNS_15SmallVectorImplIPNS_8ConstantEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i
  %i.k = zext nneg i32 %.pre-phi.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.l = load i32, ptr %i.f, align 4
  %i.m = and i32 %i.l, 268435455
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !117
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1631

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1632
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1633
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1632
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !173
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !165
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1633
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1634
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165, !noalias !1636 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173, !noalias !1636 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174, !noalias !1636 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1631

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1632
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.276", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !174
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !165
  store ptr %i.y, ptr %i.q, align 8, !tbaa !173
  store i32 0, ptr %i.p, align 16, !tbaa !1633
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1632   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1641 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store ptr %i.z, ptr %2, align 16, !tbaa !1632
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !460
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1641
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !117
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !117
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm21ConstantAggregateZeroEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm21ConstantAggregateZeroEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #29
  call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm21ConstantAggregateZeroEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1642

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1643

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !174 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !165
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1644

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !111
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !111
  store ptr null, ptr %i.av, align 8, !tbaa !111
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1645

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1646

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !174
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1633
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1633
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_21ConstantAggregateZeroESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm21ConstantAggregateZeroEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm21ConstantAggregateZeroEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm21ConstantAggregateZeroEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1633
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1633
  %i.f = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174
  %i.k = add i32 %i.j, -1                         ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, %i.k                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %.pn = phi i64 [ %i.at, %bb.b ], [ %i.s, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit ]
  %i.z = phi i32 [ %i.as, %bb.b ], [ %i.r, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.03340 = phi i32 [ %.2, %bb.b ], [ %i.p, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = sub i32 %.03340, %i.ag
  %i.ai = and i32 %i.ah, %i.k
  %i.aj = sub i32 %i.z, %i.ag
  %i.ak = and i32 %i.aj, %i.k
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit36, label %bb.b

_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit36: ; preds = %.lr.ph
  %i.am = zext i32 %.03340 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am ; 2 uses
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !111
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !111
  store ptr null, ptr %i.ap, align 8, !tbaa !111
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit36
  %.2 = phi i32 [ %.03340, %.lr.ph ], [ %i.z, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit36 ] ; 2 uses
  %i.ar = add i32 %i.z, 1
  %i.as = and i32 %i.ar, %i.k                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ax = and i32 %i.as, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.p, %_ZNSt10unique_ptrIN4llvm21ConstantAggregateZeroESt14default_deleteIS1_EED2Ev.exit ], [ %.2, %bb.b ] ; 2 uses
  %i.ba = and i32 %.033.lcssa, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = xor i32 %i.bb, -1
  %i.bd = lshr i32 %.033.lcssa, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bh = and i32 %i.bg, %i.bc
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13ConstantArrayENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1551
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1551
  %i.d = load ptr, ptr %0, align 8, !tbaa !195    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !210
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !117
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1652

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1653
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1654
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1653
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !193
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !185
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1654
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1655
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185, !noalias !1657 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193, !noalias !1657 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !194, !noalias !1657 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1652

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1653
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.292", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !194
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !185
  store ptr %i.y, ptr %i.q, align 8, !tbaa !193
  store i32 0, ptr %i.p, align 16, !tbaa !1654
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1653   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1641 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store ptr %i.z, ptr %2, align 16, !tbaa !1653
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !460
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1641
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !117
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !117
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !109 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm19ConstantPointerNullEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm19ConstantPointerNullEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #29
  call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm19ConstantPointerNullEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1662

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1663

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !194 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !185
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !185    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !194  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !193  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !194
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1664

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !109
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !109
  store ptr null, ptr %i.av, align 8, !tbaa !109
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1665

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1666

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !194
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1654
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1654
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_19ConstantPointerNullESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm19ConstantPointerNullEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm19ConstantPointerNullEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm19ConstantPointerNullEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1654
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1654
  %i.f = load ptr, ptr %0, align 8, !tbaa !185    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !194
  %i.k = add i32 %i.j, -1                         ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, %i.k                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %.pn = phi i64 [ %i.at, %bb.b ], [ %i.s, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit ]
  %i.z = phi i32 [ %i.as, %bb.b ], [ %i.r, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.03340 = phi i32 [ %.2, %bb.b ], [ %i.p, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = sub i32 %.03340, %i.ag
  %i.ai = and i32 %i.ah, %i.k
  %i.aj = sub i32 %i.z, %i.ag
  %i.ak = and i32 %i.aj, %i.k
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit36, label %bb.b

_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit36: ; preds = %.lr.ph
  %i.am = zext i32 %.03340 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am ; 2 uses
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !109
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !109
  store ptr null, ptr %i.ap, align 8, !tbaa !109
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit36
  %.2 = phi i32 [ %.03340, %.lr.ph ], [ %i.z, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit36 ] ; 2 uses
  %i.ar = add i32 %i.z, 1
  %i.as = and i32 %i.ar, %i.k                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ax = and i32 %i.as, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.p, %_ZNSt10unique_ptrIN4llvm19ConstantPointerNullESt14default_deleteIS1_EED2Ev.exit ], [ %.2, %bb.b ] ; 2 uses
  %i.ba = and i32 %.033.lcssa, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = xor i32 %i.bb, -1
  %i.bd = lshr i32 %.033.lcssa, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bh = and i32 %i.bg, %i.bc
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !175, !noalias !1667 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183, !noalias !1667 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !184, !noalias !1667 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !117
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1672

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1673
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1674
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1673
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !183
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !175
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1674
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !113
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1675
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !175, !noalias !1677 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183, !noalias !1677 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !184, !noalias !1677 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1672

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1673
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.294", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !175
  store ptr %i.y, ptr %i.q, align 8, !tbaa !183
  store i32 0, ptr %i.p, align 16, !tbaa !1674
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1673   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1641 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store ptr %i.z, ptr %2, align 16, !tbaa !1673
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !460
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1641
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !117
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !117
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm18ConstantTargetNoneEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm18ConstantTargetNoneEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #29
  call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18ConstantTargetNoneEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1682

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1683

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !184 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !175
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !175    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !184  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !184
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1684

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !115
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !115
  store ptr null, ptr %i.av, align 8, !tbaa !115
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1685

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1686

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !184
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1674
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1674
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13TargetExtTypeESt10unique_ptrINS_18ConstantTargetNoneESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm18ConstantTargetNoneEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm18ConstantTargetNoneEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm18ConstantTargetNoneEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1674
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1674
  %i.f = load ptr, ptr %0, align 8, !tbaa !175    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !184
  %i.k = add i32 %i.j, -1                         ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, %i.k                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %.pn = phi i64 [ %i.at, %bb.b ], [ %i.s, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit ]
  %i.z = phi i32 [ %i.as, %bb.b ], [ %i.r, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.03340 = phi i32 [ %.2, %bb.b ], [ %i.p, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = sub i32 %.03340, %i.ag
  %i.ai = and i32 %i.ah, %i.k
  %i.aj = sub i32 %i.z, %i.ag
  %i.ak = and i32 %i.aj, %i.k
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit36, label %bb.b

_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit36: ; preds = %.lr.ph
  %i.am = zext i32 %.03340 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am ; 2 uses
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !113
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !115
  store ptr null, ptr %i.ap, align 8, !tbaa !115
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit36
  %.2 = phi i32 [ %.03340, %.lr.ph ], [ %i.z, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit36 ] ; 2 uses
  %i.ar = add i32 %i.z, 1
  %i.as = and i32 %i.ar, %i.k                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ax = and i32 %i.as, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.p, %_ZNSt10unique_ptrIN4llvm18ConstantTargetNoneESt14default_deleteIS1_EED2Ev.exit ], [ %.2, %bb.b ] ; 2 uses
  %i.ba = and i32 %.033.lcssa, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = xor i32 %i.bb, -1
  %i.bd = lshr i32 %.033.lcssa, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bh = and i32 %i.bg, %i.bc
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1004, !noalias !1687 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1010, !noalias !1687 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1011, !noalias !1687 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !117
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1692

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1693
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1694
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1693
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1010
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1004
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1694
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1695
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1004, !noalias !1697 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010, !noalias !1697 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1011, !noalias !1697 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1692

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1693
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.296", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1011
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1004
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1010
  store i32 0, ptr %i.p, align 16, !tbaa !1694
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1693   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1641 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store ptr %i.z, ptr %2, align 16, !tbaa !1693
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !460
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1641
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !117
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !117
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm10UndefValueEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm10UndefValueEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #29
  call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm10UndefValueEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1702

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1703

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1011 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !1004
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1004   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1011 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1010 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1004
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1011
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1704

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !134
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !134
  store ptr null, ptr %i.av, align 8, !tbaa !134
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1705

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1706

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1011
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1694
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1694
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1011
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_10UndefValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm10UndefValueEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm10UndefValueEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm10UndefValueEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1694
  %i.e = add i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1694
  %i.f = load ptr, ptr %0, align 8, !tbaa !1004   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1010 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1011
  %i.k = add i32 %i.j, -1                         ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, %i.k                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %.pn = phi i64 [ %i.at, %bb.b ], [ %i.s, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit ]
  %i.z = phi i32 [ %i.as, %bb.b ], [ %i.r, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.03340 = phi i32 [ %.2, %bb.b ], [ %i.p, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pn ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = sub i32 %.03340, %i.ag
  %i.ai = and i32 %i.ah, %i.k
  %i.aj = sub i32 %i.z, %i.ag
  %i.ak = and i32 %i.aj, %i.k
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit36, label %bb.b

_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit36: ; preds = %.lr.ph
  %i.am = zext i32 %.03340 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am ; 2 uses
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !134
  store ptr null, ptr %i.ap, align 8, !tbaa !134
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit36
  %.2 = phi i32 [ %.03340, %.lr.ph ], [ %i.z, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit36 ] ; 2 uses
  %i.ar = add i32 %i.z, 1
  %i.as = and i32 %i.ar, %i.k                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117
  %i.ax = and i32 %i.as, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.p, %_ZNSt10unique_ptrIN4llvm10UndefValueESt14default_deleteIS1_EED2Ev.exit ], [ %.2, %bb.b ] ; 2 uses
  %i.ba = and i32 %.033.lcssa, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = xor i32 %i.bb, -1
  %i.bd = lshr i32 %.033.lcssa, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117
  %i.bh = and i32 %i.bg, %i.bc
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm11PoisonValueESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm11PoisonValueEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm11PoisonValueEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10unique_ptrIN4llvm11PoisonValueESt14default_deleteIS1_EED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !117
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1713

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1714
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1707
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1714
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !160
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1707
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1715
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151, !noalias !1717 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160, !noalias !1717 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161, !noalias !1717 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1713

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1714
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.298", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !151
  store ptr %i.y, ptr %i.q, align 8, !tbaa !160
  store i32 0, ptr %i.p, align 16, !tbaa !1707
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1714   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1641 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store ptr %i.z, ptr %2, align 16, !tbaa !1714
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !460
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1641
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !117
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !117
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !117 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm11PoisonValueEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm11PoisonValueEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm4UserD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #29
  call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm11PoisonValueEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1722

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1723

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !161 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !151
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !161
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1724

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !43
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !43
  store ptr null, ptr %i.av, align 8, !tbaa !43
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1725

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1726

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !161
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1707
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1707
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_11PoisonValueESt14default_deleteIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !264, !noalias !1727 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272, !noalias !1727 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !273, !noalias !1727 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !274    ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !162

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !274
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !117
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !164, !llvm.loop !1732

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1733
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1734
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1733
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !272
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !264
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1734
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !274
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !274
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1017
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264, !noalias !1735 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !272, !noalias !1735 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !273, !noalias !1735 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !274    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !274
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1732

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1733
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.301", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !273
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !264
  store ptr %i.y, ptr %i.q, align 8, !tbaa !272
  store i32 0, ptr %i.p, align 16, !tbaa !1734
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1733
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !264    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !272
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !273  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !273
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !274  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1740

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !274
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1017
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1017
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1741

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1742

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !273
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1734
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1734
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !273
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEPNS_12BlockAddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1734
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1734
  %i.d = load ptr, ptr %0, align 8, !tbaa !264    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !272  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !273
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.ar, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.aq, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !274  ; 2 uses
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
  store ptr %i.z, ptr %i.al, align 8, !tbaa !274
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1017
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !1017
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ap = add i32 %i.x, 1
  %i.aq = and i32 %i.ap, %i.i                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !117
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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !117
  %i.bf = and i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !297, !noalias !1743 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305, !noalias !1743 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !306, !noalias !1743 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !307    ; 2 uses
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
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1749
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !305
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !297
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1750
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !307
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !307
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1034
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !297, !noalias !1751 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305, !noalias !1751 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !306, !noalias !1751 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !307    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !307
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1748

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1749
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.303", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !297
  store ptr %i.y, ptr %i.q, align 8, !tbaa !305
  store i32 0, ptr %i.p, align 16, !tbaa !1750
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1749
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !297    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !306  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !305  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !297
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !306
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !307  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1756

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !307
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1034
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1034
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1757

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1758

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !306
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1750
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1750
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1750
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1750
  %i.d = load ptr, ptr %0, align 8, !tbaa !297    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !305  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !306
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.ar, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.aq, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !307  ; 2 uses
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
  store ptr %i.z, ptr %i.al, align 8, !tbaa !307
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1034
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !1034
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ap = add i32 %i.x, 1
  %i.aq = and i32 %i.ap, %i.i                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !117
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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !117
  %i.bf = and i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_18DSOLocalEquivalentENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !297, !noalias !1759 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305, !noalias !1759 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !306, !noalias !1759 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !307    ; 2 uses
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
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !163

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1770
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !317
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !309
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !117
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !117
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1771
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !307
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !307
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1046
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !309, !noalias !1772 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317, !noalias !1772 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !318, !noalias !1772 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !307    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !307
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !163

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1769

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1770
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.305", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !318
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !309
  store ptr %i.y, ptr %i.q, align 8, !tbaa !317
  store i32 0, ptr %i.p, align 16, !tbaa !1771
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1770
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !309    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !318  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !309
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !318
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !307  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !117 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1777

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !307
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1046
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1046
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !117
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1778

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1779

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !318
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1771
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1771
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !318
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11GlobalValueEPNS_10NoCFIValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1771
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1771
  %i.d = load ptr, ptr %0, align 8, !tbaa !309    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !317  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !318
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.ar, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.aq, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !307  ; 2 uses
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
  store ptr %i.z, ptr %i.al, align 8, !tbaa !307
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1046
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !1046
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ap = add i32 %i.x, 1
  %i.aq = and i32 %i.ap, %i.i                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !117
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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !117
  %i.bf = and i32 %i.be, %i.ba
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1780
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp eq i64 %i.f, 5
  %or.cond.i = select i1 %.not.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %.preheader.i.i, label %_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo7isEqualERKSt4pairIPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEPKS1_.exit

.preheader.i.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1123 ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 -160
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !45
  %.not12.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not12.i.i, label %bb.b, label %_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo7isEqualERKSt4pairIPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEPKS1_.exit

bb.b:                                             ; preds = %.preheader.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E9insert_asISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEESE_INS_16DenseMapIteratorIS3_S5_S8_SA_Lb0EEEbEOSE_IS3_S5_ERKT_:bb.a
  %i.ap = load ptr, ptr %1, align 8, !tbaa !330   ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !117
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !1791
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ag, align 8, !tbaa !1791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !322
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !322
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEPSA_RKT_SK_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEbRKT_RPSA_.exit
  %.sink26 = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEPSA_RKT_SK_.exit ], [ %i.ad, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEbRKT_RPSA_.exit ] ; 2 uses
  %.sink25 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEPSA_RKT_SK_.exit ], [ %i.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEbRKT_RPSA_.exit ]
  %.sink22 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEPSA_RKT_SK_.exit ], [ %i.ae, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEbRKT_RPSA_.exit ]
  %.sink = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEPSA_RKT_SK_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEbRKT_RPSA_.exit ]
  %i.be = load i32, ptr %i.e, align 4, !tbaa !333, !noalias !19
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sink26, i64 %i.bf
  store ptr %.sink25, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink22, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.bh, align 8, !tbaa !1792
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !330, !noalias !1795 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1066, !noalias !1795 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !333, !noalias !1795 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !1053
  %.024 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.024 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.024, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i32 %.025, 1
  %.0 = and i32 %i.q, %i.g                        ; 3 uses
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = and i32 %.0, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !164, !llvm.loop !1786

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_22ConstantPtrAuthKeyTypeEEEPKS1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.aa) ; 3 uses
  br i1 %i.ab, label %.thread, label %bb.c, !prof !163

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1790
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.310", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !333
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !330
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1066
  store i32 0, ptr %i.p, align 16, !tbaa !1791
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1790
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.46", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1066
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !333  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1066 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !330
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !333
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117  ; 2 uses
  %.not11.i19 = icmp eq i32 %i.w, 0
  br i1 %.not11.i19, label %._crit_edge, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.lr.ph

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.lr.ph: ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.x = shl i32 %indvars.iv.tr, 5
  br label %_ZN4llvm22ConstantPtrAuthKeyTypeC2EPKNS_15ConstantPtrAuthERNS_15SmallVectorImplIPNS_8ConstantEEE.exit

_ZN4llvm22ConstantPtrAuthKeyTypeC2EPKNS_15ConstantPtrAuthERNS_15SmallVectorImplIPNS_8ConstantEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.w, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.i.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.y = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !322 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.o, ptr %3, align 8, !tbaa !21
  store i32 32, ptr %i.q, align 4, !tbaa !120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  store ptr %i.ag, ptr %i.o, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  store ptr %i.ai, ptr %i.s, align 8
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ac, i64 -96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  store ptr %.pre, ptr %i.t, align 8
  %.phi.trans.insert28 = getelementptr inbounds i8, ptr %i.ac, i64 -64
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !45
  store ptr %.pre29, ptr %i.u, align 8
  store i32 4, ptr %i.p, align 8, !tbaa !51
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.ak, ptr %i.am, align 1
  store i32 5, ptr %i.p, align 8, !tbaa !51
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.al, i64 noundef 40) #29
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.ae, ptr %2, align 8
  store i32 %i.ap, ptr %i.r, align 8
  %i.aq = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ar = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.o
  br i1 %i.as, label %_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo12getHashValueEPKS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm22ConstantPtrAuthKeyTypeC2EPKNS_15ConstantPtrAuthERNS_15SmallVectorImplIPNS_8ConstantEEE.exit
  call void @free(ptr noundef %i.ar) #29
  br label %_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo12getHashValueEPKS1_.exit.i

_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo12getHashValueEPKS1_.exit.i: ; preds = %bb.c, %_ZN4llvm22ConstantPtrAuthKeyTypeC2EPKNS_15ConstantPtrAuthERNS_15SmallVectorImplIPNS_8ConstantEEE.exit
  %i.at = trunc i64 %i.aq to i32
  %i.au = xor i32 %i.at, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.au, %_ZN4llvm17ConstantUniqueMapINS_15ConstantPtrAuthEE7MapInfo12getHashValueEPKS1_.exit.i ], [ %i.bc, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.av = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.aw = lshr i64 %i.av, 5                       ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !117 ; 2 uses
  %i.az = and i32 %.0.i7, 31                      ; 2 uses
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  %i.bc = add i32 %.0.i7, 1
  br i1 %i.bb, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1800

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.av
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !322
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !322
  %i.bg = shl nuw i32 1, %i.az
  %i.bh = or i32 %i.bg, %i.ay
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !117
  %i.bi = add i32 %.0.i20, -1
  %i.bj = and i32 %i.bi, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %_ZN4llvm22ConstantPtrAuthKeyTypeC2EPKNS_15ConstantPtrAuthERNS_15SmallVectorImplIPNS_8ConstantEEE.exit, !llvm.loop !1801

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1802

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre31 = load i32, ptr %i.d, align 4, !tbaa !333
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bk = phi i32 [ %.pre31, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !1791
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !1791
  %i.bo = icmp eq i32 %i.bk, 0
  br i1 %i.bo, label %_ZN4llvm8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !330
  %i.bq = zext i32 %i.bk to i64                   ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15ConstantPtrAuthENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22ConstantPtrAuthKeyTypeC2EPKNS_15ConstantPtrAuthERNS_15SmallVectorImplIPNS_8ConstantEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds i8, ptr %1, i64 -160
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.f = load i32, ptr %i.c, align 4, !tbaa !120
  %.not.i = icmp ult i32 %i.e, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.d)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %2, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store ptr %i.d, ptr %i.i, align 1
  %i.j = load i32, ptr %i.b, align 8, !tbaa !51
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 -128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !120
  %.not.i.1 = icmp ult i32 %i.l, %i.o
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !163

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.n)
  %.pre10 = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  %i.p = zext i32 %i.l to i64
  %i.q = load ptr, ptr %2, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  store ptr %i.n, ptr %i.r, align 1
  %i.s = load i32, ptr %i.b, align 8, !tbaa !51
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1: ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ %i.t, %bb.e ], [ %.pre10, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %1, i64 -96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !120
  %.not.i.2 = icmp ult i32 %i.u, %i.x
  br i1 %.not.i.2, label %bb.g, label %bb.f, !prof !163

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  %.pre11 = load i32, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1
  %i.y = zext i32 %i.u to i64
  %i.z = load ptr, ptr %2, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  store ptr %i.w, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !51
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2: ; preds = %bb.g, %bb.f
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ %.pre11, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !120
  %.not.i.3 = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i.3, label %bb.i, label %bb.h, !prof !163

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.af)
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E9insert_asISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEESE_INS_16DenseMapIteratorIS3_S5_S8_SA_Lb0EEEbEOSE_IS3_S5_ERKT_:bb.a
  %i.au = load ptr, ptr %1, align 8, !tbaa !275   ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = lshr i64 %i.ay, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !117
  %i.bf = or i32 %i.bb, %i.be
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !117
  %i.bg = load i32, ptr %i.al, align 8, !tbaa !1822
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.al, align 8, !tbaa !1822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !292
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !292
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEPSA_RKT_SK_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEbRKT_RPSA_.exit
  %.sink26 = phi ptr [ %i.au, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEPSA_RKT_SK_.exit ], [ %i.ai, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEbRKT_RPSA_.exit ] ; 2 uses
  %.sink25 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEPSA_RKT_SK_.exit ], [ %i.t, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEbRKT_RPSA_.exit ]
  %.sink22 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEPSA_RKT_SK_.exit ], [ %i.aj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEbRKT_RPSA_.exit ]
  %.sink = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E22findBucketForInsertionISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEPSA_RKT_SK_.exit ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEbRKT_RPSA_.exit ]
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !290, !noalias !19
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sink26, i64 %i.bk
  store ptr %.sink25, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink22, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.bm, align 8, !tbaa !1823
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E15LookupBucketForISt4pairIjSE_IPNS_4TypeENS_19ConstantExprKeyTypeEEEEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !275, !noalias !1826 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !1826 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !290, !noalias !1826 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !1125
  %.025 = and i32 %i.h, %i.g                      ; 3 uses
  %i.i = zext i32 %.025 to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117
  %i.n = and i32 %.025, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !162

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread
  %i.s = phi ptr [ %i.j, %.lr.ph ], [ %i.aa, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread ] ; 2 uses
  %.026 = phi i32 [ %.025, %.lr.ph ], [ %.0, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread ]
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292  ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !1116
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit, label %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread, !prof !1137

_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit: ; preds = %bb.c
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm19ConstantExprKeyTypeeqEPKNS_12ConstantExprE(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull %i.t)
  br i1 %i.x, label %.thread, label %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread, !prof !1138

_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread: ; preds = %bb.c, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit
  %i.y = add nuw i32 %.026, 1
  %.0 = and i32 %i.y, %i.g                        ; 3 uses
  %i.z = zext i32 %.0 to i64                      ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !117
  %i.ae = and i32 %.0, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.c, label %.thread, !prof !164, !llvm.loop !1817

.thread:                                          ; preds = %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread, %bb.b, %bb.a
  %.lcssa31.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ], [ %i.aa, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread ], [ %i.s, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit.thread ], [ true, %_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo7isEqualERKSt4pairIjS4_IPNS_4TypeENS_19ConstantExprKeyTypeEEEPKS1_.exit ]
  store ptr %.lcssa31.sink, ptr %2, align 8, !tbaa !1821
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.315", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !290
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !275
  store ptr %i.y, ptr %i.q, align 8, !tbaa !289
  store i32 0, ptr %i.p, align 16, !tbaa !1822
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !460
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1821
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !460
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !460
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !117 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !117
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !117
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !117
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !117
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !275
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !290  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !289  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !275
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !290
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !292
  %i.w = tail call noundef i32 @_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo12getHashValueEPKS1_(ptr noundef %i.v)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117 ; 2 uses
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1831

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !292
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !292
  %i.ai = shl nuw i32 1, %i.ab
  %i.aj = or i32 %i.ai, %i.aa
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !117
  %i.ak = add i32 %.0.i18, -1
  %i.al = and i32 %i.ak, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1832

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS2_E7MapInfoENS4_12DenseSetPairIS3_EEEES3_S5_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1833

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !290
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1822
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !1822
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.ar = load ptr, ptr %1, align 8, !tbaa !275
  %i.as = zext i32 %i.am to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.as, 31
  %i.av = lshr i64 %i.au, 3
  %i.aw = and i64 %i.av, 1073741820
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ar, i64 noundef %i.ax, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS1_E7MapInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12ConstantExprENS_6detail13DenseSetEmptyENS_17ConstantUniqueMapIS5_E7MapInfoENS7_12DenseSetPairIS6_EEEES6_S8_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm17ConstantUniqueMapINS_12ConstantExprEE7MapInfo12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"struct.std::array.818", align 1   ; 8 uses
  %3 = alloca %"class.llvm::SmallVector.46", align 8 ; 8 uses
  %4 = alloca %"struct.llvm::ConstantExprKeyType", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN4llvm19ConstantExprKeyTypeC2EPKNS_12ConstantExprERNS_15SmallVectorImplIPNS_8ConstantEEE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.sroa.4.8.copyload = load i8, ptr %4, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.6.8.copyload = load i8, ptr %.sroa.6.8..sroa_idx, align 1
  %.sroa.72.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.72.8.copyload = load ptr, ptr %.sroa.72.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.11.8.copyload = load ptr, ptr %.sroa.11.8..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !453, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEEC2IS2_S3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59
  %i.l = load i64, ptr %i.i, align 8
  store i32 0, ptr %i.j, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %i.p = load i64, ptr %i.m, align 8
  store i32 0, ptr %i.n, align 8, !tbaa !59
  %i.q = icmp ult i32 %i.o, 65
  %i.r = inttoptr i64 %i.p to ptr
  %i.s = icmp ult i32 %i.k, 65
  %i.t = inttoptr i64 %i.l to ptr
  br label %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEEC2IS2_S3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit

_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEEC2IS2_S3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit: ; preds = %bb.a, %bb.b
  %.sroa.18.0 = phi i1 [ %i.q, %bb.b ], [ true, %bb.a ]
  %.sroa.163.0 = phi ptr [ %i.r, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.sroa.14.0 = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]
  %.sroa.12.0 = phi ptr [ %i.t, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.8.8.copyload, 3
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %.sroa.72.8.copyload, i64 noundef %.idx.i.i.i) #29
  %i.v = xor i64 %i.u, -49064778989728563
  %.idx.i1.i.i = shl nuw nsw i64 %.sroa.10.8.copyload, 2
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %.sroa.9.8.copyload, i64 noundef %.idx.i1.i.i) #29
  %i.x = xor i64 %i.w, -49064778989728563
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 %.sroa.4.8.copyload, ptr %2, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %.sroa.6.8.copyload, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i64 %i.v, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i64 %i.x, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 18
  store ptr %.sroa.11.8.copyload, ptr %i.ab, align 1
  %i.ac = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = xor i32 %i.ad, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %i.e, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %i.h, label %bb.c, label %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEED2Ev.exit

bb.c:                                             ; preds = %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEEC2IS2_S3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit
  %i.ah = icmp eq ptr %.sroa.163.0, null
  %or.cond = select i1 %.sroa.18.0, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %.sroa.163.0) #32
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i:            ; preds = %bb.d, %bb.c
  %i.ai = icmp eq ptr %.sroa.12.0, null
  %or.cond5 = select i1 %.sroa.14.0, i1 true, i1 %i.ai
  br i1 %or.cond5, label %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.12.0) #32
  br label %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEED2Ev.exit

_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEED2Ev.exit: ; preds = %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEEC2IS2_S3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit, %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ak = load i8, ptr %i.f, align 8, !tbaa !453, !range !18, !noundef !19
  %i.al = trunc nuw i8 %i.ak to i1
  store i8 0, ptr %i.f, align 8, !tbaa !453
  br i1 %i.al, label %bb.f, label %_ZN4llvm19ConstantExprKeyTypeD2Ev.exit

bb.f:                                             ; preds = %_ZNSt4pairIPN4llvm4TypeENS0_19ConstantExprKeyTypeEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.an = load i32, ptr %i.am, align 8, !tbaa !59
  %i.ao = icmp ugt i32 %i.an, 64
  br i1 %i.ao, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #32
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i

end_hunk_11
