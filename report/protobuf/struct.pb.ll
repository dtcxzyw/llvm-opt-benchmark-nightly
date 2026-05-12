inline.NumInlined: 784
inline.NumDeleted: 459
begin_hunk_0_@_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %2 = xor i64 %i.s, 126
  invoke void @_ZSt16__introsort_loopIPPKvlN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.q, i64 noundef %2)
          to label %.noexc unwind label %bb.i

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal13MapEntryFuncsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE17InternalSerializeEiRKS8_RKS9_PhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = or i32 %i.o, 1
  %i.q = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %5 = xor i32 %i.q, 31
  %i.r = mul nuw nsw i32 %5, 9
  %i.s = add nuw nsw i32 %i.r, 73
  %i.t = lshr i32 %i.s, 6
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal13MapEntryFuncsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE17InternalSerializeEiRKS8_RKS9_PhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.v = load atomic i32, ptr %i.u monotonic, align 8 ; 2 uses
  %i.w = or i32 %i.v, 1
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %6 = xor i32 %i.x, 31
  %i.y = mul nuw nsw i32 %6, 9
  %i.z = add nuw nsw i32 %i.y, 73
  %i.aa = lshr i32 %i.z, 6
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf6Struct12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = or i32 %i.af, 1
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true)
  %1 = xor i32 %i.ah, 31
  %i.ai = mul nuw nsw i32 %1, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf6Struct12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = or i32 %i.ap, 1
  %i.ar = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %2 = xor i32 %i.ar, 31
  %i.as = mul nuw nsw i32 %2, 9
  %i.at = add nuw nsw i32 %i.as, 73
  %i.au = lshr i32 %i.at, 6
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf6Struct12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %3 = xor i32 %i.ba, 31
  %i.bb = mul nuw nsw i32 %3, 9
  %i.bc = add nuw nsw i32 %i.bb, 73
  %i.bd = lshr i32 %i.bc, 6
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf5Value12ByteSizeLongEv:bb.a
  %i.e = or i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %1 = xor i64 %i.g, 63
  %i.h = mul nuw nsw i64 %1, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf5Value12ByteSizeLongEv:bb.a
  %i.s = trunc i64 %i.r to i32
  %i.t = or i32 %i.s, 1
  %i.u = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.t, i1 true)
  %2 = xor i32 %i.u, 31
  %i.v = mul nuw nsw i32 %2, 9
  %i.w = add nuw nsw i32 %i.v, 73
  %i.x = lshr i32 %i.w, 6
end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf5Value12ByteSizeLongEv:bb.a
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %3 = xor i32 %i.ag, 31
  %i.ah = mul nuw nsw i32 %3, 9
  %i.ai = add nuw nsw i32 %i.ah, 73
  %i.aj = lshr i32 %i.ai, 6
end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf5Value12ByteSizeLongEv:bb.a
  %i.bs = trunc i64 %i.br to i32
  %i.bt = or i32 %i.bs, 1
  %i.bu = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %4 = xor i32 %i.bu, 31
  %i.bv = mul nuw nsw i32 %4, 9
  %i.bw = add nuw nsw i32 %i.bv, 73
  %i.bx = lshr i32 %i.bw, 6
end_hunk_9
begin_hunk_10_@_ZNK6google8protobuf5Value12ByteSizeLongEv:bb.a
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = or i32 %i.ce, 1
  %i.cg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cf, i1 true)
  %5 = xor i32 %i.cg, 31
  %i.ch = mul nuw nsw i32 %5, 9
  %i.ci = add nuw nsw i32 %i.ch, 73
  %i.cj = lshr i32 %i.ci, 6
end_hunk_10
begin_hunk_11_@_ZNK6google8protobuf9ListValue12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = or i32 %i.ad, 1
  %i.af = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %1 = xor i32 %i.af, 31
  %i.ag = mul nuw nsw i32 %1, 9
  %i.ah = add nuw nsw i32 %i.ag, 73
  %i.ai = lshr i32 %i.ah, 6
end_hunk_11
