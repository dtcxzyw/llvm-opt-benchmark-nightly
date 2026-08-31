Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S6_S7_S9_EEEEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESN_:bb.a
  %i.ac = zext i8 %.sroa.07.0.copyload to i64
  %i.ad = or disjoint i64 %i.ac, 256
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.07.0 = phi i64 [ %i.ad, %bb.d ], [ 264, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %.sroa.07.0, ptr %3, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..0..sroa_idx.i.i.i.i, i8 -1, i64 20, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ai
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.ae, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1160
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(28) %3)
  %.pre.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !787
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !787
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEEaSIS7_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !787
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEEaSIS7_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEEaSIS7_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.h, %bb.i
  %i.av = phi ptr [ %i.au, %bb.i ], [ %i.am, %bb.h ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ax = load ptr, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.e ; 2 uses
  store ptr %i.aw, ptr %i.ay, align 8
  %.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %.sroa.2.0..sroa_idx.i15, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEEaSIS7_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, %bb.b
  %.sroa.019.0 = phi ptr [ %.sroa.02.0.copyload.i, %bb.b ], [ %i.aw, %_ZNSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEEaSIS7_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESP_.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES5_S7_S8_SA_EEEEEEEEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISQ_SR_EESQ_(ptr noundef nonnull align 8 dereferenceable(344) %i.bc, ptr %.sroa.019.0, i32 %2)
  br label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESP_.exit

bb.l:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.e
  store i32 %2, ptr %i.bf, align 4
  br label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESP_.exit

_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE11SetVariableENS2_16SnapshotTableKeyINS2_7OpIndexENS2_12VariableDataEEESP_.exit: ; preds = %bb.k, %bb.j, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4                 ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal8compiler10turboshaftL22kOperationEffectsTableE, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload26 = load i32, ptr %i.c, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.d, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.r [
    i8 77, label %bb.c
    i8 78, label %bb.d
    i8 93, label %bb.e
    i8 95, label %bb.f
    i8 72, label %switch.lookup
    i8 100, label %bb.g
    i8 101, label %bb.h
    i8 -85, label %bb.i
    i8 8, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit
    i8 23, label %bb.j
    i8 24, label %bb.k
    i8 25, label %bb.l
    i8 28, label %bb.m
    i8 29, label %bb.n
    i8 45, label %bb.o
    i8 46, label %bb.p
    i8 50, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = and i8 %i.f, 4                           ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  %spec.select.i = select i1 %.not.i, i8 3, i8 67 ; 2 uses
  %i.h = and i8 %i.f, 64
  %.not2.i = icmp eq i8 %i.h, 0                   ; 3 uses
  %.sroa.0.0.insert.insert.i17.i.i = or disjoint i8 %spec.select.i, 12
  %.sroa.014.1.i = select i1 %.not2.i, i8 %spec.select.i, i8 %.sroa.0.0.insert.insert.i17.i.i
  %.sroa.6.1.i = select i1 %.not2.i, i32 19456, i32 20224
  %.sroa.8.1.i = select i1 %.not2.i, i8 %i.g, i8 4
  %.sroa.8.0.insert.ext.i = zext nneg i8 %.sroa.8.1.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw nsw i32 %.sroa.8.0.insert.ext.i, 16
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.6.1.i
  %.sroa.014.0.insert.ext.i = zext nneg i8 %.sroa.014.1.i to i32
  %.sroa.014.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.014.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = and i8 %i.j, 4
  %.not.i1 = icmp eq i8 %i.k, 0
  %spec.select.i2 = select i1 %.not.i1, i8 12, i8 79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i8, ptr %i.l, align 4, !range !17, !noundef !6 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = shl nuw nsw i8 %i.m, 5
  %spec.select60.i = or disjoint i8 %spec.select.i2, %i.o ; 2 uses
  %spec.select61.i = select i1 %i.n, i32 286464, i32 282368
  %i.p = and i8 %i.j, 64
  %.not3.i = icmp eq i8 %i.p, 0
  %i.q = or i8 %spec.select60.i, 3
  %.sroa.021.2.i = select i1 %.not3.i, i8 %spec.select60.i, i8 %i.q
  %.sroa.021.0.insert.ext.i = zext nneg i8 %.sroa.021.2.i to i32
  %.sroa.021.0.insert.insert.i = or disjoint i32 %spec.select61.i, %.sroa.021.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 8
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.s, align 4
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.t, align 4
  %i.v = zext nneg i8 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv, i64 %i.v
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 2
  %.sroa.015.0.insert.insert.i = select i1 %i.y, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 8
  %spec.select.i4 = select i1 %i.ab, i32 282380, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = icmp eq i8 %i.ad, 2
  %spec.select.i5 = select i1 %i.ae, i32 486483, i32 487263
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !range !17, !noundef !6 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select.i6 = select i1 %i.ah, i8 67, i8 3  ; 2 uses
  %spec.select28.i = shl nuw nsw i8 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.aj = load i8, ptr %i.ai, align 1, !range !17, !noundef !6
  %i.ak = trunc nuw i8 %i.aj to i1                ; 3 uses
  %.sroa.0.0.insert.insert.i17.i.i7 = or disjoint i8 %spec.select.i6, 12
  %.sroa.013.1.i = select i1 %i.ak, i8 %.sroa.0.0.insert.insert.i17.i.i7, i8 %spec.select.i6
  %.sroa.6.1.i8 = select i1 %i.ak, i32 20224, i32 19456
  %.sroa.013.1.i.a = select i1 %i.ak, i8 4, i8 %spec.select28.i
  %i.al = zext nneg i8 %.sroa.013.1.i.a to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, %.sroa.6.1.i8
  %.sroa.013.0.insert.ext.i = zext nneg i8 %.sroa.013.1.i to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %i.an, %.sroa.013.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.k:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !range !17, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %.sroa.09.0.insert.insert.i = select i1 %i.aq, i32 282447, i32 282380
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.l:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !range !17, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.015.0.insert.insert.i9 = select i1 %i.at, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.m:                                             ; preds = %bb.b
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.n:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i8, ptr %i.au, align 4, !range !17, !noundef !6 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  %spec.select.i14 = select i1 %i.aw, i32 67, i32 3
  %spec.select17.i = shl nuw nsw i8 %i.av, 2
  %.sroa.512.0.insert.ext.i = zext nneg i8 %spec.select17.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.49.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %spec.select.i14
  %.sroa.07.0.insert.insert.i = or disjoint i32 %.sroa.49.0.insert.insert.i, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.o:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !range !17, !noundef !6
  %i.az = trunc nuw i8 %i.ay to i1
  %.sroa.0.0.insert.insert.i.i = select i1 %i.az, i32 282380, i32 19459 ; 4 uses
  %.sroa.8.0.extract.shift21.i = and i32 %.sroa.0.0.insert.insert.i.i, 262144
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 4
  %.not.i10 = icmp eq i8 %i.bc, 0                 ; 2 uses
  %.sroa.013.0.extract.trunc.i = or i32 %.sroa.0.0.insert.insert.i.i, 67
  %spec.select.i11 = select i1 %.not.i10, i32 %.sroa.8.0.extract.shift21.i, i32 262144
  %spec.select39.i = select i1 %.not.i10, i32 %.sroa.0.0.insert.insert.i.i, i32 %.sroa.013.0.extract.trunc.i
  %.sroa.616.0.insert.ext.i = and i32 %.sroa.0.0.insert.insert.i.i, 20224
  %.sroa.616.0.insert.insert.i = or disjoint i32 %spec.select.i11, %.sroa.616.0.insert.ext.i
  %.sroa.013.0.insert.ext.i12 = and i32 %spec.select39.i, 79
  %.sroa.013.0.insert.insert.i13 = or disjoint i32 %.sroa.616.0.insert.insert.i, %.sroa.013.0.insert.ext.i12
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.p:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 4                         ; 2 uses
  %.not.i14 = icmp eq i8 %i.bf, 0
  %spec.select.i15 = select i1 %.not.i14, i32 3, i32 67
  %.sroa.512.0.insert.ext.i16 = zext nneg i8 %i.bf to i32
  %.sroa.512.0.insert.shift.i17 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i16, 16
  %.sroa.49.0.insert.insert.i18 = or disjoint i32 %.sroa.512.0.insert.shift.i17, %spec.select.i15
  %.sroa.07.0.insert.insert.i19 = or disjoint i32 %.sroa.49.0.insert.insert.i18, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.q:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = and i8 %i.bh, 4                         ; 2 uses
  %.not.i20 = icmp eq i8 %i.bi, 0
  %spec.select.i21 = select i1 %.not.i20, i32 3, i32 67
  %.sroa.512.0.insert.ext.i22 = zext nneg i8 %i.bi to i32
  %.sroa.512.0.insert.shift.i23 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i22, 16
  %.sroa.49.0.insert.insert.i24 = or disjoint i32 %.sroa.512.0.insert.shift.i23, %spec.select.i21
  %.sroa.07.0.insert.insert.i25 = or disjoint i32 %.sroa.49.0.insert.insert.i24, 19456
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.r:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit: ; preds = %switch.lookup, %bb.b, %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.014.0.insert.insert.i, %bb.c ], [ %.sroa.021.0.insert.insert.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.0.0.copyload.i3, %bb.f ], [ %.sroa.0.0.copyload26, %bb.a ], [ %.sroa.015.0.insert.insert.i, %bb.g ], [ %spec.select.i4, %bb.h ], [ %spec.select.i5, %bb.i ], [ %switch.ext, %switch.lookup ], [ %.sroa.013.0.insert.insert.i, %bb.j ], [ %.sroa.09.0.insert.insert.i, %bb.k ], [ %.sroa.015.0.insert.insert.i9, %bb.l ], [ 282383, %bb.m ], [ %.sroa.07.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i13, %bb.o ], [ %.sroa.07.0.insert.insert.i19, %bb.p ], [ %.sroa.07.0.insert.insert.i25, %bb.q ], [ 487263, %bb.b ]
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_18AssertTypesReducerENS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEE20ReduceInputGraphGotoENS2_7OpIndexERKNS2_6GotoOpE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 4
  %i.d = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !range !17, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_6GotoOpENS2_21UniformReducerAdapterIS3_SK_E22ReduceGotoContinuationEEENS2_7OpIndexESR_RKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S6_S7_S9_EEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr noundef nonnull %i.b)
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.i, align 4, !range !17
  %i.l = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i to i1
  br label %_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_6GotoOpENS2_21UniformReducerAdapterIS3_SK_E22ReduceGotoContinuationEEENS2_7OpIndexESR_RKT_.exit

_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_6GotoOpENS2_21UniformReducerAdapterIS3_SK_E22ReduceGotoContinuationEEENS2_7OpIndexESR_RKT_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef %i.h, i1 noundef zeroext %i.m) ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_18AssertTypesReducerENS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEE22ReduceInputGraphBranchENS2_7OpIndexERKNS2_8BranchOpE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 4
  %i.d = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %.sroa.0.0.copyload.i.i3.i.i.i.i.i.i.i.i.i = load i32, ptr %i.k, align 4
  %i.l = zext i32 %.sroa.0.0.copyload.i.i3.i.i.i.i.i.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i.i.i = load i32, ptr %i.o, align 8
  %i.p = lshr i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i.i.i, 4
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.u, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_8BranchOpENS2_21UniformReducerAdapterIS3_SK_E24ReduceBranchContinuationEEENS2_7OpIndexESR_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.y, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_8BranchOpENS2_21UniformReducerAdapterIS3_SK_E24ReduceBranchContinuationEEENS2_7OpIndexESR_RKT_.exit

_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_8BranchOpENS2_21UniformReducerAdapterIS3_SK_E24ReduceBranchContinuationEEENS2_7OpIndexESR_RKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE5ENS2_21UniformReducerAdapterIS3_SG_E24ReduceBranchContinuationEJNS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESS_NS0_10BranchHintEEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(1145) %0, i32 %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.h, ptr noundef %i.n, i8 noundef zeroext %i.ab)
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_18AssertTypesReducerENS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEE26ReduceInputGraphDeoptimizeENS2_7OpIndexERKNS2_12DeoptimizeOpE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noalias !790
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 8
  %i.d = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_12DeoptimizeOpENS2_21UniformReducerAdapterIS3_SK_E28ReduceDeoptimizeContinuationEEENS2_7OpIndexESR_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.m = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.m, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.n, align 4
  br label %_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_12DeoptimizeOpENS2_21UniformReducerAdapterIS3_SK_E28ReduceDeoptimizeContinuationEEENS2_7OpIndexESR_RKT_.exit

_ZN2v88internal8compiler10turboshaft18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S5_S6_S8_EEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_12DeoptimizeOpENS2_21UniformReducerAdapterIS3_SK_E28ReduceDeoptimizeContinuationEEENS2_7OpIndexESR_RKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE7ENS2_21UniformReducerAdapterIS3_SG_E28ReduceDeoptimizeContinuationEJNS2_7OpIndexEPKNS1_20DeoptimizeParametersEEEESN_DpT1_(ptr noundef nonnull align 8 dereferenceable(1656) %0, i32 %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.b)
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_18AssertTypesReducerENS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEE25ReduceInputGraphGlobalSetENS2_7OpIndexERKNS2_11GlobalSetOpE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noalias !793
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 8
  %i.d = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i.i.i.i.i.i.i, 4
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1800
end_hunk_0
