Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ISel?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6hermes3hbc7HBCISel24generateCreateRegExpInstEPNS_16CreateRegExpInstEPNS_10BasicBlockE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.af = tail call noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(200) %i.ae, ptr noundef nonnull %i.ac) #20
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.ah = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20
  %i.ai = tail call noundef i32 @_ZNK6hermes3hbc25BytecodeFunctionGenerator11getStringIDEPNS_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, ptr noundef %i.ah) #20
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.ak = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20
  %i.al = tail call noundef i32 @_ZNK6hermes3hbc25BytecodeFunctionGenerator11getStringIDEPNS_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noundef %i.ak) #20
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !32
  %i.ap = add i8 %i.ao, -2
  %i.aq = icmp ult i8 %i.ap, 107
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.at = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.as, ptr noundef nonnull %i.an) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.f:                                             ; preds = %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit
  %i.au = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.an) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.at, %bb.e ], [ %i.au, %bb.f ]
  %i.av = zext i32 %.0.i to i64
  %i.aw = zext i32 %i.ai to i64
  %i.ax = zext i32 %i.al to i64
  %i.ay = zext i32 %i.af to i64
  %i.az = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitCreateRegExpEllll(ptr noundef nonnull align 8 dereferenceable(25) %i.am, i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.ay) ; 0 uses
  ret void
}

declare noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6hermes3hbc25BytecodeFunctionGenerator11getStringIDEPNS_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitCreateRegExpEllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -124, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 -124, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %2)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %3)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %4)
  ret i32 %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateTryEndInstEPNS_10TryEndInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel22generateTerminatorInstEPNS_14TerminatorInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateBranchInstEPNS_10BranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.d = select i1 %i.b, ptr null, ptr %i.c       ; 2 uses
  %i.e = icmp eq ptr %i.d, %2
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !296  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !297  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %i.o
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -113, ptr %i.i, align 1, !tbaa !299
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !296
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.h, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.m, 9223372036854775807
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.s = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.m
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807)
  %i.v = select i1 %i.t, i64 9223372036854775807, i64 %i.u ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 2 uses
  store i8 -113, ptr %i.x, align 1, !tbaa !299
  %i.y = icmp sgt i64 %i.m, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !298
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.w, ptr %i.g, align 8, !tbaa !297
  store ptr %i.z, ptr %i.h, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.ae = trunc i64 %i.m to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.h, !prof !88

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.ak, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ag, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.h
  %i.al = phi i32 [ %.pre.i.i, %bb.h ], [ %i.ah, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select.i = select i1 %i.b, ptr null, ptr %3
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an ; 3 uses
  store i32 %i.ae, ptr %i.ao, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.ap = load i32, ptr %i.ag, align 8, !tbaa !86
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ag, align 8, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateReturnInstEPNS_10ReturnInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !421
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !429
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !32
  %i.o = icmp eq i8 %i.n, -126
  br i1 %i.o, label %bb.d, label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !296  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !297  ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.y
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 -120, ptr %i.s, align 1, !tbaa !299
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !296
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.w ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.w
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.w ; 2 uses
  store i8 -120, ptr %i.ah, align 1, !tbaa !299
  %i.ai = icmp sgt i64 %i.w, 0
  br i1 %i.ai, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !298
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.am) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !297
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.an, ptr %i.x, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.e, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.aq = zext i32 %.0.i to i64
  %i.ar = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, i64 noundef %i.aq) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 92, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 92, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28BytecodeInstructionGenerator16emitThrowIfEmptyEll:bb.a
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = phi ptr [ %.pre14, %bb.g ], [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.af, %bb.g ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.ay = icmp ugt i64 %2, 255
  %i.az = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ba = zext i1 %i.ay to i8
  %i.bb = or i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.g, align 8, !tbaa !300
  %i.bc = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ax
  br i1 %.not.i.i.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bc, ptr %.pre.i.i3, align 1, !tbaa !299
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit11

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i7)
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bc, ptr %i.bp, align 1, !tbaa !299
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %.not.i17.i.i.i.i.i9 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i.i9, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8
  store ptr %i.bo, ptr %0, align 8, !tbaa !297
  store ptr %i.br, ptr %i.a, align 8, !tbaa !296
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit11

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit11: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10
  %i.bw = trunc i64 %i.f to i32
  ret i32 %i.bw
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateSwitchInstEPNS_10SwitchInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel24generateSaveAndYieldInstEPNS_16SaveAndYieldInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !296  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !297  ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %i.r
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  store i8 -105, ptr %i.l, align 1, !tbaa !299
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !296
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.k, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.u = icmp eq i64 %i.p, 9223372036854775807
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.p ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.p
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  store i8 -105, ptr %i.aa, align 1, !tbaa !299
  %i.ab = icmp sgt i64 %i.p, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !298
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.z, ptr %i.j, align 8, !tbaa !297
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !296
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i64 noundef 0)
  %i.ah = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !86 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.am = load i32, ptr %i.al, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.i, !prof !88

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull %i.an, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.aj, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit, %bb.i
  %i.ao = phi i32 [ %.pre.i.i, %bb.i ], [ %i.ak, %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit ]
  %3 = icmp eq ptr %i.ah, null                    ; 2 uses
  %4 = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %5 = select i1 %3, ptr null, ptr %4
  %i.ap = trunc i64 %i.p to i32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %spec.select.i = select i1 %3, ptr null, ptr %6
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !89
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  store i32 %i.ap, ptr %i.as, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.at = load i32, ptr %i.aj, align 8, !tbaa !86
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.aj, align 8, !tbaa !86
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.aw = zext i32 %.0.i to i64
  %i.ax = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %i.av, i64 noundef %i.aw) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel27generateCreateGeneratorInstEPNS_19CreateGeneratorInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel30generateHBCCreateGeneratorInstEPNS_22HBCCreateGeneratorInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.o = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.n, ptr noundef nonnull %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12: ; preds = %bb.d, %bb.e
  %.0.i11 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108
  %i.s = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.v = select i1 %i.t, ptr null, ptr %i.u
  %i.w = tail call noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator13getFunctionIDEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(200) %i.r, ptr noundef %i.v) #20 ; 2 uses
  %i.x = icmp ult i32 %i.w, 65536
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.z = zext i32 %.0.i11 to i64                  ; 2 uses
  %i.aa = zext i32 %.0.i to i64                   ; 2 uses
  %i.ab = zext i32 %i.w to i64                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g, !prof !88

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12
  %i.ac = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitCreateGeneratorElll(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12
  %i.ad = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator28emitCreateGeneratorLongIndexElll(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitCreateGeneratorElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -119, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 -119, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  %.pre15 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28BytecodeInstructionGenerator19emitResumeGeneratorEll:bb.a
_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 -121, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  %.pre14 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = phi ptr [ %.pre14, %bb.g ], [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.af, %bb.g ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.ay = icmp ugt i64 %2, 255
  %i.az = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ba = zext i1 %i.ay to i8
  %i.bb = or i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.g, align 8, !tbaa !300
  %i.bc = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ax
  br i1 %.not.i.i.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bc, ptr %.pre.i.i3, align 1, !tbaa !299
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit11

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i7)
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bc, ptr %i.bp, align 1, !tbaa !299
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %.not.i17.i.i.i.i.i9 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i.i9, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i8
  store ptr %i.bo, ptr %0, align 8, !tbaa !297
  store ptr %i.br, ptr %i.a, align 8, !tbaa !296
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit11

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit11: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i10
  %i.bw = trunc i64 %i.f to i32
  ret i32 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel22generateCondBranchInstEPNS_14CondBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 2 uses
  %i.j = icmp eq ptr %i.i, null                   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.l = select i1 %i.j, ptr null, ptr %i.k       ; 2 uses
  %i.m = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #20 ; 2 uses
  %i.n = icmp eq ptr %i.m, null                   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.p = select i1 %i.n, ptr null, ptr %i.o       ; 2 uses
  %i.q = icmp eq ptr %2, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 2 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.x = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitJmpFalseLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.s, i64 noundef 0, i64 noundef %i.t) ; 2 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %i.z = load i32, ptr %i.w, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.y, %i.z
  br i1 %.not.i.i, label %.sink.split, label %.sink.split.sink.split, !prof !88

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.aa = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJmpTrueLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.s, i64 noundef 0, i64 noundef %i.t)
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !86  ; 2 uses
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !87
  %.not.i.i17 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i17, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22, label %bb.f, !prof !88

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i18 = load i32, ptr %i.v, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22: ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre.i.i18, %bb.f ], [ %i.ab, %bb.e ]
  %3 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %spec.select.i19 = select i1 %i.j, ptr null, ptr %3
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store i32 %i.aa, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i20, align 1
  %.sroa.5.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %spec.select.i19, ptr %.sroa.5.0..sroa_idx.i21, align 1
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !86
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.v, align 8, !tbaa !86
  %i.ak = icmp eq ptr %2, %i.p
  br i1 %i.ak, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !108 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !296 ; 3 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !297 ; 4 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.at
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 -113, ptr %i.an, align 1, !tbaa !299
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !296
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.am, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %i.aw, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.ax = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.ar ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.ar
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 9223372036854775807)
  %i.ba = select i1 %i.ay, i64 9223372036854775807, i64 %i.az ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ar ; 2 uses
  store i8 -113, ptr %i.bc, align 1, !tbaa !299
  %i.bd = icmp sgt i64 %i.ar, 0
  br i1 %i.bd, label %bb.k, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !298
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bh) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.bb, ptr %i.al, align 8, !tbaa !297
  store ptr %i.be, ptr %i.am, align 8, !tbaa !296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.bj = trunc i64 %i.ar to i32                  ; 2 uses
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.al, i64 noundef 0)
  %i.bk = load i32, ptr %i.v, align 8, !tbaa !86  ; 2 uses
  %i.bl = load i32, ptr %i.w, align 4, !tbaa !87
  %.not.i.i23 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i23, label %.sink.split, label %.sink.split.sink.split, !prof !88

.sink.split.sink.split:                           ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.d
  %.sink39.ph = phi i32 [ %i.x, %bb.d ], [ %i.bj, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.bm, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i24 = load i32, ptr %i.v, align 8, !tbaa !86
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.d
  %.sink = phi i32 [ %i.y, %bb.d ], [ %i.bk, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ], [ %.pre.i.i24, %.sink.split.sink.split ]
  %.sink39 = phi i32 [ %i.x, %bb.d ], [ %i.bj, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ], [ %.sink39.ph, %.sink.split.sink.split ]
  %4 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %spec.select.i25 = select i1 %i.n, ptr null, ptr %4
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.bo = zext i32 %.sink to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  store i32 %.sink39, ptr %i.bp, align 1
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i26, align 1
  %.sroa.5.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %spec.select.i25, ptr %.sroa.5.0..sroa_idx.i27, align 1
  %i.bq = load i32, ptr %i.v, align 8, !tbaa !86
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.v, align 8, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitJmpFalseLongEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -109, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 -109, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1)
  %i.y = icmp ugt i64 %2, 255
  %i.z = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.aa = zext i1 %i.y to i8
  %i.ab = or i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.g, align 8, !tbaa !300
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !296 ; 3 uses
  %i.ac = trunc i64 %2 to i8                      ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.ad
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ac, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %.pre.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ac, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = trunc i64 %i.f to i32
  ret i32 %i.ax
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJmpTrueLongEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -111, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 -111, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJStrictEqualLongElll:bb.a
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ac, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = phi ptr [ %.pre, %bb.g ], [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.af, %bb.g ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.ay = icmp ugt i64 %3, 255
  %i.az = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ba = zext i1 %i.ay to i8
  %i.bb = or i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.g, align 8, !tbaa !300
  %i.bc = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ax
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bc, ptr %.pre.i.i4, align 1, !tbaa !299
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i8)
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bc, ptr %i.bp, align 1, !tbaa !299
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bo, ptr %0, align 8, !tbaa !297
  store ptr %i.br, ptr %i.a, align 8, !tbaa !296
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bw = trunc i64 %i.f to i32
  ret i32 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel21generateGetPNamesInstEPNS_13GetPNamesInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = zext i32 %.0.i to i64                    ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32
  %i.n = add i8 %i.m, -2
  %i.o = icmp ult i8 %i.n, 107
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.r = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.q, ptr noundef nonnull %i.l) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.s = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.l) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14: ; preds = %bb.d, %bb.e
  %.0.i13 = phi i32 [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = zext i32 %.0.i13 to i64
  %i.u = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #20 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !32
  %i.w = add i8 %i.v, -2
  %i.x = icmp ult i8 %i.w, 107
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.aa = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.z, ptr noundef nonnull %i.u) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14
  %i.ab = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.u) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17: ; preds = %bb.f, %bb.g
  %.0.i16 = phi i32 [ %i.aa, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = zext i32 %.0.i16 to i64
  %i.ad = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 3) #20 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !32
  %i.af = add i8 %i.ae, -2
  %i.ag = icmp ult i8 %i.af, 107
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.aj = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ai, ptr noundef nonnull %i.ad) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

bb.i:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.ak = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ad) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20: ; preds = %bb.h, %bb.i
  %.0.i19 = phi i32 [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = zext i32 %.0.i19 to i64
  %i.am = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetPNameListEllll(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i64 noundef %i.k, i64 noundef %i.t, i64 noundef %i.ac, i64 noundef %i.al) ; 0 uses
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.ao = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.an, i64 noundef 0, i64 noundef %i.k)
  %i.ap = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 4) #20 ; 2 uses
  %3 = icmp eq ptr %i.ap, null                    ; 2 uses
  %4 = getelementptr inbounds i8, ptr %i.ap, i64 -16
  %5 = select i1 %3, ptr null, ptr %4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !86 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.as, %i.au
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.j, !prof !88

bb.j:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull %i.av, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ar, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20, %bb.j
  %i.aw = phi i32 [ %.pre.i.i, %bb.j ], [ %i.as, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20 ]
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %spec.select.i = select i1 %3, ptr null, ptr %6
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !89
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store i32 %i.ao, ptr %i.az, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !86
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ar, align 8, !tbaa !86
  %i.bc = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 5) #20 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null                 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.bf = select i1 %i.bd, ptr null, ptr %i.be    ; 2 uses
  %.not = icmp eq ptr %2, %i.bf
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !108 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !296 ; 3 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !297 ; 4 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 -113, ptr %i.bi, align 1, !tbaa !299
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !296
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.bh, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.m:                                             ; preds = %bb.k
  %i.br = icmp eq i64 %i.bm, 9223372036854775807
  br i1 %i.br, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bs = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.bm ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bm
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 9223372036854775807)
  %i.bv = select i1 %i.bt, i64 9223372036854775807, i64 %i.bu ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bm ; 2 uses
  store i8 -113, ptr %i.bx, align 1, !tbaa !299
  %i.by = icmp sgt i64 %i.bm, 0
  br i1 %i.by, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !298
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.cc) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.bw, ptr %i.bg, align 8, !tbaa !297
  store ptr %i.bz, ptr %i.bh, align 8, !tbaa !296
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store ptr %i.cd, ptr %i.bn, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.ce = trunc i64 %i.bm to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.bg, i64 noundef 0)
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !86 ; 2 uses
  %i.cg = load i32, ptr %i.at, align 4, !tbaa !87
  %.not.i.i21 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i.i21, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26, label %bb.q, !prof !88

bb.q:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull %i.ch, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i22 = load i32, ptr %i.ar, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.q
  %i.ci = phi i32 [ %.pre.i.i22, %bb.q ], [ %i.cf, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %7 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %spec.select.i23 = select i1 %i.bd, ptr null, ptr %7
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !89
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  store i32 %i.ce, ptr %i.cl, align 1
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i24, align 1
  %.sroa.5.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %spec.select.i23, ptr %.sroa.5.0..sroa_idx.i25, align 1
  %i.cm = load i32, ptr %i.ar, align 8, !tbaa !86
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ar, align 8, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetPNameListEllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 77, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 77, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  %.pre34 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = phi ptr [ %.pre34, %bb.g ], [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i5 = phi ptr [ %i.af, %bb.g ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.ay = icmp ugt i64 %2, 255
  %i.az = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ba = zext i1 %i.ay to i8
  %i.bb = or i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.g, align 8, !tbaa !300
  %i.bc = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pre.i.i5, %i.ax
  br i1 %.not.i.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bc, ptr %.pre.i.i5, align 1, !tbaa !299
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !296
  %.pre36 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i.i.i8, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i9 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i9)
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bc, ptr %i.bp, align 1, !tbaa !299
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.p
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll:bb.a
bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1)
  %i.y = icmp ugt i64 %2, 255
  %i.z = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.aa = zext i1 %i.y to i8
  %i.ab = or i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.g, align 8, !tbaa !300
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !296 ; 3 uses
  %i.ac = trunc i64 %2 to i8                      ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.ad
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ac, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %.pre.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ac, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = trunc i64 %i.f to i32
  ret i32 %i.ax
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel24generateGetNextPNameInstEPNS_16GetNextPNameInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 3) #20 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.o = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.n, ptr noundef nonnull %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17: ; preds = %bb.d, %bb.e
  %.0.i16 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !32
  %i.s = add i8 %i.r, -2
  %i.t = icmp ult i8 %i.s, 107
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.w = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.v, ptr noundef nonnull %i.q) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.x = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.q) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20: ; preds = %bb.f, %bb.g
  %.0.i19 = phi i32 [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !108
  %i.aa = zext i32 %.0.i19 to i64                 ; 2 uses
  %i.ab = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 4) #20 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !32
  %i.ad = add i8 %i.ac, -2
  %i.ae = icmp ult i8 %i.ad, 107
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.ah = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ag, ptr noundef nonnull %i.ab) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23

bb.i:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20
  %i.ai = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ab) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23: ; preds = %bb.h, %bb.i
  %.0.i22 = phi i32 [ %i.ah, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = zext i32 %.0.i22 to i64
  %i.ak = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !32
  %i.am = add i8 %i.al, -2
  %i.an = icmp ult i8 %i.am, 107
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.aq = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ap, ptr noundef nonnull %i.ak) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26

bb.k:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23
  %i.ar = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ak) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26: ; preds = %bb.j, %bb.k
  %.0.i25 = phi i32 [ %i.aq, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = zext i32 %.0.i25 to i64
  %i.at = zext i32 %.0.i to i64
  %i.au = zext i32 %.0.i16 to i64
  %i.av = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetNextPNameElllll(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i64 noundef %i.aa, i64 noundef %i.aj, i64 noundef %i.as, i64 noundef %i.at, i64 noundef %i.au) ; 0 uses
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !108
  %i.ax = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.aw, i64 noundef 0, i64 noundef %i.aa)
  %i.ay = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 5) #20 ; 2 uses
  %3 = icmp eq ptr %i.ay, null                    ; 2 uses
  %4 = getelementptr inbounds i8, ptr %i.ay, i64 -16
  %5 = select i1 %3, ptr null, ptr %4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.l, !prof !88

bb.l:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ba, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26, %bb.l
  %i.bf = phi i32 [ %.pre.i.i, %bb.l ], [ %i.bb, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26 ]
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %spec.select.i = select i1 %3, ptr null, ptr %6
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !89
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  store i32 %i.ax, ptr %i.bi, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !86
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !86
  %i.bl = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 6) #20 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bo = select i1 %i.bm, ptr null, ptr %i.bn    ; 2 uses
  %.not = icmp eq ptr %2, %i.bo
  br i1 %.not, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !108 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !296 ; 3 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !297 ; 4 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bx
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 -113, ptr %i.br, align 1, !tbaa !299
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !296
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.o:                                             ; preds = %bb.m
  %i.ca = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.ca, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.cb = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bv
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 9223372036854775807)
  %i.ce = select i1 %i.cc, i64 9223372036854775807, i64 %i.cd ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #24 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bv ; 2 uses
  store i8 -113, ptr %i.cg, align 1, !tbaa !299
  %i.ch = icmp sgt i64 %i.bv, 0
  br i1 %i.ch, label %bb.q, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !298
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cl) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.cf, ptr %i.bp, align 8, !tbaa !297
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !296
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store ptr %i.cm, ptr %i.bw, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.cn = trunc i64 %i.bv to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.bp, i64 noundef 0)
  %i.co = load i32, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %i.cp = load i32, ptr %i.bc, align 4, !tbaa !87
  %.not.i.i27 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i27, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32, label %bb.s, !prof !88

bb.s:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull %i.cq, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i28 = load i32, ptr %i.ba, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.s
  %i.cr = phi i32 [ %.pre.i.i28, %bb.s ], [ %i.co, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %7 = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %spec.select.i29 = select i1 %i.bm, ptr null, ptr %7
  %i.cs = load ptr, ptr %i.az, align 8, !tbaa !89
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct ; 3 uses
  store i32 %i.cn, ptr %i.cu, align 1
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i30, align 1
  %.sroa.5.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %spec.select.i29, ptr %.sroa.5.0..sroa_idx.i31, align 1
  %i.cv = load i32, ptr %i.ba, align 8, !tbaa !86
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ba, align 8, !tbaa !86
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetNextPNameElllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 78, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 78, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  %.pre44 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = phi ptr [ %.pre44, %bb.g ], [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i6 = phi ptr [ %i.af, %bb.g ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.ay = icmp ugt i64 %2, 255
  %i.az = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ba = zext i1 %i.ay to i8
  %i.bb = or i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.g, align 8, !tbaa !300
  %i.bc = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %.pre.i.i6, %i.ax
  br i1 %.not.i.i.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bc, ptr %.pre.i.i6, align 1, !tbaa !299
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !296
  %.pre46 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit14

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i9 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i.i.i9, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i10)
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bc, ptr %i.bp, align 1, !tbaa !299
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i11

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i11

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i11: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i12 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i.i12, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i13, label %bb.p
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetNextPNameElllll:bb.a
bb.r:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit14
  %i.ce = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 7 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775807
  br i1 %i.ci, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.cj = add i64 %.sroa.speculated.i.i.i.i.i.i18, %i.ch ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ch
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 9223372036854775807)
  %i.cm = select i1 %i.ck, i64 9223372036854775807, i64 %i.cl ; 3 uses
  %.not.i.i.i.i.i.i19 = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i19)
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #24 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ch ; 2 uses
  store i8 %i.cb, ptr %i.co, align 1, !tbaa !299
  %i.cp = icmp sgt i64 %i.ch, 0
  br i1 %i.cp, label %bb.t, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.ce, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20: ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i21 = icmp eq ptr %i.ce, null
  br i1 %.not.i17.i.i.i.i.i21, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ct) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  store ptr %i.cn, ptr %0, align 8, !tbaa !297
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !296
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm ; 2 uses
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22
  %i.cv = phi ptr [ %.pre48, %bb.q ], [ %i.cu, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22 ] ; 2 uses
  %.pre.i.i24 = phi ptr [ %i.cd, %bb.q ], [ %i.cq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22 ] ; 2 uses
  %i.cw = icmp ugt i64 %4, 255
  %i.cx = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.cy = zext i1 %i.cw to i8
  %i.cz = or i8 %i.cx, %i.cy
  store i8 %i.cz, ptr %i.g, align 8, !tbaa !300
  %i.da = trunc i64 %4 to i8                      ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.pre.i.i24, %i.cv
  br i1 %.not.i.i.i.i25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23
  store i8 %i.da, ptr %.pre.i.i24, align 1, !tbaa !299
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.dc, ptr %i.a, align 8, !tbaa !296
  %.pre50 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit32

bb.w:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23
  %i.dd = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.de = ptrtoint ptr %i.cv to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 7 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775807
  br i1 %i.dh, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i26

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i26: ; preds = %bb.w
  %.sroa.speculated.i.i.i.i.i.i27 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.di = add i64 %.sroa.speculated.i.i.i.i.i.i27, %i.dg ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dg
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 9223372036854775807)
  %i.dl = select i1 %i.dj, i64 9223372036854775807, i64 %i.dk ; 3 uses
  %.not.i.i.i.i.i.i28 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i28)
  %i.dm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #24 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dg ; 2 uses
  store i8 %i.da, ptr %i.dn, align 1, !tbaa !299
  %i.do = icmp sgt i64 %i.dg, 0
  br i1 %i.do, label %bb.y, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i29

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr align 1 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i29

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i29: ; preds = %bb.y, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i30 = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i.i.i.i30, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i31, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i29
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.ds) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i31

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i31: ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i29
  store ptr %i.dm, ptr %0, align 8, !tbaa !297
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !296
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl ; 2 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit32

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit32: ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i31
  %i.du = phi ptr [ %.pre50, %bb.v ], [ %i.dt, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i31 ] ; 2 uses
  %.pre.i.i33 = phi ptr [ %i.dc, %bb.v ], [ %i.dp, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i31 ] ; 2 uses
  %i.dv = icmp ugt i64 %5, 255
  %i.dw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.dx = zext i1 %i.dv to i8
  %i.dy = or i8 %i.dw, %i.dx
  store i8 %i.dy, ptr %i.g, align 8, !tbaa !300
  %i.dz = trunc i64 %5 to i8                      ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %.pre.i.i33, %i.du
  br i1 %.not.i.i.i.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit32
  store i8 %i.dz, ptr %.pre.i.i33, align 1, !tbaa !299
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit41

bb.ab:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit32
  %i.ec = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ed = ptrtoint ptr %i.du to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 7 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775807
  br i1 %i.eg, label %bb.ac, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i35

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i35: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i.i.i36 = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eh = add i64 %.sroa.speculated.i.i.i.i.i.i36, %i.ef ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ef
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 9223372036854775807)
  %i.ek = select i1 %i.ei, i64 9223372036854775807, i64 %i.ej ; 3 uses
  %.not.i.i.i.i.i.i37 = icmp ne i64 %i.ek, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i37)
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #24 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ef ; 2 uses
  store i8 %i.dz, ptr %i.em, align 1, !tbaa !299
  %i.en = icmp sgt i64 %i.ef, 0
  br i1 %i.en, label %bb.ad, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i38

bb.ad:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i38

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i38: ; preds = %bb.ad, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %.not.i17.i.i.i.i.i39 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i.i.i39, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i40, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i38
  %i.ep = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.er) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i40

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i40: ; preds = %bb.ae, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i38
  store ptr %i.el, ptr %0, align 8, !tbaa !297
  store ptr %i.eo, ptr %i.a, align 8, !tbaa !296
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store ptr %i.es, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit41

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit41: ; preds = %bb.aa, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i40
  %i.et = trunc i64 %i.f to i32
  ret i32 %i.et
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel28generateCheckHasInstanceInstEPNS_20CheckHasInstanceInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel20generateTryStartInstEPNS_12TryStartInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.d = select i1 %i.b, ptr null, ptr %i.c       ; 2 uses
  %i.e = icmp eq ptr %2, %i.d
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !296  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !297  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %i.o
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -113, ptr %i.i, align 1, !tbaa !299
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !296
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.h, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.m, 9223372036854775807
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.s = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.m
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807)
  %i.v = select i1 %i.t, i64 9223372036854775807, i64 %i.u ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 2 uses
  store i8 -113, ptr %i.x, align 1, !tbaa !299
  %i.y = icmp sgt i64 %i.m, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !298
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.w, ptr %i.g, align 8, !tbaa !297
  store ptr %i.z, ptr %i.h, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.ae = trunc i64 %i.m to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.h, !prof !88

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.ak, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ag, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.h
  %i.al = phi i32 [ %.pre.i.i, %bb.h ], [ %i.ah, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select.i = select i1 %i.b, ptr null, ptr %3
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an ; 3 uses
  store i32 %i.ae, ptr %i.ao, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.ap = load i32, ptr %i.ag, align 8, !tbaa !86
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ag, align 8, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel16generateCallInstEPNS_8CallInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0) #20 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.o = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.n, ptr noundef nonnull %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12: ; preds = %bb.d, %bb.e
  %.0.i11 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #20
  %i.r = add i32 %i.q, -2
  %i.s = icmp ult i32 %i.r, 256
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %i.v = zext i32 %.0.i to i64                    ; 2 uses
  %i.w = zext i32 %.0.i11 to i64                  ; 2 uses
  %i.x = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #20
  %i.y = add i32 %i.x, -2
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12
  %i.aa = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator8emitCallElll(ptr noundef nonnull align 8 dereferenceable(25) %i.u, i64 noundef %i.v, i64 noundef %i.w, i64 noundef %i.z) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit12
  %i.ab = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator12emitCallLongElll(ptr noundef nonnull align 8 dereferenceable(25) %i.u, i64 noundef %i.v, i64 noundef %i.w, i64 noundef %i.z) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator8emitCallElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 79, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 79, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  %.pre23 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc28BytecodeInstructionGenerator16emitSelectObjectElll:bb.a
_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !297
  store ptr %i.as, ptr %i.a, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ax = phi ptr [ %.pre24, %bb.g ], [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.af, %bb.g ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.ay = icmp ugt i64 %2, 255
  %i.az = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ba = zext i1 %i.ay to i8
  %i.bb = or i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.g, align 8, !tbaa !300
  %i.bc = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ax
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bc, ptr %.pre.i.i4, align 1, !tbaa !299
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !296
  %.pre26 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 9223372036854775807)
  %i.bn = select i1 %i.bl, i64 9223372036854775807, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i8)
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi ; 2 uses
  store i8 %i.bc, ptr %i.bp, align 1, !tbaa !299
  %i.bq = icmp sgt i64 %i.bi, 0
  br i1 %i.bq, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bo, ptr %0, align 8, !tbaa !297
  store ptr %i.br, ptr %i.a, align 8, !tbaa !296
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn ; 2 uses
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bw = phi ptr [ %.pre26, %bb.l ], [ %i.bv, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11 ] ; 2 uses
  %.pre.i.i13 = phi ptr [ %i.be, %bb.l ], [ %i.br, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11 ] ; 2 uses
  %i.bx = icmp ugt i64 %3, 255
  %i.by = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.bz = zext i1 %i.bx to i8
  %i.ca = or i8 %i.by, %i.bz
  store i8 %i.ca, ptr %i.g, align 8, !tbaa !300
  %i.cb = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bw
  br i1 %.not.i.i.i.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12
  store i8 %i.cb, ptr %.pre.i.i13, align 1, !tbaa !299
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit21

bb.r:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12
  %i.ce = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 7 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775807
  br i1 %i.ci, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.cj = add i64 %.sroa.speculated.i.i.i.i.i.i16, %i.ch ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ch
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 9223372036854775807)
  %i.cm = select i1 %i.ck, i64 9223372036854775807, i64 %i.cl ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i17)
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #24 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ch ; 2 uses
  store i8 %i.cb, ptr %i.co, align 1, !tbaa !299
  %i.cp = icmp sgt i64 %i.ch, 0
  br i1 %i.cp, label %bb.t, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i18

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.ce, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i18

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i18: ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %.not.i17.i.i.i.i.i19 = icmp eq ptr %i.ce, null
  br i1 %.not.i17.i.i.i.i.i19, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i20, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i18
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ct) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i20

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i20: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i18
  store ptr %i.cn, ptr %0, align 8, !tbaa !297
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !296
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit21

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit21: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i20
  %i.cv = trunc i64 %i.f to i32
  ret i32 %i.cv
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel23generateHBCSpillMovInstEPNS_15HBCSpillMovInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %3 = getelementptr inbounds i8, ptr %i.i, i64 -16
  %4 = select i1 %.not, ptr null, ptr %3
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = load i8, ptr %5, align 8, !tbaa !32
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.o = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.n, ptr noundef nonnull %5) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %5) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6: ; preds = %bb.d, %bb.e
  %.0.i5 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  %i.q = zext i32 %.0.i to i64                    ; 2 uses
  %i.r = zext i32 %.0.i5 to i64                   ; 2 uses
  %i.s = icmp eq i32 %.0.i, %.0.i5
  br i1 %i.s, label %_ZN6hermes3hbc7HBCISel15emitMovIfNeededEll.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6
  %i.t = or i32 %.0.i5, %.0.i
  %or.cond.i = icmp ult i32 %i.t, 256
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108  ; 2 uses
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMovEll(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i64 noundef %i.q, i64 noundef %i.r) ; 0 uses
  br label %_ZN6hermes3hbc7HBCISel15emitMovIfNeededEll.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator11emitMovLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i64 noundef %i.q, i64 noundef %i.r) ; 0 uses
  br label %_ZN6hermes3hbc7HBCISel15emitMovIfNeededEll.exit

_ZN6hermes3hbc7HBCISel15emitMovIfNeededEll.exit:  ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel23generateUnreachableInstEPNS_15UnreachableInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel25generateIteratorBeginInstEPNS_17IteratorBeginInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.o = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.n, ptr noundef nonnull %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit6: ; preds = %bb.d, %bb.e
  %.0.i5 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108
  %i.s = zext i32 %.0.i to i64
  %i.t = zext i32 %.0.i5 to i64
  %i.u = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator17emitIteratorBeginEll(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i64 noundef %i.s, i64 noundef %i.t) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator17emitIteratorBeginEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -117, ptr %i.b, align 1, !tbaa !299
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f ; 2 uses
  store i8 -117, ptr %i.r, align 1, !tbaa !299
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !297
  store ptr %i.t, ptr %i.a, align 8, !tbaa !296
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = icmp ugt i64 %1, 255
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ab = zext i1 %i.z to i8
  %i.ac = or i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.g, align 8, !tbaa !300
  %i.ad = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.y
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ad, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !296
  %.pre14 = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ad, ptr %i.aq, align 1, !tbaa !299
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
end_hunk_6
