inline.NumInlined: 957
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE6lookupERNS0_7RuntimeERKS3_:bb.a
  %i.j = and i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i, 65535
  %i.k = xor i32 %i.j, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.l = add i32 %i.h, -1                         ; 2 uses
  %i.m = trunc i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i to i16 ; 2 uses
  %.02750.i.i.i.i = and i32 %i.k, %i.l            ; 2 uses
  %i.n = zext i32 %.02750.i.i.i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %.sroa.01.0.copyload.i.i51.i.i.i.i = load i32, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %i.p = icmp eq i32 %.sroa.01.0.copyload.i.i51.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0.0.copyload.i.i52.i.i.i.i = load i16, ptr %i.q, align 4 ; 2 uses
  %i.r = icmp eq i16 %.sroa.0.0.copyload.i.i52.i.i.i.i, %i.m
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !prof !120

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i.i57.i.i.i.i = phi i16 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i52.i.i.i.i, %bb.b ]
  %.sroa.01.0.copyload.i.i56.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sroa.01.0.copyload.i.i51.i.i.i.i, %bb.b ]
  %.02755.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.c ], [ %.02750.i.i.i.i, %bb.b ]
  %.02554.i.i.i.i = phi i32 [ %i.w, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.t = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i.i.i, 536870911
  %i.u = icmp eq i16 %.sroa.0.0.copyload.i.i57.i.i.i.i, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.c, !prof !36

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = add i32 %.02554.i.i.i.i, 1
  %i.x = add i32 %.02554.i.i.i.i, %.02755.i.i.i.i
  %.027.i.i.i.i = and i32 %i.x, %i.l              ; 2 uses
  %i.y = zext i32 %.027.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.y ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !3 ; 2 uses
  %i.aa = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ab, align 4 ; 2 uses
  %i.ac = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, %i.m
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !prof !121, !llvm.loop !122

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i.i.ph.i.i = phi ptr [ %i.o, %bb.b ], [ %i.z, %bb.c ]
  %i.ae = zext i32 %i.h to i64
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findERKS5_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.af = zext i32 %i.h to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.af
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findERKS5_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findERKS5_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, %.loopexit.i.i
  %.pre-phi.i = phi i64 [ %i.ae, %.loopexit.i.i ], [ %i.af, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i ]
  %.sink.i.i.ph.pn.i.i = phi ptr [ %.sink.i.i.ph.i.i, %.loopexit.i.i ], [ %i.ag, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.pre-phi.i ; 2 uses
  %i.ai = icmp eq ptr %.sink.i.i.ph.pn.i.i, %i.ah
  br i1 %i.ai, label %_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12internalFindERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findERKS5_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i, ptr %i.ah, ptr %.sink.i.i.ph.pn.i.i
  br label %_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12internalFindERKS3_.exit

_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12internalFindERKS3_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findERKS5_.exit.i, %bb.d
  %.fca.1.insert.merged.i = phi ptr [ %.sink.i.i.ph.pn.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findERKS5_.exit.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = zext i32 %i.h to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.an
  %i.ap = icmp eq ptr %.fca.1.insert.merged.i, %i.ao
  br i1 %i.ap, label %_ZNK6hermes2vm7WeakRefINS0_11HiddenClassEE3getERNS0_7RuntimeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12internalFindERKS3_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.1.insert.merged.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20 ; 2 uses
  %.not.i4 = icmp eq i32 %i.as, 0
  br i1 %.not.i4, label %_ZNK6hermes2vm7WeakRefINS0_11HiddenClassEE3getERNS0_7RuntimeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.au = ptrtoint ptr %1 to i64
  %i.av = zext i32 %i.as to i64
  %i.aw = add i64 %i.av, %i.au
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  tail call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.at, ptr noundef %i.ax) #13
  br label %_ZNK6hermes2vm7WeakRefINS0_11HiddenClassEE3getERNS0_7RuntimeE.exit

_ZNK6hermes2vm7WeakRefINS0_11HiddenClassEE3getERNS0_7RuntimeE.exit: ; preds = %bb.f, %bb.e, %_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12internalFindERKS3_.exit
  %.0 = phi ptr [ null, %_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12internalFindERKS3_.exit ], [ %i.ax, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

declare noundef ptr @_ZN6hermes2vm6GCBase13allocWeakSlotENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(717), i32) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #7

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E11try_emplaceIJRNS3_7RuntimeERNS3_6HandleIS7_EEEEESt4pairINS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.226") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(9816) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i.i, ptr %i.d, ptr %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i.i, i32 %i.g, i32 8 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.j = and i32 %.sroa.2.0.extract.trunc.i.i.i.i, 65535
  %i.k = xor i32 %i.j, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.l = add i32 %i.h, -1                         ; 2 uses
  %i.m = trunc i64 %.sroa.2.0.extract.shift.i.i.i.i to i16 ; 2 uses
  %.02750.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.n = zext i32 %.02750.i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.n ; 4 uses
  %.sroa.01.0.copyload.i.i51.i.i = load i32, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %i.p = icmp eq i32 %.sroa.01.0.copyload.i.i51.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0.0.copyload.i.i52.i.i = load i16, ptr %i.q, align 4 ; 2 uses
  %i.r = icmp eq i16 %.sroa.0.0.copyload.i.i52.i.i, %i.m
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i, !prof !120

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.0.0.copyload.i.i57.i.i = phi i16 [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i52.i.i, %bb.b ]
  %.sroa.01.0.copyload.i.i56.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.01.0.copyload.i.i51.i.i, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.ae, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %.02755.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02750.i.i, %bb.b ]
  %.02554.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02953.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.u = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i, 536870911
  %i.v = icmp eq i16 %.sroa.0.0.copyload.i.i57.i.i, 0 ; 2 uses
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02953.i.i, null
  %i.x = select i1 %.not.i.i, ptr %i.t, ptr %.02953.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i, 536870910
  %i.z = select i1 %i.y, i1 %i.v, i1 false
  %i.aa = icmp eq ptr %.02953.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.t, ptr %.02953.i.i
  %i.ab = add i32 %.02554.i.i, 1
  %i.ac = add i32 %.02554.i.i, %.02755.i.i
  %.027.i.i = and i32 %i.ac, %i.l                 ; 2 uses
  %i.ad = zext i32 %.027.i.i to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ad ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !3 ; 2 uses
  %i.af = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ag, align 4 ; 2 uses
  %i.ah = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, %i.m
  %i.ai = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i, !prof !121, !llvm.loop !122

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.x, %bb.c ], [ null, %bb.a ]
  %i.aj = tail call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E16InsertIntoBucketIRKS5_JRNS3_7RuntimeERNS3_6HandleIS7_EEEEEPSD_SO_OT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %.sink.i.i, ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(9816) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.ak = load i32, ptr %1, align 8
  %i.al = and i32 %i.ak, 1
  %.not.i.i.i.i6 = icmp eq i32 %i.al, 0           ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = select i1 %.not.i.i.i.i6, ptr %i.am, ptr %i.c
  %i.ao = load i32, ptr %i.f, align 8
  %i.ap = select i1 %.not.i.i.i.i6, i32 %i.ao, i32 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit
  %.sink31 = phi i32 [ %i.ap, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit ], [ %i.h, %bb.b ], [ %i.h, %bb.d ]
  %.sink29 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit ], [ %i.e, %bb.b ], [ %i.e, %bb.d ]
  %.sink28 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit ], [ %i.o, %bb.b ], [ %i.ae, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.aq = zext i32 %.sink31 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sink29, i64 %i.aq
  store ptr %.sink28, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.as, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12pruneInvalidERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 6 uses
  %i.b = lshr i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %.not = icmp ugt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.a, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %i.a, 1                          ; 4 uses
  %.not.i.i.i2.i = icmp eq i32 %i.j, 0            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = select i1 %.not.i.i.i2.i, ptr %i.l, ptr %i.k ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 4 uses
  %i.p = select i1 %.not.i.i.i2.i, i32 %i.o, i32 8 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i = shl nuw nsw i64 %i.q, 4
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i  ; 5 uses
  %.not8.i5.i10.i4.i = icmp eq i32 %i.p, 0
  br i1 %.not8.i5.i10.i4.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, label %.lr.ph.i6.i12.i5.i

.lr.ph.i6.i12.i5.i:                               ; preds = %bb.d, %.critedge2.i8.i14.i11.i
  %.sroa.0.3.i6.i = phi ptr [ %i.y, %.critedge2.i8.i14.i11.i ], [ %i.m, %bb.d ] ; 4 uses
  %i.s = load i32, ptr %.sroa.0.3.i6.i, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 4
  %i.u = load i16, ptr %i.t, align 4
  %i.v = icmp eq i16 %i.u, 0
  %i.w = and i32 %i.s, -2
  %i.x = icmp eq i32 %i.w, 536870910
  %or.cond.i7.i13.i7.i = select i1 %i.x, i1 %i.v, i1 false
  br i1 %or.cond.i7.i13.i7.i, label %.critedge2.i8.i14.i11.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit

.critedge2.i8.i14.i11.i:                          ; preds = %.lr.ph.i6.i12.i5.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 16 ; 2 uses
  %.not.i9.i15.i12.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i9.i15.i12.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, label %.lr.ph.i6.i12.i5.i, !llvm.loop !149

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i5.i, %.critedge2.i8.i14.i11.i, %bb.c, %bb.d
  %.pre-phi = phi i32 [ %i.j, %bb.d ], [ %i.a, %bb.c ], [ %i.j, %.critedge2.i8.i14.i11.i ], [ %i.j, %.lr.ph.i6.i12.i5.i ]
  %i.z = phi i32 [ %i.o, %bb.d ], [ %i.i, %bb.c ], [ %i.o, %.critedge2.i8.i14.i11.i ], [ %i.o, %.lr.ph.i6.i12.i5.i ]
  %i.aa = phi ptr [ %i.l, %bb.d ], [ %i.g, %bb.c ], [ %i.l, %.critedge2.i8.i14.i11.i ], [ %i.l, %.lr.ph.i6.i12.i5.i ]
  %.pn16.i = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.c ], [ %.sroa.0.3.i6.i, %.lr.ph.i6.i12.i5.i ], [ %i.r, %.critedge2.i8.i14.i11.i ] ; 2 uses
  %.pn14.i = phi ptr [ %i.r, %bb.d ], [ %i.c, %bb.c ], [ %i.r, %.critedge2.i8.i14.i11.i ], [ %i.r, %.lr.ph.i6.i12.i5.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre-phi, 0      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = select i1 %.not.i.i.i.i.i, ptr %i.aa, ptr %i.ab
  %i.ad = select i1 %.not.i.i.i.i.i, i32 %i.z, i32 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %.not57 = icmp eq ptr %.pn16.i, %i.af
  br i1 %.not57, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit
  %i.ag = phi i32 [ %i.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ], [ %i.aq, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ]
  %i.ah = or i32 %i.ag, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 5)
  store i32 %.sroa.speculated.i, ptr %i.c, align 8, !tbaa !14
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit
  %i.ai = phi i32 [ %i.aq, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %i.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ]
  %.sroa.01.08 = phi ptr [ %.sroa.01.2, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %.pn16.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20
  %.not6 = icmp eq i32 %i.al, 0
  br i1 %.not6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store atomic i8 1, ptr %i.am monotonic, align 4
  store i48 536870910, ptr %.sroa.01.08, align 8
  %i.an = load <2 x i32>, ptr %0, align 8
  %i.ao = add <2 x i32> %i.an, <i32 -2, i32 1>    ; 2 uses
  store <2 x i32> %i.ao, ptr %0, align 8
  %i.ap = extractelement <2 x i32> %i.ao, i64 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aq = phi i32 [ %i.ai, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 16 ; 3 uses
  %.not8.i3.i = icmp eq ptr %i.ar, %.pn14.i
  br i1 %.not8.i3.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.f, %.critedge2.i6.i
  %.sroa.01.1 = phi ptr [ %i.ay, %.critedge2.i6.i ], [ %i.ar, %bb.f ] ; 4 uses
  %i.as = load i32, ptr %.sroa.01.1, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.1, i64 4
  %i.au = load i16, ptr %i.at, align 4
  %i.av = icmp eq i16 %i.au, 0
  %i.aw = and i32 %i.as, -2
  %i.ax = icmp eq i32 %i.aw, 536870910
  %or.cond.i5.i = select i1 %i.ax, i1 %i.av, i1 false
  br i1 %or.cond.i5.i, label %.critedge2.i6.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.1, i64 16 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.ay, %.pn14.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !149

_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %bb.f
  %.sroa.01.2 = phi ptr [ %i.ar, %bb.f ], [ %.sroa.01.1, %.lr.ph.i4.i ], [ %i.ay, %.critedge2.i6.i ] ; 2 uses
  %.not5 = icmp eq ptr %.sroa.01.2, %i.af
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !llvm.loop !155

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E16InsertIntoBucketIRKS5_JRNS3_7RuntimeERNS3_6HandleIS7_EEEEEPSD_SO_OT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(9816) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !152
  %i.b = load i32, ptr %0, align 8                ; 3 uses
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %i.d = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = select i1 %.not.i.i.i, i32 %i.f, i32 8   ; 5 uses
  %i.h = shl i32 %i.c, 2
  %i.i = add i32 %i.h, 4
  %i.j = mul i32 %i.g, 3
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.k = shl i32 %i.g, 1
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %.neg.i = xor i32 %i.c, -1
  %.neg12.i = add i32 %i.g, %.neg.i
  %i.n = sub i32 %.neg12.i, %i.m
  %i.o = lshr i32 %i.g, 3
  %.not9.i = icmp ugt i32 %i.n, %i.o
  br i1 %.not9.i, label %bb.d, label %.sink.split.i, !prof !36

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.c ]
  tail call void @_ZN4llvh13SmallDenseMapIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %.sink.i)
  %i.p = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre = load i32, ptr %0, align 8               ; 2 uses
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !152
  %.pre11 = and i32 %.pre, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c
  %.pre-phi = phi i32 [ %.pre11, %.sink.split.i ], [ %i.d, %bb.c ]
  %i.q = phi ptr [ %.pre10, %.sink.split.i ], [ %1, %bb.c ] ; 5 uses
  %i.r = phi i32 [ %.pre, %.sink.split.i ], [ %i.b, %bb.c ]
  %i.s = and i32 %i.r, -2
  %i.t = add i32 %i.s, 2
  %i.u = or disjoint i32 %i.t, %.pre-phi
  store i32 %i.u, ptr %0, align 8
  %i.v = load i32, ptr %i.q, align 4, !tbaa !7
  %i.w = icmp eq i32 %i.v, 536870911
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.y = load i16, ptr %i.x, align 4
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !10
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.q, ptr noundef nonnull align 4 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !133
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 856
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.0.copyload, align 8, !tbaa !37 ; 2 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.aj
  %i.ak = call noundef ptr @_ZN6hermes2vm6GCBase13allocWeakSlotENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %i.af, i32 %.sroa.0.0.i.i.i.i.i) #13
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !16
  ret ptr %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.229", align 16 ; 6 uses
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
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.0, 8
  br i1 %i.r, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i16, ptr %i.u, align 4
  %i.w = icmp eq i16 %i.v, 0
  %i.x = and i32 %i.t, -2
  %i.y = icmp eq i32 %i.x, 536870910
  %or.cond = select i1 %i.y, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.z, ptr %2, align 16
end_hunk_0
