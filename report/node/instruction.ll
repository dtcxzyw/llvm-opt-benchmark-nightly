Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction?download=true
inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi:bb.a
bb.h:                                             ; preds = %bb.d
  unreachable

_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 5, %bb.e ], [ %1, %bb.f ], [ 17, %bb.d ] ; 2 uses
  %i.y = sext i32 %2 to i64
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 %.0.i, ptr %i.aa, align 1
  %i.ab = zext nneg i8 %.0.i to i32
  %i.ac = shl nuw nsw i32 1, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = or i32 %i.ae, %i.ac
  store i32 %i.af, ptr %i.ad, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler19InstructionSequence22AddDeoptimizationEntryEPNS1_20FrameStateDescriptorENS0_14DeoptimizeKindENS0_16DeoptimizeReasonEjRKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.6 = alloca { [6 x i8], %"struct.v8::internal::compiler::FeedbackSource" }, align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult ptr %i.b, %i.g
  br i1 %i.h, label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = ashr exact i64 %i.k, 5
  %i.m = add nsw i64 %i.l, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.m)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %i.o, %i.e
  %i.q = lshr exact i64 %i.p, 5
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.s, ptr %i.a, align 8
  store ptr %1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler19InstructionSequence22GetDeoptimizationEntryEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.a
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden i32 @_ZN2v88internal8compiler19InstructionSequence8InputRpoEPNS1_11InstructionEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %2
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.h to i32
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 3
  %i.n = ashr i64 %i.h, 32                        ; 4 uses
  switch i32 %i.m, label %default.unreachable [
    i32 0, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
    i32 1, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  %.sroa.0.0.copyload.i = load i32, ptr %i.q, align 4
  %i.r = zext i32 %.sroa.0.0.copyload.i to i64
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.n
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.v = lshr i64 %i.h, 3
  %i.w = trunc i64 %i.v to i32                    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i64, ptr %i.x, align 8
  %.not.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.z, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %bb.g, !llvm.loop !48

bb.h:                                             ; preds = %bb.e
  %i.ad = xor i32 %i.w, -1
  %i.ae = shl i32 %i.w, 15
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = lshr i32 %i.af, 12
  %i.ah = xor i32 %i.ag, %i.af
  %i.ai = mul i32 %i.ah, 5                        ; 2 uses
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = mul i32 %i.ak, 2057                     ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = xor i32 %i.am, %i.al
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = urem i64 %i.ao, %i.aq                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !29, !noundef !29
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.az, %i.ao
  %i.bb = load i32, ptr %i.ax, align 8
  %i.bc = icmp eq i32 %i.bb, %i.w
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %i.bd, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.aw, %bb.h ]
  %i.be = load ptr, ptr %.020.i.i.i.i.i, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = urem i64 %i.bg, %i.aq
  %.not19.i.i.i.i.i = icmp eq i64 %i.bh, %i.ar
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = icmp eq i64 %i.bg, %i.ao
  %i.bk = load i32, ptr %i.bi, align 8
  %i.bl = icmp eq i32 %i.bk, %i.w
  %i.bm = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %i.bm, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.aw, %bb.h ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.b, %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit
  %.sroa.4.0 = phi i64 [ %.sroa.2.0.copyload.i, %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit ], [ %.sroa.8.0.copyload.i, %bb.d ], [ %i.n, %bb.b ], [ %i.r, %bb.c ], [ %i.n, %bb.b ]
  %i.bn = trunc i64 %.sroa.4.0 to i32
  ret i32 %i.bn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSequence17GetSourcePositionEPKNS1_11InstructionEPNS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %3 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.b
  %4 = getelementptr i8, ptr %3, i64 16
  %5 = icmp ule ptr %4, %i.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = icmp ule ptr %6, %.sroa.0.0.copyload.i.i.i.i.i.i
  %8 = select i1 %5, i1 true, i1 %7
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = ptrtoint ptr %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i7.i.i, %i.b    ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !7

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.017.047.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.al, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ai, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.au = icmp eq ptr %i.as, null                 ; 3 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.704, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.705, ptr noundef nonnull @.str.702) #31
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit
  %i.ay = load i8, ptr %i.as, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.704, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.709, ptr noundef nonnull @.str.706) #31
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  store i64 %i.bb, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorptEv.exit
  %.0 = xor i1 %i.au, true
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence17SetSourcePositionEPKNS1_11InstructionENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, i64 %2) local_unnamed_addr #15 align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.68", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = load i64, ptr %i.a, align 8, !noalias !51 ; 5 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !68
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.e, align 8, !noalias !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !68
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !68
  store ptr %i.a, ptr %3, align 8, !noalias !68
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.k, align 8, !noalias !68
  %i.l = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler11InstructionEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #31, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !68
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !68, !nonnull !29, !noundef !29 ; 2 uses
  %5 = load i64, ptr %i.a, align 8, !noalias !68  ; 2 uses
  %6 = icmp ult i64 %5, 2
  %7 = add i64 %5, 16
  %8 = select i1 %6, i64 0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %8
  %10 = icmp ule ptr %9, %i.a
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = icmp ule ptr %11, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %13 = select i1 %10, i1 true, i1 %12
  call void @llvm.assume(i1 %13)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !68
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.l
  %.pre = load ptr, ptr %4, align 8, !noalias !73
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !74 ; 4 uses
  %14 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.c
  %15 = getelementptr i8, ptr %14, i64 16
  %16 = icmp ule ptr %15, %i.a
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %18 = icmp ule ptr %17, %.sroa.0.0.copyload.i.i.i.i.i
  %19 = select i1 %16, i1 true, i1 %18
  tail call void @llvm.assume(i1 %19)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noalias !74
  %sext.i = shl i64 %i.q, 48
  %i.r = ashr exact i64 %sext.i, 48
  %i.s = ptrtoint ptr %1 to i64
  %i.t = xor i64 %i.s, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 8779197792823184629 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  %i.z = xor i64 %i.r, %i.y                       ; 3 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ac, align 8, !noalias !74 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.z, %bb.f ], [ %i.bc, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1), !noalias !74
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !noalias !74 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.aj, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.as, %.critedge.i ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0.i, %i.al
  %i.an = and i64 %i.am, %i.c
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !74
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !7

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ar = add i16 %.sroa.035.065.i, -1
  %i.as = and i16 %i.ar, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.at = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.au, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !26

.thread.i:                                        ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i64 %i.ay, i64 %.sroa.15.0.i) #31, !noalias !74
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.o, align 8, !noalias !74, !nonnull !29, !noundef !29 ; 2 uses
  %20 = load i64, ptr %i.a, align 8, !noalias !74 ; 2 uses
  %21 = icmp ult i64 %20, 2
  %22 = add i64 %20, 16
  %23 = select i1 %21, i64 0, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %23
  %25 = icmp ule ptr %24, %i.a
  %26 = icmp ule ptr %17, %.sroa.0.0.copyload.i.i.i.i25.i
  %27 = select i1 %25, i1 true, i1 %26
  tail call void @llvm.assume(i1 %27)
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ac, align 8, !noalias !74
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.i

bb.h:                                             ; preds = %.critedge19.i
  %i.bb = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.7.0.i
  br label %bb.g

bb.i:                                             ; preds = %bb.e, %bb.c, %.thread.i
  %i.bd = phi ptr [ %1, %.thread.i ], [ %1, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.4.0.ph = phi ptr [ %i.ba, %.thread.i ], [ %i.g, %bb.c ], [ %i.n, %bb.e ] ; 2 uses
  store ptr %i.bd, ptr %.sroa.4.0.ph, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.4.0.ph, i64 8
  %i.bf = load i64, ptr %i.b, align 8, !noalias !73
  store i64 %i.bf, ptr %i.be, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSequence5PrintEv(ptr noundef nonnull align 8 dereferenceable(352) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::StdoutStream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #31 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_19InstructionSequenceE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(352) %0) ; 0 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o) #31
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10) #31, !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.s, %bb.c ], [ %i.w, %bb.d ]
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i) #31
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #31 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.z = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !6
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #31, !inline_history !6
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31, !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSequence10PrintBlockEi(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::StdoutStream", align 8 ; 18 uses
  %3 = alloca %"struct.v8::internal::compiler::PrintableInstructionBlock", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 4
  %i.i = icmp eq i32 %.sroa.0.0.copyload.i, %1
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.629) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.j) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 313
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.o = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.o) #31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.q = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #31 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.r, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_25PrintableInstructionBlockE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.t = load ptr, ptr %2, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %.not.i.i.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i6, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y) #31
  %i.ad = load ptr, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10) #31, !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.ac, %bb.e ], [ %i.ag, %bb.f ]
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i) #31
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.j, align 8
  %i.aj = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #31, !inline_history !6
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm:bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #31
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler16InstructionBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler16InstructionBlockEA_S5_EEPT_m.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #31
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler16InstructionBlockEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler16InstructionBlockEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler16InstructionBlockEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler16InstructionBlockEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler16InstructionBlockEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare void @_ZN4absl18container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPKN2v88internal8compiler11InstructionEvE4HashES8_Lb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = xor i64 %2, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #23 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #23 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #31
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit

_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #23 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 5 uses
  %5 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.a
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !89

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.w, %i.ae                     ; 6 uses
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = sub i64 %i.t, %i.af                     ; 2 uses
  %i.aj = and i64 %i.h, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler11InstructionEA_S5_EEPT_m.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #31
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler11InstructionEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler11InstructionEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler11InstructionEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler11InstructionEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler11InstructionEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler12ReferenceMapEA_S5_EEPT_m.exit, !prof !26

end_hunk_1
