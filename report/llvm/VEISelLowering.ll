Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VEISelLowering?download=true
inline.NumInlined: 4497
inline.NumDeleted: 1598
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK4llvm16VETargetLowering21emitSjLjDispatchBlockERNS_12MachineInstrEPNS_17MachineBasicBlockE:bb.a
  %.0.i3.i.i = phi i32 [ %i.agc, %.lr.ph.i.i373 ], [ %i.agn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.age = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.agf = or disjoint i32 %i.age, %i.agd
  %i.agg = zext i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [40 x i8], ptr %i.afv, i64 %i.agg ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !16 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.agl = icmp eq ptr %i.agj, %i.agk
  br i1 %i.agl, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef %i.agj) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.bb, %bb.ba
  %i.agm = add i32 %.0.i3.i.i, -1
  %i.agn = and i32 %i.agm, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.agn, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i374, label %bb.ba, !llvm.loop !3

._crit_edge.i.i374:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i375 = icmp eq i64 %indvars.iv.next.i.i, %i.aga
  br i1 %.not.i.i.i375, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !4

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i374
  %.pr.i = load i32, ptr %i.afs, align 4, !tbaa !578 ; 2 uses
  %i.ago = icmp eq i32 %.pr.i, 0
  br i1 %i.ago, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i
  %i.agp = load ptr, ptr %61, align 8, !tbaa !576
  %i.agq = zext i32 %.pr.i to i64                 ; 2 uses
  %i.agr = mul nuw nsw i64 %i.agq, 40
  %i.ags = add nuw nsw i64 %i.agq, 31
  %i.agt = lshr i64 %i.ags, 3
  %i.agu = and i64 %i.agt, 1073741820
  %i.agv = add nuw nsw i64 %i.agu, %i.agr
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.agp, i64 noundef %i.agv, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  ret ptr %2

.lr.ph674:                                        ; preds = %.lr.ph674.prol.loopexit, %.lr.ph674
  %.0672 = phi ptr [ %i.aht, %.lr.ph674 ], [ %.0672.unr, %.lr.ph674.prol.loopexit ] ; 9 uses
  %i.agw = load ptr, ptr %.0672, align 8, !tbaa !1171
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 216
  store i8 0, ptr %i.agx, align 8, !tbaa !1158
  %i.agy = getelementptr inbounds nuw i8, ptr %.0672, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !1171
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 216
  store i8 0, ptr %i.aha, align 8, !tbaa !1158
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0672, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !1171
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 216
  store i8 0, ptr %i.ahd, align 8, !tbaa !1158
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0672, i64 24
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !1171
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 216
  store i8 0, ptr %i.ahg, align 8, !tbaa !1158
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0672, i64 32
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !1171
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 216
  store i8 0, ptr %i.ahj, align 8, !tbaa !1158
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0672, i64 40
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !1171
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 216
  store i8 0, ptr %i.ahm, align 8, !tbaa !1158
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0672, i64 48
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !1171
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 216
  store i8 0, ptr %i.ahp, align 8, !tbaa !1158
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0672, i64 56
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !1171
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 216
  store i8 0, ptr %i.ahs, align 8, !tbaa !1158
  %i.aht = getelementptr inbounds nuw i8, ptr %.0672, i64 64 ; 2 uses
  %.not293.7 = icmp eq ptr %i.aht, %i.xc
  br i1 %.not293.7, label %._crit_edge675, label %.lr.ph674
}

declare noundef ptr @_ZN4llvm15MachineFunction24getOrCreateJumpTableInfoEj(ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm20MachineJumpTableInfo20createJumpTableIndexERKSt6vectorIPNS_17MachineBasicBlockESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo18getCalleeSavedRegsEv(ptr noundef nonnull align 8 dereferenceable(520)) local_unnamed_addr #3

declare void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16VETargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !574
  switch i32 %i.b, label %bb.b [
    i32 334, label %bb.c
    i32 335, label %bb.d
    i32 337, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm16VETargetLowering17emitEHSjLjLongJmpERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK4llvm16VETargetLowering16emitEHSjLjSetJmpERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZNK4llvm16VETargetLowering21emitSjLjDispatchBlockERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %2, %bb.c ], [ %i.d, %bb.d ], [ %2, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16VETargetLowering13combineSelectEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %7 = alloca %"class.llvm::ArrayRef.271", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442  ; 6 uses
  %.sroa.051.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !280 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.041.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !280 ; 4 uses
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.744.0.copyload = load i32, ptr %.sroa.744.0..sroa_idx, align 8, !tbaa !17 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.031.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !280 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !281  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.f, align 8, !tbaa !33 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !282
  store i16 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.g, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.h = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.h, 197
  br i1 %spec.select.i.i, label %bb.g, label %bb.b

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !591
  %i.l = icmp sgt i32 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.051.0.copyload, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !281
  %i.o = zext i32 %.sroa.5.0.copyload to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.p, align 8, !tbaa !33 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !282 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.q, align 8
  %i.r = call fastcc noundef zeroext i1 @_ZL6isMImmN4llvm7SDValueE(ptr %.sroa.041.0.copyload, i32 %.sroa.744.0.copyload)
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = call fastcc noundef zeroext i1 @_ZL6isMImmN4llvm7SDValueE(ptr %.sroa.031.0.copyload, i32 %.sroa.7.0.copyload)
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef i32 @_ZN4llvm3ISD15getSetCCInverseENS0_8CondCodeENS_3EVTE(i32 noundef 22, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.744.0 = phi i32 [ %.sroa.744.0.copyload, %bb.c ], [ %.sroa.7.0.copyload, %bb.e ], [ %.sroa.744.0.copyload, %bb.d ]
  %.sroa.041.0 = phi ptr [ %.sroa.041.0.copyload, %bb.c ], [ %.sroa.031.0.copyload, %bb.e ], [ %.sroa.041.0.copyload, %bb.d ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.c ], [ %.sroa.744.0.copyload, %bb.e ], [ %.sroa.7.0.copyload, %bb.d ]
  %.sroa.031.0 = phi ptr [ %.sroa.031.0.copyload, %bb.c ], [ %.sroa.041.0.copyload, %bb.e ], [ %.sroa.031.0.copyload, %bb.d ]
  %.0 = phi i32 [ 22, %bb.c ], [ %i.t, %bb.e ], [ 22, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !426
  store i64 %i.v, ptr %5, align 8, !tbaa !426
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !434
  store i32 %i.y, ptr %i.w, align 8, !tbaa !435
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !592, !nonnull !63, !align !64 ; 2 uses
  %.not.i28 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i28, label %_ZNK4llvm3EVT15isFloatingPointEv.exit, label %.split59

.split59:                                         ; preds = %bb.f
  %i.ab = add i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i = icmp ult i16 %i.ab, 7
  %i.ac = add i16 %.sroa.0.0.copyload.i.i, -105
  %or.cond3.i.i = icmp ult i16 %i.ac, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.ad = add i16 %.sroa.0.0.copyload.i.i, -195
  %spec.select.i.i29 = icmp ult i16 %i.ad, 21
  %i.ae = or i1 %spec.select.i.i29, %or.cond4.i.i
  br i1 %i.ae, label %_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit, label %switch.lookup

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.f
  %i.af = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  br i1 %i.af, label %_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit, label %switch.lookup

switch.lookup:                                    ; preds = %.split59, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %switch.tableidx = add nsw i32 %.0, -10
  br label %_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit

_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit: ; preds = %.split59, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %switch.lookup
  %switch.tableidx.sink = phi i32 [ %switch.tableidx, %switch.lookup ], [ %.0, %_ZNK4llvm3EVT15isFloatingPointEv.exit ], [ %.0, %.split59 ]
  %switch.table._ZNK4llvm16VETargetLowering13combineSelectEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.6.sink = phi ptr [ @switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.7, %switch.lookup ], [ @switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE, %_ZNK4llvm3EVT15isFloatingPointEv.exit ], [ @switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE, %.split59 ]
  %8 = zext nneg i32 %switch.tableidx.sink to i64
  %switch.gep61 = getelementptr inbounds nuw i8, ptr %switch.table._ZNK4llvm16VETargetLowering13combineSelectEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.6.sink, i64 %8
  %switch.load62.sink = load i8, ptr %switch.gep61, align 1
  %switch.ext63 = zext i8 %switch.load62.sink to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %.sroa.051.0.copyload, ptr %6, align 16, !tbaa !280
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx53, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.041.0, ptr %i.ag, align 16, !tbaa !280
  %.sroa.744.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.744.0, ptr %.sroa.744.0..sroa_idx47, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.sroa.031.0, ptr %i.ah, align 16, !tbaa !280
  %.sroa.7.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx35, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aa, i64 noundef %switch.ext63, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract4, ptr %i.ai, align 16
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 %.fca.1.extract5, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.01.0.copyload = load i16, ptr %3, align 8, !tbaa !33
  %.sroa.23.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !282
  store ptr %6, ptr %7, align 8, !tbaa !285
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.ak, align 8, !tbaa !286
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aa, i32 noundef 538, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.271") align 8 %7) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.al, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit
  %.sroa.656.0 = phi i32 [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.fca.1.extract, %_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit ], [ 0, %.split ], [ 0, %bb.b ]
  %.sroa.055.0 = phi ptr [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.fca.0.extract, %_ZN4llvmL14fpCondCode2FccENS_3ISD8CondCodeE.exit ], [ null, %.split ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.055.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.656.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL6isMImmN4llvm7SDValueE(ptr nofree readonly captures(none) %0, i32 %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !33 ; 7 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !282 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.f, 197
  br i1 %spec.select.i.i, label %_ZN4llvmL9isMImmValEm.exit, label %.split36

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br i1 %i.g, label %_ZN4llvmL9isMImmValEm.exit, label %_ZNK4llvm3EVT9isIntegerEv.exit

.split36:                                         ; preds = %.split
  %i.h = add i16 %.sroa.0.0.copyload.i.i, -2
  %or.cond.i.i = icmp ult i16 %i.h, 10
  br i1 %or.cond.i.i, label %bb.b, label %.split44

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.i = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br i1 %i.i, label %bb.b, label %_ZNK4llvm3EVT15isFloatingPointEv.exit

bb.b:                                             ; preds = %.split36, %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  switch i32 %i.k, label %_ZN4llvmL9isMImmValEm.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.b, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.l, align 8, !tbaa !459 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !460  ; 3 uses
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.q = load i64, ptr %i.m, align 8, !tbaa !71
  %i.r = icmp eq i32 %i.o, 0
  %i.s = sub nuw nsw i32 64, %i.o
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = shl i64 %i.q, %i.t
  %i.v = ashr exact i64 %i.u, %i.t
  br i1 %i.r, label %_ZN4llvmL9isMImmValEm.exit, label %_ZN4llvmL9getImmValEPKNS_14ConstantSDNodeE.exit

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  br label %_ZN4llvmL9getImmValEPKNS_14ConstantSDNodeE.exit

_ZN4llvmL9getImmValEPKNS_14ConstantSDNodeE.exit:  ; preds = %bb.c, %bb.d
  %.0.i.i.i.i = phi i64 [ %i.v, %bb.c ], [ %i.x, %bb.d ] ; 6 uses
  %i.y = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.y, label %_ZN4llvmL9isMImmValEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmL9getImmValEPKNS_14ConstantSDNodeE.exit
  %i.z = add i64 %.0.i.i.i.i, 1
  %i.aa = and i64 %i.z, %.0.i.i.i.i
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvmL9isMImmValEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp slt i64 %.0.i.i.i.i, 0
  br i1 %i.ac, label %_ZN4llvm16isShiftedMask_64Em.exit.i, label %_ZN4llvmL9isMImmValEm.exit

_ZN4llvm16isShiftedMask_64Em.exit.i:              ; preds = %bb.f
  %i.ad = add nsw i64 %.0.i.i.i.i, 9223372036854775807
  %i.ae = or i64 %i.ad, %.0.i.i.i.i               ; 2 uses
  %i.af = add nsw i64 %i.ae, 1
  %i.ag = and i64 %i.af, %i.ae
  %i.ah = icmp eq i64 %i.ag, 0
  br label %_ZN4llvmL9isMImmValEm.exit

.split44:                                         ; preds = %.split36
  %i.ai = add i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i18 = icmp ult i16 %i.ai, 7
  br i1 %or.cond.i.i18, label %bb.g, label %_ZN4llvmL9isMImmValEm.exit

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.aj = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br i1 %i.aj, label %bb.g, label %_ZN4llvmL9isMImmValEm.exit

bb.g:                                             ; preds = %.split44, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !431
  switch i32 %i.al, label %_ZN4llvmL9isMImmValEm.exit [
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 14
  %i.am = icmp eq ptr %.sroa.21.0.copyload.i.i, null ; 2 uses
  %.not4.i = select i1 %.not.i.i, i1 %i.am, i1 false
  br i1 %.not4.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.an = getelementptr i8, ptr %0, i64 88
  %.val14 = load ptr, ptr %i.an, align 8, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %.val14, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71, !noalias !1233
  %.not.i.i23 = icmp eq ptr %i.ap, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #25
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i

bb.j:                                             ; preds = %bb.h
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #25
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i:       ; preds = %bb.j, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !460 ; 2 uses
  %i.as = icmp ult i32 %i.ar, 65                  ; 2 uses
  %i.at = load ptr, ptr %2, align 8               ; 3 uses
  %spec.select.i.i24 = select i1 %i.as, ptr %2, ptr %i.at
  %.0.i.i = load i64, ptr %spec.select.i.i24, align 8, !tbaa !71 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %or.cond.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond.i, label %_ZN4llvmL11getFpImmValEPKNS_16ConstantFPSDNodeE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.at) #29
  br label %_ZN4llvmL11getFpImmValEPKNS_16ConstantFPSDNodeE.exit

_ZN4llvmL11getFpImmValEPKNS_16ConstantFPSDNodeE.exit: ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i, %bb.k
  %i.av = icmp eq i32 %i.ar, 32
  %i.aw = shl i64 %.0.i.i, 32
  %spec.select.i = select i1 %i.av, i64 %i.aw, i64 %.0.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ax = lshr i64 %spec.select.i, 32             ; 2 uses
  %i.ay = trunc nuw i64 %i.ax to i32              ; 4 uses
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %_ZN4llvmL9isMImmValEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvmL11getFpImmValEPKNS_16ConstantFPSDNodeE.exit
  %i.ba = add i32 %i.ay, 1
end_hunk_0
begin_hunk_1_@_ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.ao = icmp eq i32 %i.al, 0
  %i.ap = sub nuw nsw i32 64, %i.al
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = shl i64 %i.an, %i.aq
  %i.as = ashr exact i64 %i.ar, %i.aq
  %.0.i.i.i.i.i = select i1 %i.ao, i64 0, i64 %i.as
  br label %_ZL7isSimm7N4llvm7SDValueE.exit

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.au = load i64, ptr %i.at, align 8, !tbaa !72
  br label %_ZL7isSimm7N4llvm7SDValueE.exit

.split42.i:                                       ; preds = %.split34.i
  %i.av = add i16 %.sroa.0.0.copyload.i.i.i, -12
  %or.cond.i.i21.i = icmp ult i16 %i.av, 7
  br i1 %or.cond.i.i21.i, label %bb.i, label %_ZL7isSimm7N4llvm7SDValueE.exit.thread

_ZNK4llvm3EVT15isFloatingPointEv.exit.i:          ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit.i
  %i.aw = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br i1 %i.aw, label %bb.i, label %_ZL7isSimm7N4llvm7SDValueE.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit.i, %.split42.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.081.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !431
  switch i32 %i.ay, label %_ZL7isSimm7N4llvm7SDValueE.exit.thread [
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.i, %bb.i
  %i.az = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %i.ba = and i16 %.sroa.0.0.copyload.i.i.i, -2
  %i.bb = icmp eq i16 %i.ba, 14
  %or.cond.i = select i1 %i.bb, i1 %i.az, i1 false
  br i1 %or.cond.i, label %bb.j, label %_ZL7isSimm7N4llvm7SDValueE.exit.thread

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.081.0.copyload, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !595
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71, !noalias !1239
  %.not.i28.i = icmp eq ptr %i.bf, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i28.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #25
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #25
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i:       ; preds = %bb.l, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !460 ; 4 uses
  %i.bi = icmp ult i32 %i.bh, 65
  br i1 %i.bi, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i, label %bb.m

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i
  %i.bj = load i64, ptr %6, align 8, !tbaa !71
  %i.bk = icmp eq i32 %i.bh, 0
  %i.bl = sub nuw nsw i32 64, %i.bh
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = shl i64 %i.bj, %i.bm
  %i.bo = ashr exact i64 %i.bn, %i.bm
  %.0.i.i.i = select i1 %i.bk, i64 0, i64 %i.bo   ; 2 uses
  %i.bp = icmp eq i32 %i.bh, 32
  %i.bq = shl i64 %.0.i.i.i, 32
  %spec.select.i = select i1 %i.bp, i64 %i.bq, i64 %.0.i.i.i
  br label %.split103

bb.m:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit.i
  %i.br = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72
  call void @_ZdaPv(ptr noundef nonnull %i.br) #29
  br label %.split103

.split103:                                        ; preds = %bb.m, %_ZNK4llvm5APInt12getSExtValueEv.exit.i
  %.in.in.i = phi i64 [ %spec.select.i, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ], [ %i.bs, %bb.m ]
  %.in.i = add i64 %.in.in.i, 64
  %i.bt = icmp ult i64 %.in.i, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.bt, label %bb.n, label %bb.o

_ZL7isSimm7N4llvm7SDValueE.exit.thread:           ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.f, %.split42.i, %_ZNK4llvm3EVT15isFloatingPointEv.exit.i, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.o

_ZL7isSimm7N4llvm7SDValueE.exit:                  ; preds = %bb.g, %bb.h
  %.0.i.i.i19.i = phi i64 [ %.0.i.i.i.i.i, %bb.g ], [ %i.au, %bb.h ]
  %i.bu = add i64 %.0.i.i.i19.i, 64
  %i.bv = icmp ult i64 %i.bu, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split103, %_ZL7isSimm7N4llvm7SDValueE.exit
  %i.bw = call noundef i32 @_ZN4llvm3ISD23getSetCCSwappedOperandsENS0_8CondCodeE(i32 noundef %i.f) #25
  br label %bb.o

bb.o:                                             ; preds = %.split103, %_ZL7isSimm7N4llvm7SDValueE.exit.thread, %_ZL7isSimm7N4llvm7SDValueE.exit, %bb.n, %bb.d
  %.sroa.791.0 = phi i32 [ %.sroa.791.0.copyload, %bb.d ], [ %.sroa.884.0.copyload, %bb.n ], [ %.sroa.791.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit ], [ %.sroa.791.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit.thread ], [ %.sroa.791.0.copyload, %.split103 ] ; 2 uses
  %.sroa.089.0 = phi ptr [ %.sroa.089.0.copyload, %bb.d ], [ %.sroa.081.0.copyload, %bb.n ], [ %.sroa.089.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit ], [ %.sroa.089.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit.thread ], [ %.sroa.089.0.copyload, %.split103 ] ; 2 uses
  %.sroa.884.0 = phi i32 [ %.sroa.884.0.copyload, %bb.d ], [ %.sroa.791.0.copyload, %bb.n ], [ %.sroa.884.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit ], [ %.sroa.884.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit.thread ], [ %.sroa.884.0.copyload, %.split103 ] ; 3 uses
  %.sroa.081.0 = phi ptr [ %.sroa.081.0.copyload, %bb.d ], [ %.sroa.089.0.copyload, %bb.n ], [ %.sroa.081.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit ], [ %.sroa.081.0.copyload, %_ZL7isSimm7N4llvm7SDValueE.exit.thread ], [ %.sroa.081.0.copyload, %.split103 ] ; 3 uses
  %.0 = phi i32 [ %i.f, %bb.d ], [ %i.bw, %bb.n ], [ %i.f, %_ZL7isSimm7N4llvm7SDValueE.exit ], [ %i.f, %_ZL7isSimm7N4llvm7SDValueE.exit.thread ], [ %i.f, %.split103 ] ; 3 uses
  %i.bx = call fastcc noundef zeroext i1 @_ZL6isMImmN4llvm7SDValueE(ptr %.sroa.071.0.copyload, i32 %.sroa.774.0.copyload)
  br i1 %i.bx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = call fastcc noundef zeroext i1 @_ZL6isMImmN4llvm7SDValueE(ptr %.sroa.061.0.copyload, i32 %.sroa.7.0.copyload)
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = call noundef i32 @_ZN4llvm3ISD15getSetCCInverseENS0_8CondCodeENS_3EVTE(i32 noundef %.0, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.774.0 = phi i32 [ %.sroa.774.0.copyload, %bb.o ], [ %.sroa.7.0.copyload, %bb.q ], [ %.sroa.774.0.copyload, %bb.p ]
  %.sroa.071.0 = phi ptr [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.061.0.copyload, %bb.q ], [ %.sroa.071.0.copyload, %bb.p ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.o ], [ %.sroa.774.0.copyload, %bb.q ], [ %.sroa.7.0.copyload, %bb.p ]
  %.sroa.061.0 = phi ptr [ %.sroa.061.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.q ], [ %.sroa.061.0.copyload, %bb.p ]
  %.1 = phi i32 [ %.0, %bb.o ], [ %i.bz, %bb.q ], [ %.0, %bb.p ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !426
  store i64 %i.cb, ptr %8, align 8, !tbaa !426
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !434
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !435
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !592, !nonnull !63, !align !64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.not.i.i.i.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 17
  %i.ch = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i.i.not.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.ch ; 2 uses
  %spec.select.i.i56 = select i1 %.not4.i.i.not.i, i16 %.sroa.0.0.copyload.i.i, i16 15
  br i1 %.not4.i.i.not.i, label %.split.i.i, label %.split.i42.i

.split.i.i:                                       ; preds = %bb.r
  %i.ci = add nsw i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i.i.i = icmp ult i16 %i.ci, 7
  br i1 %or.cond.i.i.i.i, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %.split.i.i
  switch i32 %.1, label %_ZL23safeWithoutCompWithNullN4llvm3EVTENS_3ISD8CondCodeEb.exit.i [
    i32 22, label %.sink.split.i
    i32 17, label %.sink.split.i
  ]

_ZL23safeWithoutCompWithNullN4llvm3EVTENS_3ISD8CondCodeEb.exit.i: ; preds = %bb.s
  %i.cj = add i32 %.1, -18
  %spec.select.i.i.i57 = icmp ult i32 %i.cj, 4
  br i1 %spec.select.i.i.i57, label %.sink.split.i, label %.split.i42.i

.sink.split.i:                                    ; preds = %.split.i.i, %bb.s, %bb.s, %_ZL23safeWithoutCompWithNullN4llvm3EVTENS_3ISD8CondCodeEb.exit.i
  %i.ck = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.081.0, i32 %.sroa.884.0) #25
  br i1 %i.ck, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.sink.split.i
  %i.cl = call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr %.sroa.081.0, i32 %.sroa.884.0) #25
  br i1 %i.cl, label %bb.u, label %.split.i42.i

bb.u:                                             ; preds = %bb.t, %.sink.split.i
  %i.cm = insertvalue { ptr, i32 } poison, ptr %.sroa.089.0, 0
  %i.cn = insertvalue { ptr, i32 } %i.cm, i32 %.sroa.791.0, 1
  br label %.split104

.split.i42.i:                                     ; preds = %_ZL23safeWithoutCompWithNullN4llvm3EVTENS_3ISD8CondCodeEb.exit.i, %bb.t, %bb.r
  %..i.i = phi i32 [ 539, %_ZL23safeWithoutCompWithNullN4llvm3EVTENS_3ISD8CondCodeEb.exit.i ], [ 539, %bb.t ], [ 541, %bb.r ]
  %.pre.i = add nsw i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i.i43.i = icmp ult i16 %.pre.i, 7
  %i.co = add i32 %.1, -18
  %spec.select.i.i47.i = icmp ult i32 %i.co, 4
  %i.cp = select i1 %spec.select.i.i47.i, i32 540, i32 542
  %.0.i48.i = select i1 %or.cond.i.i.i43.i, i32 %..i.i, i32 %i.cp
  store ptr %.sroa.089.0, ptr %3, align 8, !tbaa !280
  %.sroa.328.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.791.0, ptr %.sroa.328.0..sroa_idx29.i, align 8, !tbaa !17
  store ptr %.sroa.081.0, ptr %4, align 8, !tbaa !280
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.884.0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  %i.cq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cg, i32 noundef %.0.i48.i, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %spec.select.i.i56, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #25
  br label %.split104

.split104:                                        ; preds = %.split.i42.i, %bb.u
  %.fca.1.insert.merged.i = phi { ptr, i32 } [ %i.cn, %bb.u ], [ %i.cq, %.split.i42.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract8 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 1
  %i.cr = add nsw i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i = icmp ult i16 %i.cr, 7            ; 2 uses
  %switch.tableidx = add nsw i32 %.1, -10
  %switch.tableidx.sink = select i1 %or.cond.i.i, i32 %.1, i32 %switch.tableidx
  %switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.7.sink = select i1 %or.cond.i.i, ptr @switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE, ptr @switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.7
  %i.cs = zext nneg i32 %switch.tableidx.sink to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr %switch.table._ZNK4llvm16VETargetLowering15combineSelectCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.7.sink, i64 %i.cs
  %switch.load109.sink = load i8, ptr %switch.gep, align 1
  %switch.ext110 = zext i8 %switch.load109.sink to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %.fca.0.extract8, ptr %9, align 16, !tbaa !280
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.071.0, ptr %i.ct, align 16, !tbaa !280
  %.sroa.774.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.774.0, ptr %.sroa.774.0..sroa_idx77, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.sroa.061.0, ptr %i.cu, align 16, !tbaa !280
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx65, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cg, i64 noundef %switch.ext110, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.cw, 1
  store ptr %.fca.0.extract4, ptr %i.cv, align 16
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %.fca.1.extract5, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.01.0.copyload = load i16, ptr %7, align 8, !tbaa !33
  %.sroa.23.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !282
  store ptr %9, ptr %10, align 8, !tbaa !285
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.cx, align 8, !tbaa !286
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cg, i32 noundef 538, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.271") align 8 %10) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.v

bb.v:                                             ; preds = %.split104, %bb.c, %bb.b, %_ZNK4llvm3EVT8isVectorEv.exit, %.split
  %.sroa.897.1 = phi i32 [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ 0, %bb.b ], [ 0, %.split ], [ %.fca.1.extract, %.split104 ], [ 0, %bb.c ]
  %.sroa.096.1 = phi ptr [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ null, %bb.b ], [ null, %.split ], [ %.fca.0.extract, %.split104 ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.096.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.897.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef i32 @_ZN4llvm3ISD23getSetCCSwappedOperandsENS0_8CondCodeE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16VETargetLowering15combineTRUNCATEEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592, !nonnull !63, !align !64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !426
  store i64 %i.d, ptr %3, align 8, !tbaa !426
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !434
  store i32 %i.g, ptr %i.e, align 8, !tbaa !435
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !281  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.i, align 8, !tbaa !33
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !282
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !591
  %i.l = icmp sgt i32 %i.k, 2
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !442
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !438  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !431
  %i.r = icmp eq i32 %i.q, 221
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !442  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !438
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !431
  switch i32 %i.w, label %bb.e [
    i32 37, label %bb.d
    i32 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !438
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !431
  switch i32 %i.aa, label %bb.e [
    i32 37, label %.loopexit
    i32 12, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.030.035 = load ptr, ptr %i.ab, align 8, !tbaa !596 ; 2 uses
  %.not36 = icmp eq ptr %.sroa.030.035, null
  br i1 %.not36, label %.critedge25, label %.critedge

bb.f:                                             ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.030.037, i64 32
  %.sroa.030.0 = load ptr, ptr %i.ac, align 8, !tbaa !596 ; 2 uses
  %.not = icmp eq ptr %.sroa.030.0, null
  br i1 %.not, label %.critedge25, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %.sroa.030.037 = phi ptr [ %.sroa.030.0, %bb.f ], [ %.sroa.030.035, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.030.037, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !599
  %i.af = tail call fastcc noundef zeroext i1 @_ZL9isI32InsnPKN4llvm6SDNodeES2_(ptr noundef %i.ae, ptr noundef nonnull %1)
  br i1 %i.af, label %bb.f, label %.loopexit

.critedge25:                                      ; preds = %bb.f, %bb.e
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !442
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !280
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.ai = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ah, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #25
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.d, %bb.a, %.critedge25
  %.sroa.034.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.ai, %.critedge25 ], [ null, %bb.d ], [ null, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL9isI32InsnPKN4llvm6SDNodeES2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !431
  switch i32 %i.b, label %bb.l [
    i32 59, label %bb.b
    i32 60, label %bb.b
    i32 61, label %bb.b
    i32 62, label %bb.b
    i32 63, label %bb.b
    i32 222, label %bb.b
    i32 187, label %bb.b
    i32 188, label %bb.b
    i32 198, label %bb.b
    i32 199, label %bb.b
    i32 210, label %bb.b
    i32 234, label %bb.b
    i32 235, label %bb.b
    i32 324, label %bb.b
    i32 248, label %bb.b
    i32 358, label %bb.b
    i32 360, label %bb.b
    i32 542, label %bb.b
    i32 540, label %bb.b
    i32 200, label %bb.c
    i32 221, label %bb.d
    i32 538, label %bb.g
    i32 193, label %bb.k
    i32 194, label %bb.k
    i32 195, label %bb.k
    i32 219, label %bb.k
    i32 51, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !442
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !438
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !431
  %.not21 = icmp ne i32 %i.g, 200
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !442  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !438
  %.not19 = icmp eq ptr %i.k, %1
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !438
  %.not20 = icmp eq ptr %i.m, %1
  br i1 %.not20, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call fastcc noundef zeroext i1 @_ZL16isI32InsnAllUsesPKN4llvm6SDNodeES2_(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.l
end_hunk_1
