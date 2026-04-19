inline.NumInlined: 3485
inline.NumDeleted: 1496
begin_hunk_0_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit
  %.sroa.19.0 = phi ptr [ %i.p, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit ], [ null, %bb.a ] ; 8 uses
  %.sroa.022.0 = phi ptr [ %i.t, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit ], [ null, %bb.a ] ; 2 uses
  %i.u = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #21
  %i.v = and i32 %i.u, -2
  %.not37 = icmp eq i32 %i.v, 4
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a
  %i.ai = fptoui double %i.af to i32
  %i.aj = sub i32 %i.ai, %i.g
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.19.0, i64 %i.ak
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !86
  %i.am = add nuw nsw i32 %.01634, 1              ; 2 uses
  %i.an = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #21
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a
  %i.bv = icmp eq ptr %i.bu, null
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -16
  %i.bx = select i1 %i.bv, ptr null, ptr %i.bw
  %i.by = ptrtoint ptr %.sroa.022.0 to i64
  %i.bz = ptrtoint ptr %.sroa.19.0 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.022.0, %.sroa.19.0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN6hermes3hbc7HBCISel17registerSwitchImmEjPNS_13SwitchImmInstE.exit
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a
  br i1 %i.cf, label %bb.g, label %bb.h, !prof !401

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %.sroa.19.0, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a
  br i1 %i.cg, label %bb.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %.sroa.19.0, align 8, !tbaa !86
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !86
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a
  br label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit

_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit:   ; preds = %bb.j, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.19.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.19.0, i64 noundef %i.ca) #23
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EED2Ev.exit: ; preds = %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit, %bb.k
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE:bb.a

.lr.ph36:                                         ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.19.0, i64 %indvars.iv ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !86
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.l, label %bb.m
end_hunk_6
begin_hunk_7_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_:bb.a
  %.020 = phi ptr [ %i.bk, %_ZN6hermes17CatchCoverageInfoD2Ev.exit ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit ] ; 8 uses
  %i.u = load ptr, ptr %.020, align 8, !tbaa !99  ; 4 uses
  %magicptr = ptrtoint ptr %i.u to i64            ; 2 uses
  switch i64 %magicptr, label %3 [
    i64 -8, label %_ZN6hermes17CatchCoverageInfoD2Ev.exit
    i64 -16, label %_ZN6hermes17CatchCoverageInfoD2Ev.exit
  ]

3:                                                ; preds = %.lr.ph
  %4 = load ptr, ptr %0, align 8, !tbaa !97       ; 2 uses
  %5 = load i32, ptr %i.d, align 8, !tbaa !98     ; 2 uses
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %3
  %i.v = trunc i64 %magicptr to i32               ; 2 uses
  %i.w = lshr i32 %i.v, 4
  %i.x = lshr i32 %i.v, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = add i32 %5, -1                           ; 2 uses
  %.02944.i.i = and i32 %i.z, %i.y                ; 2 uses
  %i.aa = zext nneg i32 %.02944.i.i to i64
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %4, i64 %i.aa ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 2 uses
  %i.ad = icmp eq ptr %i.u, %i.ac
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !88
end_hunk_7
begin_hunk_8_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_:bb.a
  %i.al = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.al, %i.z                 ; 2 uses
  %i.am = zext i32 %.029.i.i to i64
  %i.an = getelementptr inbounds nuw [104 x i8], ptr %4, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99 ; 2 uses
  %i.ap = icmp eq ptr %i.u, %i.ao
  br i1 %i.ap, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !89, !llvm.loop !101

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.d, %3, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ah, %bb.c ], [ null, %3 ], [ %i.ab, %bb.b ], [ %i.an, %bb.d ] ; 7 uses
  store ptr %i.u, ptr %.sink.i.i, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.020, i64 8
end_hunk_8
