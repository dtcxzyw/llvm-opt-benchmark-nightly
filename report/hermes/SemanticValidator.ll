inline.NumInlined: 5065
inline.NumDeleted: 2157
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %.not.i.i.i.i15 = icmp eq i32 %i.aa, 0          ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = select i1 %.not.i.i.i.i15, ptr %i.ab, ptr %i.d ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8
  %i.ae = select i1 %.not.i.i.i.i15, i32 %i.ad, i32 8 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %magicptr to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = lshr i32 %i.ag, 9
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ae, -1                       ; 2 uses
  %.02945.i.i = and i32 %i.ak, %i.aj              ; 2 uses
  %i.al = zext nneg i32 %.02945.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !382 ; 2 uses
  %i.ao = icmp eq ptr %i.y, %i.an
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !403

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ap = phi ptr [ %i.az, %bb.d ], [ %i.an, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %i.ay, %bb.d ], [ %i.am, %bb.b ] ; 2 uses
  %.02948.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02945.i.i, %bb.b ]
  %.02747.i.i = phi i32 [ %i.av, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03246.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.ar = icmp eq ptr %i.ap, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %bb.c, label %bb.d, !prof !203

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03246.i.i, null
  %i.as = select i1 %.not.i.i, ptr %i.aq, ptr %.03246.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp eq ptr %i.ap, inttoptr (i64 -16 to ptr)
  %i.au = icmp eq ptr %.03246.i.i, null
  %or.cond.not.i.i = select i1 %i.at, i1 %i.au, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.aq, ptr %.03246.i.i
  %i.av = add i32 %.02747.i.i, 1
  %i.aw = add i32 %.02747.i.i, %.02948.i.i
  %.029.i.i = and i32 %i.aw, %i.ak                ; 2 uses
  %i.ax = zext i32 %.029.i.i to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ax ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !382 ; 2 uses
  %i.ba = icmp eq ptr %i.y, %i.az
  br i1 %i.ba, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !404, !llvm.loop !1563

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.as, %bb.c ], [ %i.am, %bb.b ], [ %i.ay, %bb.d ] ; 2 uses
  store ptr %i.y, ptr %.sink.i.i, align 8, !tbaa !382
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !206
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !206
  %i.be = load i32, ptr %0, align 8               ; 2 uses
  %i.bf = and i32 %i.be, -2
  %i.bg = add i32 %i.bf, 2
  %i.bh = and i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bj, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1567
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E11try_emplaceIJRKjEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.248") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !488    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !489  ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !382    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !382  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !403

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !203

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

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
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !382 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !404, !llvm.loop !490

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !1551
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !703 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !203

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1568
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !203

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !703
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !1551
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !703
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !382
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1568
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !1568
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %2, align 8, !tbaa !382
  store ptr %i.av, ptr %i.an, align 8, !tbaa !382
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !3
  %i.ay = load ptr, ptr %1, align 8, !tbaa !488
  %i.az = load i32, ptr %i.c, align 8, !tbaa !489
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.ay, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16InsertIntoBucketIRKS5_JRKjEEEPSA_SI_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.ba = zext i32 %.sink34 to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sink32, i64 %i.ba
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bc, align 8, !tbaa !731
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !489  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !488    ; 4 uses
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
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !489
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !488
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !703
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !1568
  %i.w = load i32, ptr %i.a, align 8, !tbaa !489  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

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
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !382
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1569

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !382
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !382
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !382
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !382
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !382
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !382
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !382
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !382
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !1570

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !703
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !1568
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !489 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

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
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !382
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1571

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !382
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !382
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !382
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !382
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !382
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !382
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !382
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1570

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cg, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ch, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !382 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %2 = load i32, ptr %i.a, align 8, !tbaa !489    ; 2 uses
  %3 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %3)
  %i.bi = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = lshr i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk
  %4 = add i32 %2, -1                             ; 2 uses
  %.02944.i.i.i = and i32 %4, %i.bl               ; 2 uses
  %i.bm = zext nneg i32 %.02944.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !382 ; 2 uses
  %i.bp = icmp eq ptr %i.bh, %i.bo
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !403

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi ptr [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq ptr %i.bq, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !203

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq ptr %i.bq, inttoptr (i64 -16 to ptr)
  %i.bv = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  %i.bw = add i32 %.02746.i.i.i, 1
  %i.bx = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bx, %4                 ; 2 uses
  %i.by = zext i32 %.029.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !382 ; 2 uses
  %i.cb = icmp eq ptr %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !404, !llvm.loop !490

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !382
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !3
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !703
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6, !llvm.loop !1572

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #20
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !702  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !711    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #26
  unreachable

_ZNKSt6vectorISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !694
  store ptr %i.r, ptr %i.q, align 8, !tbaa !694
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.t, ptr %i.s, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 4, ptr %i.v, align 4, !tbaa !139
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !138
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes6ESTree23FunctionDeclarationNodeEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.y) ; 0 uses
  br label %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit

_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit: ; preds = %_ZNKSt6vectorISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESaISB_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit ] ; 7 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit ] ; 5 uses
  %i.aa = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !694
  store ptr %i.aa, ptr %.011.i.i.i.i.i, align 8, !tbaa !694
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !138
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 20
  store i32 4, ptr %i.af, align 4, !tbaa !139
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !138 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %i.ai = icmp eq ptr %.011.i.i.i.i.i, %.0810.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ai, %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = icmp ugt i32 %i.ah, 4
  br i1 %i.aj, label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ak = zext i32 %i.ah to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.ak, i64 noundef 8) #20
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i

_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !136
  br label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i, %bb.d
  %i.al = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ad, %bb.d ]
  %i.am = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ah, %bb.d ]
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !136
  %gepdiff.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 8 %i.ao, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i, %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !138
  br label %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1573

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS0_6ESTree23FunctionDeclarationNodeELj4EEEEC2EOSA_.exit ], [ %i.aq, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit35, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27
  %.011.i.i.i.i.i20 = phi ptr [ %i.bi, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27 ], [ %i.ar, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit ] ; 7 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.bh, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit ] ; 5 uses
  %i.as = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !694
  store ptr %i.as, ptr %.011.i.i.i.i.i20, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 24 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !136
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !138
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 20
  store i32 4, ptr %i.ax, align 4, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !138 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i22 = icmp eq i32 %i.az, 0
  %i.ba = icmp eq ptr %.011.i.i.i.i.i20, %.0810.i.i.i.i.i21
  %or.cond.i.i.i.i.i.i.i.i23 = or i1 %i.ba, %.not.i.i.i.i.i.i.i.i.i22
  br i1 %or.cond.i.i.i.i.i.i.i.i23, label %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.bb = icmp ugt i32 %i.az, 4
  br i1 %i.bb, label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i30, label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i24

_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i30: ; preds = %bb.e
  %i.bc = zext i32 %i.az to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull %i.av, i64 noundef %i.bc, i64 noundef 8) #20
  %.pre.i.i.i.i.i.i.i.i31 = load i32, ptr %i.ay, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %.pre.i.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i32, label %.sink.split.i.i.i.i.i.i.i.i.i26, label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i33

_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i33: ; preds = %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i30
  %.pre.i.i.i.i.i.i.i34 = load ptr, ptr %i.at, align 8, !tbaa !136
  br label %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i24

_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i24: ; preds = %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i33, %bb.e
  %i.bd = phi ptr [ %.pre.i.i.i.i.i.i.i34, %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i33 ], [ %i.av, %bb.e ]
  %i.be = phi i32 [ %.pre.i.i.i.i.i.i.i.i31, %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i33 ], [ %i.az, %bb.e ]
  %i.bf = zext i32 %i.be to i64
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !136
  %gepdiff.i.i.i.i.i.i.i.i.i25 = shl nuw nsw i64 %i.bf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 8 %i.bg, i64 %gepdiff.i.i.i.i.i.i.i.i.i25, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i26

.sink.split.i.i.i.i.i.i.i.i.i26:                  ; preds = %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i24, %_ZSt4copyIPKPN6hermes6ESTree23FunctionDeclarationNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i30
  store i32 %i.az, ptr %i.aw, align 8, !tbaa !138
  br label %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27

_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i19
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 56 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit35, label %.lr.ph.i.i.i.i.i19, !llvm.loop !1573

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit35: ; preds = %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit
  %.0.lcssa.i.i.i.i.i29 = phi ptr [ %i.ar, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEESC_SaISB_EET0_T_SF_SE_RT1_.exit ], [ %i.bi, %_ZSt10_ConstructISt4pairIPKN6hermes12UniqueStringEN4llvh11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i27 ]
end_hunk_0
