Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConstantFolding?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i32 noundef 0) #26
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit: ; preds = %bb.b, %bb.c
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit
  tail call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %2) #26
  br label %_ZN4llvm7APFloat8makeZeroEb.exit

bb.e:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit
  tail call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %2) #26
  br label %_ZN4llvm7APFloat8makeZeroEb.exit

_ZN4llvm7APFloat8makeZeroEb.exit:                 ; preds = %bb.d, %bb.e
  ret void
}

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #4

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #4

declare void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !23      ; 2 uses
  %i.b = icmp ult i8 %i.a, 30
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.j [
    i8 43, label %.critedge
    i8 45, label %.critedge
    i8 47, label %.critedge
    i8 49, label %.critedge
    i8 52, label %.critedge
    i8 55, label %.critedge
    i8 76, label %.critedge
    i8 77, label %.critedge
    i8 74, label %.critedge
    i8 75, label %.critedge
    i8 86, label %.critedge
    i8 87, label %bb.c
    i8 89, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = and i32 %i.f, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i:         ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre.i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %trunc.i.i.i.i = trunc i32 %i.k to i8           ; 2 uses
  %i.l = icmp ult i8 %trunc.i.i.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  %i.m = and i32 %i.k, 253
  %spec.select.i.i.i = icmp eq i32 %i.m, 4
  %or.cond20 = or i1 %or.cond, %spec.select.i.i.i
  br i1 %or.cond20, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i
  %trunc.i = trunc i32 %i.f to i8
  switch i8 %trunc.i, label %.loopexit.i.i [
    i8 16, label %bb.f
    i8 17, label %.preheader.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.f, 1024
  %.not26.i.i = icmp eq i32 %i.n, 0
  br i1 %.not26.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #26
  br i1 %i.o, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %.phi.trans.insert.i2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i3.i = load i32, ptr %.phi.trans.insert.i2.i, align 8
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.t, %.preheader.i.i ], [ %i.d, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = and i32 %i.v, 255
  %i.x = icmp ne i32 %i.w, 17
  %.not1828.i.i = icmp eq ptr %i.t, null
  %.not18.i.i = or i1 %.not1828.i.i, %i.x
  br i1 %.not18.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !334

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.h, %bb.e
  %i.y = phi i32 [ %i.f, %bb.e ], [ %.pre.i3.i, %bb.h ], [ %i.v, %.preheader.i.i ] ; 2 uses
  %.2.ph.i.i = phi ptr [ %i.d, %bb.e ], [ %i.r, %bb.h ], [ %i.t, %.preheader.i.i ]
  %i.z = and i32 %i.y, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.z, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

bb.i:                                             ; preds = %.loopexit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.ph.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i:       ; preds = %bb.i, %.loopexit.i.i
  %i.ad = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.y, %.loopexit.i.i ] ; 2 uses
  %trunc.i.i.i.i.i = trunc i32 %i.ad to i8        ; 2 uses
  %i.ae = icmp ult i8 %trunc.i.i.i.i.i, 6
  %switch.shifted17 = lshr i8 47, %trunc.i.i.i.i.i
  %switch.lobit18 = trunc i8 %switch.shifted17 to i1
  %or.cond19 = select i1 %i.ae, i1 %switch.lobit18, i1 false
  br i1 %or.cond19, label %.critedge, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i

_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i:    ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i
  %i.af = and i32 %i.ad, 253
  %spec.select.i.i21.i.i = icmp eq i32 %i.af, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.b
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i, %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i, %bb.g, %bb.f, %bb.a, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.j
  %.1 = phi i1 [ false, %bb.j ], [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i ], [ false, %bb.g ], [ false, %bb.f ], [ %spec.select.i.i21.i.i, %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm8Constant21containsPoisonElementEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ConstantExpr10getBitCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #26
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #26
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind strictfp uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119foldMixesPoisonBitsEPN4llvm8ConstantEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = urem i32 %1, %2
  %i.b = udiv exact i32 %1, %2                    ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm8Constant21containsPoisonElementEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %.not39.not56 = icmp eq i32 %1, 0
  br i1 %.not39.not56, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03457 = phi i32 [ %i.i, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.054 = phi i32 [ 0, %.preheader ], [ %i.h, %bb.e ] ; 2 uses
  %.02553 = phi i1 [ false, %.preheader ], [ %.025., %bb.e ]
  %.02652 = phi i1 [ false, %.preheader ], [ %..026, %bb.e ]
  %i.d = add i32 %.054, %.03457
  %i.e = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.d) #26 ; 2 uses
  %.not41.not = icmp eq ptr %i.e, null
  br i1 %.not41.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %i.e, align 8, !tbaa !23
  %i.g = icmp eq i8 %i.f, 1                       ; 2 uses
  %..026 = select i1 %i.g, i1 true, i1 %.02652    ; 2 uses
  %not. = xor i1 %i.g, true
  %.025. = select i1 %not., i1 true, i1 %.02553   ; 2 uses
  %i.h = add i32 %.054, 1                         ; 2 uses
  %.not40 = icmp eq i32 %i.h, %i.b
  br i1 %.not40, label %._crit_edge, label %bb.d, !llvm.loop !335

._crit_edge:                                      ; preds = %bb.e
  %or.cond = select i1 %..026, i1 %.025., i1 false ; 2 uses
  %i.i = add i32 %.03457, %i.b                    ; 2 uses
  %.not39.not = icmp eq i32 %i.i, %1
  %or.cond70 = select i1 %or.cond, i1 true, i1 %.not39.not
  br i1 %or.cond70, label %.critedge, label %.preheader, !llvm.loop !336

.critedge:                                        ; preds = %._crit_edge, %bb.d, %bb.c, %bb.b
  %.7 = phi i1 [ %i.c, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ %or.cond, %._crit_edge ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm14SmallBitVectorC2Ejb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  store i64 1, ptr %0, align 8, !tbaa !169
  %i.a = icmp ult i32 %1, 58
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = shl nuw i64 %i.b, 58
  %i.d = shl nsw i64 -1, %i.b
  %i.e = xor i64 %i.d, -1
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = select i1 %2, i64 %i.f, i64 0
  %i.h = or i64 %i.c, %i.g
  %i.i = or disjoint i64 %i.h, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 8 uses
  %i.k = add i32 %1, 63                           ; 2 uses
  %i.l = lshr i32 %i.k, 6                         ; 3 uses
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %.neg.i = sext i1 %2 to i64                     ; 18 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 8 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !99
  %i.q = icmp ugt i32 %i.k, 447
  br i1 %i.q, label %bb.d, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 8, !tbaa !95
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.j, ptr noundef nonnull %i.n, i64 noundef %i.m, i64 noundef 8) #26
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !18   ; 5 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i
  %i.t = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8    ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter12 = and i64 %i.v, 7                   ; 2 uses
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.r, %bb.d ] ; 2 uses
  %prol.iter14 = phi i64 [ %prol.iter14.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter14.next = add i64 %prol.iter14, 1     ; 2 uses
  %prol.iter14.cmp.not = icmp eq i64 %prol.iter14.next, %xtraiter12
  br i1 %prol.iter14.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !337

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.r, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.t, 56
  br i1 %i.x, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %.neg.i, ptr %i.y, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.neg.i, ptr %i.z, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %.neg.i, ptr %i.aa, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 32
  store i64 %.neg.i, ptr %i.ab, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 40
  store i64 %.neg.i, ptr %i.ac, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 48
  store i64 %.neg.i, ptr %i.ad, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 56
  store i64 %.neg.i, ptr %i.ae, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !338

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i
  %i.ah = add nsw i64 %.idx.i.i.i.i.i.i.i, -8     ; 2 uses
  %i.ai = lshr exact i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.n, %bb.e ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.e ]
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !339

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.e
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %bb.e ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.al = icmp ult i64 %i.ah, 56
  br i1 %i.al, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %.neg.i, ptr %i.am, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.neg.i, ptr %i.an, align 8, !tbaa !96
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %.neg.i, ptr %i.ao, align 8, !tbaa !96
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 %.neg.i, ptr %i.ap, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 %.neg.i, ptr %i.aq, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 %.neg.i, ptr %i.ar, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 %.neg.i, ptr %i.as, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.at, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !338

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %i.au = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.n, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  store i32 %i.l, ptr %i.o, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 %1, ptr %i.av, align 8, !tbaa !176
  br i1 %2, label %bb.f, label %_ZN4llvm9BitVectorC2Ejb.exit

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i
  %i.aw = and i32 %1, 63                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nsw i64 -1, %i.ax
  %i.az = xor i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.m
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.bd = and i64 %i.bc, %i.az
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !96
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, %bb.f, %bb.g
  %i.be = ptrtoint ptr %i.j to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %bb.b
  %storemerge = phi i64 [ %i.be, %_ZN4llvm9BitVectorC2Ejb.exit ], [ %i.i, %bb.b ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121computePoisonDstLanesEPN4llvm8ConstantEjjRNS0_14SmallBitVectorE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %2, %1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = urem i32 %1, %2
  %i.c = udiv exact i32 %1, %2                    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.d = urem i32 %2, %1
  %i.e = udiv exact i32 %2, %1                    ; 2 uses
  %.not70 = icmp eq i32 %i.d, 0
  br i1 %.not70, label %.thread71, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm8Constant21containsPoisonElementEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  %i.g = xor i1 %i.f, true
  br label %.critedge

.preheader:                                       ; preds = %bb.b, %.thread74
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread74 ], [ 0, %bb.b ] ; 5 uses
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = mul i32 %i.c, %i.h
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %i.j = add i32 %.04886, 1                       ; 2 uses
  %.not67 = icmp eq i32 %i.j, %i.c
  br i1 %.not67, label %.thread74, label %bb.e, !llvm.loop !340

bb.e:                                             ; preds = %.preheader, %bb.d
  %.04886 = phi i32 [ 0, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = add i32 %.04886, %i.i
  %i.l = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.k) #26 ; 2 uses
  %.not68 = icmp eq ptr %i.l, null
  br i1 %.not68, label %.critedge, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

_ZN4llvm14SmallBitVector9referenceaSEb.exit:      ; preds = %bb.e
  %i.m = load i8, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.d

bb.f:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %i.o = load i64, ptr %3, align 8, !tbaa !169    ; 5 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = lshr i64 %i.o, 1
  %i.r = lshr i64 %i.o, 58
  %i.s = shl nsw i64 -1, %i.r
  %i.t = xor i64 %i.s, -1
  %i.u = shl nuw i64 1, %indvars.iv
  %i.v = or i64 %i.q, %i.u
  %i.w = and i64 %i.v, %i.t
  %i.x = shl nuw i64 %i.w, 1
  %i.y = and i64 %i.o, -288230376151711743
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %3, align 8, !tbaa !169
  br label %.thread74

bb.h:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.o to ptr
  %i.ab = and i64 %indvars.iv, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = lshr i64 %indvars.iv, 6
  %i.ae = and i64 %i.ad, 67108863
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %i.ai = or i64 %i.ah, %i.ac
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !96
  br label %.thread74

.thread74:                                        ; preds = %bb.d, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond, label %.critedge, label %.preheader, !llvm.loop !341

.thread71:                                        ; preds = %.thread, %bb.k
  %.084 = phi i32 [ %.pre-phi, %bb.k ], [ 0, %.thread ] ; 4 uses
  %i.aj = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.084) #26 ; 2 uses
  %.not65.not.not.not = icmp ne ptr %i.aj, null   ; 3 uses
  br i1 %.not65.not.not.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.thread71
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !23
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = add i32 %.084, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = mul i32 %.084, %i.e
  %i.an = add i32 %.084, 1                        ; 2 uses
  %i.ao = mul i32 %i.an, %i.e
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVector3setEjj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.am, i32 noundef %i.ao) #28 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.an, %bb.j ] ; 2 uses
  %.not64.not = icmp eq i32 %.pre-phi, %1
  br i1 %.not64.not, label %.critedge, label %.thread71, !llvm.loop !342

.critedge:                                        ; preds = %bb.k, %.thread71, %.thread74, %bb.e, %bb.c
  %.8 = phi i1 [ %i.g, %bb.c ], [ false, %bb.e ], [ true, %.thread74 ], [ %.not65.not.not.not, %.thread71 ], [ %.not65.not.not.not, %bb.k ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 65
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.neg = add i32 %1, 64
  %i.c = sub i32 %.neg, %2
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 -1, %i.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = shl i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %0, align 8, !tbaa !35
  %i.l = or i64 %i.k, %i.g
  store i64 %i.l, ptr %0, align 8, !tbaa !35
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96
  %i.o = or i64 %i.n, %i.g
  store i64 %i.o, ptr %i.m, align 8, !tbaa !96
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZNK4llvm14SmallBitVector8set_bitsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !169    ; 4 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = lshr i64 %i.a, 58
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.c, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true) #28
  %i.j = trunc nuw nsw i64 %i.i to i32
  br label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit

bb.d:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !176  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i32 %i.m, -1                         ; 2 uses
  %i.p = lshr i32 %i.o, 6                         ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.r = and i32 %i.o, 63
  %i.s = xor i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t                        ; 2 uses
  %i.v = zext nneg i32 %i.p to i64
  %i.w = add nuw nsw i32 %i.p, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.w to i64
  %i.x = load i64, ptr %i.q, align 8, !tbaa !96
  %i.y = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.z = select i1 %i.y, i64 %i.u, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.x, %i.z       ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.y, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.f, %bb.h
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.h ], [ 1, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.v
  %i.ad = select i1 %i.ac, i64 %i.u, i64 -1
  %.230.i.i.i.i.i = and i64 %i.ad, %i.ab          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.h, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.ae = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %bb.g

bb.g:                                             ; preds = %.loopexit48.i.i.i.i.i, %bb.e
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.ae, %.loopexit48.i.i.i.i.i ], [ 0, %bb.e ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.e ]
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true) #28
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.ag
  br label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit

bb.h:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %.peel.next.i.i.i.i.i, !llvm.loop !1

_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit: ; preds = %bb.h, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g
  %.1.i.i.i = phi i32 [ -1, %bb.b ], [ %i.j, %bb.c ], [ -1, %bb.d ], [ %i.ah, %bb.g ], [ -1, %bb.f ], [ -1, %bb.h ]
  store ptr %1, ptr %0, align 8, !tbaa !114, !alias.scope !345
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !101, !alias.scope !345
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ai, align 8, !tbaa !114, !alias.scope !345
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !101, !alias.scope !345
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm14SmallBitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !169    ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #26
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 72) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN4llvm9BitVectorD2Ev.exit, %bb.a
  ret void
}

declare void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVector3setEjj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %_ZN4llvm9BitVector3setEjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !169    ; 5 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = zext nneg i32 %1 to i64
  %.neg = shl nsw i64 -1, %i.f
  %i.g = add i64 %i.e, %.neg
  %i.h = lshr i64 %i.b, 1
  %i.i = lshr i64 %i.b, 58
  %i.j = shl nsw i64 -1, %i.i
  %i.k = xor i64 %i.j, -1
  %i.l = or i64 %i.h, %i.g
  %i.m = and i64 %i.l, %i.k
  %i.n = shl nuw i64 %i.m, 1
  %i.o = and i64 %i.b, -288230376151711743
  %i.p = or i64 %i.o, %i.n
end_hunk_0
