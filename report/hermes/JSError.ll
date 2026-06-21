inline.NumInlined: 1842
inline.NumDeleted: 1067
begin_hunk_0_@_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E11try_emplaceIJjEEESt4pairINS_16DenseMapIteratorIS6_jS8_SB_Lb0EEEbEOS6_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.289") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !335    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !561  ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !373    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !373  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !562

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !373 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !563, !llvm.loop !564

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !565
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !566 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !567
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !69

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !566
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !565
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !566
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !373
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !567
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !567
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %2, align 8, !tbaa !373
  store ptr %i.av, ptr %i.an, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !3
  %i.ay = load ptr, ptr %1, align 8, !tbaa !335
  %i.az = load i32, ptr %i.c, align 8, !tbaa !561
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.ay, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIS6_JjEEEPSB_SF_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.ba = zext i32 %.sink34 to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sink32, i64 %i.ba
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bc, align 8, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !335    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !561  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !373    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !373  ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !562

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !373  ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !563, !llvm.loop !564

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !565
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !561  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !335    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !561
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !335
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !566
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !567
  %i.w = load i32, ptr %i.a, align 8, !tbaa !561  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !373
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !568

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !373
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !373
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !373
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !373
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !373
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !373
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !373
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !373
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !569

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !566
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !567
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !561 ; 4 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !570

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !373
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !373
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !373
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !373
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !373
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !373
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !373
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !373
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !569

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i
  %2 = icmp ne i32 %i.aq, 0
  %3 = add i32 %i.aq, -1                          ; 2 uses
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %bb.f
  %i.bg = phi i32 [ %i.cg, %bb.f ], [ 0, %.lr.ph.i6.preheader ] ; 3 uses
  %.020.i = phi ptr [ %i.ch, %bb.f ], [ %i.c, %.lr.ph.i6.preheader ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !373 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  tail call void @llvm.assume(i1 %2)
  %i.bi = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = lshr i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk
  %.02944.i.i.i = and i32 %i.bl, %3               ; 2 uses
  %i.bm = zext nneg i32 %.02944.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !373 ; 2 uses
  %i.bp = icmp eq ptr %i.bh, %i.bo
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !562

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi ptr [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq ptr %i.bq, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !69

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq ptr %i.bq, inttoptr (i64 -16 to ptr)
  %i.bv = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  %i.bw = add i32 %.02746.i.i.i, 1
  %i.bx = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bx, %3                 ; 2 uses
  %i.by = zext i32 %.029.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !373 ; 2 uses
  %i.cb = icmp eq ptr %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !563, !llvm.loop !564

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !373
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !3
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !566
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6, !llvm.loop !571

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #17
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E18moveFromOldBucketsEPSB_SE_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm14StackTraceInfoESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTSN6hermes2vm14StackTraceInfoE", !9, i64 0}
!13 = !{!11, !12, i64 16}
!14 = !{!15, !16, i64 4}
!15 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !16, i64 4}
!16 = !{!"bool", !5, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!16, !16, i64 0}
!20 = !{!21, !36, i64 216}
!21 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !22, i64 0, !23, i64 8, !23, i64 56, !23, i64 104, !23, i64 152, !33, i64 200, !15, i64 208, !36, i64 216}
!22 = !{!"p1 omnipotent char", !9, i64 0}
!23 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !24, i64 0}
!24 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !25, i64 0}
!25 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !26, i64 0, !28, i64 8}
!26 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !27, i64 0}
!27 = !{!"_ZTSSt4lessIhE"}
!28 = !{!"_ZTSSt15_Rb_tree_header", !29, i64 0, !32, i64 32}
!29 = !{!"_ZTSSt18_Rb_tree_node_base", !30, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!30 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!31 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !34, i64 0, !16, i64 4}
!34 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !35, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!35 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!36 = !{!"p1 _ZTSN6hermes2vm6VTableE", !9, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !9, i64 0}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !41, i64 8}
!41 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !9, i64 0}
!42 = !{!43, !41, i64 8}
!43 = !{!"_ZTSN6hermes2vm7GCScopeE", !38, i64 0, !41, i64 8, !5, i64 16, !44, i64 144, !50, i64 192, !50, i64 200, !4, i64 208}
!44 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !45, i64 0, !49, i64 16}
!45 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !46, i64 0}
!46 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !48, i64 0}
!48 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!49 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!50 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !9, i64 0}
!51 = !{!48, !9, i64 0}
!52 = !{!48, !4, i64 12}
!53 = !{!48, !4, i64 8}
!54 = !{!43, !50, i64 192}
!55 = !{!43, !50, i64 200}
!56 = !{!43, !4, i64 208}
!57 = !{!58, !50, i64 0}
!58 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !50, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!62 = !{!32, !32, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_: argument 0"}
!65 = distinct !{!65, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_"}
!66 = !{!5, !5, i64 0}
!67 = !{!68, !4, i64 4}
!68 = !{!"_ZTSN6hermes2vm18PropertyDescriptorE", !5, i64 0, !4, i64 4}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!71, !32, i64 0}
!71 = !{!"_ZTSN6hermes2vm11HermesValueE", !32, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!75, !32, i64 9480}
!75 = !{!"_ZTSN6hermes2vm7RuntimeE", !40, i64 0, !76, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !77, i64 144, !77, i64 152, !77, i64 160, !77, i64 168, !77, i64 176, !77, i64 184, !77, i64 192, !77, i64 200, !77, i64 208, !77, i64 216, !77, i64 224, !77, i64 232, !77, i64 240, !77, i64 248, !77, i64 256, !77, i64 264, !77, i64 272, !77, i64 280, !77, i64 288, !77, i64 296, !77, i64 304, !77, i64 312, !77, i64 320, !77, i64 328, !77, i64 336, !77, i64 344, !77, i64 352, !77, i64 360, !77, i64 368, !77, i64 376, !77, i64 384, !77, i64 392, !77, i64 400, !77, i64 408, !77, i64 416, !77, i64 424, !77, i64 432, !77, i64 440, !77, i64 448, !77, i64 456, !77, i64 464, !77, i64 472, !77, i64 480, !77, i64 488, !77, i64 496, !77, i64 504, !77, i64 512, !77, i64 520, !77, i64 528, !77, i64 536, !77, i64 544, !77, i64 552, !77, i64 560, !77, i64 568, !77, i64 576, !77, i64 584, !77, i64 592, !77, i64 600, !77, i64 608, !77, i64 616, !77, i64 624, !77, i64 632, !77, i64 640, !77, i64 648, !77, i64 656, !77, i64 664, !77, i64 672, !77, i64 680, !77, i64 688, !77, i64 696, !77, i64 704, !77, i64 712, !77, i64 720, !77, i64 728, !77, i64 736, !78, i64 744, !78, i64 752, !79, i64 760, !16, i64 824, !16, i64 824, !16, i64 824, !16, i64 824, !16, i64 824, !84, i64 825, !85, i64 832, !92, i64 840, !97, i64 856, !216, i64 8968, !221, i64 8992, !226, i64 9016, !226, i64 9040, !16, i64 9064, !16, i64 9065, !16, i64 9066, !16, i64 9067, !16, i64 9068, !16, i64 9069, !16, i64 9070, !5, i64 9071, !16, i64 9072, !16, i64 9073, !4, i64 9076, !114, i64 9080, !5, i64 9088, !119, i64 9224, !4, i64 9232, !231, i64 9240, !246, i64 9328, !251, i64 9360, !258, i64 9368, !258, i64 9376, !259, i64 9384, !260, i64 9392, !265, i64 9408, !266, i64 9416, !50, i64 9432, !50, i64 9440, !50, i64 9448, !103, i64 9456, !268, i64 9472, !269, i64 9480, !270, i64 9496, !5, i64 9560, !271, i64 9568, !275, i64 9592, !280, i64 9616, !16, i64 9640, !285, i64 9648, !4, i64 9728, !4, i64 9732, !292, i64 9736, !299, i64 9744, !301, i64 9752, !306, i64 9776, !307, i64 9808}
!76 = !{!"_ZTSN6hermes2vm6GCBase11GCCallbacksE"}
!77 = !{!"_ZTSN6hermes2vm17PinnedHermesValueE", !71, i64 0}
!78 = !{!"p1 _ZTSN6hermes2vm8JSObjectE", !9, i64 0}
!79 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !80, i64 0, !83, i64 16}
!80 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEE", !81, i64 0}
!81 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EEE", !82, i64 0}
!82 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEvEE", !48, i64 0}
!83 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !5, i64 0}
!84 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_ELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !90, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm16SamplingProfilerELb0EE", !91, i64 0}
!91 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !9, i64 0}
!92 = !{!"_ZTSSt10shared_ptrIN6hermes2vm16TimeLimitMonitorEE", !93, i64 0}
!93 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !95, i64 8}
!94 = !{!"p1 _ZTSN6hermes2vm16TimeLimitMonitorE", !9, i64 0}
!95 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0}
!96 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!97 = !{!"_ZTSN6hermes2vm9GCStorageE", !98, i64 0}
!98 = !{!"_ZTSN6hermes2vm7HadesGCE", !99, i64 0, !32, i64 720, !32, i64 728, !142, i64 736, !147, i64 760, !150, i64 776, !153, i64 808, !156, i64 816, !119, i64 840, !162, i64 848, !131, i64 7520, !182, i64 7560, !184, i64 7568, !190, i64 7632, !16, i64 7633, !191, i64 7640, !198, i64 7648, !16, i64 7656, !16, i64 7657, !16, i64 7658, !16, i64 7659, !119, i64 7664, !125, i64 7672, !205, i64 7688, !205, i64 7696, !117, i64 7704, !117, i64 7864, !125, i64 8024, !32, i64 8040, !212, i64 8048, !32, i64 8096, !215, i64 8104}
!99 = !{!"_ZTSN6hermes2vm6GCBaseE", !4, i64 8, !32, i64 16, !100, i64 24, !101, i64 32, !102, i64 40, !103, i64 48, !106, i64 64, !107, i64 72, !109, i64 104, !16, i64 128, !16, i64 129, !16, i64 130, !16, i64 131, !114, i64 136, !116, i64 144, !32, i64 152, !32, i64 160, !117, i64 168, !121, i64 328, !123, i64 360, !127, i64 408, !130, i64 456, !5, i64 656, !141, i64 680, !4, i64 712, !16, i64 716}
!100 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!101 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !9, i64 0}
!102 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !9, i64 0}
!103 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !104, i64 0}
!104 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !95, i64 8}
!105 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !9, i64 0}
!106 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!107 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !108, i64 0, !9, i64 24}
!108 = !{!"_ZTSSt14_Function_base", !5, i64 0, !9, i64 16}
!109 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !9, i64 0}
!114 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !115, i64 0}
!115 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !32, i64 0}
!116 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !32, i64 0}
!117 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !4, i64 0, !118, i64 8, !118, i64 48, !4, i64 88, !120, i64 96, !120, i64 128}
!118 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !4, i64 0, !119, i64 8, !119, i64 16, !119, i64 24, !119, i64 32}
!119 = !{!"double", !5, i64 0}
!120 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !4, i64 0, !32, i64 8, !4, i64 16, !4, i64 20, !119, i64 24}
!121 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !122, i64 0, !32, i64 8, !5, i64 16}
!122 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!123 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !124, i64 0, !32, i64 8, !125, i64 16, !126, i64 32, !119, i64 40}
!124 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE5ChunkE", !9, i64 0}
!125 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !119, i64 0, !119, i64 8}
!126 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !9, i64 0}
end_hunk_0
