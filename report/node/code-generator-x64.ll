Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/code-generator-x64?download=true
inline.NumInlined: 12588
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal8compiler28GetSecondMacroFusionInstKindENS1_14FlagsConditionE:bb.a

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler24ShouldAlignForJCCErratumEPNS1_11InstructionENS1_24FirstMacroFusionInstKindE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32768
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8                ; 3 uses
  %i.d = lshr i32 %i.c, 14
  %i.e = and i32 %i.d, 7
  %i.f = add nsw i32 %i.e, -1
  %or.cond = icmp ult i32 %i.f, 2
  br i1 %or.cond, label %switch.lookup, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11

switch.lookup:                                    ; preds = %bb.b
  switch i32 %1, label %bb.c [
    i32 0, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread
    i32 2, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread
    i32 1, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit
    i32 3, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit
    i32 4, label %.split
    i32 5, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11
  ]

.split:                                           ; preds = %switch.lookup
  %i.g = and i32 %i.c, 3932160
  %switch.masked = icmp samesign ult i32 %i.g, 786432
  br i1 %switch.masked, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11

bb.c:                                             ; preds = %switch.lookup
  unreachable

_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit: ; preds = %switch.lookup, %switch.lookup
  %i.h = and i32 %i.c, 3932160
  %switch.masked16 = icmp samesign ult i32 %i.h, 1310720
  br i1 %switch.masked16, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread, label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11

_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11: ; preds = %switch.lookup, %.split, %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit, %bb.b
  br label %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread

_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread: ; preds = %switch.lookup, %switch.lookup, %.split, %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11, %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit.thread11 ], [ true, %_ZN2v88internal8compiler12IsMacroFusedENS1_24FirstMacroFusionInstKindENS1_25SecondMacroFusionInstKindE.exit ], [ true, %.split ], [ true, %switch.lookup ], [ true, %switch.lookup ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator24AssembleDeconstructFrameEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  tail call void @_ZN2v88internal8compiler19UnwindingInfoWriter22MarkFrameDeconstructedEi(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i32 noundef %i.j) #18
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 4, i8 5, i32 noundef 8) #18
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 5) #18
  ret void
}

declare void @_ZN2v88internal8compiler19UnwindingInfoWriter22MarkFrameDeconstructedEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator23AssemblePrepareTailCallEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 5, i64 4521984, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #18
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %bb.a
  %i.g = phi ptr [ %.pre, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator25AssembleTailCallBeforeGapEPNS1_11InstructionEi(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::ZoneVector.58", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13CodeGenerator22GetPushCompatibleMovesEPNS1_11InstructionENS_4base5FlagsINS2_12PushTypeFlagEiiEEPNS0_10ZoneVectorIPNS1_12MoveOperandsEEE(ptr noundef %1, i32 7, ptr noundef nonnull %4) #18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8
  %i.k = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = add nsw i32 %i.l, 1
  %.not66 = icmp eq i32 %i.m, %2
  br i1 %.not66, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %.065 = phi ptr [ %i.f, %.lr.ph ], [ %i.cj, %bb.t ] ; 2 uses
  %i.r = load ptr, ptr %.065, align 8             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.s, align 8
  %i.t = load i64, ptr %i.r, align 8              ; 5 uses
  %i.u = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.v = lshr i64 %.sroa.0.0.copyload.i18, 32
  %i.w = trunc nuw i64 %i.v to i32
  %.val17 = load i32, ptr %1, align 8
  %i.x = and i32 %.val17, 1073741824
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %i.aa, %i.ac
  %i.ae = sub i32 1, %i.ad
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add i32 %i.ak, %i.am
  %.neg9.i = sub i32 2, %i.an
  br label %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i

_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i: ; preds = %bb.f, %bb.e
  %.neg10.i = phi i32 [ %.neg9.i, %bb.f ], [ 1, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %.neg6.i = add i32 %i.w, -2
  %.neg7.i = add i32 %.neg6.i, %.neg10.i
  %i.aq = sub i32 %.neg7.i, %i.ap
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i, %bb.d
  %.0.i = phi i32 [ %i.ae, %bb.d ], [ %i.aq, %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i ] ; 5 uses
  %i.ar = icmp sgt i32 %.0.i, 0
  br i1 %i.ar, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i, label %bb.h

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i: ; preds = %bb.g
  %i.as = shl nsw i32 %.0.i, 3
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.g
  %.not50 = icmp eq i32 %.0.i, 0
  br i1 %.not50, label %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.neg.i = mul i32 %.0.i, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i
  %.neg.sink.i = phi i32 [ %.neg.i, %bb.i ], [ %i.as, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i ]
  %.sink.i = phi i8 [ 0, %bb.i ], [ 5, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i ]
  %.sroa.0.0.insert.ext.i = zext i32 %.neg.sink.i to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.n, i8 noundef zeroext %.sink.i, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #18
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add nsw i32 %i.au, %.0.i
  store i32 %i.av, ptr %i.at, align 4
  br label %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit

_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit: ; preds = %bb.h, %.sink.split.i
  %i.aw = and i64 %i.t, 7                         ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 4          ; 2 uses
  %i.ay = and i64 %i.t, 3848                      ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  %i.ba = and i1 %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit
  %i.bb = lshr i64 %i.t, 32
  %i.bc = trunc nuw i64 %i.bb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bd = load ptr, ptr %i.o, align 8
  %i.be = call i32 @_ZNK2v88internal8compiler16FrameAccessState14GetFrameOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %i.bd, i32 noundef %i.bc) #18 ; 3 uses
  %i.bf = trunc i32 %i.be to i1                   ; 2 uses
  %.sroa.0.0.copyload.i20 = select i1 %i.bf, i8 4, i8 5 ; 2 uses
  %i.bg = and i32 %i.be, -2                       ; 4 uses
  store i64 0, ptr %3, align 8
  store i64 1, ptr %i.q, align 8
  br i1 %i.bf, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  store i8 36, ptr %scevgep.i, align 1
  store i64 2, ptr %i.q, align 8
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

.thread.i:                                        ; preds = %bb.j
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %.thread23.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 4, ptr %i.p, align 2
  br label %_ZN2v88internal8compiler19X64OperandConverter13SlotToOperandEii.exit

bb.m:                                             ; preds = %.thread.i, %bb.k
  %i.bj = phi i64 [ 1, %.thread.i ], [ 2, %bb.k ] ; 2 uses
  %i.bk = sext i32 %i.be to i64
  %i.bl = add nsw i64 %i.bk, 128
  %i.bm = icmp ult i64 %i.bl, 256
  br i1 %i.bm, label %.thread23.i, label %bb.n

.thread23.i:                                      ; preds = %bb.m, %.thread.i
  %i.bn = phi i64 [ 1, %.thread.i ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bo = or disjoint i8 %.sroa.0.0.copyload.i20, 64
  store i8 %i.bo, ptr %i.p, align 2
  %i.bp = trunc i32 %i.bg to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = add nuw nsw i64 %i.bn, 1
  %i.bs = inttoptr i64 %i.br to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter13SlotToOperandEii.exit

bb.n:                                             ; preds = %bb.m
  %i.bt = or disjoint i8 %.sroa.0.0.copyload.i20, -128
  store i8 %i.bt, ptr %i.p, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bj
  store i32 %i.bg, ptr %i.bu, align 1
  %i.bv = load i64, ptr %i.q, align 8
  %i.bw = add i64 %i.bv, 4
  %i.bx = inttoptr i64 %i.bw to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter13SlotToOperandEii.exit

_ZN2v88internal8compiler19X64OperandConverter13SlotToOperandEii.exit: ; preds = %bb.l, %.thread23.i, %bb.n
  %.fca.1.load.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.l ], [ %i.bs, %.thread23.i ], [ %i.bx, %bb.n ]
  %.fca.0.load.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN2v88internal14MacroAssembler4PushENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.n, i64 %.fca.0.load.i, ptr %.fca.1.load.i) #18
  br label %bb.t

bb.o:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit
  %i.by = icmp eq i64 %i.ay, 0
  %i.bz = and i1 %i.ax, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = lshr i64 %i.t, 32
  %i.cb = trunc i64 %i.ca to i8                   ; 2 uses
  %i.cc = icmp samesign ult i8 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.n, i8 %i.cb) #18
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cd = icmp eq i64 %i.aw, 3
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = lshr i64 %i.t, 32
  call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %i.n, i64 %i.ce) #18
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #19
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.r, %_ZN2v88internal8compiler19X64OperandConverter13SlotToOperandEii.exit
  %i.cf = load ptr, ptr %i.o, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.065, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.e
  br i1 %.not, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.t, %bb.a, %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8            ; 5 uses
  %.val = load i32, ptr %1, align 8
  %i.cn = and i32 %.val, 1073741824
  %.not.i23 = icmp eq i32 %i.cn, 0
  br i1 %.not.i23, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.co = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = add i32 %i.cq, %i.cs
  %i.cu = sub i32 1, %i.ct
  br label %bb.x

bb.v:                                             ; preds = %.critedge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !5, !noundef !6
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.w, label %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i31

bb.w:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = add i32 %i.da, %i.dc
  %.neg9.i35 = sub i32 2, %i.dd
  br label %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i31

_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i31: ; preds = %bb.w, %bb.v
  %.neg10.i32 = phi i32 [ %.neg9.i35, %bb.w ], [ 1, %bb.v ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.df = load i32, ptr %i.de, align 4
  %.neg6.i33 = add i32 %2, -2
  %.neg7.i34 = add i32 %.neg6.i33, %.neg10.i32
  %i.dg = sub i32 %.neg7.i34, %i.df
  br label %bb.x

bb.x:                                             ; preds = %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i31, %bb.u
  %.0.i24 = phi i32 [ %i.cu, %bb.u ], [ %i.dg, %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i31 ] ; 3 uses
  %i.dh = icmp sgt i32 %.0.i24, 0
  br i1 %i.dh, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i30, label %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit36

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i30: ; preds = %bb.x
  %i.di = shl nsw i32 %.0.i24, 3
  %.sroa.0.0.insert.ext.i29 = zext nneg i32 %i.di to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ck, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i29, i32 noundef 8) #18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = add nsw i32 %i.dk, %.0.i24
  store i32 %i.dl, ptr %i.dj, align 4
  br label %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit36

_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit36: ; preds = %bb.x, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare void @_ZN2v88internal8compiler13CodeGenerator22GetPushCompatibleMovesEPNS1_11InstructionENS_4base5FlagsINS2_12PushTypeFlagEiiEEPNS0_10ZoneVectorIPNS1_12MoveOperandsEEE(ptr noundef, i32, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler4PushENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i8) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436), i64) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator24AssembleTailCallAfterGapEPNS1_11InstructionEi(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.val = load i32, ptr %1, align 8
  %i.d = and i32 %.val, 1073741824
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.g, %i.i
  %i.k = sub i32 1, %i.j
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = add i32 %i.q, %i.s
  %.neg9.i = sub i32 2, %i.t
  br label %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i

_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i: ; preds = %bb.d, %bb.c
  %.neg10.i = phi i32 [ %.neg9.i, %bb.d ], [ 1, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %.neg6.i = add i32 %2, -2
  %.neg7.i = add i32 %.neg6.i, %.neg10.i
  %i.w = sub i32 %.neg7.i, %i.v
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.w, %_ZNK2v88internal8compiler16FrameAccessState18GetSPToFPSlotCountEv.exit.i ] ; 5 uses
  %i.x = icmp sgt i32 %.0.i, 0
  br i1 %i.x, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i, label %bb.f

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i: ; preds = %bb.e
  %i.y = shl nsw i32 %.0.i, 3
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.neg.i = mul i32 %.0.i, -8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i
  %.neg.sink.i = phi i32 [ %.neg.i, %bb.g ], [ %i.y, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i ]
  %.sink.i = phi i8 [ 0, %bb.g ], [ 5, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.i ]
  %.sroa.0.0.insert.ext.i = zext i32 %.neg.sink.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext %.sink.i, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #18
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, %.0.i
  store i32 %i.ab, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit

_ZN2v88internal8compiler12_GLOBAL__N_129AdjustStackPointerForTailCallEPNS1_11InstructionEPNS0_14MacroAssemblerEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_16FrameAccessStateEib.exit: ; preds = %bb.f, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator30AssembleCodeStartRegisterCheckEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler23ComputeCodeStartAddressENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i8 3) #18
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 59, i8 3, i8 1, i32 noundef 8) #18
  ret void
}

declare void @_ZN2v88internal14MacroAssembler23ComputeCodeStartAddressENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i8) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator35AssembleDispatchHandleRegisterCheckEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1560) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator20BailoutIfDeoptimizedEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal14MacroAssembler20BailoutIfDeoptimizedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i8 3) #18
  ret void
}

declare void @_ZN2v88internal14MacroAssembler20BailoutIfDeoptimizedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i8) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 114688
  %i.c = icmp ne i32 %i.b, 49152
  %i.d = and i32 %i.a, 3932160
  %or.cond = icmp eq i32 %i.d, 2359296
  %or.cond29 = or i1 %i.c, %or.cond
  br i1 %or.cond29, label %.critedge24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc i64 %i.m to i8                     ; 2 uses
  %i.o = icmp samesign ult i8 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i32 %i.f, 8
  %i.q = and i32 %i.p, 65535                      ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %.not.not30 = icmp eq i32 %i.q, 0
  br i1 %.not.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.01931 = phi i64 [ %i.ad, %.critedge ], [ 0, %bb.b ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.j, i64 %.01931
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = and i64 %i.t, 7
  %i.v = icmp samesign ugt i64 %i.u, 4
  %i.w = and i64 %i.t, 3848
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i1 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.z = lshr i64 %i.t, 32
  %i.aa = trunc i64 %i.z to i8                    ; 2 uses
  %i.ab = icmp samesign ult i8 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %i.n, %i.aa
  br i1 %i.ac, label %.critedge24, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %i.ad = add nuw nsw i64 %.01931, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.r
  br i1 %exitcond.not, label %.critedge24, label %.lr.ph, !llvm.loop !7

.critedge24:                                      ; preds = %bb.c, %.critedge, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator31AssemblePlaceHolderForLazyDeoptEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 1048576
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8
  %i.f = and i32 %i.e, 4194304
  %.not2 = icmp eq i32 %i.f, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal9Assembler3NopEi(ptr noundef nonnull align 8 dereferenceable(408) %i.g, i32 noundef 5) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal9Assembler3NopEi(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler13CodeGenerator23AssembleArchInstructionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca i64, align 8                     ; 4 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %i.am = alloca i64, align 8                     ; 4 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %i.ao = alloca i64, align 8                     ; 4 uses
  %i.ap = alloca i64, align 8                     ; 4 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %i.ar = alloca i64, align 8                     ; 4 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca i64, align 8                     ; 4 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %i.az = alloca i64, align 8                     ; 4 uses
  %i.ba = alloca i64, align 8                     ; 4 uses
  %i.bb = alloca i64, align 8                     ; 4 uses
  %i.bc = alloca i64, align 8                     ; 4 uses
  %i.bd = alloca i64, align 8                     ; 4 uses
  %i.be = alloca i64, align 8                     ; 4 uses
  %i.bf = alloca i64, align 8                     ; 4 uses
  %i.bg = alloca i64, align 8                     ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13CodeGenerator23AssembleArchTableSwitchEPNS1_11InstructionE:bb.a
  br i1 %i.r, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.d, label %_ZN2v88internal4Zone14AllocateVectorIPNS0_5LabelEA_S4_EENS_4base6VectorIT_EEm.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.s) #18
  %.pre.i.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone14AllocateVectorIPNS0_5LabelEA_S4_EENS_4base6VectorIT_EEm.exit

_ZN2v88internal4Zone14AllocateVectorIPNS0_5LabelEA_S4_EENS_4base6VectorIT_EEm.exit: ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  %.not69 = icmp eq i32 %i.m, 2
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone14AllocateVectorIPNS0_5LabelEA_S4_EENS_4base6VectorIT_EEm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %_ZN2v88internal4Zone14AllocateVectorIPNS0_5LabelEA_S4_EENS_4base6VectorIT_EEm.exit
  %i.ad = call noundef ptr @_ZN2v88internal8compiler13CodeGenerator12AddJumpTableENS_4base6VectorIPNS0_5LabelEEE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr %i.aa, i64 %i.q) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %.sroa.0.0.insert.ext = zext nneg i32 %i.n to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i8 noundef zeroext 7, i8 %i.j, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #18
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.al)
  %i.an = extractvalue { i64, i64 } %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  %sext = shl i64 %i.an, 32
  %i.aq = ashr exact i64 %sext, 29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i32 noundef 3, ptr noundef %i.ar, i32 noundef 1) #18
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i8 10, i64 1, ptr %i.ad, i32 noundef 8) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.at = load i32, ptr %i.as, align 4
  %.not = icmp eq i32 %i.at, -1
  %i.au = shl nuw nsw i64 %i.i, 27
  %i.av = and i64 %i.au, 939524096
  %i.aw = lshr i64 %i.h, 26
  %.sroa.2.0.insert.ext = and i64 %i.aw, 15872
  %.sroa.2.0.insert.shift = or disjoint i64 %i.av, %.sroa.2.0.insert.ext ; 2 uses
  br i1 %.not, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36, !prof !22

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr [8 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = getelementptr i8, ptr %i.bd, i64 56
  %i.bf = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  %i.bg = extractvalue { i64, i64 } %i.bf, 1
  %i.bh = load ptr, ptr %i.ac, align 8
  %sext67 = shl i64 %i.bg, 32
  %i.bi = ashr exact i64 %sext67, 29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store ptr %i.bj, ptr %i.bk, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !202

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36: ; preds = %._crit_edge
  %.sroa.276.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 2181300480
  call void @_ZN2v88internal9Assembler7movsxlqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i8 %i.j, i64 %.sroa.276.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr)) #18
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i8 noundef zeroext 3, i8 %i.j, i8 10, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i8 %i.j, i1 noundef zeroext true) #18
  br label %bb.f

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %._crit_edge
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 3255042304
  call void @_ZN2v88internal9Assembler3jmpENS0_7OperandEb(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, i64 %.sroa.2.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i1 noundef zeroext true) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler10DebugBreakEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler5pauseEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler13CodeGenerator16BuildTranslationEPNS1_11InstructionEimmNS1_23OutputFrameStateCombineE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator14AssembleReturnEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::X64OperandConverter", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %.sroa.0.0.copyload.i127 = load i16, ptr %i.d, align 2 ; 2 uses
  %i.e = icmp eq i16 %.sroa.0.0.copyload.i127, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = shl nsw i32 %i.j, 3
  %.sroa.0163.0.insert.ext = zext i32 %i.l to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 0, i8 4, i64 %.sroa.0163.0.insert.ext, i32 noundef 8) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit: ; preds = %bb.d, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit
  %.sroa.0160.0230 = phi i16 [ %.sroa.0.0.copyload.i127, %bb.d ], [ %i.q, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit ] ; 3 uses
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0160.0230, i1 true)
  %i.o = trunc nuw nsw i16 %i.n to i8
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.m, i8 %i.o) #18
  %i.p = add i16 %.sroa.0160.0230, -1
  %i.q = and i16 %i.p, %.sroa.0160.0230           ; 2 uses
  %.not227 = icmp eq i16 %i.q, 0
  br i1 %.not227, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit

.loopexit:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.sroa.0.0.copyload.i129 = load i16, ptr %i.r, align 4 ; 5 uses
  %i.s = icmp eq i16 %.sroa.0.0.copyload.i129, 0
  br i1 %i.s, label %bb.i, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit115.peel

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit115.peel: ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.0.copyload.i129, i1 true)
  %i.v = trunc nuw nsw i16 %i.u to i8             ; 2 uses
  %i.w = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.x = and i32 %i.w, 32
  %.not.i.i.peel = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit115.peel
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.t, i8 %i.v, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit115.peel
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.t, i8 %i.v, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel: ; preds = %bb.f, %bb.e
  %i.y = add i16 %.sroa.0.0.copyload.i129, -1
  %i.z = and i16 %i.y, %.sroa.0.0.copyload.i129   ; 2 uses
  %.not228.peel = icmp eq i16 %i.z, 0
  br i1 %.not228.peel, label %.loopexit239, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next

.loopexit239:                                     ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel
  %i.aa = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.0.copyload.i129)
  %i.ab = shl nuw nsw i16 %i.aa, 4
  %.sroa.0151.0.insert.ext = zext nneg i16 %i.ab to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.t, i8 noundef zeroext 0, i8 4, i64 %.sroa.0151.0.insert.ext, i32 noundef 8) #18
  br label %bb.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %.0232 = phi i32 [ %i.ah, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ 1, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel ] ; 2 uses
  %.sroa.0154.0231 = phi i16 [ %i.aj, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %i.z, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0154.0231, i1 true)
  %i.ad = trunc nuw nsw i16 %i.ac to i8           ; 2 uses
  %5 = shl nsw i32 %.0232, 4                      ; 3 uses
  %6 = icmp samesign ult i32 %5, 128              ; 3 uses
  %.sroa.9.sroa.6.0.extract.shift = and i32 %5, 2147483392
  %.sroa.4.0 = select i1 %6, i64 4456448, i64 8650752
  %.sroa.9.sroa.6.sroa.0.0 = select i1 %6, i32 0, i32 %.sroa.9.sroa.6.0.extract.shift
  %i.ae = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.9.sroa.0.0.insert.ext = and i32 %5, 240
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.6.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
  %.sroa.9.0.insert.ext = zext nneg i32 %.sroa.9.sroa.0.0.insert.insert to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, %.sroa.4.0
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, 603979776 ; 2 uses
  %i.af = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ag = and i32 %i.af, 32
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.t, i8 %i.ad, i64 %.sroa.4.0.insert.insert, ptr nonnull %i.ae) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

bb.h:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.t, i8 %i.ad, i64 %.sroa.4.0.insert.insert, ptr nonnull %i.ae) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit: ; preds = %bb.h, %bb.g
  %i.ah = add nuw nsw i32 %.0232, 1
  %i.ai = add i16 %.sroa.0154.0231, -2
  %i.aj = and i16 %i.ai, %.sroa.0154.0231         ; 2 uses
  %.not228 = icmp eq i16 %i.aj, 0
  br i1 %.not228, label %.loopexit239, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next, !llvm.loop !203

bb.i:                                             ; preds = %.loopexit239, %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 4 uses
  %.not97 = icmp eq i32 %i.ap, 0                  ; 2 uses
  %i.aq = load i32, ptr %i.c, align 8
  %i.ar = and i32 %i.aq, -2
  %spec.select.i131 = icmp eq i32 %i.ar, 4
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !5
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond226 = select i1 %spec.select.i131, i1 %i.at, i1 false
  br i1 %or.cond226, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit108, label %bb.j

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit108: ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.au, i8 noundef zeroext 7, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 26, i32 noundef 8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 0, ptr %3, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.av, align 4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.au, i32 noundef 5, ptr noundef nonnull %3, i32 noundef 1) #18
  %i.aw = call noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i16 5) #18 ; 0 uses
  %i.ax = call noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i16 6, i32 noundef 16) #18 ; 0 uses
  call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i32 noundef 1) #18
  %i.ay = call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #18
  call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i8 7, i64 %i.ay) #18
  %i.az = call i64 @_ZN2v88internal17ExternalReference17wasm_shrink_stackEv() #18
  %i.ba = call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i64 %i.az, i32 noundef 1, i32 noundef 1, ptr noundef null) #18 ; 0 uses
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.au, i8 5, i8 0, i32 noundef 8) #18
  %i.bb = call noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i16 6, i32 noundef 16) #18 ; 0 uses
  %i.bc = call noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.au, i16 5) #18 ; 0 uses
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.au, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit108, %bb.i
  br i1 %.not97, label %.thread-pre-split_crit_edge, label %bb.k

.thread-pre-split_crit_edge:                      ; preds = %bb.j
  %.pr.pre = load i32, ptr %i.c, align 8
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !5, !noundef !6
  %i.bh = trunc nuw i8 %i.bg to i1
  %.pr.pre256 = load i32, ptr %i.c, align 8       ; 2 uses
  %i.bi = icmp eq i32 %.pr.pre256, 1
  %spec.select = select i1 %i.bh, i1 %i.bi, i1 false
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.k, %.thread-pre-split_crit_edge
  %i.bj = phi i32 [ %.pr.pre256, %bb.k ], [ %.pr.pre, %.thread-pre-split_crit_edge ]
  %i.bk = phi i1 [ %spec.select, %bb.k ], [ false, %.thread-pre-split_crit_edge ] ; 3 uses
  %i.bl = icmp eq i32 %i.bj, 2
  br i1 %i.bl, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %thread-pre-split
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !5, !noundef !6
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.br = load i64, ptr %1, align 8
  %i.bs = and i64 %i.br, 7
  %i.bt = icmp eq i64 %i.bs, 3
  br i1 %i.bt, label %bb.n, label %.critedge101

bb.n:                                             ; preds = %bb.m
  %i.bu = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  %i.bv = extractvalue { i64, i64 } %i.bu, 1
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.o, label %.critedge101

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %_ZNK2v88internal5Label3posEv.exit, label %bb.q

_ZNK2v88internal5Label3posEv.exit:                ; preds = %bb.o
  %i.cb = xor i32 %i.bz, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %.neg = sub i64 %i.ch, %i.cg
  %.neg229 = trunc i64 %.neg to i32
  %i.ci = add i32 %.neg229, %i.cb
  %i.cj = sext i32 %i.ci to i64
  %i.ck = add nsw i64 %i.cj, 128
  %i.cl = icmp ult i64 %i.ck, 256
  %or.cond = or i1 %i.bk, %i.cl
  br i1 %or.cond, label %bb.p, label %.critedge101

bb.p:                                             ; preds = %_ZNK2v88internal5Label3posEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.cm, ptr noundef nonnull %i.by, i32 noundef 1) #18
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.cn, ptr noundef nonnull %i.by) #18
  br label %.critedge101

.critedge101:                                     ; preds = %bb.m, %_ZNK2v88internal5Label3posEv.exit, %bb.q, %bb.n
  br i1 %i.bk, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %.sink.split

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %.critedge101
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.co, i8 1, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #18
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge101, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %thread-pre-split
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  call void @_ZN2v88internal8compiler19UnwindingInfoWriter22MarkFrameDeconstructedEi(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, i32 noundef %i.cx) #18
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.cp, i8 4, i8 5, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.cp, i8 5) #18
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.l
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 0, ptr %4, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %.sroa.0136.0.insert.ext = and i64 %i.ao, 4294967295
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.cz, i8 noundef zeroext 7, i8 1, i64 %.sroa.0136.0.insert.ext, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.cz, i32 noundef 15, ptr noundef nonnull %4, i32 noundef 0) #18
  %i.da = shl nsw i32 %i.ap, 3
  call void @_ZN2v88internal14MacroAssembler3RetEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.cz, i32 noundef %i.da, i8 10) #18
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.cz, ptr noundef nonnull %4) #18
  call void @_ZN2v88internal14MacroAssembler13DropArgumentsENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.cz, i8 1, i8 10) #18
  call void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436) %i.cz) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.db = load i64, ptr %1, align 8               ; 3 uses
  %i.dc = and i64 %i.db, 7
  %i.dd = icmp eq i64 %i.dc, 3
  br i1 %i.dd, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.de = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  %i.df = extractvalue { i64, i64 } %i.de, 1
  %i.dg = trunc i64 %i.df to i32
  %i.dh = add nsw i32 %i.dg, %i.ap                ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %bb.w, label %bb.v, !prof !22

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #19
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dj = shl nsw i32 %i.dh, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal14MacroAssembler3RetEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.dk, i32 noundef %i.dj, i8 10) #18
  br label %bb.aa

bb.x:                                             ; preds = %bb.t
  %i.dl = lshr i64 %i.db, 32                      ; 2 uses
  %i.dm = trunc i64 %i.dl to i8                   ; 2 uses
  %i.dn = icmp samesign ult i8 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i8 %i.dm, 10
  %.sroa.06.0.copyload = select i1 %i.do, i8 1, i8 10 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.dp, i8 %.sroa.06.0.copyload) #18
  %i.dq = shl nsw i32 %i.ap, 3                    ; 4 uses
  %i.dr = shl nuw nsw i64 %i.dl, 27
  br i1 %.not97, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = sext i32 %i.dq to i64
  %i.dt = add nsw i64 %i.ds, 128
  %i.du = icmp ult i64 %i.dt, 256
  br i1 %i.du, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.14.sroa.4.0.extract.shift = and i32 %i.dq, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %bb.y, %bb.x, %bb.z
  %.sroa.14.sroa.0.0 = phi i32 [ %i.dq, %bb.z ], [ 0, %bb.x ], [ %i.dq, %bb.y ]
  %.sroa.14.sroa.4.sroa.0.0 = phi i32 [ %.sroa.14.sroa.4.0.extract.shift, %bb.z ], [ 0, %bb.x ], [ 0, %bb.y ]
  %.sroa.16.0 = phi ptr [ inttoptr (i64 6 to ptr), %bb.z ], [ inttoptr (i64 2 to ptr), %bb.x ], [ inttoptr (i64 3 to ptr), %bb.y ]
  %.sroa.8.0 = phi i64 [ 8650752, %bb.z ], [ 262144, %bb.x ], [ 4456448, %bb.y ]
  %.sroa.14.sroa.0.0.insert.ext = and i32 %.sroa.14.sroa.0.0, 248
  %.sroa.14.sroa.0.0.insert.insert = or disjoint i32 %.sroa.14.sroa.4.sroa.0.0, %.sroa.14.sroa.0.0.insert.ext
  %.sroa.14.0.insert.ext = zext i32 %.sroa.14.sroa.0.0.insert.insert to i64
  %.sroa.14.0.insert.shift = shl nuw i64 %.sroa.14.0.insert.ext, 32
  %i.dv = and i64 %i.dr, 939524096
  %.sroa.12.0.insert.ext = or disjoint i64 %i.dv, 3288334336
  %.sroa.12.0.insert.insert = or disjoint i64 %.sroa.14.0.insert.shift, %.sroa.12.0.insert.ext
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.insert, %.sroa.8.0
  %i.dw = lshr i64 %i.db, 26
  %.sroa.2.0.insert.shift = and i64 %i.dw, 512
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.2.0.insert.shift
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.dp, i8 4, i64 %.sroa.2.0.insert.insert, ptr nonnull %.sroa.16.0, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.dp, i8 %.sroa.06.0.copyload) #18
  call void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436) %i.dp) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.p, %bb.s, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %1
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc nuw i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @_ZNK2v88internal8compiler16FrameAccessState14GetFrameOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %i.o, i32 noundef %i.l) #18 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 5 uses
  %i.r = trunc i32 %i.p to i1                     ; 2 uses
  %.sroa.0.0.copyload.i.i = select i1 %i.r, i8 4, i8 5 ; 2 uses
  %i.s = and i32 %i.p, -2
  %i.t = add nsw i32 %i.s, %2                     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  store i64 1, ptr %i.u, align 8
  br i1 %i.r, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 36, ptr %scevgep.i.i, align 1
  store i64 2, ptr %i.u, align 8
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.c, label %bb.d

.thread.i.i:                                      ; preds = %bb.a
  %i.w = icmp eq i32 %i.t, 0
  br i1 %i.w, label %.thread23.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 4, ptr %i.q, align 2
  br label %_ZN2v88internal8compiler19X64OperandConverter9ToOperandEPNS1_18InstructionOperandEi.exit

bb.d:                                             ; preds = %.thread.i.i, %bb.b
  %i.x = phi i64 [ 1, %.thread.i.i ], [ 2, %bb.b ] ; 2 uses
  %i.y = sext i32 %i.t to i64
  %i.z = add nsw i64 %i.y, 128
  %i.aa = icmp ult i64 %i.z, 256
  br i1 %i.aa, label %.thread23.i.i, label %bb.e

.thread23.i.i:                                    ; preds = %bb.d, %.thread.i.i
  %i.ab = phi i64 [ 1, %.thread.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.ac = or disjoint i8 %.sroa.0.0.copyload.i.i, 64
  store i8 %i.ac, ptr %i.q, align 2
  %i.ad = trunc i32 %i.t to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.ab, 1
  %i.ag = inttoptr i64 %i.af to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter9ToOperandEPNS1_18InstructionOperandEi.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = or disjoint i8 %.sroa.0.0.copyload.i.i, -128
  store i8 %i.ah, ptr %i.q, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.x
  store i32 %i.t, ptr %i.ai, align 1
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = add i64 %i.aj, 4
  %i.al = inttoptr i64 %i.ak to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter9ToOperandEPNS1_18InstructionOperandEi.exit

_ZN2v88internal8compiler19X64OperandConverter9ToOperandEPNS1_18InstructionOperandEi.exit: ; preds = %bb.c, %.thread23.i.i, %bb.e
  %.fca.1.load.i.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.c ], [ %i.ag, %.thread23.i.i ], [ %i.al, %bb.e ]
  %.fca.0.load.i.i = load i64, ptr %3, align 8
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.fca.0.load.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %.fca.1.load.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret { i64, ptr } %.fca.1.insert.i.i
}

declare noundef zeroext i1 @_ZN2v88internal8compiler13CodeGenerator29ShouldApplyOffsetToStackCheckEPNS1_11InstructionEPj(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal8compiler13CodeGenerator19GetStackCheckOffsetEv(ptr noundef nonnull align 8 dereferenceable(1560)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler12_GLOBAL__N_126OutOfLineTruncateDoubleToIEJPNS3_13CodeGeneratorERNS0_8RegisterERNS0_11XMMRegisterENS0_12StubCallModeEPNS3_19UnwindingInfoWriterEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.0.val, i8 %.0.val1, i8 %.0.val3, i32 %.0.val5, ptr %.0.val7) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 80
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_8compiler12_GLOBAL__N_126OutOfLineTruncateDoubleToIEEEPvm.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 80) #18
  %.pre.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler12_GLOBAL__N_126OutOfLineTruncateDoubleToIEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler12_GLOBAL__N_126OutOfLineTruncateDoubleToIEEEPvm.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 9 uses
  %i.i = add i64 %i.g, 80
  store i64 %i.i, ptr %i.c, align 8
  tail call void @_ZN2v88internal8compiler13OutOfLineCodeC2EPNS1_13CodeGeneratorE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef %.0.val) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal8compiler12_GLOBAL__N_126OutOfLineTruncateDoubleToIE, i64 16), ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %.0.val1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 %.0.val3, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %.0.val5, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %.0.val7, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.q, align 8
  ret ptr %i.h
}

declare void @_ZN2v88internal14MacroAssembler10Cvttsd2siqENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, ptr } @_ZN2v88internal8compiler19X64OperandConverter13MemoryOperandEPm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Operand", align 8 ; 40 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = lshr i32 %i.c, 9
  %i.e = trunc i32 %i.d to i8                     ; 5 uses
  %i.f = and i8 %i.e, 31
end_hunk_1
begin_hunk_2_@_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterENS0_7OperandE
declare void @_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, i8, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator11FinishFrameEPNS1_5FrameE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 4 ; 2 uses
  %i.e = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator5AlignEi(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i32 noundef 1) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 4
  %i.k = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.0.copyload.i)
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = zext nneg i16 %i.l to i32
  %i.n = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i32 noundef %i.m) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %.sroa.0.0.copyload.i6 = load i16, ptr %i.o, align 2 ; 2 uses
  %i.p = icmp eq i16 %.sroa.0.0.copyload.i6, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.0.copyload.i6)
  %i.r = zext nneg i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i32 noundef %i.r) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator22AssembleConstructFrameEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.c, align 8
  switch i32 %i.r, label %bb.f [
    i32 2, label %bb.c
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.i, i8 5) #18
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.i, i8 5, i8 4, i32 noundef 8) #18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 @_ZNK2v88internal24OptimizedCompilationInfo23GetOutputStackFrameTypeEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t) #18
  %i.v = icmp eq i32 %i.u, 9
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i64 18) #18
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i8 noundef zeroext 5, i8 4, i64 8, i32 noundef 8) #18
  br label %.thread

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal14MacroAssembler8PrologueEv(ptr noundef nonnull align 8 dereferenceable(436) %i.i) #18
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 @_ZNK2v88internal24OptimizedCompilationInfo23GetOutputStackFrameTypeEv(ptr noundef nonnull align 8 dereferenceable(192) %i.x) #18
  tail call void @_ZN2v88internal14MacroAssembler12StubPrologueENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i32 noundef %i.y) #18
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = add i32 %i.z, -3
  %i.ab = icmp ult i32 %i.aa, 4
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.i, i8 6) #18
  %.pre = load i32, ptr %i.c, align 8
  %i.ac = icmp eq i32 %.pre, 3
  br i1 %i.ac, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i8 noundef zeroext 5, i8 4, i64 8, i32 noundef 8) #18
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.h, %bb.g, %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2v88internal8compiler19UnwindingInfoWriter20MarkFrameConstructedEi(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.q) #18
  %.pre274 = load ptr, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.a
  %i.ae = phi ptr [ %.pre274, %.thread ], [ %i.e, %bb.a ]
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = load i32, ptr %i.af, align 8
  %i.am = sub i32 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i32, ptr %i.ap, align 4
  %.not232 = icmp eq i32 %i.aq, -1
  br i1 %.not232, label %bb.l, label %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit

_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  tail call void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %i.ar, i8 noundef zeroext 47) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = shl i32 %i.bd, 3
  %i.bf = add i32 %i.be, 24                       ; 5 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit
  %i.bh = sext i32 %i.bf to i64
  %i.bi = add nsw i64 %i.bh, 128
  %i.bj = icmp ult i64 %i.bi, 256
  br i1 %i.bj, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.6.sroa.4.0.extract.shift = and i32 %i.bf, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101: ; preds = %bb.j, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit, %bb.k
  %.sroa.2361.0 = phi i64 [ 8650752, %bb.k ], [ 262144, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ 4456448, %bb.j ]
  %.sroa.6.sroa.0366.0 = phi i32 [ %i.bf, %bb.k ], [ 0, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ %i.bf, %bb.j ]
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.k ], [ 0, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ 0, %bb.j ]
  %i.bk = phi ptr [ inttoptr (i64 6 to ptr), %bb.k ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ inttoptr (i64 3 to ptr), %bb.j ]
  %.sroa.6.sroa.0366.0.insert.ext = and i32 %.sroa.6.sroa.0366.0, 255
  %.sroa.6.sroa.0366.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0366.0.insert.ext
  %.sroa.6.0.insert.ext362 = zext i32 %.sroa.6.sroa.0366.0.insert.insert to i64
  %.sroa.6.0.insert.shift363 = shl nuw i64 %.sroa.6.0.insert.ext362, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift363, %.sroa.2361.0
  %.sroa.2361.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, i8 10, i64 %.sroa.2361.0.insert.insert, ptr nonnull %i.bk, i32 noundef 8) #18
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, i8 noundef zeroext 59, i8 10, i8 5, i32 noundef 8) #18
  tail call void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %i.ar, i32 noundef 4, i8 noundef zeroext 49) #18
  %i.bl = load i64, ptr %i.bb, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = sub nsw i32 %i.am, %i.bm
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101, %bb.i
  %.0 = phi i32 [ %i.bn, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101 ], [ %i.am, %bb.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.bp = load <2 x i16>, ptr %i.bo, align 2      ; 3 uses
  %i.bq = extractelement <2 x i16> %i.bp, i64 1   ; 5 uses
  %i.br = icmp sgt i32 %.0, 0
  br i1 %i.br, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.an, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i8, ptr %i.bt, align 8
  %i.bv = icmp eq i8 %i.bu, 4
  br i1 %i.bv, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bw = shl nsw i32 %.0, 3                      ; 3 uses
  %i.bx = icmp samesign ugt i32 %.0, 512
  br i1 %i.bx, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i32 0, ptr %1, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.by, align 4
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1464), align 8
  %i.ca = shl nsw i32 %i.bz, 10
  %i.cb = icmp slt i32 %i.bw, %i.ca
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.cd = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436) %i.cc, i32 noundef 1) #18 ; 2 uses
  %i.ce = extractvalue { i64, ptr } %i.cd, 0
  %i.cf = extractvalue { i64, ptr } %i.cd, 1
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.cc, i8 10, i64 %i.ce, ptr %i.cf, i32 noundef 8) #18
  %.sroa.0161.0.insert.ext = zext nneg i32 %i.bw to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.cc, i8 noundef zeroext 0, i8 10, i64 %.sroa.0161.0.insert.ext, i32 noundef 8) #18
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.cc, i8 noundef zeroext 59, i8 4, i8 10, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.cc, i32 noundef 3, ptr noundef nonnull %1, i32 noundef 0) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !5, !noundef !6
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  br i1 %i.ch, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader, label %bb.s

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader: ; preds = %bb.q
  %i.cj = call noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.ci, i16 591) #18 ; 0 uses
  %i.ck = call noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %i.ci, i16 126, i32 noundef 16) #18 ; 0 uses
  %.sroa.0150.0.insert.ext = zext nneg i32 %i.bw to i64
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ci, i8 3, i64 %.sroa.0150.0.insert.ext, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.ci, i8 0, i8 5, i32 noundef 8) #18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = shl i64 %i.cm, 3
  %i.co = add i64 %i.cn, 16
  %.sroa.0147.0.insert.ext = and i64 %i.co, 4294967288
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ci, i8 noundef zeroext 0, i8 0, i64 %.sroa.0147.0.insert.ext, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.ci, i64 noundef 711, i8 noundef signext 6) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = sub i64 %i.cs, %i.cu
  %i.cw = icmp ult i64 %i.cv, 40
  br i1 %i.cw, label %bb.r, label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit, !prof !9

bb.r:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, i64 noundef 40) #18
  %.pre.i.i = load i64, ptr %i.ct, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader, %bb.r
  %i.cx = phi i64 [ %.pre.i.i, %bb.r ], [ %i.cu, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader ] ; 2 uses
  %i.cy = inttoptr i64 %i.cx to ptr               ; 4 uses
  %i.cz = add i64 %i.cx, 40
  store i64 %i.cz, ptr %i.ct, align 8
  store ptr %i.cq, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i32 -1, ptr %i.db, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator15RecordSafepointEPNS1_12ReferenceMapEi(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %i.cy, i32 noundef 0) #18
  %i.dc = call noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %i.ci, i16 126, i32 noundef 16) #18 ; 0 uses
  %i.dd = call noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.ci, i16 591) #18 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.ci, i64 noundef 1345, i8 noundef signext 6) #18
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8            ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = sub i64 %i.dh, %i.dj
  %i.dl = icmp ult i64 %i.dk, 40
  br i1 %i.dl, label %bb.t, label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122, !prof !9

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i64 noundef 40) #18
  %.pre.i.i121 = load i64, ptr %i.di, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122

_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122: ; preds = %bb.s, %bb.t
  %i.dm = phi i64 [ %.pre.i.i121, %bb.t ], [ %i.dj, %bb.s ] ; 2 uses
  %i.dn = inttoptr i64 %i.dm to ptr               ; 4 uses
  %i.do = add i64 %i.dm, 40
  store i64 %i.do, ptr %i.di, align 8
  store ptr %i.df, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store i32 -1, ptr %i.dq, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator15RecordSafepointEPNS1_12ReferenceMapEi(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %i.dn, i32 noundef 0) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122, %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.dr, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n, %bb.m
  %i.ds = call range(i16 0, 17) <2 x i16> @llvm.ctpop.v2i16(<2 x i16> %i.bp) ; 2 uses
  %i.dt = extractelement <2 x i16> %i.ds, i64 1
  %i.du = shl nuw nsw i16 %i.dt, 1
  %i.dv = extractelement <2 x i16> %i.ds, i64 0
  %narrow = add nuw nsw i16 %i.du, %i.dv
  %i.dw = zext nneg i16 %narrow to i32
  %i.dx = load ptr, ptr %i.d, align 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = add i32 %i.ea, %i.dw
  %i.ec = sub i32 %.0, %i.eb                      ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, label %bb.w

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit: ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ef = shl nsw i32 %i.ec, 3
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.ef to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.ee, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, %bb.l
  %i.eg = icmp eq i16 %i.bq, 0
  br i1 %i.eg, label %.loopexit240, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel: ; preds = %bb.w
  %i.eh = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %i.bq)
  %i.ei = shl nuw nsw i16 %i.eh, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %.sroa.0.0.insert.ext.i123 = zext nneg i16 %i.ei to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.ej, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i123, i32 noundef 8) #18
  %i.ek = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bq, i1 true)
  %i.el = trunc nuw nsw i16 %i.ek to i8           ; 2 uses
  %i.em = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.en = and i32 %i.em, 32
  %.not.i.i126.peel = icmp eq i32 %i.en, 0
  br i1 %.not.i.i126.peel, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel
  call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ej, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 %i.el) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel

bb.y:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel
  call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ej, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 %i.el) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel: ; preds = %bb.y, %bb.x
  %i.eo = add i16 %i.bq, -1
  %i.ep = and i16 %i.eo, %i.bq                    ; 2 uses
  %.not233.peel = icmp eq i16 %i.ep, 0
  br i1 %.not233.peel, label %.loopexit240, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %.082256 = phi i32 [ %i.ev, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ 1, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel ] ; 2 uses
  %.sroa.0143.0255 = phi i16 [ %i.ex, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %i.ep, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel ] ; 3 uses
  %i.eq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0143.0255, i1 true)
  %i.er = trunc nuw nsw i16 %i.eq to i8           ; 2 uses
  %2 = shl nsw i32 %.082256, 4                    ; 3 uses
  %3 = icmp samesign ult i32 %2, 128              ; 3 uses
  %.sroa.9.sroa.6.0.extract.shift = and i32 %2, 2147483392
  %.sroa.4.0 = select i1 %3, i64 4456448, i64 8650752
  %.sroa.9.sroa.6.sroa.0.0 = select i1 %3, i32 0, i32 %.sroa.9.sroa.6.0.extract.shift
  %i.es = select i1 %3, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.9.sroa.0.0.insert.ext = and i32 %2, 240
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.6.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
  %.sroa.9.0.insert.ext = zext nneg i32 %.sroa.9.sroa.0.0.insert.insert to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, %.sroa.4.0
  %.sroa.4.0.insert.insert332 = or disjoint i64 %.sroa.7.0.insert.insert, 603979776 ; 2 uses
  %i.et = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.eu = and i32 %i.et, 32
  %.not.i.i126 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i126, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next
  call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ej, i64 %.sroa.4.0.insert.insert332, ptr nonnull %i.es, i8 %i.er) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

bb.aa:                                            ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next
  call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ej, i64 %.sroa.4.0.insert.insert332, ptr nonnull %i.es, i8 %i.er) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit: ; preds = %bb.aa, %bb.z
  %i.ev = add nuw nsw i32 %.082256, 1
  %i.ew = add i16 %.sroa.0143.0255, -2
  %i.ex = and i16 %i.ew, %.sroa.0143.0255         ; 2 uses
  %.not233 = icmp eq i16 %i.ex, 0
  br i1 %.not233, label %.loopexit240, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next, !llvm.loop !325

.loopexit240:                                     ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel, %bb.w
  %i.ey = extractelement <2 x i16> %i.bp, i64 0   ; 2 uses
  %i.ez = icmp eq i16 %i.ey, 0
  br i1 %i.ez, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit240
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit: ; preds = %.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit
  %.sroa.0138.0257 = phi i16 [ %i.ey, %.preheader ], [ %i.fi, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit ] ; 3 uses
  %i.fb = zext i16 %.sroa.0138.0257 to i32
  %i.fc = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.fb, i1 true)
  %i.fd = trunc nuw nsw i32 %i.fc to i8
  %i.fe = xor i8 %i.fd, 31
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.fa, i8 %i.fe) #18
  %i.ff = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0138.0257, i1 true)
  %i.fg = lshr exact i16 -32768, %i.ff
  %i.fh = xor i16 %i.fg, -1
  %i.fi = and i16 %.sroa.0138.0257, %i.fh         ; 2 uses
  %.not235 = icmp eq i16 %i.fi, 0
  br i1 %.not235, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit

.loopexit:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit, %.loopexit240
  %i.fj = load ptr, ptr %i.d, align 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130, label %bb.ab

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130: ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fp = shl nsw i32 %i.fm, 3
  %.sroa.0.0.insert.ext.i129 = zext nneg i32 %i.fp to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.fo, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i129, i32 noundef 8) #18
  %.pre276 = load ptr, ptr %i.d, align 8
  %.pre277 = load ptr, ptr %.pre276, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130, %.loopexit
  %i.fq = phi ptr [ %.pre277, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130 ], [ %i.fk, %.loopexit ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !326 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !326 ; 3 uses
  %i.fv = load i64, ptr %i.fs, align 8, !noalias !326 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.fx = load i64, ptr %i.gb, align 8, !noalias !326 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !331

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ac
  %i.fz = phi ptr [ %i.gb, %bb.ac ], [ %i.fs, %bb.ab ]
  %i.ga = phi i32 [ %i.gc, %bb.ac ], [ 0, %bb.ab ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 5 uses
  %i.gc = add nuw nsw i32 %i.ga, 64               ; 3 uses
  %i.gd = icmp eq ptr %i.gb, %i.fu
  br i1 %i.gd, label %_ZNK2v88internal17GrowableBitVector5beginEv.exit, label %bb.ac, !llvm.loop !331

._crit_edge.i.i:                                  ; preds = %bb.ac, %bb.ab
  %.lcssa4.i.i = phi ptr [ %i.fs, %bb.ab ], [ %i.gb, %bb.ac ]
  %.lcssa2.i.i = phi i32 [ 0, %bb.ab ], [ %i.gc, %bb.ac ]
  %.lcssa.i.i = phi i64 [ %i.fv, %bb.ab ], [ %i.fx, %bb.ac ]
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true)
  %i.gf = trunc nuw nsw i64 %i.ge to i32
  %i.gg = or disjoint i32 %.lcssa2.i.i, %i.gf
  br label %_ZNK2v88internal17GrowableBitVector5beginEv.exit

_ZNK2v88internal17GrowableBitVector5beginEv.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i
  %.sroa.8.1 = phi i32 [ %i.gg, %._crit_edge.i.i ], [ %i.gc, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0134.1 = phi ptr [ %.lcssa4.i.i, %._crit_edge.i.i ], [ %i.gb, %.lr.ph.i.i ]
  %i.gh = ptrtoint ptr %i.fu to i64
  %i.gi = ptrtoint ptr %i.fs to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %.tr.i.i.i = trunc i64 %i.gj to i32
  %tr.sh.diff.i.i.i = shl i32 %.tr.i.i.i, 3
  %i.gk = and i32 %tr.sh.diff.i.i.i, -64          ; 2 uses
  %.not236258 = icmp eq i32 %.sroa.8.1, %i.gk
  br i1 %.not236258, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal17GrowableBitVector5beginEv.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

._crit_edge:                                      ; preds = %_ZN2v88internal9BitVector8IteratorppEv.exit, %_ZNK2v88internal17GrowableBitVector5beginEv.exit
  ret void

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %.lr.ph, %_ZN2v88internal9BitVector8IteratorppEv.exit
  %.sroa.0134.0260 = phi ptr [ %.sroa.0134.1, %.lr.ph ], [ %.sroa.0134.3, %_ZN2v88internal9BitVector8IteratorppEv.exit ] ; 3 uses
  %.sroa.8.0259 = phi i32 [ %.sroa.8.1, %.lr.ph ], [ %.sroa.8.2, %_ZN2v88internal9BitVector8IteratorppEv.exit ] ; 4 uses
  %i.gm = load ptr, ptr %i.d, align 8
  %i.gn = call i32 @_ZNK2v88internal8compiler16FrameAccessState14GetFrameOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %i.gm, i32 noundef %.sroa.8.0259) #18 ; 3 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = add nsw i64 %i.go, 128
  %i.gq = icmp ult i64 %i.gp, 256                 ; 3 uses
  %.sroa.4.sroa.4.0.extract.shift = and i32 %i.gn, -256
  %.sroa.4.sroa.4.sroa.0.0 = select i1 %i.gq, i32 0, i32 %.sroa.4.sroa.4.0.extract.shift
  %.sroa.2.0 = select i1 %i.gq, i64 4521984, i64 8716288
  %storemerge = select i1 %i.gq, i64 2, i64 5
  %.sroa.4.sroa.0.0 = and i32 %i.gn, 254
  %.sroa.4.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.sroa.4.sroa.0.0, %.sroa.4.sroa.0.0
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.sroa.0.0.insert.insert to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.2.0
  %.cast = inttoptr i64 %storemerge to ptr
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.gl, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i64 0, i32 noundef 8) #18
  %i.gr = and i32 %.sroa.8.0259, 63               ; 2 uses
  %.not.i131 = icmp eq i32 %i.gr, 63
  br i1 %.not.i131, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.gs = load i64, ptr %.sroa.0134.0260, align 8
  %i.gt = add nuw nsw i32 %i.gr, 1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = lshr i64 %i.gs, %i.gu                   ; 2 uses
  %.not11.i = icmp eq i64 %i.gv, 0
  br i1 %.not11.i, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gv, i1 true)
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = add i32 %.sroa.8.0259, 1
  %i.gz = add i32 %i.gy, %i.gx
  br label %_ZN2v88internal9BitVector8IteratorppEv.exit

.critedge.i:                                      ; preds = %bb.ad, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.ha = and i32 %.sroa.8.0259, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.critedge.i
  %i.hb = phi i32 [ %i.he, %bb.ag ], [ %i.ha, %.critedge.i ]
  %i.hc = phi ptr [ %i.hd, %bb.ag ], [ %.sroa.0134.0260, %.critedge.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 5 uses
  %i.he = add nsw i32 %i.hb, 64                   ; 3 uses
  %i.hf = icmp eq ptr %i.hd, %i.fu
  br i1 %i.hf, label %_ZN2v88internal9BitVector8IteratorppEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = load i64, ptr %i.hd, align 8            ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.af, label %bb.ah, !llvm.loop !332

bb.ah:                                            ; preds = %bb.ag
  %i.hi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hg, i1 true)
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = or disjoint i32 %i.he, %i.hj
  br label %_ZN2v88internal9BitVector8IteratorppEv.exit

_ZN2v88internal9BitVector8IteratorppEv.exit:      ; preds = %bb.af, %bb.ae, %bb.ah
  %.sroa.8.2 = phi i32 [ %i.hk, %bb.ah ], [ %i.gz, %bb.ae ], [ %i.he, %bb.af ] ; 2 uses
  %.sroa.0134.3 = phi ptr [ %i.hd, %bb.ah ], [ %.sroa.0134.0260, %bb.ae ], [ %i.hd, %bb.af ]
  %.not236 = icmp eq i32 %.sroa.8.2, %i.gk
  br i1 %.not236, label %._crit_edge, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
}

declare noundef i32 @_ZNK2v88internal24OptimizedCompilationInfo23GetOutputStackFrameTypeEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler8PrologueEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler12StubPrologueENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler19UnwindingInfoWriter20MarkFrameConstructedEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

declare { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436), i16) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436), i16, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436), i16, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436), i16) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference17wasm_shrink_stackEv() local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler3RetEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler13DropArgumentsENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator10FinishCodeEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal9Assembler14PatchConstPoolEv(ptr noundef nonnull align 8 dereferenceable(408) %i.a) #18
  ret void
}

declare void @_ZN2v88internal9Assembler14PatchConstPoolEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator29PrepareForDeoptimizationExitsEPNS0_9ZoneDequeIPNS1_18DeoptimizationExitEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1560) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator27IncrementStackAccessCounterEPNS1_18InstructionOperandES4_(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8
  switch i8 %i.d, label %bb.f [
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = and i64 %i.e, 7
  %i.g = icmp samesign ugt i64 %i.f, 4
  %i.h = and i64 %i.e, 8
  %i.i = icmp ne i64 %i.h, 0
  %i.j = and i1 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.l = load ptr, ptr %i.k, align 8
end_hunk_2
