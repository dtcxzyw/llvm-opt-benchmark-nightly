Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/HiddenClass?download=true
inline.NumInlined: 957
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E11try_emplaceIJRNS3_7RuntimeERNS3_6HandleIS7_EEEEESt4pairINS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEEbERKS5_DpOT_:bb.a
  %.sroa.0.0.copyload.i.i52.i.i = load i16, ptr %i.q, align 4 ; 2 uses
  %i.r = icmp eq i16 %.sroa.0.0.copyload.i.i52.i.i, %i.m
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i, !prof !90

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.0.0.copyload.i.i57.i.i = phi i16 [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i52.i.i, %bb.b ]
  %.sroa.01.0.copyload.i.i56.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.01.0.copyload.i.i51.i.i, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.ae, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %.02555.i.i = phi i32 [ %.025.i.i, %bb.d ], [ %.02550.i.i, %bb.b ]
  %.054.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02753.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.u = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i, 536870911
  %i.v = icmp eq i16 %.sroa.0.0.copyload.i.i57.i.i, 0 ; 2 uses
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02753.i.i, null
  %i.x = select i1 %.not.i.i, ptr %i.t, ptr %.02753.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i, 536870910
  %i.z = select i1 %i.y, i1 %i.v, i1 false
  %i.aa = icmp eq ptr %.02753.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.t, ptr %.02753.i.i
  %i.ab = add i32 %.054.i.i, 1
  %i.ac = add i32 %.054.i.i, %.02555.i.i
  %.025.i.i = and i32 %i.ac, %i.l                 ; 2 uses
  %i.ad = zext i32 %.025.i.i to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ad ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.af = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ag, align 4 ; 2 uses
  %i.ah = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, %i.m
  %i.ai = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i, !prof !91, !llvm.loop !0

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
  store i8 %.sink, ptr %i.as, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12pruneInvalidERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #1 comdat align 2 !guid !194 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 6 uses
  %i.b = lshr i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %.not = icmp ugt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.a, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre10 = load i32, ptr %.phi.trans.insert9, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = and i32 %i.a, 1                          ; 4 uses
  %.not.i.i.i2.i = icmp eq i32 %i.f, 0            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = select i1 %.not.i.i.i2.i, ptr %i.h, ptr %i.g ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = select i1 %.not.i.i.i2.i, i32 %i.k, i32 8 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr i8, ptr %i.i, i64 %.idx.i  ; 5 uses
  %.not8.i5.i10.i4.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i5.i10.i4.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, label %.lr.ph.i6.i12.i5.i

.lr.ph.i6.i12.i5.i:                               ; preds = %bb.d, %.critedge2.i8.i14.i11.i
  %.sroa.0.3.i6.i = phi ptr [ %i.u, %.critedge2.i8.i14.i11.i ], [ %i.i, %bb.d ] ; 4 uses
  %i.o = load i32, ptr %.sroa.0.3.i6.i, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 4
  %i.q = load i16, ptr %i.p, align 4
  %i.r = icmp eq i16 %i.q, 0
  %i.s = and i32 %i.o, -2
  %i.t = icmp eq i32 %i.s, 536870910
  %or.cond.i7.i13.i7.i = select i1 %i.t, i1 %i.r, i1 false
  br i1 %or.cond.i7.i13.i7.i, label %.critedge2.i8.i14.i11.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit

.critedge2.i8.i14.i11.i:                          ; preds = %.lr.ph.i6.i12.i5.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 16 ; 2 uses
  %.not.i9.i15.i12.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i9.i15.i12.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, label %.lr.ph.i6.i12.i5.i, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i5.i, %.critedge2.i8.i14.i11.i, %bb.c, %bb.d
  %.pre-phi = phi i32 [ %i.f, %bb.d ], [ %i.a, %bb.c ], [ %i.f, %.critedge2.i8.i14.i11.i ], [ %i.f, %.lr.ph.i6.i12.i5.i ]
  %i.v = phi i32 [ %i.k, %bb.d ], [ %.pre10, %bb.c ], [ %i.k, %.critedge2.i8.i14.i11.i ], [ %i.k, %.lr.ph.i6.i12.i5.i ]
  %i.w = phi ptr [ %i.h, %bb.d ], [ %.pre, %bb.c ], [ %i.h, %.critedge2.i8.i14.i11.i ], [ %i.h, %.lr.ph.i6.i12.i5.i ]
  %.pn16.i = phi ptr [ %i.i, %bb.d ], [ %i.c, %bb.c ], [ %.sroa.0.3.i6.i, %.lr.ph.i6.i12.i5.i ], [ %i.n, %.critedge2.i8.i14.i11.i ] ; 2 uses
  %.pn14.i = phi ptr [ %i.n, %bb.d ], [ %i.c, %bb.c ], [ %i.n, %.critedge2.i8.i14.i11.i ], [ %i.n, %.lr.ph.i6.i12.i5.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre-phi, 0      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = select i1 %.not.i.i.i.i.i, ptr %i.w, ptr %i.x
  %i.z = select i1 %.not.i.i.i.i.i, i32 %i.v, i32 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %.not57 = icmp eq ptr %.pn16.i, %i.ab
  br i1 %.not57, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit
  %i.ac = phi i32 [ %i.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ], [ %i.am, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ]
  %i.ad = or i32 %i.ac, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 5)
  store i32 %.sroa.speculated.i, ptr %i.c, align 8, !tbaa !24
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit
  %i.ae = phi i32 [ %i.am, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %i.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ]
  %.sroa.01.08 = phi ptr [ %.sroa.01.2, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %.pn16.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %.not6 = icmp eq i32 %i.ah, 0
  br i1 %.not6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store atomic i8 1, ptr %i.ai monotonic, align 4
  store i48 536870910, ptr %.sroa.01.08, align 8
  %i.aj = load <2 x i32>, ptr %0, align 8
  %i.ak = add <2 x i32> %i.aj, <i32 -2, i32 1>    ; 2 uses
  store <2 x i32> %i.ak, ptr %0, align 8
  %i.al = extractelement <2 x i32> %i.ak, i64 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.am = phi i32 [ %i.ae, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 16 ; 3 uses
  %.not8.i3.i = icmp eq ptr %i.an, %.pn14.i
  br i1 %.not8.i3.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.f, %.critedge2.i6.i
  %.sroa.01.1 = phi ptr [ %i.au, %.critedge2.i6.i ], [ %i.an, %bb.f ] ; 4 uses
  %i.ao = load i32, ptr %.sroa.01.1, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.1, i64 4
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = icmp eq i16 %i.aq, 0
  %i.as = and i32 %i.ao, -2
  %i.at = icmp eq i32 %i.as, 536870910
  %or.cond.i5.i = select i1 %i.at, i1 %i.ar, i1 false
  br i1 %or.cond.i5.i, label %.critedge2.i6.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.1, i64 16 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.au, %.pn14.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !1

_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %bb.f
  %.sroa.01.2 = phi ptr [ %i.an, %bb.f ], [ %.sroa.01.1, %.lr.ph.i4.i ], [ %i.au, %.critedge2.i6.i ] ; 2 uses
  %.not5 = icmp eq ptr %.sroa.01.2, %i.ab
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !llvm.loop !193

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E16InsertIntoBucketIRKS5_JRNS3_7RuntimeERNS3_6HandleIS7_EEEEEPSD_SO_OT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(9816) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 !guid !195 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !99
  %i.b = load i32, ptr %0, align 8                ; 3 uses
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %i.d = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = select i1 %.not.i.i.i, i32 %i.f, i32 8   ; 5 uses
  %i.h = shl i32 %i.c, 2
  %i.i = add i32 %i.h, 4
  %i.j = mul i32 %i.g, 3
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.k = shl i32 %i.g, 1
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %.neg.i = xor i32 %i.c, -1
  %.neg12.i = add i32 %i.g, %.neg.i
  %i.n = sub i32 %.neg12.i, %i.m
  %i.o = lshr i32 %i.g, 3
  %.not9.i = icmp ugt i32 %i.n, %i.o
  br i1 %.not9.i, label %bb.d, label %.sink.split.i, !prof !45

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.c ]
  tail call void @_ZN4llvh13SmallDenseMapIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %.sink.i)
  %i.p = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre = load i32, ptr %0, align 8
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !99
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c
  %i.q = phi ptr [ %.pre10, %.sink.split.i ], [ %1, %bb.c ] ; 5 uses
  %i.r = phi i32 [ %.pre, %.sink.split.i ], [ %i.b, %bb.c ]
  %i.s = add i32 %i.r, 2
  store i32 %i.s, ptr %0, align 8
  %i.t = load i32, ptr %i.q, align 4, !tbaa !17
  %i.u = icmp eq i32 %i.t, 536870911
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i16, ptr %i.v, align 4
  %i.x = icmp eq i16 %i.w, 0
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !22
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.q, ptr noundef nonnull align 4 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 856
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.0.copyload, align 8, !tbaa !47 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.ah
  %i.ai = call noundef ptr @_ZN6hermes2vm6GCBase13allocWeakSlotENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, i32 %.sroa.0.0.i.i.i.i.i) #13
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !28
  ret ptr %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !guid !196 {
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
  %.025 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.025, 8
  br i1 %i.r, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !17
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
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %2, %bb.e ], [ %i.aa, %bb.f ]   ; 3 uses
  %.0.ptr41.1 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i32, ptr %.0.ptr41.1, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = icmp eq i16 %i.ad, 0
  %i.af = and i32 %i.ab, -2
  %i.ag = icmp eq i32 %i.af, 536870910
  %or.cond.1 = select i1 %i.ag, i1 %i.ae, i1 false
  br i1 %or.cond.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load <2 x i64>, ptr %.0.ptr41.1, align 8
  store <2 x i64> %i.ah, ptr %.1, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.1 = phi ptr [ %.1, %bb.g ], [ %i.ai, %bb.h ] ; 4 uses
  %.0.ptr41.2 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i32, ptr %.0.ptr41.2, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = icmp eq i16 %i.al, 0
  %i.an = and i32 %i.aj, -2
  %i.ao = icmp eq i32 %i.an, 536870910
  %or.cond.2 = select i1 %i.ao, i1 %i.am, i1 false
  br i1 %or.cond.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i64, ptr %.0.ptr41.2, align 8
  store i64 %i.ap, ptr %.1.1, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.1.1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.2 = phi ptr [ %.1.1, %bb.i ], [ %i.at, %bb.j ] ; 4 uses
  %.0.ptr41.3 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = load i32, ptr %.0.ptr41.3, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = icmp eq i16 %i.aw, 0
  %i.ay = and i32 %i.au, -2
  %i.az = icmp eq i32 %i.ay, 536870910
  %or.cond.3 = select i1 %i.az, i1 %i.ax, i1 false
  br i1 %or.cond.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %.0.ptr41.3, align 8
  store i64 %i.ba, ptr %.1.2, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.1.2, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.3 = phi ptr [ %.1.2, %bb.k ], [ %i.be, %bb.l ] ; 4 uses
  %.0.ptr41.4 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = load i32, ptr %.0.ptr41.4, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = icmp eq i16 %i.bh, 0
  %i.bj = and i32 %i.bf, -2
  %i.bk = icmp eq i32 %i.bj, 536870910
  %or.cond.4 = select i1 %i.bk, i1 %i.bi, i1 false
  br i1 %or.cond.4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load i64, ptr %.0.ptr41.4, align 8
  store i64 %i.bl, ptr %.1.3, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.3, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load i64, ptr %i.bn, align 8
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.3, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.4 = phi ptr [ %.1.3, %bb.m ], [ %i.bp, %bb.n ] ; 4 uses
  %.0.ptr41.5 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = load i32, ptr %.0.ptr41.5, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bs = load i16, ptr %i.br, align 4
  %i.bt = icmp eq i16 %i.bs, 0
  %i.bu = and i32 %i.bq, -2
  %i.bv = icmp eq i32 %i.bu, 536870910
  %or.cond.5 = select i1 %i.bv, i1 %i.bt, i1 false
  br i1 %or.cond.5, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i64, ptr %.0.ptr41.5, align 8
  store i64 %i.bw, ptr %.1.4, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load i64, ptr %i.by, align 8
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.4, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.5 = phi ptr [ %.1.4, %bb.o ], [ %i.ca, %bb.p ] ; 4 uses
  %.0.ptr41.6 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cb = load i32, ptr %.0.ptr41.6, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.cd, 0
end_hunk_0
begin_hunk_1_@_ZN4llvh13SmallDenseMapIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj:bb.a
  %.1.7 = phi ptr [ %.1.6, %bb.s ], [ %i.cw, %bb.t ]
  %i.cx = load i32, ptr %0, align 8
  %i.cy = and i32 %i.cx, -2
  store i32 %i.cy, ptr %0, align 8
  %i.cz = zext i32 %.025 to i64
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #16
  store ptr %i.db, ptr %i.s, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.025, ptr %i.dc, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.v:                                             ; preds = %bb.c
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.dd, align 8, !tbaa !99 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %i.de = icmp ult i32 %.025, 9
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = or disjoint i32 %i.p, 1
  store i32 %i.df, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dg = zext i32 %.025 to i64
  %i.dh = shl nuw nsw i64 %i.dg, 4
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #16
  store ptr %i.di, ptr %i.dd, align 8
  store i32 %.025, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = zext i32 %.sroa.6.0.copyload to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.dj
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.dk)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.y, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !guid !200 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !22
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
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.m = lshr exact i64 %i.l, 4
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i48 536870911, ptr %.06.i.prol, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !197

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %i.l, 112
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i48 536870911, ptr %.06.i, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store i48 536870911, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i48 536870911, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i48 536870911, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  store i48 536870911, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store i48 536870911, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store i48 536870911, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 112
  store i48 536870911, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !198

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not23 = icmp eq ptr %1, %2
  br i1 %.not23, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, %bb.e
  %.024 = phi ptr [ %i.bq, %bb.e ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit ] ; 6 uses
  %i.y = load i32, ptr %.024, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = icmp eq i16 %i.aa, 0
  %i.ac = and i32 %i.y, -2
  %i.ad = icmp eq i32 %i.ac, 536870910
  %or.cond = select i1 %i.ad, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ae = load i32, ptr %0, align 8
  %i.af = and i32 %i.ae, 1
  %.not.i.i.i.i15 = icmp eq i32 %i.af, 0          ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = select i1 %.not.i.i.i.i15, ptr %i.ag, ptr %i.d ; 2 uses
  %i.ai = load i32, ptr %i.g, align 8
  %i.aj = select i1 %.not.i.i.i.i15, i32 %i.ai, i32 8 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  tail call void @llvm.assume(i1 %i.ak)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.024, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.al = and i32 %.sroa.2.0.extract.trunc.i.i.i.i, 65535
  %i.am = xor i32 %i.al, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.an = add i32 %i.aj, -1                       ; 2 uses
  %i.ao = trunc i64 %.sroa.2.0.extract.shift.i.i.i.i to i16 ; 2 uses
  %.02550.i.i = and i32 %i.am, %i.an              ; 2 uses
  %i.ap = zext i32 %.02550.i.i to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ap ; 4 uses
  %.sroa.01.0.copyload.i.i51.i.i = load i32, ptr %i.aq, align 4, !tbaa !8 ; 2 uses
  %i.ar = icmp eq i32 %.sroa.01.0.copyload.i.i51.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.0.0.copyload.i.i52.i.i = load i16, ptr %i.as, align 4 ; 2 uses
  %i.at = icmp eq i16 %.sroa.0.0.copyload.i.i52.i.i, %i.ao
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %i.au, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !90

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.0.0.copyload.i.i57.i.i = phi i16 [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i52.i.i, %bb.b ]
  %.sroa.01.0.copyload.i.i56.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.01.0.copyload.i.i51.i.i, %bb.b ] ; 2 uses
  %i.av = phi ptr [ %i.bg, %bb.d ], [ %i.aq, %bb.b ] ; 2 uses
  %.02555.i.i = phi i32 [ %.025.i.i, %bb.d ], [ %.02550.i.i, %bb.b ]
  %.054.i.i = phi i32 [ %i.bd, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02753.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.aw = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i, 536870911
  %i.ax = icmp eq i16 %.sroa.0.0.copyload.i.i57.i.i, 0 ; 2 uses
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.c, label %bb.d, !prof !45

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02753.i.i, null
  %i.az = select i1 %.not.i.i, ptr %i.av, ptr %.02753.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ba = icmp eq i32 %.sroa.01.0.copyload.i.i56.i.i, 536870910
  %i.bb = select i1 %i.ba, i1 %i.ax, i1 false
  %i.bc = icmp eq ptr %.02753.i.i, null
  %or.cond.not.i.i = select i1 %i.bb, i1 %i.bc, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.av, ptr %.02753.i.i
  %i.bd = add i32 %.054.i.i, 1
  %i.be = add i32 %.054.i.i, %.02555.i.i
  %.025.i.i = and i32 %i.be, %i.an                ; 2 uses
  %i.bf = zext i32 %.025.i.i to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.bf ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.bg, align 4, !tbaa !8 ; 2 uses
  %i.bh = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.bi, align 4 ; 2 uses
  %i.bj = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, %i.ao
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !91, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.az, %bb.c ], [ %i.aq, %bb.b ], [ %i.bg, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sink.i.i, ptr noundef nonnull align 4 dereferenceable(6) %.024, i64 6, i1 false), !tbaa.struct !94
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  store i64 %i.bn, ptr %i.bl, align 8
  %i.bo = load i32, ptr %0, align 8
  %i.bp = add i32 %i.bo, 2
  store i32 %i.bp, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !199
}

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #4

declare void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind writable sret(%"class.std::lock_guard") align 8, ptr noundef nonnull align 8 dereferenceable(8112)) local_unnamed_addr #4

declare void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !81}
!1 = distinct !{!1, !81}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{i64 8910178410935456012}
!10 = !{i64 3615742344714530512}
!11 = !{i64 622142946723615168}
!12 = !{i64 4280990807890739009}
!13 = !{i64 -5242000406281893132}
!14 = !{i64 8369157571797347280}
!15 = !{i64 -1311915096492769173}
!16 = !{!"_ZTSN6hermes2vm8SymbolIDE", !7, i64 0}
!17 = !{!16, !7, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm128EEE", !6, i64 0}
!20 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA8_NS_6detail12DenseMapPairIN6hermes2vm6detail10TransitionENS4_7WeakRefINS4_11HiddenClassEEEEENS_13SmallDenseMapIS6_S9_Lj8ENS_12DenseMapInfoIS6_EESA_E8LargeRepEccccccccEE", !19, i64 0}
!21 = !{!"_ZTSN4llvh13SmallDenseMapIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEE", !7, i64 0, !7, i64 0, !7, i64 4, !20, i64 8}
!22 = !{!21, !7, i64 4}
!23 = !{!"_ZTSN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEEE", !21, i64 0, !7, i64 136}
!24 = !{!23, !7, i64 136}
!25 = !{!"any pointer", !6, i64 0}
!26 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !25, i64 0}
!27 = !{!"_ZTSN6hermes2vm11WeakRefBaseE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"_ZTSN6hermes2vm12BasedPointerE", !7, i64 0}
!30 = !{!29, !7, i64 0}
!31 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !25, i64 0}
!32 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !31, i64 8}
!33 = !{!32, !31, i64 8}
!34 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !25, i64 0}
!35 = !{!"_ZTSN4llvh15SmallVectorBaseE", !25, i64 0, !7, i64 8, !7, i64 12}
!36 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !35, i64 0}
!37 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !36, i64 0}
!38 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !37, i64 0}
!39 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !6, i64 0}
!40 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !38, i64 0, !39, i64 16}
!41 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !25, i64 0}
!42 = !{!"_ZTSN6hermes2vm7GCScopeE", !34, i64 0, !31, i64 8, !6, i64 16, !40, i64 144, !41, i64 192, !41, i64 200, !7, i64 208}
!43 = !{!42, !41, i64 192}
!44 = !{!42, !41, i64 200}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!"long", !6, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"bool", !6, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEEEE", !25, i64 0}
!53 = !{!"_ZTSN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEE", !52, i64 0, !52, i64 8}
!54 = !{!53, !52, i64 0}
!55 = !{!"p1 omnipotent char", !25, i64 0}
!56 = !{!"_ZTSN6hermes2vm6GCCellE", !6, i64 0}
!57 = !{!"_ZTSN6hermes2vm10GCSymbolIDE", !16, i64 0}
!58 = !{!"_ZTSN6hermes2vm13PropertyFlagsE", !6, i64 0}
!59 = !{!"_ZTSN6hermes2vm10ClassFlagsE", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0}
!60 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !29, i64 0}
!61 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !60, i64 0}
!62 = !{!"_ZTSN6hermes2vm9GCPointerINS0_15DictPropertyMapEEE", !61, i64 0}
!63 = !{!"_ZTSN6hermes2vm6detail10TransitionE", !16, i64 0, !58, i64 4}
!64 = !{!"_ZTSN6hermes2vm6detail13TransitionMapE", !63, i64 0, !6, i64 8}
!65 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !61, i64 0}
!66 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE", !61, i64 0}
!67 = !{!"_ZTSN6hermes2vm11HiddenClassE", !56, i64 0, !57, i64 4, !58, i64 8, !59, i64 10, !7, i64 12, !62, i64 16, !64, i64 24, !65, i64 40, !66, i64 44}
!68 = !{!67, !7, i64 12}
!69 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !25, i64 0}
!70 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !55, i64 0, !69, i64 8}
!71 = !{!70, !55, i64 0}
!72 = !{!"p1 _ZTSSt15recursive_mutex", !25, i64 0}
!73 = !{!"_ZTSSt10lock_guardISt15recursive_mutexE", !72, i64 0}
!74 = !{!73, !72, i64 0}
!75 = !{i64 8}
!76 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 1, i32 4001}
!78 = !{!35, !25, i64 0}
!79 = !{!"_ZTSN6hermes2vm10HandleBaseE", !41, i64 0}
!80 = !{!79, !41, i64 0}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"p1 _ZTSN6hermes2vm23NamedPropertyDescriptorE", !25, i64 0}
!83 = !{!"_ZTSSt4pairIPN6hermes2vm23NamedPropertyDescriptorEbE", !82, i64 0, !48, i64 8}
!84 = !{!83, !82, i64 0}
!85 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !56, i64 0}
!86 = !{!"_ZTSSt13__atomic_baseIjE", !7, i64 0}
!87 = !{!"_ZTSSt6atomicIjE", !86, i64 0}
!88 = !{!"_ZTSN6hermes2vm15DictPropertyMapE", !85, i64 0, !7, i64 4, !7, i64 8, !87, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!89 = !{!88, !7, i64 4}
!90 = !{!"branch_weights", i32 1999, i32 1}
!91 = !{!"branch_weights", i32 1, i32 0}
!92 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm16EEE", !6, i64 0}
!93 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!94 = !{i64 0, i64 4, !8, i64 4, i64 2, !18}
!95 = !{!42, !7, i64 208}
!96 = !{!"_ZTSN6hermes2vm11HermesValueE", !46, i64 0}
!97 = !{!96, !46, i64 0}
!98 = !{!41, !41, i64 0}
!99 = !{!52, !52, i64 0}
!100 = !{i64 -2310458053712524585}
!101 = !{i64 -4789165158688411885}
!102 = !{i64 -6088890432569195447}
!103 = !{i64 -5061366797091688211}
!104 = !{i64 5905032036481056067}
!105 = !{!"_ZTSSt4lessIhE"}
!106 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !105, i64 0}
!107 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!108 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !25, i64 0}
!109 = !{!"_ZTSSt18_Rb_tree_node_base", !107, i64 0, !108, i64 8, !108, i64 16, !108, i64 24}
!110 = !{!"_ZTSSt15_Rb_tree_header", !109, i64 0, !46, i64 32}
!111 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !106, i64 0, !110, i64 8}
!112 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !111, i64 0}
!113 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !112, i64 0}
!114 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !6, i64 0}
!115 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !114, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!116 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !115, i64 0, !48, i64 4}
!117 = !{!"_ZTSN6hermes8OptValueIjEE", !7, i64 0, !48, i64 4}
!118 = !{!"p1 _ZTSN6hermes2vm6VTableE", !25, i64 0}
!119 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !55, i64 0, !113, i64 8, !113, i64 56, !113, i64 104, !113, i64 152, !116, i64 200, !117, i64 208, !118, i64 216}
!120 = !{!119, !118, i64 216}
!121 = !{i64 -5522077142828472743}
!122 = !{i64 2745115698660915157}
!123 = !{i64 -8646136890465179320}
!124 = distinct !{!124, i1 true, !"_ZN4llvh25SmallVectorTemplateCommonISt4pairIN6hermes2vm8SymbolIDENS3_13PropertyFlagsEEvE6rbeginEv"}
!125 = distinct !{!125, !124, !"_ZN4llvh25SmallVectorTemplateCommonISt4pairIN6hermes2vm8SymbolIDENS3_13PropertyFlagsEEvE6rbeginEv: argument 0"}
!126 = distinct !{!126, !81}
!127 = distinct !{!127, !81}
!128 = !{i64 -1742302181455583481}
!129 = !{!35, !7, i64 8}
!130 = !{!35, !7, i64 12}
!131 = !{!125}
!132 = !{!83, !48, i64 8}
!133 = !{!"_ZTSN6hermes2vm18PropertyDescriptorE", !6, i64 0, !7, i64 4}
end_hunk_1
