inline.NumInlined: 488
inline.NumDeleted: 154
begin_hunk_0_@_ZN6google8protobuf8internal14WireFormatLite9Int32SizeERKNS0_13RepeatedFieldIiEE:bb.a
  %i.aw = or i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %1 = sub nuw nsw i64 63, %i.ay
  %i.az = mul nuw nsw i64 %1, 9
  %i.ba = add nuw nsw i64 %i.az, 73
  %i.bb = lshr i64 %i.ba, 6
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE:bb.a
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = or i32 %i.ap, 1
  %i.ar = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %1 = sub nuw nsw i32 31, %i.ar
  %i.as = mul nuw nsw i32 %1, 9
  %i.at = add nuw nsw i32 %i.as, 73
  %i.au = lshr i32 %i.at, 6
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal14WireFormatLite10SInt32SizeERKNS0_13RepeatedFieldIiEE:bb.a
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %1 = sub nuw nsw i32 31, %i.ba
  %i.bb = mul nuw nsw i32 %1, 9
  %i.bc = add nuw nsw i32 %i.bb, 73
  %i.bd = lshr i32 %i.bc, 6
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal14WireFormatLite8EnumSizeERKNS0_13RepeatedFieldIiEE:bb.a
  %i.aw = or i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %1 = sub nuw nsw i64 63, %i.ay
  %i.az = mul nuw nsw i64 %1, 9
  %i.ba = add nuw nsw i64 %i.az, 73
  %i.bb = lshr i64 %i.ba, 6
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE:bb.a
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = or i64 %i.k, 1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %1 = sub nuw nsw i64 63, %i.m
  %i.n = mul nuw nsw i64 %1, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE:bb.a
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = or i64 %i.s, 1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %2 = sub nuw nsw i64 63, %i.u
  %i.v = mul nuw nsw i64 %2, 9
  %i.w = add nuw nsw i64 %i.v, 73
  %i.x = lshr i64 %i.w, 6
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE:bb.a
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = or i64 %i.ab, 1
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %3 = sub nuw nsw i64 63, %i.ad
  %i.ae = mul nuw nsw i64 %3, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE:bb.a
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = or i64 %i.k, 1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %1 = sub nuw nsw i64 63, %i.m
  %i.n = mul nuw nsw i64 %1, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE:bb.a
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = or i64 %i.s, 1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %2 = sub nuw nsw i64 63, %i.u
  %i.v = mul nuw nsw i64 %2, 9
  %i.w = add nuw nsw i64 %i.v, 73
  %i.x = lshr i64 %i.w, 6
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE:bb.a
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = or i64 %i.ab, 1
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %3 = sub nuw nsw i64 63, %i.ad
  %i.ae = mul nuw nsw i64 %3, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE:bb.a
  %i.n = xor i64 %i.l, %i.m
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %1 = sub nuw nsw i64 63, %i.p
  %i.q = mul nuw nsw i64 %1, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE:bb.a
  %i.y = xor i64 %i.w, %i.x
  %i.z = or i64 %i.y, 1
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %2 = sub nuw nsw i64 63, %i.aa
  %i.ab = mul nuw nsw i64 %2, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE:bb.a
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = or i64 %i.ak, 1
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %3 = sub nuw nsw i64 63, %i.am
  %i.an = mul nuw nsw i64 %3, 9
  %i.ao = add nuw nsw i64 %i.an, 73
  %i.ap = lshr i64 %i.ao, 6
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf8internal14WireFormatLite26Int32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE:bb.a
  %i.az = or i32 %i.ay, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %3 = sub nuw nsw i64 63, %i.bb
  %i.bc = mul nuw nsw i64 %3, 9
  %i.bd = add nuw nsw i64 %i.bc, 73
  %i.be = lshr i64 %i.bd, 6
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf8internal14WireFormatLite26Int32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE:bb.a
  %i.bm = or i32 %i.bj, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %4 = sub nuw nsw i64 63, %i.bo
  %i.bp = mul nuw nsw i64 %4, 9
  %i.bq = add nuw nsw i64 %i.bp, 73
  %i.br = lshr i64 %i.bq, 6
end_hunk_14
begin_hunk_15_@_ZN6google8protobuf8internal14WireFormatLite26Int64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %3 = sub nuw nsw i64 63, %i.p
  %i.q = mul nuw nsw i64 %3, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
end_hunk_15
begin_hunk_16_@_ZN6google8protobuf8internal14WireFormatLite26Int64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = or i64 %i.w, 1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %4 = sub nuw nsw i64 63, %i.y
  %i.z = mul nuw nsw i64 %4, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
end_hunk_16
begin_hunk_17_@_ZN6google8protobuf8internal14WireFormatLite26Int64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.af = or i64 %i.ae, 1
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %5 = sub nuw nsw i64 63, %i.ag
  %i.ah = mul nuw nsw i64 %5, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
end_hunk_17
begin_hunk_18_@_ZN6google8protobuf8internal14WireFormatLite26Int64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %sext = ashr exact i64 %i.an, 32
  %i.ao = or i64 %sext, 1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %6 = sub nuw nsw i64 63, %i.ap
  %i.aq = mul nuw nsw i64 %6, 9
  %i.ar = add nuw nsw i64 %i.aq, 73
  %i.as = lshr i64 %i.ar, 6
end_hunk_18
begin_hunk_19_@_ZN6google8protobuf8internal14WireFormatLite27UInt32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIjEEmRKNS1_10CachedSizeE:bb.a
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = or i32 %i.as, 1
  %i.au = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %3 = sub nuw nsw i32 31, %i.au
  %i.av = mul nuw nsw i32 %3, 9
  %i.aw = add nuw nsw i32 %i.av, 73
  %i.ax = lshr i32 %i.aw, 6
end_hunk_19
begin_hunk_20_@_ZN6google8protobuf8internal14WireFormatLite27UInt32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIjEEmRKNS1_10CachedSizeE:bb.a
  %i.bd = or i32 %.5.lcssa.i, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %4 = sub nuw nsw i64 63, %i.bf
  %i.bg = mul nuw nsw i64 %4, 9
  %i.bh = add nuw nsw i64 %i.bg, 73
  %i.bi = lshr i64 %i.bh, 6
end_hunk_20
begin_hunk_21_@_ZN6google8protobuf8internal14WireFormatLite27UInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldImEEmRKNS1_10CachedSizeE:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %3 = sub nuw nsw i64 63, %i.p
  %i.q = mul nuw nsw i64 %3, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
end_hunk_21
begin_hunk_22_@_ZN6google8protobuf8internal14WireFormatLite27UInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldImEEmRKNS1_10CachedSizeE:bb.a
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = or i64 %i.w, 1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %4 = sub nuw nsw i64 63, %i.y
  %i.z = mul nuw nsw i64 %4, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
end_hunk_22
begin_hunk_23_@_ZN6google8protobuf8internal14WireFormatLite27UInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldImEEmRKNS1_10CachedSizeE:bb.a
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.af = or i64 %i.ae, 1
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %5 = sub nuw nsw i64 63, %i.ag
  %i.ah = mul nuw nsw i64 %5, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
end_hunk_23
begin_hunk_24_@_ZN6google8protobuf8internal14WireFormatLite27UInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldImEEmRKNS1_10CachedSizeE:bb.a
  %sext = ashr exact i64 %i.an, 32
  %i.ao = or i64 %sext, 1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %6 = sub nuw nsw i64 63, %i.ap
  %i.aq = mul nuw nsw i64 %6, 9
  %i.ar = add nuw nsw i64 %i.aq, 73
  %i.as = lshr i64 %i.ar, 6
end_hunk_24
begin_hunk_25_@_ZN6google8protobuf8internal14WireFormatLite27SInt32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE:bb.a
  %i.bb = xor i32 %i.az, %i.ba
  %i.bc = or i32 %i.bb, 1
  %i.bd = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %3 = sub nuw nsw i32 31, %i.bd
  %i.be = mul nuw nsw i32 %3, 9
  %i.bf = add nuw nsw i32 %i.be, 73
  %i.bg = lshr i32 %i.bf, 6
end_hunk_25
begin_hunk_26_@_ZN6google8protobuf8internal14WireFormatLite27SInt32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE:bb.a
  %i.bm = or i32 %.5.lcssa.i, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %4 = sub nuw nsw i64 63, %i.bo
  %i.bp = mul nuw nsw i64 %4, 9
  %i.bq = add nuw nsw i64 %i.bp, 73
  %i.br = lshr i64 %i.bq, 6
end_hunk_26
begin_hunk_27_@_ZN6google8protobuf8internal14WireFormatLite27SInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %i.q = xor i64 %i.o, %i.p
  %i.r = or i64 %i.q, 1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %3 = sub nuw nsw i64 63, %i.s
  %i.t = mul nuw nsw i64 %3, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
end_hunk_27
begin_hunk_28_@_ZN6google8protobuf8internal14WireFormatLite27SInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %i.ac = xor i64 %i.aa, %i.ab
  %i.ad = or i64 %i.ac, 1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %4 = sub nuw nsw i64 63, %i.ae
  %i.af = mul nuw nsw i64 %4, 9
  %i.ag = add nuw nsw i64 %i.af, 73
  %i.ah = lshr i64 %i.ag, 6
end_hunk_28
begin_hunk_29_@_ZN6google8protobuf8internal14WireFormatLite27SInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %i.an = xor i64 %i.al, %i.am
  %i.ao = or i64 %i.an, 1
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %5 = sub nuw nsw i64 63, %i.ap
  %i.aq = mul nuw nsw i64 %5, 9
  %i.ar = add nuw nsw i64 %i.aq, 73
  %i.as = lshr i64 %i.ar, 6
end_hunk_29
begin_hunk_30_@_ZN6google8protobuf8internal14WireFormatLite27SInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE:bb.a
  %sext = ashr exact i64 %i.aw, 32
  %i.ax = or i64 %sext, 1
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %6 = sub nuw nsw i64 63, %i.ay
  %i.az = mul nuw nsw i64 %6, 9
  %i.ba = add nuw nsw i64 %i.az, 73
  %i.bb = lshr i64 %i.ba, 6
end_hunk_30
begin_hunk_31_@_ZN6google8protobuf8internal14WireFormatLite25EnumSizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE:bb.a
  %i.az = or i32 %i.ay, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %3 = sub nuw nsw i64 63, %i.bb
  %i.bc = mul nuw nsw i64 %3, 9
  %i.bd = add nuw nsw i64 %i.bc, 73
  %i.be = lshr i64 %i.bd, 6
end_hunk_31
begin_hunk_32_@_ZN6google8protobuf8internal14WireFormatLite25EnumSizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE:bb.a
  %i.bm = or i32 %i.bj, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %4 = sub nuw nsw i64 63, %i.bo
  %i.bp = mul nuw nsw i64 %4, 9
  %i.bq = add nuw nsw i64 %i.bp, 73
  %i.br = lshr i64 %i.bq, 6
end_hunk_32
