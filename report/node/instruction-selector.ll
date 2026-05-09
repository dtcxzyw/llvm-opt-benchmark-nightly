inline.NumInlined: 4409
inline.NumDeleted: 2144
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a
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
  %i.m = load i8, ptr %i.l, align 4, !range !9, !noundef !10 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %1 = shl nuw nsw i8 %i.m, 5
  %spec.select60.i = or disjoint i8 %spec.select.i2, %1 ; 2 uses
  %spec.select61.i.a = select i1 %i.n, i32 286464, i32 282368
  %i.o = and i8 %i.j, 64
  %.not3.i = icmp eq i8 %i.o, 0
  %i.p = or i8 %spec.select60.i, 3
  %.sroa.021.2.i = select i1 %.not3.i, i8 %spec.select60.i, i8 %i.p
  %.sroa.021.0.insert.ext.i = zext nneg i8 %.sroa.021.2.i to i32
  %.sroa.021.0.insert.insert.i = or disjoint i32 %spec.select61.i.a, %.sroa.021.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a
bb.j:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !range !9, !noundef !10 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  %spec.select.i6 = select i1 %i.ag, i8 67, i8 3  ; 2 uses
  %spec.select28.i = shl nuw nsw i8 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ai = load i8, ptr %i.ah, align 1, !range !9, !noundef !10
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  %.sroa.0.0.insert.insert.i17.i.i7 = or disjoint i8 %spec.select.i6, 12
  %.sroa.013.1.i = select i1 %i.aj, i8 %.sroa.0.0.insert.insert.i17.i.i7, i8 %spec.select.i6
  %i.ak = zext nneg i8 %spec.select28.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %2 = or disjoint i32 %i.al, 19456
  %.sroa.6.0.insert.insert.i8 = select i1 %i.aj, i32 282368, i32 %2
  %.sroa.013.0.insert.ext.i = zext nneg i8 %.sroa.013.1.i to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i8, %.sroa.013.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.k:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv:bb.a

bb.o:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i8, ptr %i.av, align 4, !range !9, !noundef !10
  %i.ax = trunc nuw i8 %i.aw to i1
  %.sroa.0.0.insert.insert.i.i = select i1 %i.ax, i32 282380, i32 19459 ; 4 uses
  %.sroa.8.0.extract.shift21.i = and i32 %.sroa.0.0.insert.insert.i.i, 262144
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, 4
  %.not.i10 = icmp eq i8 %i.ba, 0                 ; 2 uses
  %.sroa.013.0.extract.trunc.i = or i32 %.sroa.0.0.insert.insert.i.i, 67
  %spec.select.i11 = select i1 %.not.i10, i32 %.sroa.0.0.insert.insert.i.i, i32 %.sroa.013.0.extract.trunc.i
  %spec.select39.i = select i1 %.not.i10, i32 %.sroa.8.0.extract.shift21.i, i32 262144
  %.sroa.616.0.insert.ext.i = and i32 %.sroa.0.0.insert.insert.i.i, 20224
  %.sroa.616.0.insert.insert.i = or disjoint i32 %spec.select39.i, %.sroa.616.0.insert.ext.i
  %.sroa.013.0.insert.ext.i12 = and i32 %spec.select.i11, 79
  %.sroa.013.0.insert.insert.i13 = or disjoint i32 %.sroa.616.0.insert.insert.i, %.sroa.013.0.insert.ext.i12
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.p:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler19InstructionSelector13VisitTailCallENS1_10turboshaft7OpIndexE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal8compiler10CallBufferC2EPNS0_4ZoneEPKNS1_14CallDescriptorEPNS1_20FrameStateDescriptorE(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %i.s, ptr noundef nonnull %i.p, ptr noundef null)
  %i.t = call noundef zeroext i1 @_ZN2v88internal8compiler19InstructionSelector26IsTailCallAddressImmediateEv(ptr noundef nonnull align 8 dereferenceable(752) %0) #29
  %spec.select = select i1 %i.t, i32 7, i32 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 8
  %6 = lshr i32 %.sroa.0.0.copyload.i, 2
  %7 = and i32 %6, 8
  %.sroa.049.1 = or disjoint i32 %7, %spec.select
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 2
end_hunk_3
