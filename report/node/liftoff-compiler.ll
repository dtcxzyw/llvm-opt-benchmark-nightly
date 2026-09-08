Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-compiler?download=true
inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10FinishCallEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEi:bb.a

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !23, !noundef !24
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.126) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29StoreFrameDescriptionForDeoptEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ax = load i8, ptr %i.aw, align 8
  %.not.i9 = icmp eq i8 %i.ax, 0
  br i1 %.not.i9, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8MaybeOSREv.exit, label %bb.i, !prof !26

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal4wasm16LiftoffAssembler8MaybeOSREv(ptr noundef nonnull align 8 dereferenceable(1284) %0)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8MaybeOSREv.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8MaybeOSREv.exit: ; preds = %bb.h, %bb.i
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14EmitLandingPadEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i32 noundef %4)
  call void @_ZN2v88internal4wasm16LiftoffAssembler10FinishCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %2, ptr noundef %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueKindEA_S4_EEPT_m(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = add i64 %1, 7
  %i.b = and i64 %i.a, -8                         ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.d, label %_ZN2v88internal4Zone8AllocateIA_NS0_4wasm9ValueKindEEEPvm.exit, !prof !25

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.b) #24
  %.pre.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone8AllocateIA_NS0_4wasm9ValueKindEEEPvm.exit

_ZN2v88internal4Zone8AllocateIA_NS0_4wasm9ValueKindEEEPvm.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %.pre.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %i.i, %i.b
  store i64 %i.k, ptr %i.e, align 8
  ret ptr %i.j
}

declare void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK2v88internal8compiler14CallDescriptor14signature_hashEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29StoreFrameDescriptionForDeoptEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  %.sroa.03.0.insert.ext = zext i32 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %.sroa.03.4.insert.ext = shl i64 %i.r, 32
  %.sroa.03.4.insert.insert = or disjoint i64 %.sroa.03.4.insert.ext, %.sroa.03.0.insert.ext
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = icmp ugt i64 %i.z, 768614336404564650
  br i1 %i.aa, label %bb.b, label %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #27
  unreachable

_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN2v88internal4wasm15LiftoffVarStateESaIS3_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN2v88internal4wasm15LiftoffVarStateESaIS3_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  br label %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EEC2IPS3_vEET_S8_RKS4_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #25 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.ae = add i64 %i.y, -12                       ; 2 uses
  %i.af = urem i64 %i.ae, 12
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = add i64 %i.ag, 12                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.t, i64 %i.ah, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.ac, i64 %i.ah
  br label %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EEC2IPS3_vEET_S8_RKS4_.exit

_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EEC2IPS3_vEET_S8_RKS4_.exit: ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm15LiftoffVarStateESaIS3_EE11_M_allocateEm.exit.thread.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.sroa.5.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal4wasm15LiftoffVarStateESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.preheader.i.i ]
  %.sroa.12.0 = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIN2v88internal4wasm15LiftoffVarStateESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal4wasm15LiftoffVarStateESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.lr.ph.i.i.i.i.preheader.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.aj = load i8, ptr %i.ai, align 8
  %.sroa.16.32.insert.ext = zext i8 %i.aj to i64
  %i.ak = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !532 ; 6 uses
  store i64 %.sroa.03.4.insert.insert, ptr %i.ak, align 8, !noalias !532
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.5.0, ptr %i.al, align 8, !noalias !532
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.am, align 8, !noalias !532
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %.sroa.12.0, ptr %i.an, align 8, !noalias !532
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sroa.16.32.insert.ext, ptr %i.ao, align 8, !noalias !532
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  store ptr %i.ak, ptr %i.ap, align 8
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal4wasm31LiftoffFrameDescriptionForDeoptD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EEC2IPS3_vEET_S8_RKS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm31LiftoffFrameDescriptionForDeoptEEclEPS3_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #26
  br label %_ZNKSt14default_deleteIN2v88internal4wasm31LiftoffFrameDescriptionForDeoptEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm31LiftoffFrameDescriptionForDeoptEEclEPS3_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 40) #26
  br label %_ZN2v88internal4wasm31LiftoffFrameDescriptionForDeoptD2Ev.exit

_ZN2v88internal4wasm31LiftoffFrameDescriptionForDeoptD2Ev.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EEC2IPS3_vEET_S8_RKS4_.exit, %_ZNKSt14default_deleteIN2v88internal4wasm31LiftoffFrameDescriptionForDeoptEEclEPS3_.exit.i.i.i.i
  ret void
}

declare void @_ZN2v88internal4wasm16LiftoffAssembler10FinishCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(824), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal14MacroAssembler14SmiAddConstantENS0_7OperandENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436), i64, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler8near_jmpElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16CallIndirectImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_21CallIndirectImmediateENS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %7 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %10 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %11 = alloca %"class.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::MostlySmallValueKindSig", align 8 ; 8 uses
  %12 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 8 uses
  %13 = alloca %"class.v8::internal::wasm::(anonymous namespace)::TempRegisterScope", align 4 ; 10 uses
  %14 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %15 = alloca %"class.v8::internal::Register", align 1 ; 8 uses
  %16 = alloca %"class.v8::internal::FixedSizeSignature.822", align 8 ; 8 uses
  %17 = alloca %"class.v8::internal::FixedSizeSignature.824", align 8 ; 6 uses
  %18 = alloca [4 x %"class.v8::internal::wasm::LiftoffVarState"], align 4 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.h = add i64 %i.f, %i.d                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueKindEA_S4_EEPT_m(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef %i.h)
  %.pre.i.i = load i64, ptr %i.c, align 8
  %.pre15.i.i = load i64, ptr %i.e, align 8
  %.pre16.i.i = add i64 %.pre15.i.i, %.pre.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.idx14.pre-phi.i.i = phi i64 [ %.pre16.i.i, %bb.b ], [ %i.h, %bb.a ]
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = shl i64 %.idx14.pre-phi.i.i, 2           ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n
  %.not9.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not9.i.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSigC2EPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i
  %.011.i.i.i = phi ptr [ %i.z, %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.0710.i.i.i = phi ptr [ %i.aa, %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i ], [ %.0.i.i, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4 ; 4 uses
  %i.p = and i32 %.sroa.0.0.copyload.i.i.i, 3
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = and i32 %.sroa.0.0.copyload.i.i.i, 268435440
  %i.s = add nsw i32 %i.r, -5648                  ; 2 uses
  %i.t = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 24) ; 2 uses
  %i.u = icmp ult i32 %i.t, 8
  br i1 %i.u, label %switch.lookup.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.v = and i32 %.sroa.0.0.copyload.i.i.i, 268435427
  switch i32 %i.v, label %bb.g [
    i32 258, label %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i
    i32 514, label %.fold.split.i.i.i.i.i
    i32 2, label %.fold.split1.i.i.i.i.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = and i32 %.sroa.0.0.copyload.i.i.i, 5
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i8 10, i8 9
  br label %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i

.fold.split.i.i.i.i.i:                            ; preds = %bb.f
  br label %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i

.fold.split1.i.i.i.i.i:                           ; preds = %bb.f
  br label %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i

switch.lookup.i.i.i.i.i:                          ; preds = %bb.d
  %switch.idx.cast.i.i.i.i.i = trunc nuw nsw i32 %i.t to i8
  %switch.offset.i.i.i.i.i = add nuw nsw i8 %switch.idx.cast.i.i.i.i.i, 1
  br label %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i

_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i: ; preds = %switch.lookup.i.i.i.i.i, %.fold.split1.i.i.i.i.i, %.fold.split.i.i.i.i.i, %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i8 [ %i.y, %bb.g ], [ 0, %.fold.split1.i.i.i.i.i ], [ 12, %.fold.split.i.i.i.i.i ], [ 11, %bb.f ], [ %switch.offset.i.i.i.i.i, %switch.lookup.i.i.i.i.i ]
  store i8 %.0.i.i.i.i.i, ptr %.0710.i.i.i, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.z, %i.o
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSigC2EPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSigC2EPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEE.exit: ; preds = %_ZZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSig9MakeKindsEPNS1_9ValueKindEPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEEENKUlSA_E_clESA_.exit.i.i.i, %bb.c
  store i64 %i.d, ptr %11, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.f, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.0.i.i, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.d
  %.not503 = icmp samesign eq i64 %i.d, 0
  br i1 %.not503, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSigC2EPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread
  %.0504 = phi ptr [ %.0.i.i, %.lr.ph ], [ %i.al, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread ] ; 2 uses
  %i.af = load i8, ptr %.0504, align 1            ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 8
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ag
  %.not500 = icmp eq i32 %i.aj, 0
  br i1 %.not500, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread, !prof !25

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit: ; preds = %bb.h
  %i.ak = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30MaybeBailoutForUnsupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, i8 noundef zeroext %i.af, ptr noundef nonnull @.str.125)
  br i1 %i.ak, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread, label %.loopexit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread: ; preds = %bb.h, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.0504, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.ad
  br i1 %.not, label %.critedge, label %bb.h

.critedge:                                        ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler23MostlySmallValueKindSigC2EPNS0_4ZoneEPKNS0_9SignatureINS1_9ValueTypeEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load ptr, ptr %i.an, align 8            ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1260
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = add i32 %i.ba, %i.ay
  %i.bc = icmp eq i32 %i.aq, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !23, !noundef !24
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.126) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14EmitDeoptPointEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store i32 0, ptr %12, align 4
  %i.bi = call fastcc { i64, i32 } @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler25IndexToVarStateSaturatingEiPNS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef 0, ptr noundef %12) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.bi, 0 ; 5 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.bi, 1
  %.sroa.0470.0.extract.trunc = trunc i64 %.fca.0.extract to i8 ; 2 uses
  %i.bj = icmp eq i8 %.sroa.0470.0.extract.trunc, 2 ; 4 uses
  br i1 %i.bj, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0120.0.copyload = load i32, ptr %12, align 4 ; 2 uses
  %i.bk = icmp eq i8 %.sroa.0470.0.extract.trunc, 1
  br i1 %i.bk, label %bb.o, label %bb.p, !prof !26

bb.o:                                             ; preds = %bb.n
  %.sroa.0488.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.0488.4.extract.trunc = trunc i64 %.sroa.0488.4.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

bb.p:                                             ; preds = %bb.n
  %i.bl = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.fca.0.extract, i32 %.fca.1.extract, i32 %.sroa.0120.0.copyload) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.o, %bb.p
  %.sroa.07.0.i = phi i8 [ %.sroa.0488.4.extract.trunc, %bb.o ], [ %i.bl, %bb.p ] ; 3 uses
  %i.bm = zext nneg i8 %.sroa.07.0.i to i32
  %i.bn = shl nuw nsw i32 1, %i.bm
  %i.bo = or i32 %i.bn, %.sroa.0120.0.copyload
  store i32 %i.bo, ptr %12, align 4
  %i.bp = icmp samesign ult i8 %.sroa.07.0.i, 16
  call void @llvm.assume(i1 %i.bp)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %.sroa.0124.0 = phi i8 [ %.sroa.07.0.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit ], [ -1, %bb.m ] ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !range !23, !noundef !24
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bu = call noundef i32 @_ZN2v88internal4wasm14max_table_sizeEv() #24
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load i64, ptr %i.bt, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bv)
  %i.bx = trunc nuw i64 %.sroa.speculated to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.by = call noundef i32 @_ZN2v88internal4wasm14max_table_sizeEv() #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = phi i32 [ %i.bx, %bb.r ], [ %i.by, %bb.s ] ; 2 uses
  %.sroa.0470.4.extract.shift = lshr i64 %.fca.0.extract, 32 ; 2 uses
  %.sroa.0470.4.extract.trunc = trunc nuw i64 %.sroa.0470.4.extract.shift to i32
  %i.ca = icmp ule i32 %i.bz, %.sroa.0470.4.extract.trunc
  %i.cb = select i1 %i.bj, i1 %i.ca, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %.sroa.0111.0.copyload = load i32, ptr %12, align 4 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 7 uses
  %i.cd = and i32 %.sroa.0111.0.copyload, 37839
  %i.ce = xor i32 %i.cd, 37839                    ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cc, align 8
  %i.cf = xor i32 %.sroa.0.0.copyload.i.i.i.i, -1 ; 2 uses
  %i.cg = and i32 %i.ce, %i.cf                    ; 2 uses
  %.not.i.i.i247 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i247, label %bb.v, label %bb.u, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.ch = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cg, i1 true)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ci = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.ce) #24
  %i.cj = zext nneg i8 %i.ci to i32
  %.sroa.0.0.copyload.i.i.i.1.pre.i = load i32, ptr %i.cc, align 8
  %.pre.i = xor i32 %.sroa.0.0.copyload.i.i.i.1.pre.i, -1
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i: ; preds = %bb.v, %bb.u
  %.pre-phi.i = phi i32 [ %i.cf, %bb.u ], [ %.pre.i, %bb.v ] ; 2 uses
  %.sroa.06.0.i.i.i = phi i32 [ %i.ch, %bb.u ], [ %i.cj, %bb.v ]
  %i.ck = shl nuw i32 1, %.sroa.06.0.i.i.i        ; 2 uses
  %i.cl = or i32 %i.ck, %.sroa.0111.0.copyload
  %i.cm = and i32 %i.cl, 37839
  %i.cn = xor i32 %i.cm, 37839                    ; 2 uses
  %i.co = and i32 %i.cn, %.pre-phi.i              ; 2 uses
  %.not.i.i.1.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.1.i, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %i.cp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.co, i1 true)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.1.i

bb.x:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %i.cq = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.cn) #24
  %i.cr = zext nneg i8 %i.cq to i32
  %.sroa.0.0.copyload.i.i.i.2.pre.i = load i32, ptr %i.cc, align 8
  %.pre19.i = xor i32 %.sroa.0.0.copyload.i.i.i.2.pre.i, -1
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.1.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.1.i: ; preds = %bb.x, %bb.w
  %.pre-phi20.i = phi i32 [ %.pre19.i, %bb.x ], [ %.pre-phi.i, %bb.w ]
  %.sroa.06.0.i.i.1.i = phi i32 [ %i.cr, %bb.x ], [ %i.cp, %bb.w ]
  %i.cs = shl nuw i32 1, %.sroa.06.0.i.i.1.i
  %i.ct = or i32 %i.cs, %i.ck                     ; 2 uses
  %i.cu = or i32 %i.ct, %.sroa.0111.0.copyload
  %i.cv = and i32 %i.cu, 37839
  %i.cw = xor i32 %i.cv, 37839                    ; 2 uses
  %i.cx = and i32 %i.cw, %.pre-phi20.i            ; 2 uses
  %.not.i.i.2.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.2.i, label %bb.z, label %bb.y, !prof !25

bb.y:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.1.i
  %i.cy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cx, i1 true)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_117TempRegisterScope16AddTempRegistersEiNS1_8RegClassEPNS1_16LiftoffAssemblerENS1_14LiftoffRegListE.exit

bb.z:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.1.i
  %i.cz = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.cw) #24
  %i.da = zext nneg i8 %i.cz to i32
  br label %_ZN2v88internal4wasm12_GLOBAL__N_117TempRegisterScope16AddTempRegistersEiNS1_8RegClassEPNS1_16LiftoffAssemblerENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm12_GLOBAL__N_117TempRegisterScope16AddTempRegistersEiNS1_8RegClassEPNS1_16LiftoffAssemblerENS1_14LiftoffRegListE.exit: ; preds = %bb.y, %bb.z
  %.sroa.06.0.i.i.2.i = phi i32 [ %i.cy, %bb.y ], [ %i.da, %bb.z ]
  %i.db = shl nuw i32 1, %.sroa.06.0.i.i.2.i
  %i.dc = or i32 %i.db, %i.ct                     ; 3 uses
  %i.dd = or i32 %i.dc, %.sroa.0111.0.copyload    ; 3 uses
  store i32 %i.dd, ptr %12, align 4
  %i.de = and i32 %i.dc, 37839                    ; 2 uses
  %i.df = icmp ne i32 %i.de, 0
  call void @llvm.assume(i1 %i.df)
  %i.dg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.de, i1 true) ; 2 uses
  %i.dh = trunc nuw nsw i32 %i.dg to i8           ; 22 uses
  %i.di = shl nuw nsw i32 1, %i.dg                ; 3 uses
  %i.dj = xor i32 %i.di, -1
  %i.dk = and i32 %i.dc, %i.dj                    ; 6 uses
  store i32 %i.dk, ptr %13, align 4
  %i.dl = load i32, ptr %i.am, align 8
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.do = load i8, ptr %i.dn, align 8             ; 3 uses
  %i.dp = icmp eq i8 %i.do, -1                    ; 2 uses
  br i1 %i.dm, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_117TempRegisterScope16AddTempRegistersEiNS1_8RegClassEPNS1_16LiftoffAssemblerENS1_14LiftoffRegListE.exit
  br i1 %i.dp, label %bb.ab, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190, !prof !25

bb.ab:                                            ; preds = %bb.aa
  %i.dq = call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 %i.dd, i8 %i.dh)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190: ; preds = %bb.aa, %bb.ab
  %.sroa.0486.0 = phi i8 [ %i.dq, %bb.ab ], [ %i.do, %bb.aa ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 2 uses
  store i64 0, ptr %10, align 8
  switch i8 %.sroa.0486.0, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge [
    i8 4, label %bb.ac
    i8 12, label %bb.ac
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190
  %.pre = and i8 %.sroa.0486.0, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit

bb.ac:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %10, i64 3
  %i.du = and i8 %.sroa.0486.0, 7                 ; 2 uses
  %i.dv = or disjoint i8 %i.du, 32
  store i8 %i.dv, ptr %scevgep.i, align 1
  %i.dw = icmp samesign ult i8 %.sroa.0486.0, 16
  call void @llvm.assume(i1 %i.dw)
  store i64 2, ptr %i.dt, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge, %bb.ac
  %.pre-phi = phi i8 [ %.pre, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge ], [ %i.du, %bb.ac ]
  %i.dx = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit190._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge ], [ 2, %bb.ac ] ; 2 uses
  %i.dy = lshr i8 %.sroa.0486.0, 3
  %i.dz = or disjoint i8 %.pre-phi, 64
  store i8 %i.dz, ptr %i.ds, align 2
  %i.ea = icmp samesign ult i8 %.sroa.0486.0, 16
  call void @llvm.assume(i1 %i.ea)
  store i8 %i.dy, ptr %i.dr, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dx
  store i8 7, ptr %i.eb, align 1
  %i.ec = add nuw nsw i64 %i.dx, 1
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load i64, ptr %10, align 8
  call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.dh, i64 %i.ee, ptr nonnull %i.ed) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_117TempRegisterScope16AddTempRegistersEiNS1_8RegClassEPNS1_16LiftoffAssemblerENS1_14LiftoffRegListE.exit
  br i1 %i.dp, label %bb.ae, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189, !prof !25

bb.ae:                                            ; preds = %bb.ad
  %i.ef = call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 %i.dd, i8 %i.dh)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189: ; preds = %bb.ad, %bb.ae
  %.sroa.0484.0 = phi i8 [ %i.ef, %bb.ae ], [ %i.do, %bb.ad ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %9, align 8
  store i64 1, ptr %i.ei, align 8
  switch i8 %.sroa.0484.0, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249_crit_edge [
    i8 4, label %bb.af
    i8 12, label %bb.af
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189
  %.pre513 = and i8 %.sroa.0484.0, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249

bb.af:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189
  %scevgep.i248 = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ej = and i8 %.sroa.0484.0, 7                 ; 2 uses
  %i.ek = or disjoint i8 %i.ej, 32
  store i8 %i.ek, ptr %scevgep.i248, align 1
  %i.el = icmp samesign ult i8 %.sroa.0484.0, 16
  call void @llvm.assume(i1 %i.el)
  store i64 2, ptr %i.ei, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249

_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249_crit_edge, %bb.af
  %.pre-phi514 = phi i8 [ %.pre513, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249_crit_edge ], [ %i.ej, %bb.af ]
  %i.em = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit189._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249_crit_edge ], [ 2, %bb.af ]
  %i.en = lshr i8 %.sroa.0484.0, 3
  %i.eo = or disjoint i8 %.pre-phi514, -128
  store i8 %i.eo, ptr %i.eh, align 2
  %i.ep = icmp samesign ult i8 %.sroa.0484.0, 16
  call void @llvm.assume(i1 %i.ep)
  store i8 %i.en, ptr %i.eg, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  store i32 215, ptr %i.eq, align 1
  %i.er = load i64, ptr %i.ei, align 8
  %i.es = add i64 %i.er, 4
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i64, ptr %9, align 8
  call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.dh, i64 %i.eu, ptr %i.et) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ev = load i32, ptr %i.am, align 8
  %i.ew = shl nsw i32 %i.ev, 3
  %i.ex = add i32 %i.ew, 15                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %8, align 8
  store i64 1, ptr %i.fa, align 8
  switch i8 %i.dh, label %bb.ah [
    i8 4, label %bb.ag
    i8 12, label %bb.ag
  ]

bb.ag:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249
  %scevgep.i250 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.fb = and i8 %i.dh, 7
  %i.fc = or disjoint i8 %i.fb, 32
  store i8 %i.fc, ptr %scevgep.i250, align 1
  %i.fd = lshr i8 %i.dh, 3
  store i64 2, ptr %i.fa, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249
  %i.fe = phi i64 [ 1, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249 ], [ 2, %bb.ag ] ; 3 uses
  %i.ff = phi i8 [ 0, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit249 ], [ %i.fd, %bb.ag ]
  %i.fg = sext i32 %i.ex to i64
  %i.fh = add nsw i64 %i.fg, 128
  %i.fi = icmp ult i64 %i.fh, 256
  %i.fj = and i8 %i.dh, 7                         ; 2 uses
  br i1 %i.fi, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %bb.ah
  %i.fk = or disjoint i8 %i.fj, 64
  store i8 %i.fk, ptr %i.ez, align 2
  %i.fl = trunc i32 %i.ex to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fe
  store i8 %i.fl, ptr %i.fm, align 1
  %i.fn = add nuw nsw i64 %i.fe, 1
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit251

bb.ai:                                            ; preds = %bb.ah
  %i.fo = or disjoint i8 %i.fj, -128
  store i8 %i.fo, ptr %i.ez, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fe
  store i32 %i.ex, ptr %i.fp, align 1
  %i.fq = load i64, ptr %i.fa, align 8
  %i.fr = add i64 %i.fq, 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit251

_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit251: ; preds = %.thread.i, %bb.ai
  %.in = phi i64 [ %i.fr, %bb.ai ], [ %i.fn, %.thread.i ]
  %.pn532 = lshr i8 %i.dh, 3
  %.sink = or i8 %i.ff, %.pn532
  store i8 %.sink, ptr %i.ey, align 1
  %i.fs = inttoptr i64 %.in to ptr
  %i.ft = load i64, ptr %8, align 8
  call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.dh, i64 %i.ft, ptr %i.fs) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit251, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit
  %i.fu = load i8, ptr %i.bq, align 8, !range !23, !noundef !24
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp ne i64 %i.fx, %i.ga
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gc = phi i1 [ true, %bb.aj ], [ %i.gb, %bb.ak ]
  %i.gd = and i32 %i.dk, 37839                    ; 2 uses
  %i.ge = icmp ne i32 %i.gd, 0
  call void @llvm.assume(i1 %i.ge)
  %i.gf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gd, i1 true) ; 2 uses
  %i.gg = trunc nuw nsw i32 %i.gf to i8           ; 6 uses
  %i.gh = shl nuw nsw i32 1, %i.gf                ; 4 uses
  %i.gi = xor i32 %i.gh, -1
  %i.gj = and i32 %i.dk, %i.gi
  %i.gk = call fastcc ptr @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16AddOutOfLineTrapEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, i32 noundef 1380) ; 3 uses
  br i1 %i.cb, label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit, label %bb.am
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16CallIndirectImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_21CallIndirectImmediateENS0_12CallJumpModeE:bb.a
  %.fca.0.load.i336 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.kl, i64 %.fca.0.load.i336, ptr nonnull %i.lg) #24
  %i.lh = load ptr, ptr %i.hx, align 8
  %.sroa.041.0.copyload = load i32, ptr %2, align 8
  %i.li = call noundef i32 @_ZN2v88internal4wasm17GetSubtypingDepthEPKNS1_10WasmModuleENS1_15ModuleTypeIndexE(ptr noundef %i.lh, i32 %.sroa.041.0.copyload) #24 ; 3 uses
  %i.lj = icmp ugt i32 %i.li, 2
  br i1 %i.lj, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit339
  %i.lk = and i32 %i.kx, 37839                    ; 2 uses
  %i.ll = icmp ne i32 %i.lk, 0
  call void @llvm.assume(i1 %i.ll)
  %i.lm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.lk, i1 true) ; 2 uses
  %i.ln = trunc nuw nsw i32 %i.lm to i8           ; 2 uses
  %i.lo = shl nuw nsw i32 1, %i.lm                ; 2 uses
  %i.lp = xor i32 %i.lo, -1
  %i.lq = and i32 %i.kx, %i.lp
  store i32 %i.lq, ptr %13, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i64 0, ptr %4, align 8
  switch i8 %i.kl, label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit284 [
    i8 4, label %bb.bi
    i8 12, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %scevgep83.i340 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.lu = or disjoint i8 %i.kp, 32
  store i8 %i.lu, ptr %scevgep83.i340, align 1
  store i64 2, ptr %i.lt, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit284

_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit284: ; preds = %bb.bh, %bb.bi
  %i.lv = phi i64 [ 1, %bb.bh ], [ 2, %bb.bi ]    ; 2 uses
  store i8 %i.ld, ptr %i.ls, align 2
  store i8 %i.ku, ptr %i.lr, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lv
  store i8 19, ptr %i.lw, align 1
  %i.lx = add nuw nsw i64 %i.lv, 1
  %i.ly = inttoptr i64 %i.lx to ptr
  %.fca.0.load.i344 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ln, i64 %.fca.0.load.i344, ptr nonnull %i.ly, i32 noundef 4) #24
  %.sroa.0.0.insert.ext.i281 = zext i32 %i.li to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 7, i8 %i.ln, i64 %.sroa.0.0.insert.ext.i281, i32 noundef 4) #24
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef 6, ptr noundef nonnull %i.jb, i32 noundef 1) #24
  %i.lz = or i32 %i.lo, %i.kx
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit284, %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit339
  %i.ma = phi i32 [ %i.lz, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit284 ], [ %i.kx, %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit339 ] ; 3 uses
  %i.mb = shl i32 %i.li, 3
  %i.mc = add i32 %i.mb, 23
  %i.md = zext i32 %i.mc to i64
  %i.me = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.kl, i8 -1, i64 noundef %i.md, i8 noundef signext 0) ; 2 uses
  %i.mf = extractvalue { i64, ptr } %i.me, 1
  %i.mg = extractvalue { i64, ptr } %i.me, 0
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.kl, i64 %i.mg, ptr %i.mf) #24
  %i.mh = and i32 %i.ma, 37839                    ; 2 uses
  %i.mi = icmp ne i32 %i.mh, 0
  call void @llvm.assume(i1 %i.mi)
  %i.mj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.mh, i1 true) ; 2 uses
  %i.mk = trunc nuw nsw i32 %i.mj to i8           ; 5 uses
  %i.ml = shl nuw nsw i32 1, %i.mj                ; 2 uses
  %i.mm = xor i32 %i.ml, -1
  %i.mn = and i32 %i.ma, %i.mm
  store i32 %i.mn, ptr %13, align 4
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.mp = load i8, ptr %i.mo, align 8             ; 2 uses
  %i.mq = icmp eq i8 %i.mp, -1
  br i1 %i.mq, label %bb.bk, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit, !prof !25

bb.bk:                                            ; preds = %bb.bj
  %i.mr = call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 37839, i8 %i.mk)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit: ; preds = %bb.bj, %bb.bk
  %.sroa.0482.0 = phi i8 [ %i.mr, %bb.bk ], [ %i.mp, %bb.bj ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ms = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %7, align 8
  store i64 1, ptr %i.mu, align 8
  switch i8 %.sroa.0482.0, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._crit_edge [
    i8 4, label %bb.bl
    i8 12, label %bb.bl
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit
  %.pre509 = and i8 %.sroa.0482.0, 7
  br label %bb.bn

bb.bl:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit
  %scevgep.i285 = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.mv = and i8 %.sroa.0482.0, 7                 ; 2 uses
  %i.mw = or disjoint i8 %i.mv, 32
  store i8 %i.mw, ptr %scevgep.i285, align 1
  %i.mx = icmp samesign ult i8 %.sroa.0482.0, 16
  call void @llvm.assume(i1 %i.mx)
  store i64 2, ptr %i.mu, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bd
  %.sroa.0.0.insert.ext.i300 = zext i32 %.sroa.02.0.copyload.i.i to i64
  br label %bb.bo

bb.bn:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._crit_edge, %bb.bl
  %.pre-phi510 = phi i8 [ %.pre509, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._crit_edge ], [ %i.mv, %bb.bl ]
  %i.my = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._crit_edge ], [ 2, %bb.bl ]
  %i.mz = lshr i8 %.sroa.0482.0, 3
  %i.na = or disjoint i8 %.pre-phi510, -128
  store i8 %i.na, ptr %i.mt, align 2
  %i.nb = icmp samesign ult i8 %.sroa.0482.0, 16
  call void @llvm.assume(i1 %i.nb)
  store i8 %i.mz, ptr %i.ms, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.my
  store i32 239, ptr %i.nc, align 1
  %i.nd = load i64, ptr %i.mu, align 8
  %i.ne = add i64 %i.nd, 4
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = load i64, ptr %7, align 8
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.mk, i64 %i.ng, ptr %i.nf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.nh = load i32, ptr %2, align 8
  %i.ni = shl nsw i32 %i.nh, 3
  %i.nj = add i32 %i.ni, 15
  %i.nk = zext i32 %i.nj to i64
  %i.nl = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.mk, i8 -1, i64 noundef %i.nk, i8 noundef signext 0) ; 2 uses
  %i.nm = extractvalue { i64, ptr } %i.nl, 1
  %i.nn = extractvalue { i64, ptr } %i.nl, 0
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.mk, i64 %i.nn, ptr %i.nm) #24
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 59, i8 %i.mk, i8 %i.kl, i32 noundef 8) #24
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef 5, ptr noundef nonnull %i.jb, i32 noundef 1) #24
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %14) #24
  %i.no = or i32 %i.ma, %i.km
  %i.np = or i32 %i.no, %i.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303

bb.bo:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i, %bb.bm
  %.sink536 = phi i64 [ %.sroa.0.0.insert.ext.i300, %bb.bm ], [ 4294967295, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i ]
  %.sink535 = phi i32 [ 5, %bb.bm ], [ 4, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i ]
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 7, i8 %i.ig, i64 %.sink536, i32 noundef 4) #24
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %.sink535, ptr noundef nonnull %i.jb, i32 noundef 1) #24
  %i.nq = or i32 %i.hm, %i.ih
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303

bb.bp:                                            ; preds = %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8            ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -12 ; 2 uses
  %.promoted.i304 = load i32, ptr %i.cc, align 8
  %i.nu = load i8, ptr %i.nt, align 4
  %i.nv = icmp eq i8 %i.nu, 1
  br i1 %i.nv, label %bb.bq, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i306

bb.bq:                                            ; preds = %bb.bp
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.nx = getelementptr inbounds i8, ptr %i.ns, i64 -8
  %.sroa.0.0.copyload.i.i308 = load i8, ptr %i.nx, align 4 ; 2 uses
  %i.ny = zext i8 %.sroa.0.0.copyload.i.i308 to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.ny ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = add i32 %i.oa, -1                       ; 2 uses
  store i32 %i.ob, ptr %i.nz, align 4
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.br, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i306

bb.br:                                            ; preds = %bb.bq
  %i.od = zext nneg i8 %.sroa.0.0.copyload.i.i308 to i32
  %i.oe = shl nuw i32 1, %i.od
  %i.of = xor i32 %i.oe, -1
  %i.og = and i32 %.promoted.i304, %i.of
  store i32 %i.og, ptr %i.cc, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i306

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i306: ; preds = %bb.br, %bb.bq, %bb.bp
  store ptr %i.nt, ptr %i.nr, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303

_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303: ; preds = %bb.bo, %bb.bn, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i306
  %i.oh = phi i32 [ %i.nq, %bb.bo ], [ %i.np, %bb.bn ], [ %i.hm, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i306 ] ; 2 uses
  %i.oi = and i32 %i.oh, 37839                    ; 2 uses
  %i.oj = icmp ne i32 %i.oi, 0
  call void @llvm.assume(i1 %i.oj)
  %i.ok = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.oi, i1 true) ; 2 uses
  %i.ol = trunc nuw nsw i32 %i.ok to i8           ; 3 uses
  %i.om = shl nuw nsw i32 1, %i.ok
  %i.on = xor i32 %i.om, -1
  %i.oo = and i32 %i.oh, %i.on                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.op = and i32 %i.oo, 37839                    ; 2 uses
  %i.oq = icmp ne i32 %i.op, 0
  call void @llvm.assume(i1 %i.oq)
  %i.or = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.op, i1 true) ; 2 uses
  %i.os = trunc nuw nsw i32 %i.or to i8           ; 2 uses
  %i.ot = shl nuw nsw i32 1, %i.or
  %i.ou = xor i32 %i.ot, -1
  %i.ov = and i32 %i.oo, %i.ou                    ; 2 uses
  store i32 %i.ov, ptr %13, align 4
  store i8 %i.os, ptr %15, align 1
  %i.ow = add i32 %.0182, 8                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %6, align 8
  store i64 1, ptr %i.oz, align 8
  switch i8 %i.dh, label %bb.bt [
    i8 4, label %bb.bs
    i8 12, label %bb.bs
  ]

bb.bs:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303
  %scevgep.i310 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.pa = and i8 %i.dh, 7
  %i.pb = or disjoint i8 %i.pa, 32
  store i8 %i.pb, ptr %scevgep.i310, align 1
  %i.pc = lshr i8 %i.dh, 3
  store i64 2, ptr %i.oz, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303, %bb.bs
  %19 = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303 ], [ 2, %bb.bs ] ; 3 uses
  %20 = phi i8 [ 0, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit303 ], [ %i.pc, %bb.bs ]
  %i.pd = sext i32 %i.ow to i64
  %i.pe = add nsw i64 %i.pd, 128
  %i.pf = icmp ult i64 %i.pe, 256
  %21 = and i8 %i.dh, 7                           ; 2 uses
  br i1 %i.pf, label %.thread.i311, label %bb.bu

.thread.i311:                                     ; preds = %bb.bt
  %i.pg = or disjoint i8 %21, 64
  store i8 %i.pg, ptr %i.oy, align 2
  %i.ph = trunc i32 %i.ow to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 %19
  store i8 %i.ph, ptr %i.pi, align 1
  %i.pj = add nuw nsw i64 %19, 1
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312

bb.bu:                                            ; preds = %bb.bt
  %i.pk = or disjoint i8 %21, -128
  store i8 %i.pk, ptr %i.oy, align 2
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oy, i64 %19
  store i32 %i.ow, ptr %i.pl, align 1
  %i.pm = load i64, ptr %i.oz, align 8
  %i.pn = add i64 %i.pm, 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312

_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312: ; preds = %.thread.i311, %bb.bu
  %.in505 = phi i64 [ %i.pn, %bb.bu ], [ %i.pj, %.thread.i311 ]
  %.pn533 = lshr i8 %i.dh, 3
  %.sink506 = or i8 %20, %.pn533
  store i8 %.sink506, ptr %i.ox, align 1
  %22 = inttoptr i64 %.in505 to ptr
  %23 = load i64, ptr %6, align 8
  call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ol, i64 %23, ptr %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.po = sext i32 %.0182 to i64
  %i.pp = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.dh, i8 -1, i64 noundef %i.po, i8 noundef signext 0) ; 2 uses
  %i.pq = extractvalue { i64, ptr } %i.pp, 0
  %i.pr = extractvalue { i64, ptr } %i.pp, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.os, i64 %i.pq, ptr %i.pr, i32 noundef 4) #24
  %i.ps = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 899), align 1, !range !23, !noundef !24
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.dh, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #24
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.pw = load ptr, ptr %i.pv, align 8            ; 3 uses
  %i.px = load ptr, ptr %i.pu, align 8            ; 4 uses
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64               ; 2 uses
  %i.qa = sub i64 %i.py, %i.pz                    ; 5 uses
  %i.qb = ashr exact i64 %i.qa, 2                 ; 4 uses
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = shl i32 %i.qc, 1
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  %i.qf = load ptr, ptr %i.qe, align 8
  %.not.i313 = icmp eq ptr %i.pw, %i.qf
  br i1 %.not.i313, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 -2, ptr %i.pw, align 4
  %i.qg = load ptr, ptr %i.pv, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  store ptr %i.qh, ptr %i.pv, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit317

bb.bx:                                            ; preds = %bb.bv
  %i.qi = icmp eq i64 %i.qa, 9223372036854775804
  br i1 %i.qi, label %bb.by, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #27
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bx
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.qb, i64 1)
  %i.qj = add nsw i64 %.sroa.speculated.i.i.i, %i.qb ; 2 uses
  %i.qk = icmp ult i64 %i.qj, %i.qb
  %i.ql = call i64 @llvm.umin.i64(i64 %i.qj, i64 2305843009213693951)
  %i.qm = select i1 %i.qk, i64 2305843009213693951, i64 %i.ql ; 3 uses
  %.not.i.i.i314 = icmp ne i64 %i.qm, 0
  call void @llvm.assume(i1 %.not.i.i.i314)
  %i.qn = shl nuw nsw i64 %i.qm, 2
  %i.qo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qn) #25 ; 4 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qo, i64 %i.qa ; 2 uses
  store i32 -2, ptr %i.qp, align 4
  %i.qq = icmp sgt i64 %i.qa, 0
  br i1 %i.qq, label %bb.bz, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.bz:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qo, ptr align 4 %i.px, i64 %i.qa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.bz, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %.not.i17.i.i = icmp eq ptr %i.px, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.qs = load ptr, ptr %i.qe, align 8
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = sub i64 %i.qt, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qu) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ca, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.qo, ptr %i.pu, align 8
  store ptr %i.qr, ptr %i.pv, align 8
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.qm
  store ptr %i.qv, ptr %i.qe, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit317

_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit317: ; preds = %bb.bw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %.sroa.013.0.copyload = load i8, ptr %15, align 1 ; 2 uses
  %i.qw = icmp samesign ult i8 %.sroa.013.0.copyload, 16
  call void @llvm.assume(i1 %i.qw)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.qx = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store i64 2, ptr %17, align 8, !alias.scope !537
  %i.qy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.qy, align 8, !alias.scope !537
  %i.qz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.qx, ptr %i.qz, align 8, !alias.scope !537
  store i16 514, ptr %i.qx, align 8, !alias.scope !537
  %i.ra = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store i64 2, ptr %16, align 8, !alias.scope !538
  %i.rb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.rb, align 8, !alias.scope !538
  %i.rc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.ra, ptr %i.rc, align 8, !alias.scope !538
  store i16 514, ptr %i.ra, align 8, !alias.scope !538
  %i.rd = getelementptr inbounds nuw i8, ptr %16, i64 26
  store i32 151060745, ptr %i.rd, align 2, !alias.scope !538
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store i8 1, ptr %18, align 4
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 1
  store i8 9, ptr %.sroa.4365.0..sroa_idx, align 1
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i8 %i.dh, ptr %.sroa.5367.0..sroa_idx, align 4
  %.sroa.6369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %.sroa.6369.0..sroa_idx, align 4
  %i.re = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i8 2, ptr %i.re, align 4
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 13
  store i8 1, ptr %.sroa.4360.0..sroa_idx, align 1
  %.sroa.5362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %i.qd, ptr %.sroa.5362.0..sroa_idx, align 4
  %.sroa.6363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %.sroa.6363.0..sroa_idx, align 4
  %i.rf = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 1, ptr %i.rf, align 4
  %.sroa.4354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 25
  store i8 1, ptr %.sroa.4354.0..sroa_idx, align 1
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i8 %.sroa.013.0.copyload, ptr %.sroa.5356.0..sroa_idx, align 4
  %.sroa.6358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 0, ptr %.sroa.6358.0..sroa_idx, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %18, i64 36
  store i8 1, ptr %i.rg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 37
  store i8 9, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i8 %i.ol, ptr %.sroa.5350.0..sroa_idx, align 4
  %.sroa.6351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 44
  store i32 0, ptr %.sroa.6351.0..sroa_idx, align 4
  %.val192 = load ptr, ptr %i.at, align 8
  %.val193 = load ptr, ptr %i.ar, align 8
  %i.rh = ptrtoint ptr %.val193 to i64
  %i.ri = ptrtoint ptr %.val192 to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = trunc i64 %i.rj to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallBuiltinENS0_7BuiltinERKNS0_9SignatureINS1_9ValueKindEEESt16initializer_listINS1_15LiftoffVarStateEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef 1365, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr nonnull %18, i64 4, i32 noundef %i.rk)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  store i8 0, ptr %15, align 1
  %i.rl = or i32 %i.ov, %i.di
  store i32 %i.rl, ptr %13, align 4
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit317, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312
  %.sroa.14441.2 = phi ptr [ null, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit317 ], [ %13, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312 ] ; 3 uses
  %.sroa.021.0 = phi i8 [ 2, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit317 ], [ %i.ol, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit312 ]
  %i.rm = load ptr, ptr %i.a, align 8
  %i.rn = load ptr, ptr %i.b, align 8
  %i.ro = call noundef ptr @_ZN2v88internal8compiler21GetWasmCallDescriptorINS0_4wasm9ValueTypeEEEPNS1_14CallDescriptorEPNS0_4ZoneEPKNS0_9SignatureIT_EENS1_12WasmCallKindEb(ptr noundef %i.rm, ptr noundef %i.rn, i32 noundef 1, i1 noundef zeroext false) #24 ; 6 uses
  call void @_ZN2v88internal4wasm16LiftoffAssembler11PrepareCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPNS0_8RegisterESB_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %11, ptr noundef %i.ro, ptr noundef nonnull %15, i8 %.sroa.021.0) #24
  %.not184 = icmp eq i32 %3, 0
  br i1 %.not184, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rq = load i64, ptr %i.rp, align 8
  %i.rr = trunc i64 %i.rq to i32
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = call noundef i32 @_ZNK2v88internal8compiler14CallDescriptor22GetStackParameterDeltaEPKS2_(ptr noundef nonnull align 8 dereferenceable(128) %i.ro, ptr noundef %i.rt) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler15PrepareTailCallEii(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.rr, i32 noundef %i.ru)
  %.sroa.03.0.copyload = load i8, ptr %15, align 1 ; 2 uses
  %i.rv = icmp eq i8 %.sroa.03.0.copyload, -1
  br i1 %i.rv, label %bb.cd, label %_ZN2v88internal4wasm16LiftoffAssembler16TailCallIndirectEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler16TailCallIndirectEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler16TailCallIndirectEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit: ; preds = %bb.cc, %bb.cd
  %.sroa.0.0.i = phi i8 [ 10, %bb.cd ], [ %.sroa.03.0.copyload, %bb.cc ]
  %i.rw = call noundef i64 @_ZNK2v88internal8compiler14CallDescriptor14signature_hashEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ro) #24
  call void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.0.0.i, i64 noundef %i.rw, i32 noundef 1) #24
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = ptrtoint ptr %i.rz to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %sext = shl i64 %i.se, 32
  %i.sf = ashr exact i64 %sext, 32
  %.val = load ptr, ptr %i.at, align 8
  %.val191 = load ptr, ptr %i.ar, align 8
  %i.sg = ptrtoint ptr %.val191 to i64
  %i.sh = ptrtoint ptr %.val to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = shl i64 %i.si, 32
  %sext502 = add i64 %i.sj, 4294967296
  %i.sk = ashr exact i64 %sext502, 31
  %i.sl = and i64 %i.sk, -140735340871682
  call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.rx, i64 noundef %i.sf, i64 %i.sl, i1 noundef zeroext true, i1 noundef zeroext true) #24
  %.sroa.0.0.copyload = load i8, ptr %15, align 1 ; 2 uses
  %i.sm = icmp eq i8 %.sroa.0.0.copyload, -1
  br i1 %i.sm, label %bb.cf, label %_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit: ; preds = %bb.ce, %bb.cf
  %.sroa.0.0.i318 = phi i8 [ 10, %bb.cf ], [ %.sroa.0.0.copyload, %bb.ce ]
  %i.sn = call noundef i64 @_ZNK2v88internal8compiler14CallDescriptor14signature_hashEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ro) #24
  call void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.0.0.i318, i64 noundef %i.sn, i32 noundef 0) #24
  %i.so = load ptr, ptr %i.ry, align 8
  %i.sp = load ptr, ptr %i.sa, align 8
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = trunc i64 %i.ss to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10FinishCallEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull %i.ro, i32 noundef %i.st)
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit, %_ZN2v88internal4wasm16LiftoffAssembler16TailCallIndirectEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %.not.i319 = icmp eq ptr %.sroa.14441.2, null
  br i1 %.not.i319, label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit324, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.su = load i32, ptr %.sroa.14441.2, align 4
  %i.sv = or i32 %i.su, %i.di
  store i32 %i.sv, ptr %.sroa.14441.2, align 4
  br label %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit324

_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit324: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit, %_ZN2v88internal4wasm12_GLOBAL__N_118ScopedTempRegisterD2Ev.exit324
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14EmitDeoptPointEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 15 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 5 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %5 = alloca %"class.v8::internal::FixedSizeSignature.826", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 332
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5SplitERKS3_(ptr noundef nonnull align 8 dereferenceable(337) %2, ptr noundef nonnull align 8 dereferenceable(337) %i.l) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %3, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 0, ptr %4, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.n, align 4
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %4, i32 noundef 1) #24
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %3) #24
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29StoreFrameDescriptionForDeoptEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallBuiltinENS0_7BuiltinERKNS0_9SignatureINS1_9ValueKindEEESt16initializer_listINS1_15LiftoffVarStateEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef 1337, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr null, i64 0, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler14MergeStackWithERNS2_10CacheStateEjNS2_13JumpDirectionE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(337) %2, i32 noundef 0, i32 noundef 0) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5StealERS3_(ptr noundef nonnull align 8 dereferenceable(337) %i.l, ptr noundef nonnull align 8 dereferenceable(337) %2) #24
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i32 } @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler25IndexToVarStateSaturatingEiPNS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef range(i32 0, 3) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = xor i32 %1, -1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 2
  %i.i = load i8, ptr %i.e, align 4               ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.k, align 4
  %i.l = zext nneg i8 %.sroa.0.0.copyload.i to i32
  %i.m = shl nuw i32 1, %i.l
  %i.n = load i32, ptr %2, align 4
  %i.o = or i32 %i.m, %i.n
  store i32 %i.o, ptr %2, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.028.0.copyload = load i64, ptr %i.e, align 4 ; 5 uses
  %.sroa.028.sroa.631.0.extract.shift = lshr i64 %.sroa.028.0.copyload, 32
  %.sroa.028.sroa.631.sroa.0.0.extract.trunc = trunc i64 %.sroa.028.sroa.631.0.extract.shift to i8
  %sum.shift = lshr i64 %.sroa.028.0.copyload, 40
  %.sroa.028.sroa.631.sroa.4.0.extract.trunc = trunc nuw nsw i64 %sum.shift to i32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %i.p = and i64 %.sroa.028.0.copyload, 4294901760
  %i.q = and i64 %.sroa.028.0.copyload, 65280
  %i.r = and i64 %.sroa.028.0.copyload, 255
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.i, 2
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
end_hunk_1
