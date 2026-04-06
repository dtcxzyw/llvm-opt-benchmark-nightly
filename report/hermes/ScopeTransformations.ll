begin_hunk_0_@_ZN6hermes11ScopeMergerD0Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes11ScopeMergerE, i64 16), ptr %0, align 8, !tbaa !125
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call void @_ZdlPv(ptr noundef %i.b) #10, !inline_history !127
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #12
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructERKS4_:bb.a
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !91, !llvm.loop !128

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
end_hunk_1
begin_hunk_2_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructERKS4_:bb.a
  tail call void @_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !96
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
end_hunk_2
begin_hunk_3_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_:bb.a
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7    ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !91, !llvm.loop !128

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !129
  ret i1 %.2.i
}

end_hunk_3
begin_hunk_4_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !130

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
end_hunk_4
begin_hunk_5_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !131

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
end_hunk_5
begin_hunk_6_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !132

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
end_hunk_6
begin_hunk_7_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !131

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
end_hunk_7
begin_hunk_8_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bz ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !7  ; 2 uses
  %i.cc = icmp eq ptr %i.bi, %i.cb
  br i1 %i.cc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !91, !llvm.loop !128

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.bu, %bb.e ], [ %i.bo, %bb.d ], [ %i.ca, %bb.f ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit
  %i.ch = phi i32 [ %i.bh, %bb.c ], [ %i.bh, %bb.c ], [ %i.cg, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ci, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %bb.c, !llvm.loop !133

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #10
end_hunk_9
begin_hunk_10_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE16shrink_and_clearEv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter16.next = add i64 %prol.iter16, 1     ; 2 uses
  %prol.iter16.cmp.not = icmp eq i64 %prol.iter16.next, %xtraiter14
  br i1 %prol.iter16.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !134

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
end_hunk_10
begin_hunk_11_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE16shrink_and_clearEv:bb.a
  store ptr inttoptr (i64 -8 to ptr), ptr %i.y, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.z, %i.m
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !131

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !86
end_hunk_11
begin_hunk_12_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE16shrink_and_clearEv:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !135

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
end_hunk_12
begin_hunk_13_@_ZN4llvh8DenseMapIPN6hermes9ScopeDescES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE16shrink_and_clearEv:bb.a
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bk, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bl, %i.ay
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.i, !llvm.loop !131

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
end_hunk_13
begin_hunk_14_@llvm.smax.i32
!124 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"vtable pointer", !6, i64 0}
!127 = !{ptr @_ZN6hermes11ScopeMergerD2Ev}
!128 = distinct !{!128, !84}
!129 = !{!88, !88, i64 0}
!130 = distinct !{!130, !100}
!131 = distinct !{!131, !84}
!132 = distinct !{!132, !100}
!133 = distinct !{!133, !84}
!134 = distinct !{!134, !100}
!135 = distinct !{!135, !100}
end_hunk_14
