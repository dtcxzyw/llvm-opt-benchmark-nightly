inline.NumInlined: 2001
inline.NumDeleted: 588
begin_hunk_0_@_ZN2v88internal11interpreter20InterpreterAssembler17GetContextAtDepthENS0_5TNodeINS0_7ContextEEENS3_INS0_7Uint32TEEE:bb.a
  %i.b = load ptr, ptr %2, align 8
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableC2EPNS1_13CodeAssemblerENS0_21MachineRepresentationEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %1, i8 noundef zeroext 8, ptr noundef %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = load ptr, ptr %3, align 8
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableC2EPNS1_13CodeAssemblerENS0_21MachineRepresentationEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %1, i8 noundef zeroext 4, ptr noundef %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull %1, i64 noundef 0, ptr noundef null, i32 noundef 1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %5, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull %1, i64 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.e = load ptr, ptr %3, align 8
  store ptr %i.e, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #17
  %i.f = load ptr, ptr %12, align 8
  store ptr %i.f, ptr %11, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler11Word32EqualENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.26") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11) #17
  %i.g = load ptr, ptr %9, align 8
  store ptr %i.g, ptr %8, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelES7_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN2v88internal17CodeStubAssembler4BindEPNS0_8compiler18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %7) #17
  %i.h = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17, !noalias !220
  store ptr %i.h, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #17
  %i.i = load ptr, ptr %16, align 8
  store ptr %i.i, ptr %15, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler8Int32SubENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15) #17
  %i.j = load ptr, ptr %13, align 8, !noalias !223
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.l = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17, !noalias !226
  store ptr %i.l, ptr %18, align 8, !alias.scope !229
  call void @_ZN2v88internal38TorqueGeneratedExportedMacrosAssembler24LoadContextElementNoCellENS0_5TNodeINS0_7ContextEEEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull dead_on_return %18, i32 noundef 1) #17
  %i.m = load ptr, ptr %17, align 8
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.m) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.n = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #17, !noalias !232
  store ptr %i.n, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #17
  %i.o = load ptr, ptr %23, align 8
  store ptr %i.o, ptr %22, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler11Word32EqualENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.26") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22) #17
  %i.p = load ptr, ptr %20, align 8
  store ptr %i.p, ptr %19, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelES7_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @_ZN2v88internal17CodeStubAssembler4BindEPNS0_8compiler18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.q = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17, !noalias !235
  store ptr %i.q, ptr %0, align 8, !alias.scope !238
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2v88internal8compiler21CodeAssemblerVariableD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

declare void @_ZN2v88internal8compiler13CodeAssembler6BranchENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelES7_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler11Word32EqualENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.26") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal17CodeStubAssembler4BindEPNS0_8compiler18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler8Int32SubENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.1") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal38TorqueGeneratedExportedMacrosAssembler24LoadContextElementNoCellENS0_5TNodeINS0_7ContextEEEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler16RegisterLocationENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.14") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 2 uses
  %5 = alloca %"class.v8::internal::TNode.12", align 8 ; 2 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !241
  store ptr %i.a, ptr %3, align 8, !noalias !244
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !241
  %i.b = load ptr, ptr %6, align 8
  store ptr %i.b, ptr %5, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler19RegisterFrameOffsetENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.a, ptr %3, align 8, !noalias !247
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler16RegisterLocationENS1_8RegisterE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %i.a = sub nsw i32 -7, %2
  %i.b = sext i32 %i.a to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !250
  %i.c = load ptr, ptr %7, align 8, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !253
  store ptr %i.c, ptr %3, align 8, !noalias !256
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !253
  %i.d = load ptr, ptr %6, align 8, !noalias !250
  store ptr %i.d, ptr %5, align 8, !noalias !250
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler12LoadRegisterENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1)
  %i.a = load ptr, ptr %4, align 8
  %i.b = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !259
  store ptr %i.b, ptr %3, align 8, !noalias !262
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !259
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.a, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

declare void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler26LoadRegisterAtOperandIndexEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandRegEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !265
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !265
  %i.a = load ptr, ptr %4, align 8, !noalias !265
  %i.b = load ptr, ptr %6, align 8, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !268
  store ptr %i.b, ptr %3, align 8, !noalias !271
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !268
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.a, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandRegEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %4 = alloca %"class.v8::internal::TNode.11", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load i8, ptr %i.a, align 8                 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %6, align 1
  %i.c = icmp ult i8 %5, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %5 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeOperandSignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.30") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedQuadEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !275
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.p = load ptr, ptr %4, align 8
  store ptr %i.p, ptr %3, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler30LoadRegisterPairAtOperandIndexEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::TNode.14", align 8 ; 5 uses
  %13 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandRegEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %12, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.a = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %11, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -1) #17, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !278
  store ptr %i.a, ptr %9, align 8, !noalias !281
  %i.b = load ptr, ptr %11, align 8, !noalias !281
  store ptr %i.b, ptr %10, align 8, !noalias !281
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %13, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.c = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !284
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !284
  %i.d = load ptr, ptr %7, align 8, !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !287
  store ptr %i.c, ptr %6, align 8, !noalias !290
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %6) #17, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !287
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %14, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.d, ptr noundef nonnull dead_on_return %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.e = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !293
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !293
  %i.f = load ptr, ptr %4, align 8, !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !296
  store ptr %i.e, ptr %3, align 8, !noalias !299
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17, !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !296
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %i.g, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.f, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.h = load ptr, ptr %14, align 8, !noalias !302
  store ptr %i.h, ptr %0, align 8, !alias.scope !302
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler12NextRegisterENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.14") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef -1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %3, align 8, !noalias !305
  %i.b = load ptr, ptr %5, align 8, !noalias !305
  store ptr %i.b, ptr %4, align 8, !noalias !305
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler29GetRegisterListAtOperandIndexEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::interpreter::InterpreterAssembler::RegListNodePair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandRegEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !308
  %i.a = load ptr, ptr %8, align 8, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !311
  store ptr %i.a, ptr %3, align 8, !noalias !314
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !311
  %i.b = load ptr, ptr %6, align 8, !noalias !308
  store ptr %i.b, ptr %5, align 8, !noalias !308
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.c = add nsw i32 %2, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20BytecodeOperandCountEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %i.d, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %i.c)
  %i.e = load ptr, ptr %7, align 8
  store ptr %i.e, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler20BytecodeOperandCountEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !317
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler28LoadRegisterFromRegisterListERKNS2_15RegListNodePairEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !320
  %i.a = sext i32 %3 to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef %i.a) #17, !noalias !320
  %i.b = load ptr, ptr %8, align 8, !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !323
  store ptr %i.b, ptr %6, align 8, !noalias !326
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %6) #17, !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !323
  %i.c = load ptr, ptr %2, align 8, !noalias !329
  %i.d = load ptr, ptr %7, align 8, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !320
  store ptr %i.c, ptr %4, align 8, !noalias !332
  store ptr %i.d, ptr %5, align 8, !noalias !332
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.e = load ptr, ptr %9, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler30RegisterLocationInRegisterListERKNS2_15RegListNodePairEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.14") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = sext i32 %3 to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.a) #17
  %i.b = load ptr, ptr %8, align 8, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !335
  store ptr %i.b, ptr %6, align 8, !noalias !338
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !335
  %i.c = load ptr, ptr %2, align 8, !noalias !341
  %i.d = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.c, ptr %4, align 8, !noalias !344
  store ptr %i.d, ptr %5, align 8, !noalias !344
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

declare void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler29StoreFullTaggedNoWriteBarrierENS0_5TNodeINS0_7RawPtrTEEENS3_INS0_7IntPtrTEEENS3_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler13StoreRegisterENS0_5TNodeINS0_6ObjectEEENS3_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.9", align 8 ; 2 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %6 = alloca %"class.v8::internal::TNode.7", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %0)
  %i.a = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !347
  store ptr %i.a, ptr %3, align 8, !noalias !350
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !347
  %i.b = load ptr, ptr %1, align 8
  store ptr %i.b, ptr %6, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler29StoreFullTaggedNoWriteBarrierENS0_5TNodeINS0_7RawPtrTEEENS3_INS0_7IntPtrTEEENS3_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler25StoreRegisterForShortStarENS0_5TNodeINS0_6ObjectEEENS3_INS0_5WordTEEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %8 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %9 = alloca %"class.v8::internal::TNode.9", align 8 ; 2 uses
  %10 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %11 = alloca %"class.v8::internal::TNode.7", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = or i8 %i.b, 8
  store i8 %i.c, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.d = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !353
  store ptr %i.d, ptr %5, align 8, !noalias !356
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !353
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef -1736) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = load ptr, ptr %7, align 8, !noalias !359
  store ptr %i.e, ptr %3, align 8, !noalias !359
  %i.f = load ptr, ptr %8, align 8, !noalias !359
  store ptr %i.f, ptr %4, align 8, !noalias !359
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %0)
  %i.g = load ptr, ptr %6, align 8
  store ptr %i.g, ptr %10, align 8
  %i.h = load ptr, ptr %1, align 8
  store ptr %i.h, ptr %11, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler29StoreFullTaggedNoWriteBarrierENS0_5TNodeINS0_7RawPtrTEEENS3_INS0_7IntPtrTEEENS3_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler27StoreRegisterAtOperandIndexENS0_5TNodeINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8
  call void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandRegEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %0)
  %i.b = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !362
  store ptr %i.b, ptr %3, align 8, !noalias !365
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !362
  store ptr %i.a, ptr %6, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler29StoreFullTaggedNoWriteBarrierENS0_5TNodeINS0_7RawPtrTEEENS3_INS0_7IntPtrTEEENS3_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler31StoreRegisterPairAtOperandIndexENS0_5TNodeINS0_6ObjectEEES5_i(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, ptr nofree noundef readonly captures(none) dead_on_return %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi:bb.a

bb.c:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !noalias !596
  %i.ac = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !599
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !593
  %i.ae = load ptr, ptr %5, align 8, !noalias !593
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.ae) #17, !noalias !593
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit: ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #17, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ah = sext i32 %i.m to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ah) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ag, ptr %3, align 8, !noalias !605
  %i.ai = load ptr, ptr %10, align 8, !noalias !605
  store ptr %i.ai, ptr %4, align 8, !noalias !605
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = load ptr, ptr %9, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.ak = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 772, ptr noundef %i.u, ptr noundef %i.aj) #17, !noalias !608
  store ptr %i.ak, ptr %0, align 8, !alias.scope !611
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedQuadEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.11") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes15kOperandOffsetsE, i64 %i.f
  %i.h = zext i8 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 107 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !118, !noalias !616, !noundef !146
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !619
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !619
  %i.q = load ptr, ptr %6, align 8, !noalias !619
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !619
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.q, ptr noundef nonnull dead_on_return %7) #17, !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !616
  %i.r = load ptr, ptr %8, align 8, !noalias !616
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.r) #17, !noalias !616
  store i8 1, ptr %i.n, align 1, !noalias !616
  br label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = load i8, ptr %i.a, align 8, !noalias !625
  %i.w = call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.v) #17, !noalias !625
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.y = load i8, ptr %i.x, align 1, !range !118, !noalias !625
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i = select i1 %i.w, i1 %i.z, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.c:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !noalias !628
  %i.ac = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !631
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !625
  %i.ae = load ptr, ptr %5, align 8, !noalias !625
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.ae) #17, !noalias !625
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit: ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #17, !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ah = sext i32 %i.m to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ah) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ag, ptr %3, align 8, !noalias !637
  %i.ai = load ptr, ptr %10, align 8, !noalias !637
  store ptr %i.ai, ptr %4, align 8, !noalias !637
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = load ptr, ptr %9, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.ak = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 516, ptr noundef %i.u, ptr noundef %i.aj) #17, !noalias !640
  store ptr %i.ak, ptr %0, align 8, !alias.scope !643
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.11") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  switch i8 %3, label %bb.f [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeOperandSignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18
  unreachable

bb.f:                                             ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  switch i8 %3, label %bb.f [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18
  unreachable

bb.f:                                             ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler20BytecodeOperandFlag8Ei(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !648
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeOperandFlag16Ei(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !651
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler19BytecodeOperandUImmEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !654
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeOperandUImmWordEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler19BytecodeOperandUImmEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @_ZN2v88internal8compiler13CodeAssembler18ChangeUint32ToWordENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler22BytecodeOperandUImmSmiEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.8", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler19BytecodeOperandUImmEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %3) #17
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler13SmiFromUint32ENS0_5TNodeINS0_7Uint32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.31") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandImmEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.11") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeOperandSignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !657
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeSignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler24BytecodeOperandImmIntPtrEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandImmEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeOperandImmSmiEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.11", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandImmEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %3) #17
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler12SmiFromInt32ENS0_5TNodeINS0_6Int32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.31") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeOperandIdxInt32Ei(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !660
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler18BytecodeOperandIdxEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  call void @_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeOperandIdxInt32Ei(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @_ZN2v88internal8compiler13CodeAssembler18ChangeUint32ToWordENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler21BytecodeOperandIdxSmiEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %5 = alloca %"class.v8::internal::TNode.13", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeOperandIdxInt32Ei(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2), !noalias !663
  call void @_ZN2v88internal8compiler13CodeAssembler18ChangeUint32ToWordENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %5, align 8
  store ptr %i.a, ptr %4, align 8, !alias.scope !666
  call void @_ZN2v88internal17CodeStubAssembler6SmiTagENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler6SmiTagENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.31") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler29BytecodeOperandIdxTaggedIndexEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeOperandIdxInt32Ei(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %4) #17
  %i.a = load ptr, ptr %3, align 8
  store ptr %i.a, ptr %5, align 8
  call void @_ZN2v88internal17CodeStubAssembler19IntPtrToTaggedIndexENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler19IntPtrToTaggedIndexENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.32") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler30BytecodeOperandConstantPoolIdxEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %4 = alloca %"class.v8::internal::TNode.8", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load i8, ptr %i.a, align 8                 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %6, align 1
  %i.c = icmp ult i8 %5, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %5 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !673
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.p = load ptr, ptr %4, align 8
  store ptr %i.p, ptr %3, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18ChangeUint32ToWordENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler24BytecodeOperandRuntimeIdEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !676
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler33BytecodeOperandNativeContextIndexEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %4 = alloca %"class.v8::internal::TNode.8", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load i8, ptr %i.a, align 8                 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %6, align 1
  %i.c = icmp ult i8 %5, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %5 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.8") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !679
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.p = load ptr, ptr %4, align 8
  store ptr %i.p, ptr %3, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18ChangeUint32ToWordENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeOperandIntrinsicIdEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %i.a, align 8                 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %4, align 1
  %i.c = icmp ult i8 %3, -44
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext i8 %3 to i64                        ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandCountE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit, label %bb.b, !prof !274

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  unreachable

_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit: ; preds = %bb.a
  %i.h = lshr i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes13kOperandSizesE, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.29") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.e:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedQuadEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  br label %_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit

bb.f:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18, !noalias !682
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes14GetOperandSizeENS1_8BytecodeEiNS1_12OperandScaleE.exit
  unreachable

_ZN2v88internal11interpreter20InterpreterAssembler23BytecodeUnsignedOperandEiNS1_11OperandSizeE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler21LoadConstantPoolEntryENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.7") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.33", align 8 ; 2 uses
  %9 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 107 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !118, !noalias !685, !noundef !146
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !688
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !688
  %i.d = load ptr, ptr %5, align 8, !noalias !688
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !688
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.d, ptr noundef nonnull dead_on_return %6) #17, !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !685
  %i.e = load ptr, ptr %7, align 8, !noalias !685
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.e) #17, !noalias !685
  store i8 1, ptr %i.a, align 1, !noalias !685
  br label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17, !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.h, ptr %3, align 8, !noalias !694
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 39) #17, !noalias !694
  %i.i = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler30LoadProtectedPointerFromObjectENS0_5TNodeINS0_6ObjectEEENS3_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17, !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.i, ptr %8, align 8
  %i.j = load ptr, ptr %2, align 8
  store ptr %i.j, ptr %9, align 8, !alias.scope !697
  call void @_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_17TrustedFixedArrayENS0_7IntPtrTENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %8, i32 noundef 16, ptr noundef nonnull dead_on_return %9, i32 noundef 0) #17
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler16LoadArrayElementINS0_17TrustedFixedArrayENS0_7IntPtrTENS0_9MaybeWeakINS0_6ObjectEEEEENS0_5TNodeIT1_EENS8_IT_EEiNS8_IT0_EEi(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.36") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i32 noundef, ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler29LoadAndUntagConstantPoolEntryENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.31", align 8 ; 2 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8
  store ptr %i.a, ptr %4, align 8
  call void @_ZN2v88internal11interpreter20InterpreterAssembler21LoadConstantPoolEntryENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %4)
  call void @_ZN2v88internal17CodeStubAssembler8SmiUntagENS0_5TNodeINS0_3SmiEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %3) #17
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler8SmiUntagENS0_5TNodeINS0_3SmiEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler35LoadConstantPoolEntryAtOperandIndexEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.7") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.13", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN2v88internal11interpreter20InterpreterAssembler30BytecodeOperandConstantPoolIdxEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.13") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
  %i.a = load ptr, ptr %3, align 8
  store ptr %i.a, ptr %4, align 8
  call void @_ZN2v88internal11interpreter20InterpreterAssembler21LoadConstantPoolEntryENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler43LoadAndUntagConstantPoolEntryAtOperandIndexEi(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.13", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.31", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !702
  call void @_ZN2v88internal11interpreter20InterpreterAssembler30BytecodeOperandConstantPoolIdxEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.13") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2), !noalias !702
  %i.a = load ptr, ptr %3, align 8, !noalias !702
  store ptr %i.a, ptr %4, align 8, !noalias !702
  call void @_ZN2v88internal11interpreter20InterpreterAssembler21LoadConstantPoolEntryENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal17CodeStubAssembler8SmiUntagENS0_5TNodeINS0_3SmiEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %5) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler19LoadFunctionClosureEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.37") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !705
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %2, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !705
  %i.a = load ptr, ptr %2, align 8, !noalias !705
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -16) #17, !noalias !705
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.a, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler18LoadFeedbackVectorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.38") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !708
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %2, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !708
  %i.a = load ptr, ptr %2, align 8, !noalias !708
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %3, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -48) #17, !noalias !708
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.a, ptr noundef nonnull dead_on_return %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler12CallPrologueEv(ptr noundef nonnull align 8 dereferenceable(108) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.b) #17
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter20InterpreterAssembler18SaveBytecodeOffsetEv(ptr noundef nonnull align 8 dereferenceable(108) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.e, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler12CallEpilogueEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(108) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler17CallJSAndDispatchENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS3_INS0_7ContextEEERKNS2_15RegListNodePairENS0_19ConvertReceiverModeE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::TNode.55", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %i.a = alloca [3 x ptr], align 8                ; 6 uses
  %7 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %8 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
end_hunk_1
