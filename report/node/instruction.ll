Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction?download=true
inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSequence14AddInstructionEPNS1_11InstructionE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.a, align 8
  store ptr %1, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 1073741824
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = icmp ult i64 %i.ai, 40
  br i1 %i.aj, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 noundef 40) #31
  %.pre.i.i = load i64, ptr %i.ag, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.ak = phi i64 [ %.pre.i.i, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 5 uses
  %i.am = add i64 %i.ak, 40
  store i64 %i.am, ptr %i.ag, align 8
  store ptr %i.ad, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 %i.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.al, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = add nsw i64 %i.bb, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bc)
  %.pre.i2 = load ptr, ptr %i.aq, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit, %bb.e
  %i.bd = phi ptr [ %i.ar, %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit ], [ %.pre.i2, %bb.e ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.aq, align 8
  store ptr %i.al, ptr %i.bd, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i8 @_ZNK2v88internal8compiler19InstructionSequence17GetRepresentationEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.k, %bb.b ], [ 5, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %2, %i.i
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.g
  %.not.i.i = icmp ult i64 %i.p, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.l)
  %.pre.i = load ptr, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.r = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  %i.u = ptrtoaddr ptr %i.q to i64
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = add i64 %i.v, %i.l
  %i.x = sub i64 %i.w, %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 5, i64 %i.x, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit: ; preds = %.lr.ph.preheader.i, %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit, %bb.a
  switch i8 %1, label %bb.h [
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 16, label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.f
    i8 17, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.f
    i8 20, label %bb.f
    i8 10, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 14, label %bb.f
    i8 0, label %bb.g
    i8 6, label %bb.g
    i8 13, label %bb.g
    i8 15, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #30
  unreachable

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
  br i1 %i.h, label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit, label %bb.b, !prof !8

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
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %bb.g, !llvm.loop !49

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
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !15, !noundef !15
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
  %i.be = load ptr, ptr %.020.i.i.i.i.i, align 8, !nonnull !15, !noundef !15 ; 4 uses
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
  br i1 %i.bm, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !50

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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
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
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
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
end_hunk_0
