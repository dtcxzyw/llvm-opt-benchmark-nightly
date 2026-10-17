Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Target?download=true
inline.NumInlined: 533
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm8exegesis14ExegesisTarget20getArgumentRegistersEv:bb.a
bb.a:
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.15, i1 noundef zeroext true) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8exegesis14ExegesisTarget22getRegistersNeedSavingEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.16, i1 noundef zeroext true) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 22, 381) i32 @_ZNK4llvm8exegesis12_GLOBAL__N_118ExegesisMipsTarget24getScratchMemoryRegisterERKNS_6TripleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #17
  %i.b = select i1 %i.a, i32 380, i32 22
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4llvm8exegesis12_GLOBAL__N_118ExegesisMipsTarget18fillMemoryOperandsERNS0_19InstructionTemplateENS_10MCRegisterEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::exegesis::Operand", align 8 ; 4 uses
  %5 = alloca %"struct.llvm::exegesis::Operand", align 8 ; 4 uses
  %6 = alloca %"struct.llvm::exegesis::Operand", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm8exegesis19InstructionTemplate11getValueForERKNS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(34) %6) #17 ; 2 uses
  store i8 1, ptr %i.d, align 8, !tbaa !61
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.3.8.insert.ext.i = zext i32 %2 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.e = load ptr, ptr %1, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm8exegesis19InstructionTemplate11getValueForERKNS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #17 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !61
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.3.8.insert.ext.i, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.j = zext i32 %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.k = load ptr, ptr %1, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm8exegesis19InstructionTemplate11getValueForERKNS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(34) %4) #17 ; 2 uses
  store i8 2, ptr %i.o, align 8, !tbaa !61
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm8exegesis14ExegesisTarget29getDefaultLoopCounterRegisterERKNS_6TripleE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8exegesis14ExegesisTarget27decrementLoopCounterAndJumpERNS_17MachineBasicBlockES3_RKNS_11MCInstrInfoENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(58) %3, i32 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm8exegesis14ExegesisTarget23getUnavailableRegistersEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK4llvm8exegesis12_GLOBAL__N_118ExegesisMipsTarget22getMaxMemoryAccessSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 64
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8exegesis14ExegesisTarget24randomizeTargetMCOperandERKNS0_11InstructionERKNS0_8VariableERNS_9MCOperandERKNS_9BitVectorE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(544) %2, ptr noundef nonnull align 8 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !67
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !70, !noalias !67
  store ptr @.str.17, ptr %6, align 8, !tbaa !8, !noalias !67
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.c, align 8, !tbaa !71, !noalias !67
  %i.d = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #17, !noalias !67 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0
  %i.f = extractvalue { i32, ptr } %i.d, 1
  call void @_ZN4llvm11StringErrorC2ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %6, i32 %i.e, ptr %i.f) #17, !noalias !67
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8exegesis7FailureE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !67
  store ptr %i.a, ptr %0, align 8, !tbaa !31, !alias.scope !66
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm8exegesis14ExegesisTarget17allowAsBackToBackERKNS0_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(544) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8exegesis14ExegesisTarget27generateInstructionVariantsERKNS0_11InstructionEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(544) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
.lr.ph.i.i.i.i.i.i:
  %4 = alloca [1 x %"struct.llvm::exegesis::InstructionTemplate"], align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4llvm8exegesis19InstructionTemplateC1EPKNS0_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %2) #17
  %i.a = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #19 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !75
  call void @_ZN4llvm8exegesis19InstructionTemplateC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @free(ptr noundef %i.f) #17
  br label %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit

_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit:  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8exegesis14ExegesisTarget19checkFeatureSupportEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4llvm8exegesis12_GLOBAL__N_118ExegesisMipsTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4llvm8exegesis14ExegesisTargetD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm8exegesis14ExegesisTarget14withSavedStateEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19, !noalias !79 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm8exegesis14ExegesisTarget10SavedStateE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !79
  store ptr %i.a, ptr %0, align 8, !tbaa !81, !alias.scope !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK4llvm8exegesis12_GLOBAL__N_118ExegesisMipsTarget11matchesArchENS_6Triple8ArchTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i32 %1, -4
  %spec.select = icmp eq i32 %i.a, 16
  ret i1 %spec.select
}

declare void @_ZNK4llvm8exegesis14ExegesisTarget28createSerialSnippetGeneratorERKNS0_9LLVMStateERKNS0_16SnippetGenerator7OptionsE() unnamed_addr

declare void @_ZNK4llvm8exegesis14ExegesisTarget30createParallelSnippetGeneratorERKNS0_9LLVMStateERKNS0_16SnippetGenerator7OptionsE() unnamed_addr

declare void @_ZNK4llvm8exegesis14ExegesisTarget28createLatencyBenchmarkRunnerERKNS0_9LLVMStateENS0_9Benchmark5ModeEENS0_23BenchmarkPhaseSelectorEENS5_22ResultAggregationModeEENS0_15BenchmarkRunner14ExecutionModeEENS_8ArrayRefINS0_15ValidationEventEEEj() unnamed_addr

declare void @_ZNK4llvm8exegesis14ExegesisTarget25createUopsBenchmarkRunnerERKNS0_9LLVMStateENS0_23BenchmarkPhaseSelectorEENS0_9Benchmark22ResultAggregationModeEENS0_15BenchmarkRunner14ExecutionModeEENS_8ArrayRefINS0_15ValidationEventEEE() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm8exegesisL13loadImmediateENS_10MCRegisterEbRKNS_5APIntE(ptr dead_on_unwind noalias writable align 8 initializes((0, 24)) %0, i32 %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(12) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %"class.llvm::MCInst"], align 8 ; 10 uses
  %5 = alloca %"class.llvm::MCInstBuilder", align 8 ; 14 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::MCInstBuilder", align 8 ; 16 uses
  %8 = alloca %"class.llvm::MCInstBuilder", align 8 ; 16 uses
  %9 = alloca %"class.llvm::MCInstBuilder", align 8 ; 14 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %11 = alloca %"class.llvm::MCInstBuilder", align 8 ; 16 uses
  %.36 = select i1 %2, i32 1962, i32 1963
  %.37 = select i1 %2, i32 2352, i32 2353         ; 2 uses
  %.38 = select i1 %2, i32 21, i32 379            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %_ZNK4llvm5APInt6isIntNEj.exit, label %_ZNK4llvm5APInt6isIntNEj.exit.thread

_ZNK4llvm5APInt6isIntNEj.exit:                    ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8                ; 2 uses
  %i.e = icmp ult i64 %i.d, 65536
  br i1 %i.e, label %_ZN4llvm6MCInstC2ERKS0_.exit, label %12

_ZNK4llvm5APInt6isIntNEj.exit.thread:             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #21
  %i.g = sub i32 %i.b, %i.f
  %i.h = icmp ult i32 %i.g, 17
  br i1 %i.h, label %_ZN4llvm6MCInstC2ERKS0_.exit, label %16

_ZN4llvm6MCInstC2ERKS0_.exit:                     ; preds = %_ZNK4llvm5APInt6isIntNEj.exit.thread, %_ZNK4llvm5APInt6isIntNEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 6, ptr %i.l, align 4, !tbaa !32
  store i32 %.37, ptr %5, align 8, !tbaa !88
  %.sroa.3.8.insert.ext.i.i = zext i32 %1 to i64
  store i8 1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.3.8.insert.ext.i.i39 = zext nneg i32 %.38 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx.i.i.i41 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %.sroa.3.8.insert.ext.i.i39, ptr %.sroa.4.0..sroa_idx.i.i.i41, align 8
  store i32 2, ptr %i.k, align 8, !tbaa !33
  %.pre150 = load ptr, ptr %3, align 8
  %spec.select.i = select i1 %i.c, ptr %3, ptr %.pre150
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i8 2, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i.i44 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %.0.i, ptr %.sroa.4.0..sroa_idx.i.i.i44, align 8
  store i32 3, ptr %i.k, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 6, ptr %i.r, align 4, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i32 3, ptr %i.q, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.s = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #19 ; 7 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i32 6, ptr %i.y, align 4, !tbaa !32
  %i.z = load i32, ptr %i.q, align 8, !tbaa !33   ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm6MCInstEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit
  %i.aa = icmp ugt i32 %i.z, 6
  br i1 %i.aa, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.ab = zext i32 %i.z to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull %i.w, i64 noundef %i.ab, i64 noundef 16) #17
  %.pre.i.i.i.i.i.i.i.i.i = load i32, ptr %i.q, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !28
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i, %bb.b
  %i.ac = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ]
  %i.ad = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.z, %bb.b ]
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !28
  %gepdiff.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ae, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 8 %i.af, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i
  store i32 %i.z, ptr %i.x, align 8, !tbaa !33
  br label %_ZSt10_ConstructIN4llvm6MCInstEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm6MCInstEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm6MCInstC2ERKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN4llvm6MCInstD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt10_ConstructIN4llvm6MCInstEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.ai) #17
  br label %_ZN4llvm6MCInstD2Ev.exit

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %_ZSt10_ConstructIN4llvm6MCInstEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.c
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.j
  br i1 %i.am, label %_ZN4llvm13MCInstBuilderD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6MCInstD2Ev.exit
  call void @free(ptr noundef %i.al) #17
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit

_ZN4llvm13MCInstBuilderD2Ev.exit:                 ; preds = %_ZN4llvm6MCInstD2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.aa

12:                                               ; preds = %_ZNK4llvm5APInt6isIntNEj.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.neg.i.i.i47 = add nsw i32 %i.b, -64
  %13 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = add nsw i32 %.neg.i.i.i47, %14
  br label %_ZNK4llvm5APInt6isIntNEj.exit48

16:                                               ; preds = %_ZNK4llvm5APInt6isIntNEj.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %17 = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #21
  br label %_ZNK4llvm5APInt6isIntNEj.exit48

_ZNK4llvm5APInt6isIntNEj.exit48:                  ; preds = %12, %16
  %.0.i.i.i46 = phi i32 [ %15, %12 ], [ %17, %16 ]
  %18 = sub i32 %i.b, %.0.i.i.i46
  %19 = icmp ult i32 %18, 33
  tail call void @llvm.assume(i1 %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNK4llvm5APInt9getHiBitsEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 16) #17
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !83
  %i.ap = icmp ult i32 %i.ao, 65                  ; 2 uses
  %i.aq = load ptr, ptr %6, align 8               ; 3 uses
  %spec.select.i49 = select i1 %i.ap, ptr %6, ptr %i.aq
  %.0.i50 = load i64, ptr %spec.select.i49, align 8, !tbaa !8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %or.cond = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm5APInt6isIntNEj.exit48
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #20
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInt6isIntNEj.exit48, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %2, label %_ZN4llvm13MCInstBuilder6addImmEl.exit96, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.as = load i32, ptr %i.a, align 8, !tbaa !83  ; 3 uses
  %i.at = icmp ult i32 %i.as, 65
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.neg.i.i = add nsw i32 %i.as, -64
  %i.au = load i64, ptr %3, align 8, !tbaa !8
  %i.av = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.aw
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #21
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.ay, %bb.h ]
  %i.az = sub i32 %i.as, %.0.i.i
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %_ZN4llvm13MCInstBuilder6addImmEl.exit61, label %_ZN4llvm13MCInstBuilder6addImmEl.exit96

_ZN4llvm13MCInstBuilder6addImmEl.exit61:          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 16, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 6, ptr %i.be, align 4, !tbaa !32
  store i32 2353, ptr %7, align 8, !tbaa !88
  %.sroa.3.8.insert.ext.i.i51 = zext i32 %1 to i64 ; 3 uses
  store i8 1, ptr %i.bc, align 8
  %.sroa.4.0..sroa_idx.i.i.i53 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i51, ptr %.sroa.4.0..sroa_idx.i.i.i53, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 1, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i.i.i57 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 379, ptr %.sroa.4.0..sroa_idx.i.i.i57, align 8
  %i.bg = and i64 %.0.i50, 65535
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i8 2, ptr %i.bh, align 8
  %.sroa.4.0..sroa_idx.i.i.i60 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i60, align 8
  store i32 3, ptr %i.bd, align 8, !tbaa !33
  %.phi.trans.insert152 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre153 = load ptr, ptr %.phi.trans.insert152, align 8, !tbaa !38 ; 8 uses
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %.pre153, %.pre155
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.pre153, ptr noundef nonnull align 8 dereferenceable(128) %7, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre153, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre153, i64 32 ; 3 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre153, i64 24 ; 2 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre153, i64 28
  store i32 6, ptr %i.bn, align 4, !tbaa !32
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !33 ; 5 uses
  %.not.i.i.i.i62 = icmp eq i32 %i.bo, 0
  %i.bp = icmp eq ptr %.pre153, %7
  %or.cond.i.i.i = or i1 %i.bp, %.not.i.i.i.i62
  br i1 %or.cond.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp ugt i32 %i.bo, 6
  br i1 %i.bq, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i: ; preds = %bb.j
  %i.br = zext i32 %i.bo to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.br, i64 noundef 16) #17
  %.pre.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  %.pre.i.i63 = load ptr, ptr %i.bk, align 8, !tbaa !28
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i, %bb.j
  %i.bs = phi ptr [ %.pre.i.i63, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.bl, %bb.j ]
  %i.bt = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.bo, %bb.j ]
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.bb, align 8, !tbaa !28
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.bu, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 8 %i.bv, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !33
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i

_ZN4llvm6MCInstC2ERKS0_.exit.i:                   ; preds = %.sink.split.i.i.i.i, %bb.i
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  store ptr %i.bx, ptr %i.bi, align 8, !tbaa !38
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit61
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.pre153, ptr noundef nonnull align 8 dereferenceable(128) %7)
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit.i, %bb.k
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bc
  br i1 %i.bz, label %_ZN4llvm13MCInstBuilder6addImmEl.exit75, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit
  call void @free(ptr noundef %i.by) #17
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit75

_ZN4llvm13MCInstBuilder6addImmEl.exit75:          ; preds = %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE9push_backERKS1_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %8, i8 0, i64 16, i1 false)
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 6, ptr %i.cd, align 4, !tbaa !32
  store i32 2624, ptr %8, align 8, !tbaa !88
  store i8 1, ptr %i.cb, align 8
  %.sroa.4.0..sroa_idx.i.i.i67 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i51, ptr %.sroa.4.0..sroa_idx.i.i.i67, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 1, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx.i.i.i71 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %.sroa.3.8.insert.ext.i.i51, ptr %.sroa.4.0..sroa_idx.i.i.i71, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i8 2, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx.i.i.i74 = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i.i74, align 8
  store i32 3, ptr %i.cc, align 8, !tbaa !33
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 8 uses
  %.pre146 = load ptr, ptr %i.bj, align 8, !tbaa !37
  %.not.i76 = icmp eq ptr %.pre, %.pre146
  br i1 %.not.i76, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.pre, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 3 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 24 ; 2 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  store i32 6, ptr %i.cj, align 4, !tbaa !32
  %i.ck = load i32, ptr %i.cc, align 8, !tbaa !33 ; 5 uses
  %.not.i.i.i.i77 = icmp eq i32 %i.ck, 0
  %i.cl = icmp eq ptr %.pre, %8
  %or.cond.i.i.i78 = or i1 %i.cl, %.not.i.i.i.i77
  br i1 %or.cond.i.i.i78, label %_ZN4llvm6MCInstC2ERKS0_.exit.i82, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = icmp ugt i32 %i.ck, 6
  br i1 %i.cm, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i83, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i79

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i83: ; preds = %bb.n
  %i.cn = zext i32 %i.ck to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.cg, ptr noundef nonnull %i.ch, i64 noundef %i.cn, i64 noundef 16) #17
  %.pre.i.i.i84 = load i32, ptr %i.cc, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i85 = icmp eq i32 %.pre.i.i.i84, 0
  br i1 %.not.i.i.i.i.i85, label %.sink.split.i.i.i.i81, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i86

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i86: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i83
  %.pre.i.i87 = load ptr, ptr %i.cg, align 8, !tbaa !28
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i79

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i79: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i86, %bb.n
  %i.co = phi ptr [ %.pre.i.i87, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i86 ], [ %i.ch, %bb.n ]
  %i.cp = phi i32 [ %.pre.i.i.i84, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i86 ], [ %i.ck, %bb.n ]
  %i.cq = zext i32 %i.cp to i64
end_hunk_0
