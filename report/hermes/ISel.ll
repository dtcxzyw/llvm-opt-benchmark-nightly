inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6hermes3hbc7HBCISel18resolveRelocationsEv:bb.a
  %i.up = add i32 %i.uo, 1
  store i32 %i.up, ptr %i.e, align 8, !tbaa !119
  %i.uq = load ptr, ptr %i.un, align 8, !tbaa !116
  %i.ur = icmp eq ptr %i.uq, inttoptr (i64 -8 to ptr)
  br i1 %i.ur, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JEEEPSC_SG_OT_DpOT0_.exit.i168, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.us = load i32, ptr %i.f, align 4, !tbaa !120
  %i.ut = add i32 %i.us, -1
  store i32 %i.ut, ptr %i.f, align 4, !tbaa !120
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JEEEPSC_SG_OT_DpOT0_.exit.i168

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JEEEPSC_SG_OT_DpOT0_.exit.i168: ; preds = %bb.ca, %bb.bz
  store ptr %i.mw, ptr %i.un, align 8, !tbaa !116
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.uu, i8 0, i64 40, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructEOS4_.exit172

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructEOS4_.exit172: ; preds = %bb.bt, %bb.br, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JEEEPSC_SG_OT_DpOT0_.exit.i168
  %.0.i159 = phi ptr [ %i.un, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIS4_JEEEPSC_SG_OT_DpOT0_.exit.i168 ], [ %i.sr, %bb.br ], [ %i.td, %bb.bt ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.0.i159, i64 8
  store i32 %i.y, ptr %i.uv, align 8, !tbaa !129
  br label %bb.cb

bb.cb:                                            ; preds = %bb.n, %bb.o, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructEOS4_.exit172, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructEOS4_.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70, %.lr.ph
  %.246 = phi i32 [ %.044329, %.lr.ph ], [ %.044329, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructEOS4_.exit172 ], [ %.044329, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70 ], [ %.044329, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92 ], [ %.044329, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructEOS4_.exit ], [ %i.cv, %bb.n ], [ %.044329, %bb.o ]
  %.2 = phi i1 [ %.0330, %.lr.ph ], [ %.0330, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructEOS4_.exit172 ], [ %.0330, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit70 ], [ %.0330, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit92 ], [ %.0330, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructEOS4_.exit ], [ true, %bb.n ], [ %.0330, %bb.o ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.047328, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.uw, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.b, %._crit_edge
  ret void
}

declare void @_ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #3

declare void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel24resolveExceptionHandlersEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::DenseMap.77", align 8 ; 6 uses
  %2 = alloca %"struct.llvh::detail::DenseMapPair", align 8 ; 6 uses
  %3 = alloca %"class.llvh::SmallVector.84", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !84   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !85   ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.l ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %.idx.i = mul nuw nsw i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 5 uses
  %.not5.i5.i10.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not5.i5.i10.i2.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i

.lr.ph.i6.i12.i3.i:                               ; preds = %bb.d, %.critedge2.i8.i14.i6.i
  %.sroa.0.3.i4.i = phi ptr [ %i.p, %.critedge2.i8.i14.i6.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %.sroa.0.3.i4.i, align 8, !tbaa !86
  %magicptr.i7.i13.i5.i = ptrtoint ptr %i.o to i64
  switch i64 %magicptr.i7.i13.i5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i14.i6.i
    i64 -16, label %.critedge2.i8.i14.i6.i
  ]

.critedge2.i8.i14.i6.i:                           ; preds = %.lr.ph.i6.i12.i3.i, %.lr.ph.i6.i12.i3.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i, i64 24 ; 2 uses
  %.not.i9.i15.i7.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i9.i15.i7.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i, !llvm.loop !130

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i3.i, %.critedge2.i8.i14.i6.i, %bb.c, %bb.d
  %.pn14.i = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.d ], [ %.sroa.0.3.i4.i, %.lr.ph.i6.i12.i3.i ], [ %i.n, %.critedge2.i8.i14.i6.i ] ; 2 uses
  %.pn12.i = phi ptr [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %.critedge2.i8.i14.i6.i ], [ %i.n, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %.not1718 = icmp eq ptr %.pn14.i, %i.q
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.t = load ptr, ptr %0, align 8, !tbaa !131
  call void @_ZN6hermes25generateExceptionHandlersERN4llvh8DenseMapIPNS_9CatchInstENS_17CatchCoverageInfoENS0_12DenseMapInfoIS3_EENS0_6detail12DenseMapPairIS3_S4_EEEERNS1_IPNS_10BasicBlockESt4pairIjjENS5_ISD_EENS8_ISD_SF_EEEEPNS_8FunctionE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::SmallVector.84") align 8 %3, ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.t) #20
  %i.u = load ptr, ptr %3, align 8, !tbaa !75     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not20 = icmp eq i32 %i.w, 0
  br i1 %.not20, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit
  %.sroa.014.019 = phi ptr [ %.pn14.i, %.lr.ph ], [ %.sroa.014.2, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.019, i64 24, i1 false)
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !3
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !3
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjjENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ac, ptr %i.af, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 24 ; 3 uses
  %.not5.i3.i = icmp eq ptr %i.ah, %.pn12.i
  br i1 %.not5.i3.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.e, %.critedge2.i6.i
  %.sroa.014.1 = phi ptr [ %i.aj, %.critedge2.i6.i ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = load ptr, ptr %.sroa.014.1, align 8, !tbaa !86
  %magicptr.i5.i = ptrtoint ptr %i.ai to i64
  switch i64 %magicptr.i5.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit [
    i64 -8, label %.critedge2.i6.i
    i64 -16, label %.critedge2.i6.i
  ]

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i, %.lr.ph.i4.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.1, i64 24 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.aj, %.pn12.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !130

_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt4pairIjS3_ENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %bb.e
  %.sroa.014.2 = phi ptr [ %i.ah, %bb.e ], [ %i.aj, %.critedge2.i6.i ], [ %.sroa.014.1, %.lr.ph.i4.i ] ; 2 uses
  %.not17 = icmp eq ptr %.sroa.014.2, %i.q
  br i1 %.not17, label %._crit_edge, label %bb.e

._crit_edge24.loopexit:                           ; preds = %bb.g
  %.pre = load ptr, ptr %3, align 8, !tbaa !75
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %._crit_edge
  %i.ak = phi ptr [ %.pre, %._crit_edge24.loopexit ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN4llvh11SmallVectorIN6hermes20ExceptionHandlerInfoELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge24
  call void @free(ptr noundef %i.ak) #20
  br label %_ZN4llvh11SmallVectorIN6hermes20ExceptionHandlerInfoELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes20ExceptionHandlerInfoELj4EED2Ev.exit: ; preds = %._crit_edge24, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.an = load ptr, ptr %1, align 8, !tbaa !135
  call void @_ZdlPv(ptr noundef %i.an) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph23, %bb.g
  %.021 = phi ptr [ %i.u, %.lr.ph23 ], [ %i.ap, %bb.g ] ; 3 uses
  %.sroa.03.0.copyload = load i64, ptr %.021, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !96
  call void @_ZN6hermes3hbc25BytecodeFunctionGenerator19addExceptionHandlerENS0_23HBCExceptionHandlerInfoE(ptr noundef nonnull align 8 dereferenceable(200) %i.ao, i64 %.sroa.03.0.copyload, i32 %.sroa.5.0.copyload) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.y
  br i1 %.not, label %._crit_edge24.loopexit, label %bb.g

bb.h:                                             ; preds = %bb.a, %_ZN4llvh11SmallVectorIN6hermes20ExceptionHandlerInfoELj4EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6hermes25generateExceptionHandlersERN4llvh8DenseMapIPNS_9CatchInstENS_17CatchCoverageInfoENS0_12DenseMapInfoIS3_EENS0_6detail12DenseMapPairIS3_S4_EEEERNS1_IPNS_10BasicBlockESt4pairIjjENS5_ISD_EENS8_ISD_SF_EEEEPNS_8FunctionE(ptr dead_on_unwind writable sret(%"class.llvh::SmallVector.84") align 8, ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #3

declare void @_ZN6hermes3hbc25BytecodeFunctionGenerator19addExceptionHandlerENS0_23HBCExceptionHandlerInfoE(ptr noundef nonnull align 8 dereferenceable(200), i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel17generateJumpTableEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.7.i.i.i.i.i = alloca [12 x i8], align 4  ; 4 uses
  %1 = alloca %"class.std::vector.61", align 8    ; 10 uses
  %2 = alloca %"class.llvh::SmallVector.91", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.g = load i32, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.h, 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 3 uses
  %.not5.i5.i10.i2.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i5.i10.i2.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i

.lr.ph.i6.i12.i3.i:                               ; preds = %bb.b, %.critedge2.i8.i14.i6.i
  %.sroa.0.3.i4.i = phi ptr [ %i.k, %.critedge2.i8.i14.i6.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.3.i4.i, align 8, !tbaa !116
  %magicptr.i7.i13.i5.i = ptrtoint ptr %i.j to i64
  switch i64 %magicptr.i7.i13.i5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i14.i6.i
    i64 -16, label %.critedge2.i8.i14.i6.i
  ]

.critedge2.i8.i14.i6.i:                           ; preds = %.lr.ph.i6.i12.i3.i, %.lr.ph.i6.i12.i3.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i, i64 48 ; 2 uses
  %.not.i9.i15.i7.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i9.i15.i7.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i, !llvm.loop !138

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i3.i, %.critedge2.i8.i14.i6.i, %bb.b
  %.pn14.i = phi ptr [ %i.e, %bb.b ], [ %i.i, %.critedge2.i8.i14.i6.i ], [ %.sroa.0.3.i4.i, %.lr.ph.i6.i12.i3.i ]
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !73
  call void @_ZN4llvh15SmallVectorImplINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEE6appendINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEvEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr %.pn14.i, ptr %i.i, ptr %i.l, ptr %i.l)
  %i.p = load ptr, ptr %2, align 8, !tbaa !75     ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !72   ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 3 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %._crit_edge41, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit
  %i.t = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = xor i64 %i.u, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_"(ptr noundef %i.p, ptr noundef nonnull %i.s, i64 noundef %i.v)
  %i.w = icmp ugt i32 %i.q, 16
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 768 ; 2 uses
  call fastcc void @"_ZSt16__insertion_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_"(ptr noundef nonnull %i.p, ptr noundef nonnull %i.x)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.08.i.i.i.i = phi ptr [ %i.bf, %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.x, %bb.d ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.y = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %.sroa.4.8.copyload.i.i.i.i.i = load i32, ptr %i.z, align 8 ; 3 uses
  %.sroa.7.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx.i.i.i.i.i, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ae = getelementptr i8, ptr %.08.i.i.i.i, i64 -40 ; 2 uses
  %.0.val18.i.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !143
  %i.af = icmp ult i32 %.sroa.4.8.copyload.i.i.i.i.i, %.0.val18.i.i.i.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i
  %i.ag = phi ptr [ %i.au, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %.0919.i.i.i.i.i = phi ptr [ %.020.i.i.i.i.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ] ; 9 uses
  %.020.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i.i.i.i, i64 -48 ; 3 uses
  %i.ah = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !116
  store ptr %i.ah, ptr %.0919.i.i.i.i.i, align 8, !tbaa !139
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.0919.i.i.i.i.i, i64 -24 ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !142
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !141
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !141
  %i.ap = getelementptr inbounds i8, ptr %.0919.i.i.i.i.i, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !142
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.at) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.au = getelementptr i8, ptr %.0919.i.i.i.i.i, i64 -88 ; 2 uses
  %.0.val.i.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !143
  %i.av = icmp ult i32 %.sroa.4.8.copyload.i.i.i.i.i, %.0.val.i.i.i.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !145

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %.0919.i.i.i.i.i, i64 -8
  %.pre.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !144
  %.pre22.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !142
  %i.ax = ptrtoint ptr %.pre22.i.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ay = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ax, %._crit_edge.loopexit.i.i.i.i.i ]
  %i.az = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 3 uses
  %.09.lcssa.i.i.i.i.i = phi ptr [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 5 uses
  store ptr %i.y, ptr %.09.lcssa.i.i.i.i.i, align 8, !tbaa !139
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.4.8.copyload.i.i.i.i.i, ptr %i.ba, align 8
  %.sroa.7.8..sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx13.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i.i.i.i.i, i64 12, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 40
  store <2 x ptr> %i.ab, ptr %i.bb, align 8, !tbaa !141
  store ptr %i.ad, ptr %i.bc, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i10.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i10.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.ay, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #22
  br label %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit.i.i.i.i"

"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.s
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEZNS7_17generateJumpTableEvE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !146

bb.g:                                             ; preds = %bb.c
  call fastcc void @"_ZSt16__insertion_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_"(ptr noundef nonnull %i.p, ptr noundef nonnull %i.s)
  br label %"_ZSt4sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEZNS7_17generateJumpTableEvE3$_0EvT_SC_T0_.exit"

"_ZSt4sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEZNS7_17generateJumpTableEvE3$_0EvT_SC_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.g
  %.pr = load i32, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.bh = zext i32 %.pr to i64
  %.idx42 = mul nuw nsw i64 %i.bh, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx42
  %.not38 = icmp eq i32 %.pr, 0
  br i1 %.not38, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %"_ZSt4sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEZNS7_17generateJumpTableEvE3$_0EvT_SC_T0_.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

._crit_edge41:                                    ; preds = %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5beginEv.exit, %"_ZSt4sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEZNS7_17generateJumpTableEvE3$_0EvT_SC_T0_.exit"
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !96
  call void @_ZN6hermes3hbc25BytecodeFunctionGenerator12setJumpTableEOSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(200) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %i.bs = load ptr, ptr %2, align 8, !tbaa !75    ; 3 uses
  %i.bt = load i32, ptr %i.n, align 8, !tbaa !72  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge41
  %i.bu = zext i32 %i.bt to i64
  %.idx.i15 = mul nuw nsw i64 %i.bu, 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i15
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.bw, %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i.i ], [ %i.bv, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i, i64 -24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bz = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !142
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #22
  br label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i.i

_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %.not.i.i16 = icmp eq ptr %i.bs, %i.bw
  br i1 %.not.i.i16, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !147

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i: ; preds = %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !75
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.i

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i, %._crit_edge41
  %i.ce = phi ptr [ %.pre.i, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i ], [ %i.bs, %._crit_edge41 ] ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.m
  br i1 %i.cf, label %_ZN4llvh11SmallVectorINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELj1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.i
  call void @free(ptr noundef %i.ce) #20
  br label %_ZN4llvh11SmallVectorINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELj1EED2Ev.exit

_ZN4llvh11SmallVectorINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELj1EED2Ev.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.cg = load ptr, ptr %1, align 8, !tbaa !148   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11SmallVectorINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELj1EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !151
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4llvh11SmallVectorINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELj1EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ag

bb.k:                                             ; preds = %.lr.ph40, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit
  %.01339 = phi ptr [ %i.bg, %.lr.ph40 ], [ %i.dn, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01339, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.cm, align 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01339, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01339, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !152 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !144 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = icmp ugt i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.m, label %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i, !prof !153

bb.m:                                             ; preds = %bb.l
  call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.cv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #24
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !141 ; 3 uses
  %.pre52 = load ptr, ptr %i.co, align 8, !tbaa !141 ; 2 uses
  %.pre53 = ptrtoint ptr %.pre52 to i64
  %.pre54 = ptrtoint ptr %.pre to i64
  %i.cw = icmp eq ptr %.pre52, %.pre
  br label %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i, %bb.k
  %.pre-phi55 = phi i64 [ %.pre54, %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.cs, %bb.k ]
  %.pre-phi = phi i64 [ %.pre53, %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.cr, %bb.k ]
  %.not43 = phi i1 [ %i.cw, %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %bb.k ]
  %i.cx = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.cq, %bb.k ] ; 2 uses
  %i.cy = phi ptr [ %i.cv, %_ZNSt15__new_allocatorIPN6hermes10BasicBlockEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.k ] ; 5 uses
  %i.cz = sub i64 %.pre-phi, %.pre-phi55          ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 8
  br i1 %i.da, label %bb.n, label %bb.o, !prof !74

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cy, ptr align 8 %i.cx, i64 %i.cz, i1 false)
  br label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i.i
  %i.db = icmp eq i64 %i.cz, 8
  br i1 %i.db, label %bb.p, label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !86
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit

_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.dd = load ptr, ptr %i.bj, align 8, !tbaa !154 ; 2 uses
  %i.de = load ptr, ptr %1, align 8, !tbaa !148   ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = lshr exact i64 %i.dh, 2
  %i.dj = trunc i64 %i.di to i32
  %i.dk = ashr exact i64 %i.cz, 3
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit
  %i.dl = load ptr, ptr %i.bp, align 8, !tbaa !96
  %i.dm = add i32 %.sroa.0.0.copyload, 2
  call void @_ZN6hermes3hbc25BytecodeFunctionGenerator21updateJumpTableOffsetEjjj(ptr noundef nonnull align 8 dereferenceable(200) %i.dl, i32 noundef %i.dm, i32 noundef %i.dj, i32 noundef %.sroa.0.0.copyload) #20
  %.not.i.i.i.i17 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i17, label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.ct) #22
  br label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit

_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit:   ; preds = %._crit_edge, %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %.01339, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.dn, %i.bi
  br i1 %.not, label %._crit_edge41, label %bb.k

.lr.ph:                                           ; preds = %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.do = phi ptr [ %i.he, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.de, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit ] ; 5 uses
  %i.dp = phi ptr [ %i.hf, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.dd, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit ] ; 4 uses
  %i.dq = phi i64 [ %i.hh, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit ]
  %.037 = phi i32 [ %i.hg, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %_ZN6hermes3hbc7HBCISel13SwitchImmInfoC2ERKS2_.exit ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq ; 3 uses
  %i.ds = load ptr, ptr %i.bk, align 8, !tbaa !84 ; 2 uses
  %i.dt = load i32, ptr %i.bl, align 8, !tbaa !85 ; 7 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt4pairIjS4_ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !86 ; 3 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = lshr i32 %i.dx, 4
  %i.dz = lshr i32 %i.dx, 9
  %i.ea = xor i32 %i.dy, %i.dz
  %i.eb = add i32 %i.dt, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.ea, %i.eb            ; 2 uses
  %i.ec = zext nneg i32 %.02944.i.i.i to i64
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.ec ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !86 ; 2 uses
  %i.ef = icmp eq ptr %i.dv, %i.ee
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i, i64 16, i1 false)
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !141
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.bt = icmp ult i32 %.val29.i.i, %.val28.i.i
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i31.i.i)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i31.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.bw = getelementptr inbounds i8, ptr %.02949, i64 -24 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.02949, i64 -8 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !116
  store ptr %i.bz, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 16, i1 false)
  %i.ca = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !141
  store <2 x ptr> %i.ca, ptr %i.h, align 8, !tbaa !141
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !142
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !142
  store ptr %i.bu, ptr %i.bg, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i31.i.i, i64 16, i1 false)
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !141
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i31.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i32.i.i)
  %i.cc = load ptr, ptr %0, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i32.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !116
  store ptr %i.ce, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 16, i1 false)
  %i.cf = load <2 x ptr>, ptr %i.j, align 8, !tbaa !141
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !142
  store ptr %i.cg, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i32.i.i, i64 16, i1 false)
  %i.ch = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.cf, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.ch, ptr %i.j, align 8, !tbaa !141
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i32.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph51
  %i.ci = icmp ult i32 %.val29.i.i, %.val28.i.i
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i33.i.i)
  %i.cj = load ptr, ptr %0, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i33.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !116
  store ptr %i.cl, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 16, i1 false)
  %i.cm = load <2 x ptr>, ptr %i.j, align 8, !tbaa !141
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !142
  store ptr %i.cn, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i33.i.i, i64 16, i1 false)
  %i.co = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.cm, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.co, ptr %i.j, align 8, !tbaa !141
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i33.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cp = icmp ult i32 %.val30.i.i, %.val28.i.i
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i34.i.i)
  %i.cq = load ptr, ptr %0, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i34.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.cs = getelementptr inbounds i8, ptr %.02949, i64 -24 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.02949, i64 -8 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.bg, align 8, !tbaa !116
  store ptr %i.cv, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 16, i1 false)
  %i.cw = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !141
  store <2 x ptr> %i.cw, ptr %i.h, align 8, !tbaa !141
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !142
  store ptr %i.cx, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cq, ptr %i.bg, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i34.i.i, i64 16, i1 false)
  store <2 x ptr> %i.cu, ptr %i.cs, align 8, !tbaa !141
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i34.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i35.i.i)
  %i.cy = load ptr, ptr %0, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i35.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.dd = load ptr, ptr %i.bf, align 8, !tbaa !116
  store ptr %i.dd, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.de = load <2 x ptr>, ptr %i.da, align 8, !tbaa !141
  store <2 x ptr> %i.de, ptr %i.h, align 8, !tbaa !141
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !142
  store ptr %i.df, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cy, ptr %i.bf, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i35.i.i, i64 16, i1 false)
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !141
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i35.i.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02949, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.di, %bb.s ], [ %i.e, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.val15.i.i = load i32, ptr %i.g, align 8, !tbaa !143 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.di, %bb.q ] ; 12 uses
  %i.dg = getelementptr i8, ptr %.1.i.i, i64 8
  %.1.val.i.i = load i32, ptr %i.dg, align 8, !tbaa !143
  %i.dh = icmp ult i32 %.1.val.i.i, %.val15.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48 ; 2 uses
  br i1 %i.dh, label %bb.q, label %.preheader.i.i.preheader, !llvm.loop !581

.preheader.i.i.preheader:                         ; preds = %bb.q
  %i.dj = getelementptr i8, ptr %.1.i.i, i64 8    ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -48 ; 5 uses
  %i.dk = getelementptr i8, ptr %.013.pn.i.i, i64 -40
  %.114.val.i.i = load i32, ptr %i.dk, align 8, !tbaa !143
  %i.dl = icmp ult i32 %.val15.i.i, %.114.val.i.i
  br i1 %i.dl, label %.preheader.i.i, label %bb.r, !llvm.loop !582

bb.r:                                             ; preds = %.preheader.i.i
  %i.dm = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.dm, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr i8, ptr %.013.pn.i.i, i64 -40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i13.i)
  %i.do = load ptr, ptr %.1.i.i, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i13.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !142
  %i.ds = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %i.dv = load ptr, ptr %.114.i.i, align 8, !tbaa !116
  store ptr %i.dv, ptr %.1.i.i, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i64 16, i1 false)
  %i.dw = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !141
  store <2 x ptr> %i.dw, ptr %i.dp, align 8, !tbaa !141
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !142
  store ptr %i.dx, ptr %i.dq, align 8, !tbaa !142
  store ptr %i.do, ptr %.114.i.i, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i13.i, i64 16, i1 false)
  store <2 x ptr> %i.du, ptr %i.ds, align 8, !tbaa !141
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i13.i)
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !583

"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02949, i64 noundef %i.bd)
  %i.dy = ptrtoint ptr %.1.i.i to i64
  %i.dz = sub i64 %i.dy, %i.a                     ; 3 uses
  %i.ea = icmp sgt i64 %i.dz, 768
  br i1 %i.ea, label %bb.b, label %"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !578

"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 96076792050570581) %1, i64 noundef range(i64 -192153584101141162, 192153584101141163) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %.sroa.5 = alloca [12 x i8], align 4            ; 2 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit
  %.037 = phi i64 [ %spec.select, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl nuw nsw i64 %.037, 1                 ; 3 uses
  %i.e = add nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load i32, ptr %i.h, align 8, !tbaa !143
  %i.i = getelementptr i8, ptr %i.g, i64 56
  %.val28 = load i32, ptr %i.i, align 8, !tbaa !143
  %i.j = icmp ult i32 %.val, %.val28
  %i.k = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.j, i64 %i.k, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %spec.select ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.037 ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !116
  store ptr %i.n, ptr %i.m, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !144  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !142
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !141
  store <2 x ptr> %i.v, ptr %i.q, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142
  store ptr %i.x, ptr %i.t, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aa) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit: ; preds = %.lr.ph, %bb.b
  %i.ab = icmp slt i64 %spec.select, %i.b
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !584

._crit_edge:                                      ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit ] ; 5 uses
  %i.ac = and i64 %2, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

bb.c:                                             ; preds = %._crit_edge
  %i.ae = add nsw i64 %2, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa ; 4 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !116
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !144 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142
  %i.at = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !141
  store <2 x ptr> %i.at, ptr %i.ao, align 8, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !142
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.aq, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  %.127 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !139
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.ba, align 8 ; 2 uses
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.8..sroa_idx, i64 12, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bf = icmp samesign ugt i64 %.127, %1
  br i1 %i.bf, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %.0133.i = phi i64 [ %.0410.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %.127, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30 ] ; 3 uses
  %.04.in.i = add nsw i64 %.0133.i, -1
  %.0410.i = lshr i64 %.04.in.i, 1                ; 4 uses
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0410.i ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %.val.i = load i32, ptr %i.bh, align 8, !tbaa !143
  %i.bi = icmp ult i32 %.val.i, %.sroa.2.8.copyload
  br i1 %i.bi, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0133.i ; 4 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !116
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !144 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !142
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !141
  store <2 x ptr> %i.br, ptr %i.bm, align 8, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !142
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bw) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i: ; preds = %bb.g, %bb.f
  %i.bx = icmp samesign ugt i64 %.0410.i, %1
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i, !llvm.loop !585

.critedge.i:                                      ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, %.lr.ph.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30
  %.013.lcssa.i = phi i64 [ %.127, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30 ], [ %.0133.i, %.lr.ph.i ], [ %.0410.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ]
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.013.lcssa.i ; 5 uses
  store ptr %i.az, ptr %i.by, align 8, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %.sroa.2.8.copyload, ptr %i.bz, align 8
  %.sroa.5.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.8..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !144 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !142
  store <2 x ptr> %i.bc, ptr %i.ca, align 8, !tbaa !141
  store ptr %i.be, ptr %i.cc, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i15.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i15.i, label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #22
  br label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit

_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit: ; preds = %bb.h, %.critedge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %.sroa.7.i = alloca [12 x i8], align 4          ; 4 uses
  %.sroa.4 = alloca { i32, ptr }, align 8         ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not20 = icmp eq ptr %.019, %1
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.022 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.i ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.022, %bb.i ] ; 8 uses
  %i.f = getelementptr i8, ptr %.pn21, i64 56     ; 2 uses
  %.0.val = load i32, ptr %i.f, align 8, !tbaa !143 ; 4 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !143
  %i.g = icmp ult i32 %.0.val, %.val
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.h = load ptr, ptr %.022, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 72 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %.pn21, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.m = ptrtoint ptr %.022 to i64
  %i.n = sub i64 %i.m, %i.c                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn21, i64 96
  %i.q = udiv exact i64 %i.n, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ah, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.s, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.r, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %.022, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !116
  store ptr %i.t, ptr %i.s, align 8, !tbaa !139
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 16, i1 false)
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !144  ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !141
  store <2 x ptr> %i.ab, ptr %i.w, align 8, !tbaa !141
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ah = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit, !llvm.loop !586

_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !144 ; 3 uses
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !142
  store <2 x ptr> %i.j, ptr %i.d, align 8, !tbaa !141
  store ptr %i.l, ptr %i.e, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #22
  br label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit

_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit: ; preds = %bb.e, %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ao = load ptr, ptr %.022, align 8, !tbaa !139
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx.i, i64 12, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn21, i64 72 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn21, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.at = getelementptr i8, ptr %.pn21, i64 8     ; 2 uses
  %.0.val18.i = load i32, ptr %i.at, align 8, !tbaa !143
  %i.au = icmp ult i32 %.0.val, %.0.val18.i
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %i.av = phi ptr [ %i.bj, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %i.at, %bb.f ]
  %.0919.i = phi ptr [ %.020.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %.022, %bb.f ] ; 9 uses
  %.020.i = getelementptr inbounds i8, ptr %.0919.i, i64 -48 ; 3 uses
  %i.aw = load ptr, ptr %.020.i, align 8, !tbaa !116
  store ptr %i.aw, ptr %.0919.i, align 8, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0919.i, i64 24 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.0919.i, i64 -24 ; 3 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !144 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0919.i, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !141
  store <2 x ptr> %i.bd, ptr %i.ay, align 8, !tbaa !141
  %i.be = getelementptr inbounds i8, ptr %.0919.i, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !142
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bi) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.bj = getelementptr i8, ptr %.0919.i, i64 -88 ; 2 uses
  %.0.val.i = load i32, ptr %i.bj, align 8, !tbaa !143
  %i.bk = icmp ult i32 %.0.val, %.0.val.i
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !145

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %i.bl = getelementptr inbounds i8, ptr %.0919.i, i64 -8
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !144
  %.pre22.i = load ptr, ptr %i.bl, align 8, !tbaa !142
  %i.bm = ptrtoint ptr %.pre22.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.bn = phi i64 [ 0, %bb.f ], [ %i.bm, %._crit_edge.loopexit.i ]
  %i.bo = phi ptr [ null, %bb.f ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.09.lcssa.i = phi ptr [ %.022, %bb.f ], [ %.020.i, %._crit_edge.loopexit.i ] ; 5 uses
  store ptr %i.ao, ptr %.09.lcssa.i, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  store i32 %.0.val, ptr %i.bp, align 8
  %.sroa.7.8..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx13.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, i64 12, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 40
  store <2 x ptr> %i.aq, ptr %i.bq, align 8, !tbaa !141
  store ptr %i.as, ptr %i.br, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i10.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i10.i, label %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.bn, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit": ; preds = %._crit_edge.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit, %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit"
  %.0 = getelementptr inbounds nuw i8, ptr %.022, i64 48 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !587

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !89, !llvm.loop !101

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !557
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !103
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !74

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !102
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !557
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 7 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !102
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !103
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !103
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !99
  store ptr %i.av, ptr %i.an, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, i8 0, i64 96, i1 false)
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store i32 8, ptr %i.az, align 4, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !114    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !116    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !89, !llvm.loop !118

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !561
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !119 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_1
