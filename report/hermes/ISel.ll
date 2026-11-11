Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ISel?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6hermes3hbc7HBCISel24generateCreateRegExpInstEPNS_16CreateRegExpInstEPNS_10BasicBlockE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !118
  %i.af = tail call noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(200) %i.ae, ptr noundef nonnull %i.ac) #20
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !118
  %i.ah = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20
  %i.ai = tail call noundef i32 @_ZNK6hermes3hbc25BytecodeFunctionGenerator11getStringIDEPNS_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, ptr noundef %i.ah) #20
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !118
  %i.ak = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20
  %i.al = tail call noundef i32 @_ZNK6hermes3hbc25BytecodeFunctionGenerator11getStringIDEPNS_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noundef %i.ak) #20
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !42
  %i.ap = add i8 %i.ao, -2
  %i.aq = icmp ult i8 %i.ap, 107
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6hermes7Context17getCompiledRegExpEPNS_12UniqueStringES2_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93, !nonnull !94, !align !95
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
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitCreateRegExpEllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 !guid !564 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -124, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 -124, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre9.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.av = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %2)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %3)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %4)
  ret i32 %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateTryEndInstEPNS_10TryEndInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 align 2 !guid !565 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel22generateTerminatorInstEPNS_14TerminatorInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 !guid !566 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateBranchInstEPNS_10BranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 !guid !567 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.d = select i1 %i.b, ptr null, ptr %i.c       ; 2 uses
  %i.e = icmp eq ptr %i.d, %2
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !307  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.pre9.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !308
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -113, ptr %i.i, align 1, !tbaa !309
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.h, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.m, 9223372036854775807
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.r = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.m
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 9223372036854775807)
  %i.u = select i1 %i.s, i64 9223372036854775807, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m ; 2 uses
  store i8 -113, ptr %i.w, align 1, !tbaa !309
  %i.x = icmp sgt i64 %i.m, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !308
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.v, ptr %i.g, align 8, !tbaa !307
  store ptr %i.y, ptr %i.h, align 8, !tbaa !306
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.ad = trunc i64 %i.m to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef 0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !97
  %.not.i.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.h, !prof !98

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull %i.aj, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.af, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.h
  %i.ak = phi i32 [ %.pre.i.i, %bb.h ], [ %i.ag, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select.i = select i1 %i.b, ptr null, ptr %3
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store i32 %i.ad, ptr %i.an, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.ao = load i32, ptr %i.af, align 8, !tbaa !96
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel18generateReturnInstEPNS_10ReturnInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 !guid !568 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !569
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !577
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !42
  %i.o = icmp eq i8 %i.n, -126
  br i1 %i.o, label %bb.d, label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !118  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !306  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !307  ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.pre9.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !308
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 -120, ptr %i.s, align 1, !tbaa !309
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !306
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.r, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.ab = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.w ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.w
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 9223372036854775807)
  %i.ae = select i1 %i.ac, i64 9223372036854775807, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w ; 2 uses
  store i8 -120, ptr %i.ag, align 1, !tbaa !309
  %i.ah = icmp sgt i64 %i.w, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !308
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.al) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.af, ptr %i.q, align 8, !tbaa !307
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !306
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store ptr %i.am, ptr %i.x, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator21emitCompleteGeneratorEv.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.e, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118
  %i.ap = zext i32 %.0.i to i64
  %i.aq = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %i.ao, i64 noundef %i.ap) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !578 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 92, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 92, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28BytecodeInstructionGenerator19emitResumeGeneratorEll:bb.a
_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 -121, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i4.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre9.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i4 = phi ptr [ %.pre9.i.i4.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !310
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i3, %.pre9.i.i4
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i3, align 1, !tbaa !309
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.bd = ptrtoint ptr %.pre9.i.i4 to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i8)
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !309
  %i.bn = icmp sgt i64 %i.bf, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bl, ptr %0, align 8, !tbaa !307
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !306
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bt = trunc i64 %i.f to i32
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel22generateCondBranchInstEPNS_14CondBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 !guid !592 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !nonnull !94, !align !95
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 2 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.x = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitJmpFalseLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.s, i64 noundef 0, i64 noundef %i.t) ; 2 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %i.z = load i32, ptr %i.w, align 4, !tbaa !97
  %.not.i.i = icmp ult i32 %i.y, %i.z
  br i1 %.not.i.i, label %.sink.split, label %.sink.split.sink.split, !prof !98

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.aa = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJmpTrueLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.s, i64 noundef 0, i64 noundef %i.t)
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !96  ; 2 uses
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !97
  %.not.i.i17 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i17, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22, label %bb.f, !prof !98

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i18 = load i32, ptr %i.v, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22: ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre.i.i18, %bb.f ], [ %i.ab, %bb.e ]
  %3 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %spec.select.i19 = select i1 %i.j, ptr null, ptr %3
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store i32 %i.aa, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i20, align 1
  %.sroa.5.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %spec.select.i19, ptr %.sroa.5.0..sroa_idx.i21, align 1
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.v, align 8, !tbaa !96
  %i.ak = icmp eq ptr %2, %i.p
  br i1 %i.ak, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !118 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !306 ; 3 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !307 ; 4 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %.pre9.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !308
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 -113, ptr %i.an, align 1, !tbaa !309
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.am, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.i:                                             ; preds = %bb.g
  %i.av = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %i.av, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.aw = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.ar ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 9223372036854775807)
  %i.az = select i1 %i.ax, i64 9223372036854775807, i64 %i.ay ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #24 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ar ; 2 uses
  store i8 -113, ptr %i.bb, align 1, !tbaa !309
  %i.bc = icmp sgt i64 %i.ar, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !308
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bg) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ba, ptr %i.al, align 8, !tbaa !307
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !306
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store ptr %i.bh, ptr %i.as, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.bi = trunc i64 %i.ar to i32                  ; 2 uses
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.al, i64 noundef 0)
  %i.bj = load i32, ptr %i.v, align 8, !tbaa !96  ; 2 uses
  %i.bk = load i32, ptr %i.w, align 4, !tbaa !97
  %.not.i.i23 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i.i23, label %.sink.split, label %.sink.split.sink.split, !prof !98

.sink.split.sink.split:                           ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.d
  %.sink39.ph = phi i32 [ %i.x, %bb.d ], [ %i.bi, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.bl, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i24 = load i32, ptr %i.v, align 8, !tbaa !96
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.d
  %.sink = phi i32 [ %i.y, %bb.d ], [ %i.bj, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ], [ %.pre.i.i24, %.sink.split.sink.split ]
  %.sink39 = phi i32 [ %i.x, %bb.d ], [ %i.bi, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ], [ %.sink39.ph, %.sink.split.sink.split ]
  %4 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %spec.select.i25 = select i1 %i.n, ptr null, ptr %4
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.bn = zext i32 %.sink to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  store i32 %.sink39, ptr %i.bo, align 1
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i26, align 1
  %.sroa.5.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %spec.select.i25, ptr %.sroa.5.0..sroa_idx.i27, align 1
  %i.bp = load i32, ptr %i.v, align 8, !tbaa !96
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.v, align 8, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitJmpFalseLongEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !593 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -109, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 -109, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1)
  %i.x = icmp ugt i64 %2, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !306 ; 3 uses
  %.pre9.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.ab = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.av = trunc i64 %i.f to i32
  ret i32 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJmpTrueLongEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !594 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -111, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 -111, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJStrictEqualLongElll:bb.a

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i5 = phi ptr [ %.pre9.i.i5.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %3, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !310
  %i.az = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pre.i.i4, %.pre9.i.i5
  br i1 %.not.i.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i4, align 1, !tbaa !309
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.bd = ptrtoint ptr %.pre9.i.i5 to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i.i.i.i8, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i9 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i9)
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !309
  %i.bn = icmp sgt i64 %i.bf, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bl, ptr %0, align 8, !tbaa !307
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !306
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bt = trunc i64 %i.f to i32
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel21generateGetPNamesInstEPNS_13GetPNamesInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 !guid !619 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.k = zext i32 %.0.i to i64                    ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !42
  %i.n = add i8 %i.m, -2
  %i.o = icmp ult i8 %i.n, 107
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.r = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.q, ptr noundef nonnull %i.l) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.s = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.l) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14: ; preds = %bb.d, %bb.e
  %.0.i13 = phi i32 [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = zext i32 %.0.i13 to i64
  %i.u = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #20 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !42
  %i.w = add i8 %i.v, -2
  %i.x = icmp ult i8 %i.w, 107
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.aa = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.z, ptr noundef nonnull %i.u) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit14
  %i.ab = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.u) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17: ; preds = %bb.f, %bb.g
  %.0.i16 = phi i32 [ %i.aa, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = zext i32 %.0.i16 to i64
  %i.ad = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 3) #20 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !42
  %i.af = add i8 %i.ae, -2
  %i.ag = icmp ult i8 %i.af, 107
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.aj = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ai, ptr noundef nonnull %i.ad) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

bb.i:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.ak = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ad) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20: ; preds = %bb.h, %bb.i
  %.0.i19 = phi i32 [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = zext i32 %.0.i19 to i64
  %i.am = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetPNameListEllll(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i64 noundef %i.k, i64 noundef %i.t, i64 noundef %i.ac, i64 noundef %i.al) ; 0 uses
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.ao = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.an, i64 noundef 0, i64 noundef %i.k)
  %i.ap = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 4) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !97
  %.not.i.i = icmp ult i32 %i.as, %i.au
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.j, !prof !98

bb.j:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull %i.av, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ar, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20, %bb.j
  %i.aw = phi i32 [ %.pre.i.i, %bb.j ], [ %i.as, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20 ]
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store i32 %i.ao, ptr %i.az, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !96
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ar, align 8, !tbaa !96
  %i.bc = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 5) #20 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null                 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.bf = select i1 %i.bd, ptr null, ptr %i.be    ; 2 uses
  %.not = icmp eq ptr %2, %i.bf
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !118 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !306 ; 3 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !307 ; 4 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  %.pre9.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !308
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 -113, ptr %i.bi, align 1, !tbaa !309
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !306
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.m:                                             ; preds = %bb.k
  %i.bq = icmp eq i64 %i.bm, 9223372036854775807
  br i1 %i.bq, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.br = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.bm ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bm
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 9223372036854775807)
  %i.bu = select i1 %i.bs, i64 9223372036854775807, i64 %i.bt ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm ; 2 uses
  store i8 -113, ptr %i.bw, align 1, !tbaa !309
  %i.bx = icmp sgt i64 %i.bm, 0
  br i1 %i.bx, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !308
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.bv, ptr %i.bg, align 8, !tbaa !307
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !306
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store ptr %i.cc, ptr %i.bn, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.cd = trunc i64 %i.bm to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.bg, i64 noundef 0)
  %i.ce = load i32, ptr %i.ar, align 8, !tbaa !96 ; 2 uses
  %i.cf = load i32, ptr %i.at, align 4, !tbaa !97
  %.not.i.i21 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i.i21, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26, label %bb.q, !prof !98

bb.q:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull %i.cg, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i22 = load i32, ptr %i.ar, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.q
  %i.ch = phi i32 [ %.pre.i.i22, %bb.q ], [ %i.ce, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %spec.select.i23 = select i1 %i.bd, ptr null, ptr %3
  %i.ci = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cj ; 3 uses
  store i32 %i.cd, ptr %i.ck, align 1
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i24, align 1
  %.sroa.5.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %spec.select.i23, ptr %.sroa.5.0..sroa_idx.i25, align 1
  %i.cl = load i32, ptr %i.ar, align 8, !tbaa !96
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ar, align 8, !tbaa !96
  br label %bb.r

bb.r:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetPNameListEllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 !guid !620 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 77, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 77, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i6.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre9.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i6 = phi ptr [ %.pre9.i.i6.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i5 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !310
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %.pre.i.i5, %.pre9.i.i6
  br i1 %.not.i.i.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i5, align 1, !tbaa !309
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i16.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit14

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.bd = ptrtoint ptr %.pre9.i.i6 to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i9 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i.i.i.i9, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i10)
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !309
  %i.bn = icmp sgt i64 %i.bf, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i11

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i11

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i11: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i12 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i.i.i12, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i13, label %bb.p
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll:bb.a
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !306 ; 3 uses
  %.pre9.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.ab = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.av = trunc i64 %i.f to i32
  ret i32 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel24generateGetNextPNameInstEPNS_16GetNextPNameInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 !guid !622 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #20 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 3) #20 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !42
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.o = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.n, ptr noundef nonnull %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.p = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.i) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17: ; preds = %bb.d, %bb.e
  %.0.i16 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !42
  %i.s = add i8 %i.r, -2
  %i.t = icmp ult i8 %i.s, 107
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.w = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.v, ptr noundef nonnull %i.q) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit17
  %i.x = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.q) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20: ; preds = %bb.f, %bb.g
  %.0.i19 = phi i32 [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118
  %i.aa = zext i32 %.0.i19 to i64                 ; 2 uses
  %i.ab = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 4) #20 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !42
  %i.ad = add i8 %i.ac, -2
  %i.ae = icmp ult i8 %i.ad, 107
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.ah = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ag, ptr noundef nonnull %i.ab) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23

bb.i:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit20
  %i.ai = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ab) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23: ; preds = %bb.h, %bb.i
  %.0.i22 = phi i32 [ %i.ah, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = zext i32 %.0.i22 to i64
  %i.ak = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !42
  %i.am = add i8 %i.al, -2
  %i.an = icmp ult i8 %i.am, 107
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93, !nonnull !94, !align !95
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
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !118
  %i.ax = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.aw, i64 noundef 0, i64 noundef %i.aa)
  %i.ay = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 5) #20
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !97
  %.not.i.i = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.l, !prof !98

bb.l:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ba, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26, %bb.l
  %i.bf = phi i32 [ %.pre.i.i, %bb.l ], [ %i.bb, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit26 ]
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  store i32 %i.ax, ptr %i.bi, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !96
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !96
  %i.bl = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 6) #20 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bo = select i1 %i.bm, ptr null, ptr %i.bn    ; 2 uses
  %.not = icmp eq ptr %2, %i.bo
  br i1 %.not, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !118 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !306 ; 3 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !307 ; 4 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %.pre9.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !308
  %.not.i.i.i.i.i.i = icmp eq ptr %i.br, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 -113, ptr %i.br, align 1, !tbaa !309
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !306
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #24 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bv ; 2 uses
  store i8 -113, ptr %i.cf, align 1, !tbaa !309
  %i.cg = icmp sgt i64 %i.bv, 0
  br i1 %i.cg, label %bb.q, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !308
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ck) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ce, ptr %i.bp, align 8, !tbaa !307
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !306
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store ptr %i.cl, ptr %i.bw, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.cm = trunc i64 %i.bv to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.bp, i64 noundef 0)
  %i.cn = load i32, ptr %i.ba, align 8, !tbaa !96 ; 2 uses
  %i.co = load i32, ptr %i.bc, align 4, !tbaa !97
  %.not.i.i27 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.i27, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32, label %bb.s, !prof !98

bb.s:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull %i.cp, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i28 = load i32, ptr %i.ba, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.s
  %i.cq = phi i32 [ %.pre.i.i28, %bb.s ], [ %i.cn, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %spec.select.i29 = select i1 %i.bm, ptr null, ptr %3
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs ; 3 uses
  store i32 %i.cm, ptr %i.ct, align 1
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i30, align 1
  %.sroa.5.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %spec.select.i29, ptr %.sroa.5.0..sroa_idx.i31, align 1
  %i.cu = load i32, ptr %i.ba, align 8, !tbaa !96
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ba, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetNextPNameElllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 !guid !623 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 78, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 78, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i7.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre9.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !307
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !306
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i7 = phi ptr [ %.pre9.i.i7.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i6 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !310
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %.pre.i.i6, %.pre9.i.i7
  br i1 %.not.i.i.i.i8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i6, align 1, !tbaa !309
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i17.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit15

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.bd = ptrtoint ptr %.pre9.i.i7 to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i9

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i9: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i.i.i.i10, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i11 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i11)
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !309
  %i.bn = icmp sgt i64 %i.bf, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i12

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i12

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i12: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i13 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i.i.i13, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i14, label %bb.p
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc28BytecodeInstructionGenerator16emitGetNextPNameElllll:bb.a
bb.r:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit15
  %i.ca = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.cb = ptrtoint ptr %.pre9.i.i17 to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 7 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775807
  br i1 %i.ce, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i19

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i19: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.cf = add i64 %.sroa.speculated.i.i.i.i.i.i20, %i.cd ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.cd
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 9223372036854775807)
  %i.ci = select i1 %i.cg, i64 9223372036854775807, i64 %i.ch ; 3 uses
  %.not.i.i.i.i.i.i21 = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i21)
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #24 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cd ; 2 uses
  store i8 %i.bx, ptr %i.ck, align 1, !tbaa !309
  %i.cl = icmp sgt i64 %i.cd, 0
  br i1 %i.cl, label %bb.t, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i22

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i22

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i22: ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i23 = icmp eq ptr %i.ca, null
  br i1 %.not.i17.i.i.i.i.i23, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i24, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i22
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cp) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i24

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i24: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i22
  store ptr %i.cj, ptr %0, align 8, !tbaa !307
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !306
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci ; 2 uses
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit25

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit25: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i24
  %.pre9.i.i27 = phi ptr [ %.pre9.i.i27.pre, %bb.q ], [ %i.cq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i24 ] ; 2 uses
  %.pre.i.i26 = phi ptr [ %i.bz, %bb.q ], [ %i.cm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i24 ] ; 2 uses
  %i.cr = icmp ugt i64 %4, 255
  %i.cs = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.ct = zext i1 %i.cr to i8
  %i.cu = or i8 %i.cs, %i.ct
  store i8 %i.cu, ptr %i.g, align 8, !tbaa !310
  %i.cv = trunc i64 %4 to i8                      ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %.pre.i.i26, %.pre9.i.i27
  br i1 %.not.i.i.i.i28, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit25
  store i8 %i.cv, ptr %.pre.i.i26, align 1, !tbaa !309
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i37.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit35

bb.w:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit25
  %i.cy = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.cz = ptrtoint ptr %.pre9.i.i27 to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 7 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775807
  br i1 %i.dc, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i29

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i29: ; preds = %bb.w
  %.sroa.speculated.i.i.i.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dd = add i64 %.sroa.speculated.i.i.i.i.i.i30, %i.db ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.db
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 9223372036854775807)
  %i.dg = select i1 %i.de, i64 9223372036854775807, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i.i31 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i31)
  %i.dh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #24 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db ; 2 uses
  store i8 %i.cv, ptr %i.di, align 1, !tbaa !309
  %i.dj = icmp sgt i64 %i.db, 0
  br i1 %i.dj, label %bb.y, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i32

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.cy, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i32

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i32: ; preds = %bb.y, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i33 = icmp eq ptr %i.cy, null
  br i1 %.not.i17.i.i.i.i.i33, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i34, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i32
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dn) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i34

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i34: ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i32
  store ptr %i.dh, ptr %0, align 8, !tbaa !307
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !306
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg ; 2 uses
  store ptr %i.do, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit35

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit35: ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i34
  %.pre9.i.i37 = phi ptr [ %.pre9.i.i37.pre, %bb.v ], [ %i.do, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i34 ] ; 2 uses
  %.pre.i.i36 = phi ptr [ %i.cx, %bb.v ], [ %i.dk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i34 ] ; 2 uses
  %i.dp = icmp ugt i64 %5, 255
  %i.dq = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.dr = zext i1 %i.dp to i8
  %i.ds = or i8 %i.dq, %i.dr
  store i8 %i.ds, ptr %i.g, align 8, !tbaa !310
  %i.dt = trunc i64 %5 to i8                      ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %.pre.i.i36, %.pre9.i.i37
  br i1 %.not.i.i.i.i38, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit35
  store i8 %i.dt, ptr %.pre.i.i36, align 1, !tbaa !309
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit45

bb.ab:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit35
  %i.dw = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.dx = ptrtoint ptr %.pre9.i.i37 to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 7 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775807
  br i1 %i.ea, label %bb.ac, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i39

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i39: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.eb = add i64 %.sroa.speculated.i.i.i.i.i.i40, %i.dz ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.dz
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 9223372036854775807)
  %i.ee = select i1 %i.ec, i64 9223372036854775807, i64 %i.ed ; 3 uses
  %.not.i.i.i.i.i.i41 = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i41)
  %i.ef = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #24 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dz ; 2 uses
  store i8 %i.dt, ptr %i.eg, align 1, !tbaa !309
  %i.eh = icmp sgt i64 %i.dz, 0
  br i1 %i.eh, label %bb.ad, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i42

bb.ad:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr align 1 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i42

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i42: ; preds = %bb.ad, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %.not.i17.i.i.i.i.i43 = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i.i.i.i43, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i44, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i42
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.el) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i44

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i44: ; preds = %bb.ae, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i42
  store ptr %i.ef, ptr %0, align 8, !tbaa !307
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !306
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store ptr %i.em, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit45

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit45: ; preds = %bb.aa, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i44
  %i.en = trunc i64 %i.f to i32
  ret i32 %i.en
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel28generateCheckHasInstanceInstEPNS_20CheckHasInstanceInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 !guid !624 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel20generateTryStartInstEPNS_12TryStartInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 !guid !625 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.d = select i1 %i.b, ptr null, ptr %i.c       ; 2 uses
  %i.e = icmp eq ptr %2, %i.d
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !307  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.pre9.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !308
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -113, ptr %i.i, align 1, !tbaa !309
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.h, align 8, !tbaa !306
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.m, 9223372036854775807
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.r = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.m
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 9223372036854775807)
  %i.u = select i1 %i.s, i64 9223372036854775807, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m ; 2 uses
  store i8 -113, ptr %i.w, align 1, !tbaa !309
  %i.x = icmp sgt i64 %i.m, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !308
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.v, ptr %i.g, align 8, !tbaa !307
  store ptr %i.y, ptr %i.h, align 8, !tbaa !306
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.ad = trunc i64 %i.m to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef 0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !97
  %.not.i.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.h, !prof !98

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull %i.aj, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.af, align 8, !tbaa !96
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.h
  %i.ak = phi i32 [ %.pre.i.i, %bb.h ], [ %i.ag, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select.i = select i1 %i.b, ptr null, ptr %3
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store i32 %i.ad, ptr %i.an, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %spec.select.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.ao = load i32, ptr %i.af, align 8, !tbaa !96
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel16generateCallInstEPNS_8CallInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 !guid !626 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42
  %i.c = add i8 %i.b, -2
  %i.d = icmp ult i8 %i.c, 107
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !nonnull !94, !align !95
  %i.g = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.f, ptr noundef nonnull %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0) #20 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !42
  %i.k = add i8 %i.j, -2
  %i.l = icmp ult i8 %i.k, 107
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93, !nonnull !94, !align !95
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 2 uses
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
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator8emitCallElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 !guid !627 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !307    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 79, ptr %i.b, align 1, !tbaa !309
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 79, ptr %i.q, align 1, !tbaa !309
  %i.r = icmp sgt i64 %i.f, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %i.s, ptr %i.a, align 8, !tbaa !306
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !310, !range !165, !noundef !94
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !310
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !309
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !306
  %.pre9.i.i5.pre = load ptr, ptr %i.h, align 8, !tbaa !308
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.af = ptrtoint ptr %.pre9.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !309
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
end_hunk_4
