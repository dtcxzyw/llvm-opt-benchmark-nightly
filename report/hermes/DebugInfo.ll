inline.NumInlined: 835
inline.NumDeleted: 375
begin_hunk_0_@_ZN6hermes3hbc18DebugInfoGenerator12appendStringERSt6vectorIhSaIhEENS_10IdentifierE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E11try_emplaceIJmEEESt4pairINS_16DenseMapIteratorIS4_jS6_S9_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !32     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !35

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

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
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !37, !llvm.loop !38

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !41 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !36

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !36

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !41
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !41
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !13
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !42
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %2, align 8, !tbaa !13
  store ptr %i.av, ptr %i.an, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load i64, ptr %3, align 8, !tbaa !20
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !3
  %i.az = load ptr, ptr %1, align 8, !tbaa !32
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIS4_JmEEEPS9_SD_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.bb = zext i32 %.sink34 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.sink32, i64 %i.bb
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bd, align 8, !tbaa !22
  ret void
}

declare void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK6hermes3hbc9DebugInfo12decodeStringEPjN4llvh8ArrayRefIhEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef captures(none) %1, ptr %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %2, i64 %3, i32 noundef %i.c, ptr noundef nonnull %i.b) #14
  %i.e = load i32, ptr %1, align 4, !tbaa !3
  %i.f = add i32 %i.e, %i.d
  store i32 %i.f, ptr %1, align 4, !tbaa !3
  %i.g = load i64, ptr %i.b, align 8, !tbaa !20
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !43
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !61
  %i.o = sub i64 %i.n, %i.l
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.r = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.q, i64 %i.o, i32 noundef %i.h, ptr noundef nonnull %i.a) #14
  %i.s = add i32 %i.r, %i.h
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.u, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret { ptr, i64 } %.fca.1.insert.i
}

declare noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr, i64, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 8589934592) i64 @_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.f = load i32, ptr %i.e, align 1, !tbaa !65
  %.not.peel = icmp ugt i32 %i.f, %1
  br i1 %.not.peel, label %._crit_edge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.b, 1
  br i1 %exitcond.peel.not, label %._crit_edge.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 1, !tbaa !65
  %.not18 = icmp ugt i32 %i.j, %1
  br i1 %.not18, label %._crit_edge.loopexit, label %.lr.ph20

.peel.next:                                       ; preds = %.lr.ph20
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.l = load i32, ptr %i.k, align 1, !tbaa !65
  %.not = icmp ugt i32 %i.l, %1
  br i1 %.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph20, !llvm.loop !67

.lr.ph20:                                         ; preds = %.peel.next.preheader, %.peel.next
  %i.m = phi ptr [ %i.k, %.peel.next ], [ %i.i, %.peel.next.preheader ] ; 2 uses
  %indvars.iv19 = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.peel.next.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv19, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.._crit_edge.loopexit.loopexit_crit_edge, label %.peel.next, !llvm.loop !67

.._crit_edge.loopexit.loopexit_crit_edge:         ; preds = %.lr.ph20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %._crit_edge.loopexit, !llvm.loop !67

._crit_edge.loopexit.loopexit:                    ; preds = %.peel.next
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.loopexit, %.peel.next.preheader, %.._crit_edge.loopexit.loopexit_crit_edge, %bb.b, %.lr.ph
  %.sroa.06.0.lcssa.ph = phi i32 [ 0, %.lr.ph ], [ %i.h, %bb.b ], [ %i.h, %.peel.next.preheader ], [ %i.o, %.._crit_edge.loopexit.loopexit_crit_edge ], [ %i.q, %._crit_edge.loopexit.loopexit ]
  %.sroa.3.0.lcssa.ph = phi i64 [ 0, %.lr.ph ], [ 4294967296, %bb.b ], [ 4294967296, %.peel.next.preheader ], [ 4294967296, %.._crit_edge.loopexit.loopexit_crit_edge ], [ 4294967296, %._crit_edge.loopexit.loopexit ]
  %i.r = zext i32 %.sroa.06.0.lcssa.ph to i64
  %i.s = or disjoint i64 %.sroa.3.0.lcssa.ph, %i.r
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.06.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  ret i64 %.sroa.06.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind noalias writable writeonly sret(%"class.hermes::OptValue.9") align 4 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.(anonymous namespace)::FunctionDebugInfoDeserializer", align 8 ; 13 uses
  %.sroa.7 = alloca { i32, i32, i32, i32, i32, i32 }, align 8 ; 5 uses
  %5 = alloca %"class.hermes::OptValue.9", align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !28 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !20 ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %4, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.h = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.i = add i32 %i.h, %2                         ; 2 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.m = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.i, ptr noundef nonnull %i.b) #14
  %i.n = add i32 %i.m, %i.i                       ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.r = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.n, ptr noundef nonnull %i.a) #14
  %i.s = add i32 %i.r, %i.n                       ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !74
  %i.t = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.u, ptr %i.v, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv(ptr dead_on_unwind noalias writable align 4 %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !77, !range !11, !noundef !12
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i32, ptr %5, align 4
  %i.aa = icmp ule i32 %i.z, %3
  %or.cond.not33 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.not33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0834 = phi i32 [ %i.s, %.lr.ph ], [ %.val, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.7.0..sroa_idx21, i64 24, i1 false), !tbaa.struct !76
  %.val = load i32, ptr %i.e, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv(ptr dead_on_unwind noalias writable align 4 %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  %i.ab = load i8, ptr %i.w, align 4, !tbaa !77, !range !11, !noundef !12
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i32, ptr %5, align 4
  %i.ae = icmp ule i32 %i.ad, %3
  %or.cond.not = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.010.lcssa = phi i32 [ %2, %bb.a ], [ %.0834, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !63 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !65
  %.not.peel.i = icmp ugt i32 %i.ak, %.010.lcssa
  br i1 %.not.peel.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %i.ag, 1
  br i1 %exitcond.peel.not.i, label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !65
  %.not.i35 = icmp ugt i32 %i.ao, %.010.lcssa
  br i1 %.not.i35, label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.peel.next.i.preheader
  %exitcond.not.i48 = icmp eq i32 %i.ag, 2
  br i1 %exitcond.not.i48, label %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge, label %.peel.next.i.lr.ph, !llvm.loop !67

.peel.next.i.lr.ph:                               ; preds = %.lr.ph37.preheader
  br label %.peel.next.i, !llvm.loop !67

.peel.next.i:                                     ; preds = %.peel.next.i.lr.ph, %.lr.ph37
  %indvars.iv.next.i49 = phi i64 [ 2, %.peel.next.i.lr.ph ], [ %indvars.iv.next.i, %.lr.ph37 ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %.peel.next.i.lr.ph ], [ %i.aq, %.lr.ph37 ]
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %indvars.iv.next.i49 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !65
  %.not.i = icmp ugt i32 %i.ar, %.010.lcssa
  br i1 %.not.i, label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split, label %.lr.ph37, !llvm.loop !67

.lr.ph37:                                         ; preds = %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i49, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge, label %.peel.next.i, !llvm.loop !67

.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph37
  br label %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge, !llvm.loop !67

._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge: ; preds = %.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge, %.lr.ph37.preheader
  %.lcssa = phi ptr [ %i.aq, %.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge ], [ %i.an, %.lr.ph37.preheader ]
  br label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split, !llvm.loop !67

_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split: ; preds = %.peel.next.i, %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge
  %i.as = phi ptr [ %.lcssa, %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge ], [ %i.ap, %.peel.next.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  br label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit

_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit: ; preds = %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split, %bb.c, %.peel.next.i.preheader
  %.sroa.06.0.lcssa.ph.i = phi i32 [ %i.am, %bb.c ], [ %i.am, %.peel.next.i.preheader ], [ %i.au, %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split ]
  store i32 %3, ptr %0, align 4, !tbaa !3
  %.sroa.616.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.06.0.lcssa.ph.i, ptr %.sroa.616.0..sroa_idx19, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.7.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !tbaa.struct !76
  br label %bb.d

.critedge:                                        ; preds = %.lr.ph.i, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.av, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit, %.critedge
  %.sink = phi i8 [ 1, %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit ], [ 0, %.critedge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.aw, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv(ptr dead_on_unwind noalias nonnull writable writeonly align 4 captures(none) initializes((0, 33)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %i.h, ptr noundef nonnull %i.f) #14
  %i.j = load i32, ptr %i.g, align 8, !tbaa !74
  %i.k = add i32 %i.j, %i.i                       ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !74
  %i.l = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !69
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %.sroa.0.0.copyload.i10 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.o = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i10, i64 %.sroa.2.0.copyload.i12, i32 noundef %i.k, ptr noundef nonnull %i.e) #14
  %i.p = load i32, ptr %i.g, align 8, !tbaa !74
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !74
  %i.r = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %.sroa.0.0.copyload.i13 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i15 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.s = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i13, i64 %.sroa.2.0.copyload.i15, i32 noundef %i.q, ptr noundef nonnull %i.d) #14
  %i.t = load i32, ptr %i.g, align 8, !tbaa !74
  %i.u = add i32 %i.t, %i.s                       ; 2 uses
  store i32 %i.u, ptr %i.g, align 8, !tbaa !74
  %i.v = load i64, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.sroa.0.0.copyload.i16 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i18 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.w = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i16, i64 %.sroa.2.0.copyload.i18, i32 noundef %i.u, ptr noundef nonnull %i.c) #14
  %i.x = load i32, ptr %i.g, align 8, !tbaa !74
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  store i32 %i.y, ptr %i.g, align 8, !tbaa !74
  %i.z = load i64, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.sroa.0.0.copyload.i19 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i21 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.aa = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i19, i64 %.sroa.2.0.copyload.i21, i32 noundef %i.y, ptr noundef nonnull %i.b) #14
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !74
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  store i32 %i.ac, ptr %i.g, align 8, !tbaa !74
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ae = and i64 %i.r, 1
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.sroa.0.0.copyload.i22 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.af = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i22, i64 %.sroa.2.0.copyload.i24, i32 noundef %i.ac, ptr noundef nonnull %i.a) #14
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !74
  %i.ah = add i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.g, align 8, !tbaa !74
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.aj = trunc i64 %i.ai to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.aj, %bb.d ], [ 0, %bb.c ]
  %i.ak = lshr i64 %i.r, 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !79
  %i.an = trunc i64 %i.l to i32
  %i.ao = add i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !73
  %i.ar = trunc i64 %i.ak to i32
  %i.as = add i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !73
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !75
  %i.av = trunc i64 %i.v to i32
  %i.aw = add i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.at, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !80
  %i.az = add i32 %i.ay, %.0
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !80
  %i.ba = trunc i64 %i.z to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !81
  %i.bc = trunc i64 %i.ad to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !tbaa.struct !83
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink = phi i8 [ 1, %bb.e ], [ 0, %bb.b ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.be, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.hermes::OptValue.11") align 4 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %.sroa.093.0.extract.trunc = trunc i64 %4 to i32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !63   ; 2 uses
  %i.n = zext i32 %i.m to i64
end_hunk_0
begin_hunk_1_@_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE:bb.a
  %i.af = load i64, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.ah = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ae, ptr noundef nonnull %i.h) #14
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ak = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ai, ptr noundef nonnull %i.g) #14
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = load i64, ptr %i.g, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !86
  %i.an = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.al, ptr noundef nonnull %i.f) #14, !noalias !86
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !86 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !86
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.loopexit, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.g
  %i.ar = trunc i64 %i.am to i32
  %i.as = trunc i64 %i.aj to i32
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %bb.o
  %i.at = phi i64 [ %i.bx, %bb.o ], [ %i.ap, %.lr.ph207.preheader ]
  %i.au = phi i32 [ %i.bw, %bb.o ], [ %i.ao, %.lr.ph207.preheader ] ; 2 uses
  %.sroa.1191.1205 = phi i32 [ %.sroa.1191.2, %bb.o ], [ %.sroa.1191.0216, %.lr.ph207.preheader ] ; 5 uses
  %.sroa.990.1204 = phi i32 [ %.sroa.990.2, %bb.o ], [ %.sroa.990.0215, %.lr.ph207.preheader ] ; 3 uses
  %.sroa.588.1203 = phi i32 [ %.sroa.588.2, %bb.o ], [ %.sroa.588.0214, %.lr.ph207.preheader ] ; 4 uses
  %.sroa.087.1202 = phi i32 [ %.sroa.087.2, %bb.o ], [ %.sroa.087.0213, %.lr.ph207.preheader ] ; 3 uses
  %.sroa.44.0201 = phi i32 [ %i.bk, %bb.o ], [ 0, %.lr.ph207.preheader ]
  %.sroa.49.0200 = phi i32 [ %i.bm, %bb.o ], [ %i.as, %.lr.ph207.preheader ]
  %.sroa.53.0199 = phi i32 [ %i.bo, %bb.o ], [ %i.ar, %.lr.ph207.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !89
  %i.av = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.au, ptr noundef nonnull %i.e) #14, !noalias !89
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !89 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !89
  %i.ay = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.aw, ptr noundef nonnull %i.d) #14, !noalias !89
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !20, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !89
  %i.bb = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.az, ptr noundef nonnull %i.c) #14, !noalias !89
  %i.bc = add i32 %i.bb, %i.az                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !89
  %i.bd = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.bc, ptr noundef nonnull %i.b) #14, !noalias !89
  %i.be = add i32 %i.bd, %i.bc                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !89
  %i.bf = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !89
  %i.bg = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.be, ptr noundef nonnull %i.a) #14, !noalias !89
  %i.bh = add i32 %i.bg, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !89
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph207, %bb.h
  %.sroa.20.1 = phi i32 [ %i.be, %.lr.ph207 ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bi = lshr i64 %i.ax, 1
  %i.bj = trunc i64 %i.at to i32
  %i.bk = add i32 %.sroa.44.0201, %i.bj           ; 3 uses
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %.sroa.49.0200, %i.bl           ; 2 uses
  %i.bn = trunc i64 %i.ba to i32
  %i.bo = add i32 %.sroa.53.0199, %i.bn           ; 6 uses
  %i.bp = icmp eq i32 %i.bm, %3
  br i1 %i.bp, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp eq i32 %i.bo, %.sroa.093.0.extract.trunc
  %or.cond172 = select i1 %.not173, i1 true, i1 %i.bq
  br i1 %or.cond172, label %.thread163, label %bb.k

.thread163:                                       ; preds = %bb.j
  store i32 %i.ag, ptr %0, align 4, !tbaa !3
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bk, ptr %.sroa.454.0..sroa_idx, align 4, !tbaa !3
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.555.0..sroa_idx, align 4, !tbaa !3
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bo, ptr %.sroa.656.0..sroa_idx, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.br, align 4, !tbaa !91
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i32 %.sroa.588.1203, -1
  br i1 %i.bs, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not48 = icmp ugt i32 %i.bo, %.sroa.093.0.extract.trunc
  br i1 %.not48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp ugt i32 %.sroa.1191.1205, %.sroa.093.0.extract.trunc
  %i.bu = icmp ugt i32 %i.bo, %.sroa.1191.1205
  %or.cond = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n, %bb.i
  %.sroa.087.2 = phi i32 [ %.sroa.087.1202, %bb.i ], [ %i.ag, %bb.n ], [ %.sroa.087.1202, %bb.l ], [ %.sroa.087.1202, %bb.m ] ; 2 uses
  %.sroa.588.2 = phi i32 [ %.sroa.588.1203, %bb.i ], [ %i.bk, %bb.n ], [ %.sroa.588.1203, %bb.l ], [ %.sroa.588.1203, %bb.m ] ; 2 uses
  %.sroa.990.2 = phi i32 [ %.sroa.990.1204, %bb.i ], [ %3, %bb.n ], [ %.sroa.990.1204, %bb.l ], [ %.sroa.990.1204, %bb.m ] ; 2 uses
  %.sroa.1191.2 = phi i32 [ %.sroa.1191.1205, %bb.i ], [ %i.bo, %bb.n ], [ %.sroa.1191.1205, %bb.l ], [ %.sroa.1191.1205, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !94
  %i.bv = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.sroa.20.1, ptr noundef nonnull %i.f) #14, !noalias !94
  %i.bw = add i32 %i.bv, %.sroa.20.1              ; 2 uses
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !94 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !94
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %.loopexit, label %.lr.ph207

._crit_edge220:                                   ; preds = %.loopexit
  %i.bz = icmp eq i32 %.sroa.588.1.lcssa, -1
  br i1 %i.bz, label %._crit_edge220.thread, label %bb.p

._crit_edge220.thread:                            ; preds = %bb.f, %._crit_edge220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge220
  store i32 %.sroa.087.1.lcssa, ptr %0, align 4, !tbaa !3
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.588.1.lcssa, ptr %.sroa.588.0..sroa_idx, align 4, !tbaa !3
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.990.1.lcssa, ptr %.sroa.990.0..sroa_idx, align 4, !tbaa !3
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.1191.1.lcssa, ptr %.sroa.1191.0..sroa_idx, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ca, align 4, !tbaa !91
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge220.thread, %bb.p, %.thread163, %._crit_edge.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo22getTextifiedCalleeUTF8Ejj(ptr dead_on_unwind noalias writable writeonly sret(%"class.hermes::OptValue.13") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = sub i32 %i.j, %i.g
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.o = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.p = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !20
  %.not30 = icmp eq i64 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = add i32 %i.o, %2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = zext i32 %3 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01931 = phi i32 [ %i.r, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.u = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %.01931, ptr noundef nonnull %i.d) #14
  %i.v = add i32 %i.u, %.01931                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.w = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %i.v, ptr noundef nonnull %i.b) #14
  %i.x = add i32 %i.w, %i.v
  %i.y = load i64, ptr %i.b, align 8, !tbaa !20
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !43
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !61
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ag = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.af, i64 %i.ad, i32 noundef %i.z, ptr noundef nonnull %i.a) #14
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.t
  br i1 %i.aj, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ak = add i32 %i.ag, %i.z
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %0, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.an, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp sgt i64 %i.ai, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %i.ao, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo18getScopeDescriptorEj(ptr dead_on_unwind noalias writable sret(%"struct.hermes::hbc::DebugScopeDescriptor") align 8 initializes((0, 5)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %i.l = sub i32 %i.k, %i.h
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.p = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.q = add i32 %i.p, %2                         ; 2 uses
  %i.r = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.q, ptr noundef nonnull %i.d) #14
  %i.s = add i32 %i.q, %i.r                       ; 2 uses
  %i.t = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.s, ptr noundef nonnull %i.e) #14
  %i.u = add i32 %i.s, %i.t
  %i.v = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  store i32 0, ptr %0, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 0, ptr %i.w, align 4, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 4, ptr %i.ab, align 4, !tbaa !103
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ad = and i64 %i.ac, 2147483648
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = trunc i64 %i.ac to i32
  store i32 %i.af, ptr %0, align 8, !tbaa !3
  store i8 1, ptr %i.w, align 4, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ah = trunc i64 %i.ag to i8                   ; 2 uses
  %i.ai = and i8 %i.ah, 1
  %i.aj = lshr i8 %i.ah, 1
  %i.ak = and i8 %i.aj, 1
  %.sroa.418.0.insert.ext = zext nneg i8 %i.ak to i16
  %.sroa.418.0.insert.shift = shl nuw nsw i16 %.sroa.418.0.insert.ext, 8
  %.sroa.017.0.insert.ext = zext nneg i8 %i.ai to i16
  %.sroa.017.0.insert.insert = or disjoint i16 %.sroa.418.0.insert.shift, %.sroa.017.0.insert.ext
  store i16 %.sroa.017.0.insert.insert, ptr %i.x, align 8
  %i.al = icmp ugt i64 %i.v, 4
  br i1 %i.al, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.thread, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit

_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.thread: ; preds = %bb.c
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.z, i64 noundef %i.v, i64 noundef 16) #14
  br label %.lr.ph

_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit: ; preds = %bb.c
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.thread, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit ]
  %.02728 = phi i32 [ %i.u, %.lr.ph ], [ %i.ap, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ao = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %.02728, ptr noundef nonnull %i.b) #14
  %i.ap = add i32 %i.ao, %.02728
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !20
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = load i32, ptr %i.am, align 8, !tbaa !43
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load i64, ptr %i.an, align 8, !tbaa !61
  %i.av = sub i64 %i.au, %i.at
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ay = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.ax, i64 %i.av, i32 noundef %i.ar, ptr noundef nonnull %i.a) #14
  %i.az = add i32 %i.ay, %i.ar
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.bd = load i32, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.be = load i32, ptr %i.ab, align 4, !tbaa !103
  %.not.i = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 16) #14
  %.pre.i = load i32, ptr %i.aa, align 8, !tbaa !63
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  %i.bf = phi i32 [ %.pre.i, %bb.e ], [ %i.bd, %bb.d ]
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  store ptr %i.bb, ptr %i.bi, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bc, ptr %.sroa.4.0..sroa_idx, align 1
  %i.bj = load i32, ptr %i.aa, align 8, !tbaa !63
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.aa, align 8, !tbaa !63
  %i.bl = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo20disassembleFilenamesERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 22
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str, i64 noundef 22) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.d, ptr noundef nonnull align 1 dereferenceable(22) @.str, i64 22, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  store ptr %i.k, ptr %i.c, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = and i64 %i.q, 34359738360
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.s = lshr exact i64 %i.q, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.s, 4294967295
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  %.pre23 = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.v = phi ptr [ %.pre23, %._crit_edge.loopexit ], [ %i.m, %_ZN4llvh11raw_ostreamlsEPKc.exit ]
end_hunk_1
begin_hunk_2_@_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj:_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 4 uses
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
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !34
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !32
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !42
  %i.w = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

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
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !235

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !237

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !42
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

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
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !238

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !237

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cj, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ck, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !13 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 9
  %i.bn = xor i32 %i.bl, %i.bm
  %i.bo = add i32 %i.bi, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.bo, %i.bn            ; 2 uses
  %i.bp = zext nneg i32 %.02944.i.i.i to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = icmp eq ptr %i.bh, %i.br
  br i1 %i.bs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bt = phi ptr [ %i.cd, %bb.e ], [ %i.br, %bb.c ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %bb.e ], [ %i.bq, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bz, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bv = icmp eq ptr %i.bt, inttoptr (i64 -8 to ptr)
  br i1 %i.bv, label %bb.d, label %bb.e, !prof !36

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bw = select i1 %.not.i.i.i, ptr %i.bu, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = icmp eq ptr %i.bt, inttoptr (i64 -16 to ptr)
  %i.by = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bx, i1 %i.by, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bu, ptr %.03245.i.i.i
  %i.bz = add i32 %.02746.i.i.i, 1
  %i.ca = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.ca, %i.bo              ; 2 uses
  %i.cb = zext i32 %.029.i.i.i to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.cb ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = icmp eq ptr %i.bh, %i.cd
  br i1 %i.ce, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !37, !llvm.loop !38

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bw, %bb.d ], [ %i.bq, %bb.c ], [ %i.cc, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !3
  %i.ci = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.ci, ptr %i.ao, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cj = phi i32 [ %i.ci, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ck, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6, !llvm.loop !239

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !117
  store i8 %i.s, ptr %i.g, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !16
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !117
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check160, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

iter.check160:                                    ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %min.iters.check142 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.k, %i.b
  %diff.check141 = icmp ult i64 %i.ad, 32
  %or.cond = or i1 %min.iters.check142, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %iter.check160
  %min.iters.check144 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check144, label %vec.epilog.ph164, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %n.mod.vf146 = and i64 %i.c, 28
  %n.vec147 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.ae = and i64 %i.c, 31
  %i.af = getelementptr i8, ptr %1, i64 %n.vec147
  %i.ag = getelementptr i8, ptr %2, i64 %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body148 ] ; 3 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index149 ; 2 uses
  %next.gep151 = getelementptr i8, ptr %2, i64 %index149 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <16 x i8>, ptr %next.gep151, align 1, !tbaa !117
  %wide.load153 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !117
  %i.ai = getelementptr i8, ptr %next.gep150, i64 16
  store <16 x i8> %wide.load152, ptr %next.gep150, align 1, !tbaa !117
  store <16 x i8> %wide.load153, ptr %i.ai, align 1, !tbaa !117
  %index.next154 = add nuw i64 %index149, 32      ; 2 uses
  %i.aj = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.aj, label %middle.block155, label %vector.body148, !llvm.loop !240

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.c, %n.vec147
  br i1 %cmp.n156, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  %min.epilog.iters.check163 = icmp eq i64 %n.mod.vf146, 0
  br i1 %min.epilog.iters.check163, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph164, !prof !243

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec147, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec166 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.ak = and i64 %i.c, 3
  %i.al = getelementptr i8, ptr %1, i64 %n.vec166
  %i.am = getelementptr i8, ptr %2, i64 %n.vec166
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph164
  %index168 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next172, %vec.epilog.vector.body167 ] ; 3 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %index168
  %next.gep170 = getelementptr i8, ptr %2, i64 %index168
  %wide.load171 = load <4 x i8>, ptr %next.gep170, align 1, !tbaa !117
  store <4 x i8> %wide.load171, ptr %next.gep169, align 1, !tbaa !117
  %index.next172 = add nuw i64 %index168, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next172, %n.vec166
  br i1 %i.an, label %vec.epilog.middle.block173, label %vec.epilog.vector.body167, !llvm.loop !244

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body167
  %cmp.n174 = icmp eq i64 %i.c, %n.vec166
  br i1 %cmp.n174, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block173
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check160 ], [ %i.ae, %vec.epilog.iter.check162 ], [ %i.ak, %vec.epilog.middle.block173 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check160 ], [ %i.af, %vec.epilog.iter.check162 ], [ %i.al, %vec.epilog.middle.block173 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check160 ], [ %i.ag, %vec.epilog.iter.check162 ], [ %i.am, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ao = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !117
  store i8 %i.ao, ptr %.0811.i.i.i.i.i, align 1, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  %i.ar = add nsw i64 %.012.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, !llvm.loop !245

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = icmp eq i64 %i.l, 1
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.l ; 6 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 11 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %iter.check, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.aw, 4
  %i.ay = sub i64 %i.k, %i.b
  %diff.check = icmp ult i64 %i.ay, 32
  %or.cond178 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond178, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i64 %i.aw, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aw, 28
  %n.vec = and i64 %i.aw, 9223372036854775776     ; 5 uses
  %i.az = and i64 %i.aw, 31
  %i.ba = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.bb = getelementptr i8, ptr %i.au, i64 %n.vec
  br label %vector.body
end_hunk_2
