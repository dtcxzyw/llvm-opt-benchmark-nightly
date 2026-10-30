Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ISel?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6hermes3hbc28BytecodeInstructionGenerator23emitNewObjectWithParentEll:bb.a
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 4, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i4.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i4 = phi ptr [ %.pre9.i.i4.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i3, %.pre9.i.i4
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i3, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
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
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bl, ptr %0, align 8, !tbaa !297
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !296
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bt = trunc i64 %i.f to i32
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel22generateAllocArrayInstEPNS_14AllocArrayInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %i.d = add i8 %i.c, -2
  %i.e = icmp ult i8 %i.d, 107
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.h = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.g, ptr noundef nonnull %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #20
  %i.k = add i32 %i.j, -1                         ; 3 uses
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !307 ; 3 uses
  %3 = fcmp uge double %i.n, 0.000000e+00
  %4 = fcmp ole double %i.n, f0x41EFFFFFFFE00000
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %3)
  %i.o = fptoui double %i.n to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 65535) ; 3 uses
  %i.p = icmp eq i32 %i.k, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.s = zext i32 %.0.i to i64
  %i.t = zext nneg i32 %.sroa.speculated to i64
  %i.u = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator12emitNewArrayEll(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i64 noundef %i.s, i64 noundef %i.t) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !308, !nonnull !84, !align !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !310
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 912
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionESt4pairIjjENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = and i64 %.sroa.0.0.copyload.i, 4294901760
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !108 ; 2 uses
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !32
  %i.ae = add i8 %i.ad, -2
  %i.af = icmp ult i8 %i.ae, 107                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.ai = call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ah, ptr noundef nonnull %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit19

bb.h:                                             ; preds = %bb.f
  %i.aj = call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit19

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit19: ; preds = %bb.g, %bb.h
  %.0.i18 = phi i32 [ %i.ai, %bb.g ], [ %i.aj, %bb.h ]
  %i.ak = zext i32 %.0.i18 to i64
  %i.al = zext nneg i32 %.sroa.speculated to i64
  %i.am = zext i32 %i.k to i64
  %i.an = and i64 %.sroa.0.0.copyload.i, 65535
  %i.ao = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator22emitNewArrayWithBufferEllll(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.an) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.ar = call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.aq, ptr noundef nonnull %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit22

bb.k:                                             ; preds = %bb.i
  %i.as = call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit22

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit22: ; preds = %bb.j, %bb.k
  %.0.i21 = phi i32 [ %i.ar, %bb.j ], [ %i.as, %bb.k ]
  %i.at = zext i32 %.0.i21 to i64
  %i.au = zext nneg i32 %.sroa.speculated to i64
  %i.av = zext i32 %i.k to i64
  %i.aw = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ax = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator26emitNewArrayWithBufferLongEllll(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, i64 noundef %i.at, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %i.aw) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit19, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit22, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator12emitNewArrayEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 7, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
  %i.ap = icmp sgt i64 %i.ah, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28BytecodeInstructionGenerator26emitCreateClosureLongIndexElll:bb.a
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 101, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i5.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i5 = phi ptr [ %.pre9.i.i5.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pre.i.i4, %.pre9.i.i5
  br i1 %.not.i.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i4, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
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
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bl, ptr %0, align 8, !tbaa !297
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !296
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bt = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %3)
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel36generateHBCAllocObjectFromBufferInstEPNS_28HBCAllocObjectFromBufferInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %i.d = add i8 %i.c, -2
  %i.e = icmp ult i8 %i.d, 107
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.h = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.g, ptr noundef nonnull %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.b) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #20
  %i.k = add i32 %i.j, -1
  %i.l = lshr i32 %i.k, 1
  %i.m = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load double, ptr %i.n, align 8, !tbaa !307 ; 3 uses
  %3 = fcmp uge double %i.o, 0.000000e+00
  %4 = fcmp ole double %i.o, f0x41EFFFFFFFE00000
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %3)
  %i.p = fptoui double %i.o to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.p, i32 65535)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !308, !nonnull !84, !align !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !310
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 912
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionESt4pairIjjENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %i.x = and i64 %.sroa.0.0.copyload.i, -281470681808896
  %or.cond = icmp eq i64 %i.x, 0
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.z = zext i32 %.0.i to i64                    ; 2 uses
  %i.aa = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %i.ab = zext nneg i32 %i.l to i64               ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.ac = and i64 %.sroa.0.0.copyload.i, 65535
  %i.ad = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator23emitNewObjectWithBufferElllll(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ac, i64 noundef %.sroa.6.0.extract.shift) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.ae = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.af = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator27emitNewObjectWithBufferLongElllll(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ae, i64 noundef %.sroa.6.0.extract.shift) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator23emitNewObjectWithBufferElllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 1, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.av = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt16El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %2)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt16El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %3)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt16El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %4)
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt16El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %5)
  ret i32 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator27emitNewObjectWithBufferLongElllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28BytecodeInstructionGenerator9emitCall4Ellllll:bb.a
bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.cy, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i33

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i33: ; preds = %bb.y, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i34 = icmp eq ptr %i.cy, null
  br i1 %.not.i17.i.i.i.i.i34, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i35, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i33
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dn) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i35

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i35: ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i33
  store ptr %i.dh, ptr %0, align 8, !tbaa !297
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !296
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg ; 2 uses
  store ptr %i.do, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit36

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit36: ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i35
  %.pre9.i.i38 = phi ptr [ %.pre9.i.i38.pre, %bb.v ], [ %i.do, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i35 ] ; 2 uses
  %.pre.i.i37 = phi ptr [ %i.cx, %bb.v ], [ %i.dk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i35 ] ; 2 uses
  %i.dp = icmp ugt i64 %5, 255
  %i.dq = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.dr = zext i1 %i.dp to i8
  %i.ds = or i8 %i.dq, %i.dr
  store i8 %i.ds, ptr %i.g, align 8, !tbaa !300
  %i.dt = trunc i64 %5 to i8                      ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %.pre.i.i37, %.pre9.i.i38
  br i1 %.not.i.i.i.i39, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit36
  store i8 %i.dt, ptr %.pre.i.i37, align 1, !tbaa !299
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 2 uses
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i48.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit46

bb.ab:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit36
  %i.dw = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.dx = ptrtoint ptr %.pre9.i.i38 to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 7 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775807
  br i1 %i.ea, label %bb.ac, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i40

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i40: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i.i.i41 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.eb = add i64 %.sroa.speculated.i.i.i.i.i.i41, %i.dz ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.dz
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 9223372036854775807)
  %i.ee = select i1 %i.ec, i64 9223372036854775807, i64 %i.ed ; 3 uses
  %.not.i.i.i.i.i.i42 = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i42)
  %i.ef = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #24 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dz ; 2 uses
  store i8 %i.dt, ptr %i.eg, align 1, !tbaa !299
  %i.eh = icmp sgt i64 %i.dz, 0
  br i1 %i.eh, label %bb.ad, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i43

bb.ad:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr align 1 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i43

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i43: ; preds = %bb.ad, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i44 = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i.i.i.i44, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i45, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i43
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.el) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i45

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i45: ; preds = %bb.ae, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i43
  store ptr %i.ef, ptr %0, align 8, !tbaa !297
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !296
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee ; 2 uses
  store ptr %i.em, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit46

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit46: ; preds = %bb.aa, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i45
  %.pre9.i.i48 = phi ptr [ %.pre9.i.i48.pre, %bb.aa ], [ %i.em, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i45 ] ; 2 uses
  %.pre.i.i47 = phi ptr [ %i.dv, %bb.aa ], [ %i.ei, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i45 ] ; 2 uses
  %i.en = icmp ugt i64 %6, 255
  %i.eo = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ep = zext i1 %i.en to i8
  %i.eq = or i8 %i.eo, %i.ep
  store i8 %i.eq, ptr %i.g, align 8, !tbaa !300
  %i.er = trunc i64 %6 to i8                      ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %.pre.i.i47, %.pre9.i.i48
  br i1 %.not.i.i.i.i49, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit46
  store i8 %i.er, ptr %.pre.i.i47, align 1, !tbaa !299
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit56

bb.ag:                                            ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit46
  %i.eu = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.ev = ptrtoint ptr %.pre9.i.i48 to i64
  %i.ew = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew                    ; 7 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775807
  br i1 %i.ey, label %bb.ah, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i50

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i50: ; preds = %bb.ag
  %.sroa.speculated.i.i.i.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ez = add i64 %.sroa.speculated.i.i.i.i.i.i51, %i.ex ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ex
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 9223372036854775807)
  %i.fc = select i1 %i.fa, i64 9223372036854775807, i64 %i.fb ; 3 uses
  %.not.i.i.i.i.i.i52 = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i52)
  %i.fd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #24 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ex ; 2 uses
  store i8 %i.er, ptr %i.fe, align 1, !tbaa !299
  %i.ff = icmp sgt i64 %i.ex, 0
  br i1 %i.ff, label %bb.ai, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i53

bb.ai:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr align 1 %i.eu, i64 %i.ex, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i53

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i53: ; preds = %bb.ai, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %.not.i17.i.i.i.i.i54 = icmp eq ptr %i.eu, null
  br i1 %.not.i17.i.i.i.i.i54, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i55, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i53
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fj) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i55

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i55: ; preds = %bb.aj, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i53
  store ptr %i.fd, ptr %0, align 8, !tbaa !297
  store ptr %i.fg, ptr %i.a, align 8, !tbaa !296
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit56

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit56: ; preds = %bb.af, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i55
  %i.fl = trunc i64 %i.f to i32
  ret i32 %i.fl
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes3hbc7HBCISel21generateConstructInstEPNS_13ConstructInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #8 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel23generateCallBuiltinInstEPNS_15CallBuiltinInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
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
  %i.i = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #20
  %i.j = add i32 %i.i, -2
  %i.k = icmp ult i32 %i.j, 256
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108  ; 2 uses
  %i.n = zext i32 %.0.i to i64                    ; 2 uses
  %i.o = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load double, ptr %i.p, align 8, !tbaa !307 ; 3 uses
  %i.r = fcmp uge double %i.q, f0xC1E0000000000000
  %3 = fcmp ole double %i.q, f0x41DFFFFFFFC00000
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.assume(i1 %i.r)
  %i.s = fptosi double %i.q to i32
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #20
  %i.w = add i32 %i.v, -2
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.y = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitCallBuiltinElll(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i64 noundef %i.n, i64 noundef %i.u, i64 noundef %i.x) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.z = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitCallBuiltinLongElll(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i64 noundef %i.n, i64 noundef %i.u, i64 noundef %i.x) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitCallBuiltinElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 89, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 89, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i5.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i5 = phi ptr [ %.pre9.i.i5.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pre.i.i4, %.pre9.i.i5
  br i1 %.not.i.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i4, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i14.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc28BytecodeInstructionGenerator19emitCallBuiltinLongElll:bb.a
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f ; 2 uses
  store i8 90, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i5.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i5 = phi ptr [ %.pre9.i.i5.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pre.i.i4, %.pre9.i.i5
  br i1 %.not.i.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i4, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
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
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bl, ptr %0, align 8, !tbaa !297
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !296
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bt = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %3)
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel29generateGetBuiltinClosureInstEPNS_21GetBuiltinClosureInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
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
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = zext i32 %.0.i to i64
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !307 ; 3 uses
  %i.o = fcmp uge double %i.n, f0xC1E0000000000000
  %3 = fcmp ole double %i.n, f0x41DFFFFFFFC00000
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = fptosi double %i.n to i32
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator21emitGetBuiltinClosureEll(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i64 noundef %i.k, i64 noundef %i.r) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator21emitGetBuiltinClosureEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 91, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 91, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i4.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i4 = phi ptr [ %.pre9.i.i4.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i3, %.pre9.i.i4
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i3, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
  %i.bn = icmp sgt i64 %i.bf, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.p

end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc28BytecodeInstructionGenerator24emitLoadFromEnvironmentLElll:bb.a
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i5 = phi ptr [ %.pre9.i.i5.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pre.i.i4, %.pre9.i.i5
  br i1 %.not.i.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i4, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
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
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bl, ptr %0, align 8, !tbaa !297
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !296
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bt = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt16El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %3)
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel24generateHBCLoadConstInstEPNS_16HBCLoadConstInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::optional", align 16    ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_string_ostream", align 8 ; 8 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.hermes::bigint::ParsedBigInt", align 16 ; 4 uses
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
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 10 uses
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 5 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  switch i8 %i.j, label %bb.ad [
    i8 111, label %bb.d
    i8 112, label %bb.e
    i8 113, label %bb.f
    i8 117, label %bb.g
    i8 114, label %bb.j
    i8 115, label %bb.s
    i8 116, label %bb.aa
  ]

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = zext i32 %.0.i to i64
  %i.n = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator18emitLoadConstEmptyEl(ptr noundef nonnull align 8 dereferenceable(25) %i.l, i64 noundef %i.m) ; 0 uses
  br label %bb.ae

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = zext i32 %.0.i to i64
  %i.r = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator22emitLoadConstUndefinedEl(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i64 noundef %i.q) ; 0 uses
  br label %bb.ae

bb.f:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108
  %i.u = zext i32 %.0.i to i64
  %i.v = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator17emitLoadConstNullEl(ptr noundef nonnull align 8 dereferenceable(25) %i.t, i64 noundef %i.u) ; 0 uses
  br label %bb.ae

bb.g:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.x = load i8, ptr %i.w, align 8, !tbaa !295, !range !155, !noundef !84
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !108 ; 2 uses
  %i.ab = zext i32 %.0.i to i64                   ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator17emitLoadConstTrueEl(ptr noundef nonnull align 8 dereferenceable(25) %i.aa, i64 noundef %i.ab) ; 0 uses
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator18emitLoadConstFalseEl(ptr noundef nonnull align 8 dereferenceable(25) %i.aa, i64 noundef %i.ab) ; 0 uses
  br label %bb.ae

bb.j:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !307 ; 11 uses
  %i.ag = fcmp oeq double %i.af, 0.000000e+00
  %i.ah = bitcast double %i.af to i64             ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  %i.aj = and i1 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  %i.am = zext i32 %.0.i to i64
  %i.an = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator17emitLoadConstZeroEl(ptr noundef nonnull align 8 dereferenceable(25) %i.al, i64 noundef %i.am) ; 0 uses
  br label %bb.ae

bb.l:                                             ; preds = %bb.j
  %9 = fcmp olt double %i.af, 0.000000e+00
  %10 = fcmp ugt double %i.af, 2.550000e+02
  %or.cond1.i.i = or i1 %10, %9
  br i1 %or.cond1.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = fptoui double %i.af to i8               ; 3 uses
  %i.ap = uitofp i8 %i.ao to double
  %i.aq = fcmp oeq double %i.af, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i8 %i.ao, 0
  %i.ar = icmp slt i64 %i.ah, 0
  %or.cond.i = and i1 %.not.i.i, %i.ar
  br i1 %or.cond.i, label %bb.o, label %_ZNK6hermes13LiteralNumber7asUInt8Ev.exit

_ZNK6hermes13LiteralNumber7asUInt8Ev.exit:        ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !108
  %i.au = zext i32 %.0.i to i64
  %i.av = zext i8 %i.ao to i64
  %i.aw = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator18emitLoadConstUInt8Ell(ptr noundef nonnull align 8 dereferenceable(25) %i.at, i64 noundef %i.au, i64 noundef %i.av) ; 0 uses
  br label %bb.ae

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.ax = fcmp olt double %i.af, f0xC1E0000000000000
  %11 = fcmp ugt double %i.af, f0x41DFFFFFFFC00000
  %or.cond1.i.i39 = or i1 %11, %i.ax
  br i1 %or.cond1.i.i39, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = fptosi double %i.af to i32              ; 3 uses
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fcmp oeq double %i.af, %i.az
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not.i.i41 = icmp eq i32 %i.ay, 0
  %i.bb = icmp slt i64 %i.ah, 0
  %or.cond.i42 = and i1 %.not.i.i41, %i.bb
  br i1 %or.cond.i42, label %bb.r, label %_ZNK6hermes13LiteralNumber20isInt32RepresentibleEv.exit

_ZNK6hermes13LiteralNumber20isInt32RepresentibleEv.exit: ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108
  %i.be = zext i32 %.0.i to i64
  %i.bf = sext i32 %i.ay to i64
  %i.bg = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator16emitLoadConstIntEll(ptr noundef nonnull align 8 dereferenceable(25) %i.bd, i64 noundef %i.be, i64 noundef %i.bf) ; 0 uses
  br label %bb.ae

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.bj = zext i32 %.0.i to i64
  %12 = fcmp uno double %i.af, 0.000000e+00
  %.sink.i = select i1 %12, i64 -2251799813685248, i64 %i.ah, !prof !151
  %i.bk = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitLoadConstDoubleEll(ptr noundef nonnull align 8 dereferenceable(25) %i.bi, i64 noundef %i.bj, i64 noundef %.sink.i) ; 0 uses
  br label %bb.ae

bb.s:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !443 ; 2 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !252
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !253
  call void @_ZN6hermes6bigint12ParsedBigInt28parsedBigIntFromNumericValueEN4llvh9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr %.sroa.06.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef null) #20
  %i.bn = load ptr, ptr %3, align 16, !tbaa !297  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !296
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = call { ptr, i64 } @_ZN6hermes6bigint17dropExtraSignBitsEN4llvh8ArrayRefIhEE(ptr %i.bn, i64 %i.bs) #20
  %i.bu = extractvalue { ptr, i64 } %i.bt, 1
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = icmp ugt i32 %i.bv, 8192
  br i1 %i.bw, label %_ZN4llvhplERKNS_5TwineES2_.exit50, label %bb.t

_ZN4llvhplERKNS_5TwineES2_.exit50:                ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bx, ptr %4, align 8, !tbaa !444
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !318
  store i8 0, ptr %i.bx, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.bz, align 8, !tbaa !447
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !320
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %4, ptr %i.cb, align 8, !tbaa !449
  %i.cc = load ptr, ptr %3, align 16, !tbaa !297  ; 2 uses
  %i.cd = load ptr, ptr %i.bo, align 8, !tbaa !296
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = call { ptr, i64 } @_ZN6hermes6bigint17dropExtraSignBitsEN4llvh8ArrayRefIhEE(ptr %i.cc, i64 %i.cg) #20
  %i.ci = extractvalue { ptr, i64 } %i.ch, 1
  %i.cj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %5, i64 noundef %i.ci) #20 ; 0 uses
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ck = load ptr, ptr %0, align 8, !tbaa !135
  %i.cl = call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.ck) #20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 160
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !254, !nonnull !84, !align !85
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i = load ptr, ptr %i.co, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr @.str.2, ptr %7, align 8, !tbaa !299, !alias.scope !450
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.cp, align 8, !tbaa !299, !alias.scope !450
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 3, ptr %i.cq, align 8, !tbaa !315, !alias.scope !450
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 4, ptr %i.cr, align 1, !tbaa !314, !alias.scope !450
  store ptr %7, ptr %6, align 8, !tbaa !299, !alias.scope !451
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.3, ptr %i.cs, align 8, !tbaa !299, !alias.scope !451
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 2, ptr %i.ct, align 8, !tbaa !315, !alias.scope !451
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 3, ptr %i.cu, align 1, !tbaa !314, !alias.scope !451
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cn, i32 noundef 1, ptr %.sroa.0.0.copyload.i, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 4, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cv = load ptr, ptr %4, align 8, !tbaa !321   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bx
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit50
  %i.cx = load i64, ptr %i.bx, align 8, !tbaa !299
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !108
  %i.db = load <2 x ptr>, ptr %3, align 16, !tbaa !252
  store <2 x ptr> %i.db, ptr %8, align 16, !tbaa !252
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !298
  store ptr %i.de, ptr %i.dc, align 16, !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.df = call noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator9addBigIntENS_6bigint12ParsedBigIntE(ptr noundef nonnull align 8 dereferenceable(200) %i.da, ptr noundef nonnull %8) #20 ; 2 uses
  %i.dg = load ptr, ptr %8, align 16, !tbaa !297  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = load ptr, ptr %i.dc, align 16, !tbaa !298
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #22
  br label %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit

_ZN6hermes6bigint12ParsedBigIntD2Ev.exit:         ; preds = %bb.t, %bb.u
  %i.dl = icmp ult i32 %i.df, 65536
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !108 ; 2 uses
  %i.dn = zext i32 %.0.i to i64                   ; 2 uses
  %i.do = zext i32 %i.df to i64                   ; 2 uses
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit
  %i.dp = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitLoadConstBigIntEll(ptr noundef nonnull align 8 dereferenceable(25) %i.dm, i64 noundef %i.dn, i64 noundef %i.do) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit
  %i.dq = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator28emitLoadConstBigIntLongIndexEll(ptr noundef nonnull align 8 dereferenceable(25) %i.dm, i64 noundef %i.dn, i64 noundef %i.do) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !453, !range !155, !noundef !84
  %i.dt = trunc nuw i8 %i.ds to i1
  store i8 0, ptr %i.dr, align 8, !tbaa !453
  br i1 %i.dt, label %bb.y, label %_ZNSt14_Optional_baseIN6hermes6bigint12ParsedBigIntELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %3, align 16, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6hermes6bigint12ParsedBigIntELb0ELb0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = load ptr, ptr %i.dd, align 16, !tbaa !298
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #22
  br label %_ZNSt14_Optional_baseIN6hermes6bigint12ParsedBigIntELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6hermes6bigint12ParsedBigIntELb0ELb0EED2Ev.exit: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ae

bb.aa:                                            ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !108
  %i.eb = tail call noundef i32 @_ZNK6hermes3hbc25BytecodeFunctionGenerator11getStringIDEPNS_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.ea, ptr noundef nonnull %i.i) #20 ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 65536
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !108 ; 2 uses
  %i.ee = zext i32 %.0.i to i64                   ; 2 uses
  %i.ef = zext i32 %i.eb to i64                   ; 2 uses
  br i1 %i.ec, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eg = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitLoadConstStringEll(ptr noundef nonnull align 8 dereferenceable(25) %i.ed, i64 noundef %i.ee, i64 noundef %i.ef) ; 0 uses
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.eh = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator28emitLoadConstStringLongIndexEll(ptr noundef nonnull align 8 dereferenceable(25) %i.ed, i64 noundef %i.ee, i64 noundef %i.ef) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.k, %_ZNK6hermes13LiteralNumber20isInt32RepresentibleEv.exit, %bb.r, %_ZNK6hermes13LiteralNumber7asUInt8Ev.exit, %bb.h, %bb.i, %_ZNSt14_Optional_baseIN6hermes6bigint12ParsedBigIntELb0ELb0EED2Ev.exit, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator18emitLoadConstEmptyEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 117, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc28BytecodeInstructionGenerator19emitLoadConstStringEll:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.av = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt16El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %2)
  ret i32 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator28emitLoadConstStringLongIndexEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 116, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 116, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.av = trunc i64 %i.f to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitUInt32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %2)
  ret i32 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel24generateHBCLoadParamInstEPNS_16HBCLoadParamInstEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
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
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !307 ; 3 uses
  %3 = fcmp uge double %i.k, 0.000000e+00
  %4 = fcmp ole double %i.k, f0x41EFFFFFFFE00000
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %3)
  %i.l = fptoui double %i.k to i32                ; 2 uses
  %i.m = icmp ult i32 %i.l, 256
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %i.p = zext i32 %.0.i to i64                    ; 2 uses
  %i.q = zext i32 %i.l to i64                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.r = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator13emitLoadParamEll(ptr noundef nonnull align 8 dereferenceable(25) %i.o, i64 noundef %i.p, i64 noundef %i.q) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.s = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator17emitLoadParamLongEll(ptr noundef nonnull align 8 dereferenceable(25) %i.o, i64 noundef %i.p, i64 noundef %i.q) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator13emitLoadParamEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 108, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 108, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i4.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i4 = phi ptr [ %.pre9.i.i4.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i3, %.pre9.i.i4
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i3, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
  %i.bn = icmp sgt i64 %i.bf, 0
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc28BytecodeInstructionGenerator17emitIteratorCloseEll:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  store i8 -115, ptr %i.q, align 1, !tbaa !299
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
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %i.s, ptr %i.a, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.i.i.pre, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.j, %bb.b ], [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre9.i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !299
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i4.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.ab, ptr %i.ao, align 1, !tbaa !299
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
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !297
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !296
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.pre9.i.i4 = phi ptr [ %.pre9.i.i4.pre, %bb.g ], [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ad, %bb.g ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.av = icmp ugt i64 %2, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i3, %.pre9.i.i4
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.az, ptr %.pre.i.i3, align 1, !tbaa !299
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

bb.m:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
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
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !299
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
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bl, ptr %0, align 8, !tbaa !297
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !296
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bt = trunc i64 %i.f to i32
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc7HBCISel21generateSwitchImmInstEPNS_13SwitchImmInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !125
  %i.b = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !307 ; 3 uses
  %3 = fcmp uge double %i.d, 0.000000e+00
  %4 = fcmp ole double %i.d, f0x41EFFFFFFFE00000
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %3)
  %i.e = fptoui double %i.d to i32                ; 3 uses
  %i.f = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 3) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !307 ; 3 uses
  %5 = fcmp uge double %i.h, 0.000000e+00
  %6 = fcmp ole double %i.h, f0x41EFFFFFFFE00000
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %5)
  %i.i = fptoui double %i.h to i32                ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit, label %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  store ptr null, ptr %i.l, align 8, !tbaa !100
  %i.m = add nsw i64 %i.j, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit, label %_ZSt6fill_nIPPN6hermes10BasicBlockEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i25.i

_ZSt6fill_nIPPN6hermes10BasicBlockEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i25.i: ; preds = %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.idx.i.i.i.i.i26.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i26.i, i1 false), !tbaa !100
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZSt6fill_nIPPN6hermes10BasicBlockEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i25.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit
  %.sroa.022.0 = phi ptr [ %i.l, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit ], [ null, %bb.a ] ; 8 uses
  %.sroa.12.0 = phi ptr [ %i.p, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_default_appendEm.exit ], [ null, %bb.a ] ; 2 uses
  %i.q = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #20
  %i.r = and i32 %i.q, -2
  %.not38 = icmp eq i32 %i.r, 4
  br i1 %.not38, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit
  br i1 %.not, label %._crit_edge, label %.lr.ph37

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit, %.lr.ph
  %.01635 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE6resizeEm.exit ] ; 2 uses
  %i.s = shl nuw i32 %.01635, 1                   ; 2 uses
  %i.t = add i32 %i.s, 4
  %i.u = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef %i.t) #20
  %i.v = add i32 %i.s, 5
  %i.w = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef %i.v) #20 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.z = select i1 %i.x, ptr null, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !307 ; 3 uses
  %7 = fcmp uge double %i.ab, 0.000000e+00
  %8 = fcmp ole double %i.ab, f0x41EFFFFFFFE00000
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.assume(i1 %7)
  %i.ac = fptoui double %i.ab to i32
  %i.ad = sub i32 %i.ac, %i.e
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %i.ae
  store ptr %i.z, ptr %i.af, align 8, !tbaa !100
  %i.ag = add nuw nsw i32 %.01635, 1              ; 2 uses
  %i.ah = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #20
  %i.ai = add i32 %i.ah, -4
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = icmp samesign ult i32 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.preheader, !llvm.loop !456

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %i.al = add i32 %i.e, -1
  %i.am = add i32 %i.al, %i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108
  %i.ap = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #20 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !32
  %i.ar = add i8 %i.aq, -2
  %i.as = icmp ult i8 %i.ar, 107
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83, !nonnull !84, !align !85
  %i.av = tail call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.au, ptr noundef nonnull %i.ap) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.aw = tail call noundef i32 @_ZNK6hermes8Variable22getIndexInVariableListEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ap) #20
  br label %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit

_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.av, %bb.b ], [ %i.aw, %bb.c ]
  %i.ax = zext i32 %.0.i to i64
  %i.ay = zext i32 %i.e to i64
  %i.az = zext i32 %i.am to i64
  %i.ba = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator13emitSwitchImmElllll(ptr noundef nonnull align 8 dereferenceable(25) %i.ao, i64 noundef %i.ax, i64 noundef 0, i64 noundef 0, i64 noundef %i.ay, i64 noundef %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !86 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !87
  %.not.i.i17 = icmp ult i32 %i.bd, %i.bf
  br i1 %.not.i.i17, label %_ZN6hermes3hbc7HBCISel17registerSwitchImmEjPNS_13SwitchImmInstE.exit, label %bb.d, !prof !88

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull %i.bg, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.bc, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel17registerSwitchImmEjPNS_13SwitchImmInstE.exit

_ZN6hermes3hbc7HBCISel17registerSwitchImmEjPNS_13SwitchImmInstE.exit: ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit, %bb.d
  %i.bh = phi i32 [ %.pre.i.i, %bb.d ], [ %i.bd, %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !89
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  store i32 %i.ba, ptr %i.bl, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 6, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bi, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.bm = load i32, ptr %i.bc, align 8, !tbaa !86
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bc, align 8, !tbaa !86
  %i.bo = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -16
  %i.br = select i1 %i.bp, ptr null, ptr %i.bq
  %i.bs = ptrtoint ptr %.sroa.12.0 to i64
  %i.bt = ptrtoint ptr %.sroa.022.0 to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.12.0, %.sroa.022.0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN6hermes3hbc7HBCISel17registerSwitchImmEjPNS_13SwitchImmInstE.exit
  %i.bv = getelementptr inbounds i8, ptr null, i64 %i.bu
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel17registerSwitchImmEjPNS_13SwitchImmInstE.exit
  %i.bw = icmp ugt i64 %i.bu, 9223372036854775800
  br i1 %i.bw, label %bb.f, label %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i, !prof !151

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.e
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bu, 8
  br i1 %i.bz, label %bb.g, label %bb.h, !prof !458

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %.sroa.022.0, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EEC2EmRKS3_.exit.i
  %i.ca = icmp eq i64 %i.bu, 8
  br i1 %i.ca, label %bb.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %.sroa.022.0, align 8, !tbaa !100
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !100
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit: ; preds = %.thread, %bb.g, %bb.h, %bb.i
  %i.cc = phi ptr [ %i.by, %bb.g ], [ %i.by, %bb.h ], [ %i.by, %bb.i ], [ %i.bv, %.thread ] ; 2 uses
  %i.cd = phi ptr [ %i.bx, %bb.g ], [ %i.bx, %bb.h ], [ %i.bx, %bb.i ], [ null, %.thread ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 0, ptr %i.cg, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.br, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !147 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !145
  store ptr %i.cd, ptr %i.ch, align 8, !tbaa !147
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !150
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !145
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.co) #22
  br label %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit

_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit:   ; preds = %bb.j, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EEC2ERKS4_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.022.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.0, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EED2Ev.exit: ; preds = %_ZN6hermes3hbc7HBCISel13SwitchImmInfoD2Ev.exit, %bb.k
  ret void

.lr.ph37:                                         ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0, i64 %indvars.iv ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !100
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph37
  %i.cs = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %i.cv = select i1 %i.ct, ptr null, ptr %i.cu
  store ptr %i.cv, ptr %i.cp, align 8, !tbaa !100
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph37, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph37, !llvm.loop !457
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator13emitSwitchImmElllll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -123, ptr %i.b, align 1, !tbaa !299
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !296
  %.pre9.i.i.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
end_hunk_6
