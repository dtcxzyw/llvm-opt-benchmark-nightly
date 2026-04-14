inline.NumInlined: 957
inline.NumDeleted: 407
begin_hunk_0_@_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12pruneInvalidERNS0_7HadesGCE:bb.a
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %.not57 = icmp eq ptr %.pn16.i, %i.aj
  br i1 %.not57, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit
  %i.ak = phi i32 [ %i.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ], [ %i.ar, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ]
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12pruneInvalidERNS0_7HadesGCE:bb.a
  store i32 %.sroa.speculated.i, ptr %i.c, align 8, !tbaa !14
  br label %bb.h

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit
  %i.am = phi i32 [ %i.ar, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %i.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ]
  %.sroa.01.08 = phi ptr [ %.sroa.01.2, %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %.pn16.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIN6hermes2vm6detail10TransitionENS3_7WeakRefINS3_11HiddenClassEEELj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm12WeakValueMapINS0_6detail10TransitionENS0_11HiddenClassEE12pruneInvalidERNS0_7HadesGCE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store atomic i8 1, ptr %i.aq monotonic, align 1
  store i48 536870910, ptr %.sroa.01.08, align 4
  %2 = load <2 x i32>, ptr %0, align 8
  %3 = add <2 x i32> %2, <i32 -2, i32 1>          ; 2 uses
  store <2 x i32> %3, ptr %0, align 8
  %4 = extractelement <2 x i32> %3, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ar = phi i32 [ %i.am, %bb.e ], [ %4, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 16 ; 3 uses
  %.not8.i3.i = icmp eq ptr %i.as, %.pn14.i
  br i1 %.not8.i3.i, label %_ZN4llvh16DenseMapIteratorIN6hermes2vm6detail10TransitionENS2_7WeakRefINS2_11HiddenClassEEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i
end_hunk_2
