inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE:bb.a
  %i.au = add i32 %i.at, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.au, %i.aq       ; 3 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64
  %i.av = shl nuw nsw i64 %.sroa.09.013.i, 3
  %3 = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %i.ay = load i64, ptr %i.l, align 8             ; 2 uses
  %i.az = icmp eq i64 %i.ax, %i.ay
end_hunk_0
begin_hunk_1_@_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE6RehashENS0_16PtrComprCageBaseENS0_6TaggedIS2_EE:bb.a
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.br, %.0.i.i     ; 3 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.09.013.i, 3
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bs
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8 ; 2 uses
  %i.bv = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.bw = icmp eq i64 %i.bu, %i.bv
end_hunk_1
begin_hunk_2_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EENS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.07.0.in34.i.i = and i32 %i.t, %.0.i.i.i  ; 2 uses
  %.sroa.07.035.i.i = zext nneg i32 %.sroa.07.0.in34.i.i to i64 ; 2 uses
  %i.v = shl nuw nsw i64 %.sroa.07.035.i.i, 3
  %5 = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.q
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE14UncheckedAtPutEPNS0_7IsolateENS0_12DirectHandleIS2_EENS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.sroa.09.0.in12.i.i = and i32 %i.bc, %.0.i.i.i13 ; 2 uses
  %.sroa.09.013.i.i = zext nneg i32 %.sroa.09.0.in12.i.i to i64 ; 3 uses
  %i.be = shl nuw nsw i64 %.sroa.09.013.i.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8 ; 2 uses
  %i.bh = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bi = icmp eq i64 %i.bg, %i.bh
end_hunk_3
begin_hunk_4_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_12DirectHandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.r, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.t = shl nuw nsw i64 %.sroa.09.013.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = load i64, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
end_hunk_4
begin_hunk_5_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_12LocalIsolateENS0_12DirectHandleELNS0_14AllocationTypeE1EQsr3stdE16is_convertible_vITL0_0_IT_ENS7_ISA_EEEEET0_IS2_EPSA_SE_NS7_INS0_4NameEEENS7_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.q, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.s = shl nuw nsw i64 %.sroa.09.013.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.v = load i64, ptr %.sroa.0.0.copyload.i21, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
end_hunk_5
begin_hunk_6_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_7IsolateENS0_6HandleELNS0_14AllocationTypeE0EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.r, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.t = shl nuw nsw i64 %.sroa.09.013.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = load i64, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
end_hunk_6
begin_hunk_7_@_ZN2v88internal10DictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE3AddINS0_12LocalIsolateENS0_6HandleELNS0_14AllocationTypeE1EQsr3stdE16is_convertible_vITL0_0_IT_ENS0_12DirectHandleISA_EEEEET0_IS2_EPSA_SF_NSC_INS0_4NameEEENSC_INS0_6ObjectEEENS0_15PropertyDetailsEPNS0_13InternalIndexE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.09.0.in12.i = and i32 %i.q, %.0.i.i      ; 2 uses
  %.sroa.09.013.i = zext nneg i32 %.sroa.09.0.in12.i to i64 ; 3 uses
  %i.s = shl nuw nsw i64 %.sroa.09.013.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.v = load i64, ptr %.sroa.0.0.copyload.i, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
end_hunk_7
begin_hunk_8_@_ZN2v88internal9StringSet3AddEPNS0_7IsolateENS0_6HandleIS1_EENS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %.sroa.09.0.in12.i.i = and i32 %i.z, %i.r       ; 4 uses
  %.sroa.09.013.i.i = zext nneg i32 %.sroa.09.0.in12.i.i to i64
  %i.ab = shl nuw nsw i64 %.sroa.09.013.i.i, 3
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.ae = load i64, ptr %i.f, align 8             ; 2 uses
  %i.af = icmp eq i64 %i.ad, %i.ae
end_hunk_8
begin_hunk_9_@_ZN2v88internal9StringSet3HasEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.07.0.in42.i.i = and i32 %i.u, %i.m       ; 2 uses
  %.sroa.07.043.i.i = zext nneg i32 %.sroa.07.0.in42.i.i to i64
  %i.x = shl nuw nsw i64 %.sroa.07.043.i.i, 3
  %3 = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %_ZN2v88internal9HashTableINS0_9StringSetENS0_14StringSetShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_6TaggedINS0_6StringEEE.exit, label %.lr.ph.i.i
end_hunk_9
