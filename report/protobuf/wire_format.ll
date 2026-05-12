inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.o = shl i32 %i.n, 3
  %i.p = or disjoint i32 %i.o, 1
  %i.q = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %1 = xor i32 %i.q, 31
  %i.r = mul nuw nsw i32 %1, 9
  %i.s = add nuw nsw i32 %i.r, 73
  %i.t = lshr i32 %i.s, 6
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  %i.x = or i64 %i.w, 1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %2 = xor i64 %i.y, 63
  %i.z = mul nuw nsw i64 %2, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.af = shl i32 %i.ae, 3
  %i.ag = or disjoint i32 %i.af, 5
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true)
  %3 = xor i32 %i.ah, 31
  %i.ai = mul nuw nsw i32 %3, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.ap = shl i32 %i.ao, 3
  %i.aq = or disjoint i32 %i.ap, 1
  %i.ar = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %4 = xor i32 %i.ar, 31
  %i.as = mul nuw nsw i32 %4, 9
  %i.at = add nuw nsw i32 %i.as, 73
  %i.au = lshr i32 %i.at, 6
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.az = shl i32 %i.ay, 3
  %i.ba = or disjoint i32 %i.az, 3
  %i.bb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ba, i1 true)
  %5 = xor i32 %i.bb, 31
  %i.bc = mul nuw nsw i32 %5, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = or i32 %i.bk, 1
  %i.bm = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bl, i1 true)
  %6 = xor i32 %i.bm, 31
  %i.bn = mul nuw nsw i32 %6, 9
  %i.bo = add nuw nsw i32 %i.bn, 73
  %i.bp = lshr i32 %i.bo, 6
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.bv = shl i32 %i.bu, 3                        ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 3
  %i.bx = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %7 = xor i32 %i.bx, 31
  %i.by = mul nuw nsw i32 %7, 9
  %i.bz = add nuw nsw i32 %i.by, 73
  %i.ca = lshr i32 %i.bz, 6
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.ce = tail call noundef i64 @_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE(ptr noundef nonnull align 8 dereferenceable(32) %i.cd)
  %i.cf = or disjoint i32 %i.bv, 5
  %i.cg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cf, i1 true)
  %8 = xor i32 %i.cg, 31
  %i.ch = mul nuw nsw i32 %8, 9
  %i.ci = add nuw nsw i32 %i.ch, 73
  %i.cj = lshr i32 %i.ci, 6
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.q = load i32, ptr %i.l, align 8, !tbaa !37
  %i.r = or i32 %i.q, 1
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %1 = xor i32 %i.s, 31
  %i.t = mul nuw nsw i32 %1, 9
  %i.u = add nuw nsw i32 %i.t, 73
  %i.v = lshr i32 %i.u, 6
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = or i32 %i.ab, 1
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ac, i1 true)
  %2 = xor i32 %i.ad, 31
  %i.ae = mul nuw nsw i32 %2, 9
  %i.af = add nuw nsw i32 %i.ae, 73
  %i.ag = lshr i32 %i.af, 6
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageE:bb.a
  %.090106109.i = phi i32 [ %i.bb, %.thread107.i ], [ %i.bf, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i ] ; 6 uses
  %i.bi = or i32 %.090106109.i, 1
  %i.bj = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %4 = xor i32 %i.bj, 31
  %i.bk = mul nuw nsw i32 %4, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8internal12MapKeySorter7SortKeyERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %6 = xor i64 %i.l, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_T1_(ptr %i.e, ptr %i.d, i64 noundef %6)
          to label %.noexc unwind label %bb.n

end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.v = trunc i64 %i.u to i32
  %i.w = or i32 %i.v, 1
  %i.x = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %6 = xor i32 %i.x, 31
  %i.y = mul nuw nsw i32 %6, 9
  %i.z = add nuw nsw i32 %i.y, 73
  %i.aa = lshr i32 %i.z, 6
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.az = or i32 %i.ay, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %7 = xor i64 %i.bb, 63
  %i.bc = mul nuw nsw i64 %7, 9
  %i.bd = add nuw nsw i64 %i.bc, 73
  %i.be = lshr i64 %i.bd, 6
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.bi = or i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %8 = xor i64 %i.bk, 63
  %i.bl = mul nuw nsw i64 %8, 9
  %i.bm = add nuw nsw i64 %i.bl, 73
  %i.bn = lshr i64 %i.bm, 6
end_hunk_14
begin_hunk_15_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.br = tail call noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.bq)
  %i.bs = or i64 %i.br, 1
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %9 = xor i64 %i.bt, 63
  %i.bu = mul nuw nsw i64 %9, 9
  %i.bv = add nuw nsw i64 %i.bu, 73
  %i.bw = lshr i64 %i.bv, 6
end_hunk_15
begin_hunk_16_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.bz = tail call noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.ca = or i64 %i.bz, 1
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %10 = xor i64 %i.cb, 63
  %i.cc = mul nuw nsw i64 %10, 9
  %i.cd = add nuw nsw i64 %i.cc, 73
  %i.ce = lshr i64 %i.cd, 6
end_hunk_16
begin_hunk_17_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.cl = xor i32 %i.cj, %i.ck
  %i.cm = or i32 %i.cl, 1
  %i.cn = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cm, i1 true)
  %11 = xor i32 %i.cn, 31
  %i.co = mul nuw nsw i32 %11, 9
  %i.cp = add nuw nsw i32 %i.co, 73
  %i.cq = lshr i32 %i.cp, 6
end_hunk_17
begin_hunk_18_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.cx = xor i32 %i.cv, %i.cw
  %i.cy = or i32 %i.cx, 1
  %i.cz = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cy, i1 true)
  %12 = xor i32 %i.cz, 31
  %i.da = mul nuw nsw i32 %12, 9
  %i.db = add nuw nsw i32 %i.da, 73
  %i.dc = lshr i32 %i.db, 6
end_hunk_18
begin_hunk_19_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.dk = xor i64 %i.di, %i.dj
  %i.dl = or i64 %i.dk, 1
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %13 = xor i64 %i.dm, 63
  %i.dn = mul nuw nsw i64 %13, 9
  %i.do = add nuw nsw i64 %i.dn, 73
  %i.dp = lshr i64 %i.do, 6
end_hunk_19
begin_hunk_20_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.dv = xor i64 %i.dt, %i.du
  %i.dw = or i64 %i.dv, 1
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %14 = xor i64 %i.dx, 63
  %i.dy = mul nuw nsw i64 %14, 9
  %i.dz = add nuw nsw i64 %i.dy, 73
  %i.ea = lshr i64 %i.dz, 6
end_hunk_20
begin_hunk_21_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ee = tail call noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.ed)
  %i.ef = or i32 %i.ee, 1
  %i.eg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ef, i1 true)
  %15 = xor i32 %i.eg, 31
  %i.eh = mul nuw nsw i32 %15, 9
  %i.ei = add nuw nsw i32 %i.eh, 73
  %i.ej = lshr i32 %i.ei, 6
end_hunk_21
begin_hunk_22_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.en = tail call noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.eo = or i32 %i.en, 1
  %i.ep = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eo, i1 true)
  %16 = xor i32 %i.ep, 31
  %i.eq = mul nuw nsw i32 %16, 9
  %i.er = add nuw nsw i32 %i.eq, 73
  %i.es = lshr i32 %i.er, 6
end_hunk_22
begin_hunk_23_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ex = tail call noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.ew)
  %i.ey = or i64 %i.ex, 1
  %i.ez = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 true)
  %17 = xor i64 %i.ez, 63
  %i.fa = mul nuw nsw i64 %17, 9
  %i.fb = add nuw nsw i64 %i.fa, 73
  %i.fc = lshr i64 %i.fb, 6
end_hunk_23
begin_hunk_24_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ff = tail call noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.fg = or i64 %i.ff, 1
  %i.fh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fg, i1 true)
  %18 = xor i64 %i.fh, 63
  %i.fi = mul nuw nsw i64 %18, 9
  %i.fj = add nuw nsw i64 %i.fi, 73
  %i.fk = lshr i64 %i.fj, 6
end_hunk_24
begin_hunk_25_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.go = trunc i64 %i.gn to i32
  %i.gp = or i32 %i.go, 1
  %i.gq = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gp, i1 true)
  %19 = xor i32 %i.gq, 31
  %i.gr = mul nuw nsw i32 %19, 9
  %i.gs = add nuw nsw i32 %i.gr, 73
  %i.gt = lshr i32 %i.gs, 6
end_hunk_25
begin_hunk_26_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.hd = trunc i64 %i.hc to i32
  %i.he = or i32 %i.hd, 1
  %i.hf = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.he, i1 true)
  %20 = xor i32 %i.hf, 31
  %i.hg = mul nuw nsw i32 %20, 9
  %i.hh = add nuw nsw i32 %i.hg, 73
  %i.hi = lshr i32 %i.hh, 6
end_hunk_26
begin_hunk_27_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = or i32 %i.hq, 1
  %i.hs = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hr, i1 true)
  %21 = xor i32 %i.hs, 31
  %i.ht = mul nuw nsw i32 %21, 9
  %i.hu = add nuw nsw i32 %i.ht, 73
  %i.hv = lshr i32 %i.hu, 6
end_hunk_27
begin_hunk_28_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ie = or i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.if, i1 true)
  %22 = xor i64 %i.ig, 63
  %i.ih = mul nuw nsw i64 %22, 9
  %i.ii = add nuw nsw i64 %i.ih, 73
  %i.ij = lshr i64 %i.ii, 6
end_hunk_28
begin_hunk_29_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ip = or i32 %i.io, 1
  %i.iq = sext i32 %i.ip to i64
  %i.ir = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.iq, i1 true)
  %23 = xor i64 %i.ir, 63
  %i.is = mul nuw nsw i64 %23, 9
  %i.it = add nuw nsw i64 %i.is, 73
  %i.iu = lshr i64 %i.it, 6
end_hunk_29
begin_hunk_30_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = or i32 %i.ji, 1
  %i.jk = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jj, i1 true)
  %24 = xor i32 %i.jk, 31
  %i.jl = mul nuw nsw i32 %24, 9
  %i.jm = add nuw nsw i32 %i.jl, 73
  %i.jn = lshr i32 %i.jm, 6
end_hunk_30
begin_hunk_31_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = or i32 %i.kc, 1
  %i.ke = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kd, i1 true)
  %25 = xor i32 %i.ke, 31
  %i.kf = mul nuw nsw i32 %25, 9
  %i.kg = add nuw nsw i32 %i.kf, 73
  %i.kh = lshr i32 %i.kg, 6
end_hunk_31
begin_hunk_32_@_ZN6google8protobuf8internal10WireFormat8ByteSizeERKNS0_7MessageE:bb.a
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !37
  %i.bu = or i32 %i.bt, 1
  %i.bv = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bu, i1 true)
  %2 = xor i32 %i.bv, 31
  %i.bw = mul nuw nsw i32 %2, 9
  %i.bx = add nuw nsw i32 %i.bw, 73
  %i.by = lshr i32 %i.bx, 6
end_hunk_32
begin_hunk_33_@_ZN6google8protobuf8internal10WireFormat8ByteSizeERKNS0_7MessageE:bb.a
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = or i32 %i.ce, 1
  %i.cg = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cf, i1 true)
  %3 = xor i32 %i.cg, 31
  %i.ch = mul nuw nsw i32 %3, 9
  %i.ci = add nuw nsw i32 %i.ch, 73
  %i.cj = lshr i32 %i.ci, 6
end_hunk_33
begin_hunk_34_@_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.y = load i32, ptr %i.x, align 4, !tbaa !131
  %i.z = or i32 %i.y, 1
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %2 = xor i32 %i.aa, 31
  %i.ab = mul nuw nsw i32 %2, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
end_hunk_34
begin_hunk_35_@_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.ak = trunc i64 %i.aj to i32
  %i.al = or i32 %i.ak, 1
  %i.am = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.al, i1 true)
  %3 = xor i32 %i.am, 31
  %i.an = mul nuw nsw i32 %3, 9
  %i.ao = add nuw nsw i32 %i.an, 73
  %i.ap = lshr i32 %i.ao, 6
end_hunk_35
begin_hunk_36_@_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.bs = shl i32 %i.br, 3
  %i.bt = or disjoint i32 %i.bs, 1
  %i.bu = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %4 = xor i32 %i.bu, 31
  %i.bv = mul nuw nsw i32 %4, 9
  %i.bw = add nuw nsw i32 %i.bv, 73
  %i.bx = lshr i32 %i.bw, 6
end_hunk_36
begin_hunk_37_@_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.bz = trunc i64 %i.bo to i32
  %i.ca = or i32 %i.bz, 1
  %i.cb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true)
  %5 = xor i32 %i.cb, 31
  %i.cc = mul nuw nsw i32 %5, 9
  %i.cd = add nuw nsw i32 %i.cc, 73
  %i.ce = lshr i32 %i.cd, 6
end_hunk_37
begin_hunk_38_@_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.cm = shl i32 %i.cj, 3
  %i.cn = or disjoint i32 %i.cm, 1
  %i.co = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %6 = xor i32 %i.co, 31
  %i.cp = mul nuw nsw i32 %6, 9
  %i.cq = add nuw nsw i32 %i.cp, 73
  %i.cr = lshr i32 %i.cq, 6
end_hunk_38
begin_hunk_39_@_ZN6google8protobuf8internal10WireFormat22MessageSetItemByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  %i.f = or i32 %i.e, 1
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %2 = xor i32 %i.g, 31
  %i.h = mul nuw nsw i32 %2, 9
  %i.i = add nuw nsw i32 %i.h, 73
  %i.j = lshr i32 %i.i, 6
end_hunk_39
begin_hunk_40_@_ZN6google8protobuf8internal10WireFormat22MessageSetItemByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
  %i.q = trunc i64 %i.p to i32
  %i.r = or i32 %i.q, 1
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %3 = xor i32 %i.s, 31
  %i.t = mul nuw nsw i32 %3, 9
  %i.u = add nuw nsw i32 %i.t, 73
  %i.v = lshr i32 %i.u, 6
end_hunk_40
begin_hunk_41_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.e = or i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %4 = xor i64 %i.g, 63
  %i.h = mul nuw nsw i64 %4, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
end_hunk_41
begin_hunk_42_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.k = tail call noundef i64 @_ZNK6google8protobuf6MapKey13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.l = or i64 %i.k, 1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %5 = xor i64 %i.m, 63
  %i.n = mul nuw nsw i64 %5, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
end_hunk_42
begin_hunk_43_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.q = tail call noundef i32 @_ZNK6google8protobuf6MapKey14GetUInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.r = or i32 %i.q, 1
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %6 = xor i32 %i.s, 31
  %i.t = mul nuw nsw i32 %6, 9
  %i.u = add nuw nsw i32 %i.t, 73
  %i.v = lshr i32 %i.u, 6
end_hunk_43
begin_hunk_44_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.x = tail call noundef i64 @_ZNK6google8protobuf6MapKey14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %7 = xor i64 %i.z, 63
  %i.aa = mul nuw nsw i64 %7, 9
  %i.ab = add nuw nsw i64 %i.aa, 73
  %i.ac = lshr i64 %i.ab, 6
end_hunk_44
begin_hunk_45_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = or i32 %i.ag, 1
  %i.ai = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %8 = xor i32 %i.ai, 31
  %i.aj = mul nuw nsw i32 %8, 9
  %i.ak = add nuw nsw i32 %i.aj, 73
  %i.al = lshr i32 %i.ak, 6
end_hunk_45
begin_hunk_46_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = or i64 %i.aq, 1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %9 = xor i64 %i.as, 63
  %i.at = mul nuw nsw i64 %9, 9
  %i.au = add nuw nsw i64 %i.at, 73
  %i.av = lshr i64 %i.au, 6
end_hunk_46
begin_hunk_47_@_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE:bb.a
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %10 = xor i32 %i.ba, 31
  %i.bb = mul nuw nsw i32 %10, 9
  %i.bc = add nuw nsw i32 %i.bb, 73
  %i.bd = lshr i32 %i.bc, 6
end_hunk_47
begin_hunk_48_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.c = or i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %3 = xor i64 %i.e, 63
  %i.f = mul nuw nsw i64 %3, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
end_hunk_48
begin_hunk_49_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.i = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.j = or i64 %i.i, 1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %4 = xor i64 %i.k, 63
  %i.l = mul nuw nsw i64 %4, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
end_hunk_49
begin_hunk_50_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.o = tail call noundef i32 @_ZNK6google8protobuf16MapValueConstRef14GetUInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.p = or i32 %i.o, 1
  %i.q = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %5 = xor i32 %i.q, 31
  %i.r = mul nuw nsw i32 %5, 9
  %i.s = add nuw nsw i32 %i.r, 73
  %i.t = lshr i32 %i.s, 6
end_hunk_50
begin_hunk_51_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.v = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.w = or i64 %i.v, 1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %6 = xor i64 %i.x, 63
  %i.y = mul nuw nsw i64 %6, 9
  %i.z = add nuw nsw i64 %i.y, 73
  %i.aa = lshr i64 %i.z, 6
end_hunk_51
begin_hunk_52_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.ae = xor i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %7 = xor i32 %i.ag, 31
  %i.ah = mul nuw nsw i32 %7, 9
  %i.ai = add nuw nsw i32 %i.ah, 73
  %i.aj = lshr i32 %i.ai, 6
end_hunk_52
begin_hunk_53_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = or i64 %i.ao, 1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %8 = xor i64 %i.aq, 63
  %i.ar = mul nuw nsw i64 %8, 9
  %i.as = add nuw nsw i64 %i.ar, 73
  %i.at = lshr i64 %i.as, 6
end_hunk_53
begin_hunk_54_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.aw = trunc i64 %i.av to i32
  %i.ax = or i32 %i.aw, 1
  %i.ay = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ax, i1 true)
  %9 = xor i32 %i.ay, 31
  %i.az = mul nuw nsw i32 %9, 9
  %i.ba = add nuw nsw i32 %i.az, 73
  %i.bb = lshr i32 %i.ba, 6
end_hunk_54
begin_hunk_55_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = or i32 %i.bg, 1
  %i.bi = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %10 = xor i32 %i.bi, 31
  %i.bj = mul nuw nsw i32 %10, 9
  %i.bk = add nuw nsw i32 %i.bj, 73
  %i.bl = lshr i32 %i.bk, 6
end_hunk_55
begin_hunk_56_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.bp = or i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %11 = xor i64 %i.br, 63
  %i.bs = mul nuw nsw i64 %11, 9
  %i.bt = add nuw nsw i64 %i.bs, 73
  %i.bu = lshr i64 %i.bt, 6
end_hunk_56
begin_hunk_57_@_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE:bb.a
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = or i32 %i.ca, 1
  %i.cc = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %12 = xor i32 %i.cc, 31
  %i.cd = mul nuw nsw i32 %12, 9
  %i.ce = add nuw nsw i32 %i.cd, 73
  %i.cf = lshr i32 %i.ce, 6
end_hunk_57
