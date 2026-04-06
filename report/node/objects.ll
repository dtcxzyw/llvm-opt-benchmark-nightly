begin_hunk_0_@_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE:bb.a
  %i.av = load i64, ptr %i.l, align 8             ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.au, %i.aq       ; 3 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64
  %i.aw = shl nuw nsw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add nuw nsw i64 %i.aw, 12884901888
  %3 = lshr exact i64 %sext.i14.i, 29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %3
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.av
  br i1 %i.az, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE:bb.a
  %i.bs = load i64, ptr %i.aq, align 8            ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.br, %.0.i.i     ; 3 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64
  %i.bt = shl nuw nsw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add nuw nsw i64 %i.bt, 21474836480
  %3 = lshr exact i64 %sext.i14.i, 29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.bs
  br i1 %i.bw, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EENS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.07.0.in34.i.i = and i32 %i.t, %.0.i.i.i  ; 2 uses
  %.sroa.07.035.i.i = zext nneg i32 %.sroa.07.0.in34.i.i to i64 ; 2 uses
  %i.v = shl nuw nsw i64 %.sroa.07.035.i.i, 32
  %sext.i36.i.i = add nuw nsw i64 %i.v, 21474836480
  %5 = lshr exact i64 %sext.i36.i.i, 29
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %5
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.q
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EENS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsE:bb.a
  %i.be = load i64, ptr %i.d, align 8             ; 2 uses
  %.sroa.09.0.in12.i.i = and i32 %i.bc, %.0.i.i.i13 ; 2 uses
  %.sroa.09.013.i.i = zext nneg i32 %.sroa.09.0.in12.i.i to i64 ; 3 uses
  %i.bf = shl nuw nsw i64 %.sroa.09.013.i.i, 32
  %sext.i14.i.i = add nuw nsw i64 %i.bf, 21474836480
  %6 = lshr exact i64 %sext.i14.i.i, 29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %6
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.be
  br i1 %i.bi, label %_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE12UncheckedAddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEEvPSA_T0_IS2_ENS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsE.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.r, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.u = shl nuw nsw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add nuw nsw i64 %i.u, 21474836480
  %6 = lshr exact i64 %sext.i14.i, 29
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %6
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.t
  br i1 %i.x, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
end_hunk_4
begin_hunk_5_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_12LocalIsolateENS0_12DirectHandleELNS0_14AllocationTypeE1EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.s = load i64, ptr %.sroa.0.0.copyload.i21, align 8 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.q, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.t = shl nuw nsw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add nuw nsw i64 %i.t, 21474836480
  %6 = lshr exact i64 %sext.i14.i, 29
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %6
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.s
  br i1 %i.w, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.r, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.u = shl nuw nsw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add nuw nsw i64 %i.u, 21474836480
  %6 = lshr exact i64 %sext.i14.i, 29
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %6
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.t
  br i1 %i.x, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
end_hunk_6
begin_hunk_7_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_12LocalIsolateENS0_6HandleELNS0_14AllocationTypeE1EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.s = load i64, ptr %.sroa.0.0.copyload.i, align 8 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.q, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.t = shl nuw nsw i64 %.sroa.09.013.i, 32
  %sext.i14.i = add nuw nsw i64 %i.t, 21474836480
  %6 = lshr exact i64 %sext.i14.i, 29
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %6
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.s
  br i1 %i.w, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE18FindInsertionEntryENS0_16PtrComprCageBaseENS0_13ReadOnlyRootsEj.exit, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal9StringSet3AddEPNS0_7IsolateENS0_6HandleIS1_EENS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.ab = load i64, ptr %i.f, align 8             ; 2 uses
  %.sroa.09.0.in12.i.i = and i32 %i.z, %i.r       ; 4 uses
  %.sroa.09.013.i.i = zext nneg i32 %.sroa.09.0.in12.i.i to i64
  %i.ac = shl nuw nsw i64 %.sroa.09.013.i.i, 32
  %sext.i14.i.i = add nuw nsw i64 %i.ac, 12884901888
  %3 = lshr exact i64 %sext.i14.i.i, 29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %3
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ab
  br i1 %i.af, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE18FindInsertionEntryINS0_7IsolateEEENS0_13InternalIndexEPT_j.exit, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.lr.ph.i.i
end_hunk_8
begin_hunk_9_@_ZN2v88internal9StringSet3HasEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.07.0.in42.i.i = and i32 %i.u, %i.m       ; 2 uses
  %.sroa.07.043.i.i = zext nneg i32 %.sroa.07.0.in42.i.i to i64
  %i.x = shl nuw nsw i64 %.sroa.07.043.i.i, 32
  %sext.i44.i.i = add nuw nsw i64 %i.x, 12884901888
  %3 = lshr exact i64 %sext.i44.i.i, 29
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %3
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6StringEEE.exit, label %.lr.ph.i.i
end_hunk_9
