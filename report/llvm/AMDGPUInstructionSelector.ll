Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstructionSelector?download=true
inline.NumInlined: 11496
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 118
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN4llvm9KnownBits12makeConstantERKNS_5APIntE:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm25AMDGPUInstructionSelector27isFlatScratchBaseLegalSVImmENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.614", align 8 ; 4 uses
  %3 = alloca %"class.std::optional.407", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !377, !nonnull !202, !align !378
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.d = load i32, ptr %i.c, align 8, !tbaa !216
  %i.e = icmp sgt i32 %i.d, 10
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !379
  %i.h = tail call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %1, ptr noundef nonnull align 8 dereferenceable(520) %i.g) #24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !379
  call void @_ZN4llvm26getDefSrcRegIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.614") align 8 %2, i32 %i.l, ptr noundef nonnull align 8 dereferenceable(520) %i.m) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !338
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !379
  call void @_ZN4llvm34getIConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.407") align 8 %3, i32 %i.p, ptr noundef nonnull align 8 dereferenceable(520) %i.q, i1 noundef zeroext true) #24
  %i.r = load ptr, ptr %2, align 8, !tbaa !415    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !408
  switch i32 %i.t, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18 [
    i32 65, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread
    i32 240, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit
  ]

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !425
  %i.w = and i32 %i.v, 2048
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread: ; preds = %bb.b, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !408
  switch i32 %i.y, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread19 [
    i32 65, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread
    i32 240, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14
  ]

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14: ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !425
  %i.ab = and i32 %i.aa, 2048
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread19, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread19: ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !381 ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 65
  br i1 %i.ae, label %bb.c, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread21

bb.c:                                             ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread19
  %i.af = load i64, ptr %3, align 8, !tbaa !338
  %i.ag = icmp ne i32 %i.ad, 0
  %i.ah = sub nuw nsw i32 64, %i.ad
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = shl i64 %i.af, %i.ai                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  %or.cond = select i1 %i.ag, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.d, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18

_ZNK4llvm5APInt12getSExtValueEv.exit.thread21:    ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread19
  %i.al = load ptr, ptr %3, align 8, !tbaa !338
  %i.am = load i64, ptr %i.al, align 8, !tbaa !203 ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %_ZNK4llvm5APInt12getSExtValueEv.exit17, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18

bb.d:                                             ; preds = %bb.c
  %i.ao = ashr exact i64 %i.aj, %i.ai
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit17

_ZNK4llvm5APInt12getSExtValueEv.exit17:           ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.thread21, %bb.d
  %.0.i15 = phi i64 [ %i.ao, %bb.d ], [ %i.am, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread21 ]
  %i.ap = icmp samesign ugt i64 %.0.i15, -1073741824
  br i1 %i.ap, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18: ; preds = %bb.c, %bb.b, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread21, %_ZNK4llvm5APInt12getSExtValueEv.exit17, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !409 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !426
  %i.ay = call noundef zeroext i1 @_ZN4llvm18GISelValueTracking13signBitIsZeroENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(100) %i.ax, i32 %i.av) #24
  br i1 %i.ay, label %bb.e, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread

bb.e:                                             ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !426
  %i.ba = call noundef zeroext i1 @_ZN4llvm18GISelValueTracking13signBitIsZeroENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(100) %i.az, i32 %i.at) #24
  br label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread: ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18, %bb.e, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14, %_ZNK4llvm5APInt12getSExtValueEv.exit17
  %.0 = phi i1 [ true, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14 ], [ true, %_ZNK4llvm5APInt12getSExtValueEv.exit17 ], [ false, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread18 ], [ %i.ba, %bb.e ], [ true, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !411, !range !201, !noundef !202
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.bb, align 8, !tbaa !411
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp ugt i32 %i.bf, 64
  %or.cond.i.i.i = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %or.cond.i.i.i, label %bb.f, label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread
  %i.bh = load ptr, ptr %3, align 8, !tbaa !338   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #25
  br label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit: ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit14.thread, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit
  %.1 = phi i1 [ %.0, %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm25AMDGPUInstructionSelector24isFlatScratchBaseLegalSVENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = tail call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %1, ptr noundef nonnull align 8 dereferenceable(520) %i.b) #24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !408
  switch i32 %i.e, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread10 [
    i32 65, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread
    i32 240, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit
  ]

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !425
  %i.h = and i32 %i.g, 2048
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread10, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread10: ; preds = %bb.a, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !377, !nonnull !202, !align !378
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 496
  %i.l = load i32, ptr %i.k, align 8, !tbaa !216
  %i.m = icmp sgt i32 %i.l, 10
  br i1 %i.m, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread10
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !409  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !338
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !338
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !426
  %i.v = tail call noundef zeroext i1 @_ZN4llvm18GISelValueTracking13signBitIsZeroENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(100) %i.u, i32 %i.s) #24
  br i1 %i.v, label %bb.c, label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !426
  %i.x = tail call noundef zeroext i1 @_ZN4llvm18GISelValueTracking13signBitIsZeroENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(100) %i.w, i32 %i.q) #24
  br label %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread

_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread10, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit
  %.0 = phi i1 [ true, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit.thread10 ], [ true, %_ZL16isNoUnsignedWrapPN4llvm12MachineInstrE.exit ], [ false, %bb.b ], [ %i.x, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZN4llvm11SIInstrInfo20getMaxMUBUFImmOffsetERKNS_12GCNSubtargetE(ptr noundef nonnull align 8 dereferenceable(520232)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm11SIInstrInfo21isLegalMUBUFImmOffsetEj(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, i32 %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i32 %4 to i64                       ; 4 uses
  %i.b = srem i64 %2, %i.a
  %i.c = sdiv i64 %2, %i.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = srem i64 %3, %i.a
  %i.e = sdiv i64 %3, %i.a
  %.not10 = icmp eq i64 %i.d, 0
  %i.f = icmp ult i64 %i.c, 256
  %or.cond = and i1 %.not10, %i.f
  %i.g = icmp ult i64 %i.e, 256
  %or.cond11 = and i1 %or.cond, %i.g
  br i1 %or.cond11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !377, !nonnull !202, !align !378 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216
  %i.l = icmp sgt i32 %i.k, 5
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 650
  %i.n = load i8, ptr %i.m, align 2, !tbaa !582, !range !201, !noundef !202
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !426
  %i.r = tail call noundef zeroext i1 @_ZN4llvm18GISelValueTracking13signBitIsZeroENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(100) %i.q, i32 %1) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ %i.r, %bb.e ], [ false, %bb.b ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @_ZN4llvm19getIConstantVRegValENS_8RegisterERKNS_19MachineRegisterInfoE(ptr dead_on_unwind writable sret(%"class.std::optional.818") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520)) local_unnamed_addr #5

declare void @_ZN4llvm18GISelValueTracking14getKnownZeroesENS_8RegisterE(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(100), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector18selectDSReadWrite2ERNS_14MachineOperandEj(ptr dead_on_unwind noalias writable sret(%"class.std::optional.239") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.2:
  %4 = alloca %"class.llvm::SmallVector.245", align 8 ; 12 uses
  %5 = alloca [3 x %"class.std::function"], align 8 ; 14 uses
  %i.a = tail call i64 @_ZNK4llvm25AMDGPUInstructionSelector22selectDSReadWrite2ImplERNS_14MachineOperandEj(ptr noundef nonnull align 8 dereferenceable(1408) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) ; 2 uses
  %.sroa.07.0.extract.trunc = trunc i64 %i.a to i32 ; 2 uses
  %.sroa.48.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.48.0.extract.trunc = trunc nuw nsw i64 %.sroa.48.0.extract.shift to i32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store i32 %.sroa.07.0.extract.trunc, ptr %5, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.c, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.b, align 8, !tbaa !389
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 16, i1 false)
  store i32 %.sroa.48.0.extract.trunc, ptr %i.d, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_1E9_M_invokeERKSt9_Any_dataS2_", ptr %i.f, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.e, align 8, !tbaa !389
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 16, i1 false)
  store i32 %.sroa.48.0.extract.trunc, ptr %i.g, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_2E9_M_invokeERKSt9_Any_dataS2_", ptr %i.i, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.h, align 8, !tbaa !389
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !382
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.k, align 8, !tbaa !383
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.l, align 4, !tbaa !384
  call void @_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(144) %4, i64 noundef 3)
  %i.m = load i32, ptr %i.k, align 8, !tbaa !383
  %i.n = load ptr, ptr %4, align 8, !tbaa !382
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.o ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %.sroa.07.0.extract.trunc, ptr %i.p, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.q, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.r, align 8, !tbaa !389
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i32 %.sroa.48.0.extract.trunc, ptr %i.s, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_1E9_M_invokeERKSt9_Any_dataS2_", ptr %i.t, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.u, align 8, !tbaa !389
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i32 %.sroa.48.0.extract.trunc, ptr %i.v, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_2E9_M_invokeERKSt9_Any_dataS2_", ptr %i.w, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.x, align 8, !tbaa !389
  %.pre.i.i.i = load i32, ptr %i.k, align 8, !tbaa !383
  %i.y = add i32 %.pre.i.i.i, 3                   ; 2 uses
  store i32 %i.y, ptr %i.k, align 8, !tbaa !383
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %0, align 8, !tbaa !382
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !383
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !384
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread, label %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread: ; preds = %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.ac, align 8, !tbaa !391
  %i.ad = load ptr, ptr %4, align 8, !tbaa !382
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit: ; preds = %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.2
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %4) ; 0 uses
  %.pre10 = load i32, ptr %i.k, align 8, !tbaa !383 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.af, align 8, !tbaa !391
  %i.ag = load ptr, ptr %4, align 8, !tbaa !382   ; 3 uses
  %.not4.i.i = icmp eq i32 %.pre10, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit
  %i.ah = zext i32 %.pre10 to i64
  %.idx.i = shl nuw nsw i64 %i.ah, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.aj, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.ai, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !389 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3) #24, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.a, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.ag, %i.aj
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !382
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i: ; preds = %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit
  %i.an = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i ], [ %i.ag, %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit ], [ %i.ad, %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread ] ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.j
  br i1 %i.ao, label %_ZNSt14_Function_baseD2Ev.exit.1, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i
  call void @free(ptr noundef %i.an) #24
  br label %_ZNSt14_Function_baseD2Ev.exit.1

_ZNSt14_Function_baseD2Ev.exit.1:                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i, %bb.b
  %i.ap = call noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector18selectDSReadWrite2ERNS0_14MachineOperandEjE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #24, !inline_history !2 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !389 ; 2 uses
  %.not.i.2 = icmp eq ptr %.pre, null
  br i1 %.not.i.2, label %_ZNSt14_Function_baseD2Ev.exit.2, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.1
  %i.aq = call noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #24, !inline_history !2 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.2

_ZNSt14_Function_baseD2Ev.exit.2:                 ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 1099511627776) i64 @_ZNK4llvm25AMDGPUInstructionSelector22selectDSReadWrite2ImplERNS_14MachineOperandEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::optional.407", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !338
  %i.e = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %i.d) #24
  %i.f = load i32, ptr %i.c, align 4, !tbaa !338
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !379  ; 2 uses
  %i.h = tail call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.f, ptr noundef nonnull align 8 dereferenceable(520) %i.g) #24, !noalias !2739 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !408, !noalias !2739
  %.not.i = icmp eq i32 %i.j, 240
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !409, !noalias !2739
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !2739
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !338, !noalias !2739
  call void @_ZN4llvm34getIConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.407") align 8 %3, i32 %i.n, ptr noundef nonnull align 8 dereferenceable(520) %i.g, i1 noundef zeroext true) #24, !noalias !2739
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !411, !range !201, !noalias !2739, !noundef !202
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread32

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !409, !noalias !2739
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !338, !noalias !2739 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !381, !noalias !2739 ; 3 uses
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %3, align 8, !noalias !2739
  %i.y = icmp eq i32 %i.v, 0
  %i.z = sub nuw nsw i32 64, %i.v
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl i64 %i.x, %i.aa
  %i.ac = ashr exact i64 %i.ab, %i.aa
  br i1 %i.y, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread32, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %3, align 8, !tbaa !338, !noalias !2739 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !203, !noalias !2739
  store i8 0, ptr %i.o, align 8, !tbaa !411, !noalias !2739
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #25, !noalias !2739
  br label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit

_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread32: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2739
  br label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread

_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit: ; preds = %bb.d, %bb.e
  %.sroa.625.0 = phi i64 [ %i.ac, %bb.d ], [ %i.ae, %bb.e ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2739
  %.not = icmp eq i64 %.sroa.625.0, 0
  br i1 %.not, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit
  %i.af = zext i32 %2 to i64                      ; 5 uses
  %i.ag = add nsw i64 %.sroa.625.0, %i.af         ; 2 uses
  %i.ah = srem i64 %.sroa.625.0, %i.af
  %i.ai = sdiv i64 %.sroa.625.0, %i.af            ; 2 uses
  %.not.i16 = icmp eq i64 %i.ah, 0
  br i1 %.not.i16, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aj = srem i64 %i.ag, %i.af
  %i.ak = sdiv i64 %i.ag, %i.af
  %.not10.i = icmp eq i64 %i.aj, 0
  %i.al = icmp ult i64 %i.ai, 256
  %or.cond = and i1 %.not10.i, %i.al
  %i.am = icmp ult i64 %i.ak, 256
  %or.cond41 = select i1 %or.cond, i1 %i.am, i1 false
  br i1 %or.cond41, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !377, !nonnull !202, !align !378 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 496
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !216
  %i.ar = icmp sgt i32 %i.aq, 5
  br i1 %i.ar, label %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 650
  %i.at = load i8, ptr %i.as, align 2, !tbaa !582, !range !201, !noundef !202
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38, label %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit

_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit: ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !426
  %i.ax = call noundef zeroext i1 @_ZN4llvm18GISelValueTracking13signBitIsZeroENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(100) %i.aw, i32 %i.t) #24
  br i1 %i.ax, label %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38, label %.critedge

_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38: ; preds = %bb.h, %bb.i, %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit
  %i.ay = shl nuw nsw i64 %i.ai, 32
  br label %bb.k

_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread: ; preds = %bb.a, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread32, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !408
  %i.bb = icmp eq i32 %i.ba, 56
  br i1 %i.bb, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !338
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.be = call { i64, i8 } @_ZN4llvm23getIConstantVRegSExtValENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %i.bd) #24 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.g, %bb.f, %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !338
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38, %.critedge
  %.sroa.026.0 = phi i32 [ %i.bf, %.critedge ], [ %i.t, %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38 ]
  %.sroa.327.0 = phi i64 [ 0, %.critedge ], [ %i.ay, %_ZNK4llvm25AMDGPUInstructionSelector16isDSOffset2LegalENS_8RegisterEllj.exit.thread38 ]
  %.sroa.026.0.insert.ext = zext i32 %.sroa.026.0 to i64
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.327.0, %.sroa.026.0.insert.ext
  ret i64 %.sroa.026.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector17parseMUBUFAddressENS_8RegisterE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.llvm::AMDGPUInstructionSelector::MUBUFAddressData") align 8 captures(none) initializes((0, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %1, i32 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::optional.407", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !429
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !429
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !605
  store i32 %2, ptr %0, align 8, !tbaa !385
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !379  ; 2 uses
  %i.f = tail call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %2, ptr noundef nonnull align 8 dereferenceable(520) %i.e) #24, !noalias !2742 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !408, !noalias !2742
  %.not.i = icmp eq i32 %i.h, 240
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !409, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !2742
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !338, !noalias !2742
  call void @_ZN4llvm34getIConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.407") align 8 %3, i32 %i.l, ptr noundef nonnull align 8 dereferenceable(520) %i.e, i1 noundef zeroext true) #24, !noalias !2742
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !411, !range !201, !noalias !2742, !noundef !202
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread19

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !409, !noalias !2742
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338, !noalias !2742 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !381, !noalias !2742 ; 3 uses
  %i.u = icmp ult i32 %i.t, 65
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %3, align 8, !noalias !2742
  %i.w = icmp eq i32 %i.t, 0
  %i.x = sub nuw nsw i32 64, %i.t
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl i64 %i.v, %i.y
  %i.aa = ashr exact i64 %i.z, %i.y
  br i1 %i.w, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread19, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %3, align 8, !tbaa !338, !noalias !2742 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !203, !noalias !2742
  store i8 0, ptr %i.m, align 8, !tbaa !411, !noalias !2742
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #25, !noalias !2742
  br label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit

_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread19: ; preds = %bb.b, %bb.d
  %.sroa.11.0.ph = phi i32 [ %2, %bb.b ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2742
  br label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread

_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit: ; preds = %bb.d, %bb.e
  %.sroa.613.0 = phi i64 [ %i.aa, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2742
  %i.ad = icmp ult i64 %.sroa.613.0, 4294967296
  br i1 %i.ad, label %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread, label %bb.f

_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread: ; preds = %bb.a, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread19, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit
  %.sroa.11.118 = phi i32 [ %.sroa.11.0.ph, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread19 ], [ %i.r, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit ], [ %2, %bb.a ] ; 2 uses
  %.sroa.613.117 = phi i64 [ 0, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread19 ], [ %.sroa.613.0, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit ], [ 0, %bb.a ]
  store i32 %.sroa.11.118, ptr %0, align 8, !tbaa !385
  store i64 %.sroa.613.117, ptr %i.c, align 8, !tbaa !605
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit
  %.sroa.06.0.copyload = phi i32 [ %.sroa.11.118, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit.thread ], [ %2, %_ZNK4llvm25AMDGPUInstructionSelector28getPtrBaseWithConstantOffsetENS_8RegisterERKNS_19MachineRegisterInfoE.exit ]
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !379
  %i.af = call noundef ptr @_ZN4llvm12getOpcodeDefEjNS_8RegisterERKNS_19MachineRegisterInfoE(i32 noundef 240, i32 %.sroa.06.0.copyload, ptr noundef nonnull align 8 dereferenceable(520) %i.ae) #24 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !409 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !338
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !338
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !379
  %i.an = call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.aj, ptr noundef nonnull align 8 dereferenceable(520) %i.am) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !409
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !338
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !385
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !379
  %i.at = call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.al, ptr noundef nonnull align 8 dereferenceable(520) %i.as) #24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !409
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !338
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !385
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm25AMDGPUInstructionSelector15shouldUseAddr64ENS0_16MUBUFAddressDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, ptr nofree noundef readonly byval(%"struct.llvm::AMDGPUInstructionSelector::MUBUFAddressData") align 8 captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !429
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416, !nonnull !202, !align !378
  %.sroa.0.0.copyload = load i32, ptr %1, align 8, !tbaa !385
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !379
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !417, !nonnull !202, !align !378
  %i.i = tail call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.d, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(520) %i.f, ptr noundef nonnull align 8 dereferenceable(316) %i.h) #24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !419
  %i.k = icmp eq i32 %i.j, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector23splitIllegalMUBUFOffsetERNS_16MachineIRBuilderERNS_8RegisterERl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412, !nonnull !202, !align !378
  %i.c = load i64, ptr %3, align 8, !tbaa !203
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm11SIInstrInfo21isLegalMUBUFImmOffsetEj(ptr noundef nonnull align 8 dereferenceable(840) %i.b, i32 noundef %i.d) #24
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
