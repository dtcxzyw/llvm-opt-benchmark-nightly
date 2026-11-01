Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SemanticValidator?download=true
inline.NumInlined: 5062
inline.NumDeleted: 2157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbEOS4_DpOT_:bb.a
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 8 ; 9 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !284    ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.i, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.p, %i.q                ; 2 uses
  %i.r = zext nneg i32 %.02745.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !284  ; 2 uses
  %i.u = icmp eq ptr %i.k, %i.t
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i, !prof !293

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.v = phi ptr [ %i.af, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.x, label %bb.c, label %bb.d, !prof !175

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.y = select i1 %.not.i.i, ptr %i.w, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp eq ptr %i.v, inttoptr (i64 -16 to ptr)
  %i.aa = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.w, ptr %.02946.i.i
  %i.ab = add i32 %.047.i.i, 1
  %i.ac = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ac, %i.q                 ; 2 uses
  %i.ad = zext i32 %.027.i.i to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !284 ; 2 uses
  %i.ag = icmp eq ptr %i.k, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i, !prof !294, !llvm.loop !9

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.y, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !436
  %i.ah = lshr i32 %i.b, 1                        ; 2 uses
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.i, 3
  %.not.i.i6 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i6, label %bb.f, label %bb.e, !prof !175

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.al = shl i32 %i.i, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !309
  %.neg.i.i = xor i32 %i.ah, -1
  %.neg13.i.i = add i32 %i.i, %.neg.i.i
  %i.ao = sub i32 %.neg13.i.i, %i.an
  %i.ap = lshr i32 %i.i, 3
  %.not10.i.i = icmp ugt i32 %i.ao, %i.ap
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !175

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i7 = phi i32 [ %i.al, %bb.e ], [ %i.i, %bb.f ]
  tail call void @_ZN4llvh13SmallDenseMapIPN6hermes12UniqueStringEPNS1_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %.sink.i.i7)
  %i.aq = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %1, align 8             ; 2 uses
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !436
  %.pre10.i = and i32 %.pre.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %.pre-phi.i = phi i32 [ %.pre10.i, %.sink.split.i.i ], [ %i.c, %bb.f ]
  %i.ar = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.as = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.b, %bb.f ]
  %i.at = and i32 %i.as, -2
  %i.au = add i32 %i.at, 2
  %i.av = or disjoint i32 %i.au, %.pre-phi.i
  store i32 %i.av, ptr %1, align 8
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !284
  %i.ax = icmp eq ptr %i.aw, inttoptr (i64 -8 to ptr)
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !309
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !309
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load ptr, ptr %2, align 8, !tbaa !284
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !284
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load ptr, ptr %3, align 8, !tbaa !179
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !179
  %i.be = load i32, ptr %1, align 8
  %i.bf = and i32 %i.be, 1
  %.not.i.i.i.i8 = icmp eq i32 %i.bf, 0           ; 2 uses
  %i.bg = load ptr, ptr %i.d, align 8
  %i.bh = select i1 %.not.i.i.i.i8, ptr %i.bg, ptr %i.d
  %i.bi = load i32, ptr %i.g, align 8
  %i.bj = select i1 %.not.i.i.i.i8, i32 %i.bi, i32 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit
  %.sink37 = phi i32 [ %i.bj, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.d ]
  %.sink35 = phi ptr [ %i.bh, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.d ]
  %.sink34 = phi ptr [ %i.ar, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit ], [ %i.s, %bb.b ], [ %i.ae, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JS7_EEEPSC_SG_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.bk = zext i32 %.sink37 to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sink35, i64 %i.bk
  store ptr %.sink34, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bm, align 8, !tbaa !317
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i, i32 %i.g, i32 8   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPKSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !284    ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.h, -1                         ; 2 uses
  %.02745.i = and i32 %i.o, %i.p                  ; 2 uses
  %i.q = zext nneg i32 %.02745.i to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !284  ; 2 uses
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !293

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.u = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.d ], [ %i.r, %bb.b ] ; 2 uses
  %.02748.i = phi i32 [ %.027.i, %bb.d ], [ %.02745.i, %bb.b ]
  %.047.i = phi i32 [ %i.aa, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.w = icmp eq ptr %i.u, inttoptr (i64 -8 to ptr)
  br i1 %i.w, label %bb.c, label %bb.d, !prof !175

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02946.i, null
  %i.x = select i1 %.not.i, ptr %i.v, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPKSC_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp eq ptr %i.u, inttoptr (i64 -16 to ptr)
  %i.z = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.v, ptr %.02946.i
  %i.aa = add i32 %.047.i, 1
  %i.ab = add i32 %.047.i, %.02748.i
  %.027.i = and i32 %i.ab, %i.p                   ; 2 uses
  %i.ac = zext i32 %.027.i to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !284 ; 2 uses
  %i.af = icmp eq ptr %i.j, %i.ae
  br i1 %i.af, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !294, !llvm.loop !9

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPKSC_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.x, %bb.c ], [ null, %bb.a ], [ %i.r, %bb.b ], [ %i.ad, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !436
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPN6hermes12UniqueStringEPNS1_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.244", align 8 ; 8 uses
  %i.a = icmp ugt i32 %1, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 4
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 8
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 16
  %i.m = or i64 %i.l, %i.k
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.o, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.027, 8
  br i1 %i.r, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !284  ; 2 uses
  %magicptr = ptrtoint ptr %i.t to i64
  switch i64 %magicptr, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %2, align 8, !tbaa !284
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  store ptr %5, ptr %3, align 8, !tbaa !179
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.1 = phi ptr [ %2, %bb.e ], [ %2, %bb.e ], [ %i.u, %bb.f ] ; 5 uses
  %.0.ptr38.1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %.0.ptr38.1, align 8, !tbaa !284 ; 2 uses
  %magicptr.1 = ptrtoint ptr %i.v to i64
  switch i64 %magicptr.1, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %.1, align 8, !tbaa !284
  %6 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  store ptr %8, ptr %6, align 8, !tbaa !179
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g
  %.1.1 = phi ptr [ %.1, %bb.g ], [ %.1, %bb.g ], [ %i.w, %bb.h ] ; 5 uses
  %.0.ptr38.2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %.0.ptr38.2, align 8, !tbaa !284 ; 2 uses
  %magicptr.2 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.2, label %bb.j [
    i64 -8, label %bb.k
    i64 -16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store ptr %i.x, ptr %.1.1, align 8, !tbaa !284
  %i.y = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.1.2 = phi ptr [ %.1.1, %bb.i ], [ %.1.1, %bb.i ], [ %i.ab, %bb.j ] ; 5 uses
  %.0.ptr38.3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %.0.ptr38.3, align 8, !tbaa !284 ; 2 uses
  %magicptr.3 = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.3, label %bb.l [
    i64 -8, label %bb.m
    i64 -16, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store ptr %i.ac, ptr %.1.2, align 8, !tbaa !284
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !179
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.2, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k
  %.1.3 = phi ptr [ %.1.2, %bb.k ], [ %.1.2, %bb.k ], [ %i.ag, %bb.l ] ; 5 uses
  %.0.ptr38.4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %.0.ptr38.4, align 8, !tbaa !284 ; 2 uses
  %magicptr.4 = ptrtoint ptr %i.ah to i64
  switch i64 %magicptr.4, label %bb.n [
    i64 -8, label %bb.o
    i64 -16, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  store ptr %i.ah, ptr %.1.3, align 8, !tbaa !284
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !179
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !179
  %i.al = getelementptr inbounds nuw i8, ptr %.1.3, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.m
  %.1.4 = phi ptr [ %.1.3, %bb.m ], [ %.1.3, %bb.m ], [ %i.al, %bb.n ] ; 5 uses
  %.0.ptr38.5 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %.0.ptr38.5, align 8, !tbaa !284 ; 2 uses
  %magicptr.5 = ptrtoint ptr %i.am to i64
  switch i64 %magicptr.5, label %bb.p [
    i64 -8, label %bb.q
    i64 -16, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  store ptr %i.am, ptr %.1.4, align 8, !tbaa !284
  %i.an = getelementptr inbounds nuw i8, ptr %.1.4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !179
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !179
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.4, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.o
  %.1.5 = phi ptr [ %.1.4, %bb.o ], [ %.1.4, %bb.o ], [ %i.aq, %bb.p ] ; 5 uses
  %.0.ptr38.6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %.0.ptr38.6, align 8, !tbaa !284 ; 2 uses
  %magicptr.6 = ptrtoint ptr %i.ar to i64
  switch i64 %magicptr.6, label %bb.r [
    i64 -8, label %bb.s
    i64 -16, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  store ptr %i.ar, ptr %.1.5, align 8, !tbaa !284
  %i.as = getelementptr inbounds nuw i8, ptr %.1.5, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !179
  store ptr %i.au, ptr %i.as, align 8, !tbaa !179
  %i.av = getelementptr inbounds nuw i8, ptr %.1.5, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %.1.6 = phi ptr [ %.1.5, %bb.q ], [ %.1.5, %bb.q ], [ %i.av, %bb.r ] ; 5 uses
  %.0.ptr38.7 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %.0.ptr38.7, align 8, !tbaa !284 ; 2 uses
  %magicptr.7 = ptrtoint ptr %i.aw to i64
  switch i64 %magicptr.7, label %bb.t [
    i64 -8, label %bb.u
    i64 -16, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  store ptr %i.aw, ptr %.1.6, align 8, !tbaa !284
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.6, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !179
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.6, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.s
  %.1.7 = phi ptr [ %.1.6, %bb.s ], [ %.1.6, %bb.s ], [ %i.ba, %bb.t ]
  %i.bb = load i32, ptr %0, align 8
  %i.bc = and i32 %i.bb, -2
  store i32 %i.bc, ptr %0, align 8
  %i.bd = zext i32 %.027 to i64
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24
  store ptr %i.bf, ptr %i.s, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.027, ptr %i.bg, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.z

bb.v:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bh, align 8, !tbaa !436 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !16
  %i.bi = icmp ult i32 %.027, 9
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = or disjoint i32 %i.p, 1
  store i32 %i.bj, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bk = zext i32 %.027 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 4
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #24
  store ptr %i.bm, ptr %i.bh, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bn = zext i32 %.sroa.6.0.copyload to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.bn
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.bo)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.y, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !309
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = shl nuw nsw i64 %i.j, 4               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.m = lshr exact i64 %i.l, 4
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !284
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
