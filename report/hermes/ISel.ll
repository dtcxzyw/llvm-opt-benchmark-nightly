Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ISel?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6hermes3hbc28BytecodeInstructionGenerator16emitThrowIfEmptyEll:bb.a
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
  %.pre9.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  store i8 -105, ptr %i.l, align 1, !tbaa !299
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !296
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.k, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit

bb.e:                                             ; preds = %_ZN6hermes3hbc7HBCISel11encodeValueEPNS_5ValueE.exit
  %i.t = icmp eq i64 %i.p, 9223372036854775807
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.p ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.p
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.p ; 2 uses
  store i8 -105, ptr %i.z, align 1, !tbaa !299
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !298
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ae) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.y, ptr %i.j, align 8, !tbaa !297
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.af, ptr %i.q, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i64 noundef 0)
  %i.ag = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 1) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !87
  %.not.i.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i.i, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit, label %bb.i, !prof !88

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.ai, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit, %bb.i
  %i.an = phi i32 [ %.pre.i.i, %bb.i ], [ %i.aj, %_ZN6hermes3hbc28BytecodeInstructionGenerator21emitSaveGeneratorLongEl.exit ]
  %i.ao = trunc i64 %i.p to i32
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  store i32 %i.ao, ptr %i.ar, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ag, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !86
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !86
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.av = zext i32 %.0.i to i64
  %i.aw = tail call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %i.au, i64 noundef %i.av) ; 0 uses
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
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -119, ptr %i.b, align 1, !tbaa !299
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
  store i8 -119, ptr %i.q, align 1, !tbaa !299
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
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJStrictEqualLongElll:bb.a
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
  %i.av = icmp ugt i64 %3, 255
  %i.aw = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.ax = zext i1 %i.av to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.g, align 8, !tbaa !300
  %i.az = trunc i64 %3 to i8                      ; 2 uses
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
  ret i32 %i.bt
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
  %i.ap = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 4) #20
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
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !89
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store i32 %i.ao, ptr %i.az, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 1
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
  %.pre9.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 -113, ptr %i.bi, align 1, !tbaa !299
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !296
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !296
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
  store i8 -113, ptr %i.bw, align 1, !tbaa !299
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
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !298
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.bv, ptr %i.bg, align 8, !tbaa !297
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !296
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store ptr %i.cc, ptr %i.bn, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.cd = trunc i64 %i.bm to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.bg, i64 noundef 0)
  %i.ce = load i32, ptr %i.ar, align 8, !tbaa !86 ; 2 uses
  %i.cf = load i32, ptr %i.at, align 4, !tbaa !87
  %.not.i.i21 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i.i21, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26, label %bb.q, !prof !88

bb.q:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull %i.cg, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i22 = load i32, ptr %i.ar, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit26: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.q
  %i.ch = phi i32 [ %.pre.i.i22, %bb.q ], [ %i.ce, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %spec.select.i23 = select i1 %i.bd, ptr null, ptr %i.ci
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !89
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  store i32 %i.cd, ptr %i.cl, align 1
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
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 77, ptr %i.b, align 1, !tbaa !299
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
  store i8 77, ptr %i.q, align 1, !tbaa !299
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
  %.pre9.i.i6.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28BytecodeInstructionGenerator20emitJmpUndefinedLongEll:bb.a
bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
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
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.w, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1)
  %i.x = icmp ugt i64 %2, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !300
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !296 ; 3 uses
  %.pre9.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.ab = trunc i64 %2 to i8                      ; 2 uses
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
  ret i32 %i.av
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
  %i.ay = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 5) #20
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
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !89
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  store i32 %i.ax, ptr %i.bi, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx.i, align 1
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
  %.pre9.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.br, %.pre9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 -113, ptr %i.br, align 1, !tbaa !299
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !296
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !296
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
  store i8 -113, ptr %i.cf, align 1, !tbaa !299
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
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !298
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ck) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ce, ptr %i.bp, align 8, !tbaa !297
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !296
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store ptr %i.cl, ptr %i.bw, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i
  %i.cm = trunc i64 %i.bv to i32
  tail call void @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitAddr32El(ptr noundef nonnull align 8 dereferenceable(25) %i.bp, i64 noundef 0)
  %i.cn = load i32, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %i.co = load i32, ptr %i.bc, align 4, !tbaa !87
  %.not.i.i27 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.i27, label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32, label %bb.s, !prof !88

bb.s:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull %i.cp, i64 noundef 0, i64 noundef 16) #20
  %.pre.i.i28 = load i32, ptr %i.ba, align 8, !tbaa !86
  br label %_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32

_ZN6hermes3hbc7HBCISel16registerLongJumpEjPNS_10BasicBlockE.exit32: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit, %bb.s
  %i.cq = phi i32 [ %.pre.i.i28, %bb.s ], [ %i.cn, %_ZN6hermes3hbc28BytecodeInstructionGenerator11emitJmpLongEl.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %spec.select.i29 = select i1 %i.bm, ptr null, ptr %i.cr
  %i.cs = load ptr, ptr %i.az, align 8, !tbaa !89
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct ; 3 uses
  store i32 %i.cm, ptr %i.cu, align 1
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
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 78, ptr %i.b, align 1, !tbaa !299
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
  store i8 78, ptr %i.q, align 1, !tbaa !299
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
  %.pre9.i.i7.pre = load ptr, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc28BytecodeInstructionGenerator16emitSelectObjectElll:bb.a
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
  %.pre9.i.i15.pre = load ptr, ptr %i.h, align 8, !tbaa !298
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
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
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
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk ; 2 uses
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %.pre9.i.i15 = phi ptr [ %.pre9.i.i15.pre, %bb.l ], [ %i.bs, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i14 = phi ptr [ %i.bb, %bb.l ], [ %i.bo, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bt = icmp ugt i64 %3, 255
  %i.bu = load i8, ptr %i.g, align 8, !tbaa !300, !range !155, !noundef !84
  %i.bv = zext i1 %i.bt to i8
  %i.bw = or i8 %i.bu, %i.bv
  store i8 %i.bw, ptr %i.g, align 8, !tbaa !300
  %i.bx = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %.pre.i.i14, %.pre9.i.i15
  br i1 %.not.i.i.i.i16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  store i8 %i.bx, ptr %.pre.i.i14, align 1, !tbaa !299
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !296
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

bb.r:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  %i.ca = load ptr, ptr %0, align 8, !tbaa !297   ; 4 uses
  %i.cb = ptrtoint ptr %.pre9.i.i15 to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 7 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775807
  br i1 %i.ce, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.cf = add i64 %.sroa.speculated.i.i.i.i.i.i18, %i.cd ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.cd
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 9223372036854775807)
  %i.ci = select i1 %i.cg, i64 9223372036854775807, i64 %i.ch ; 3 uses
  %.not.i.i.i.i.i.i19 = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i19)
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #24 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cd ; 2 uses
  store i8 %i.bx, ptr %i.ck, align 1, !tbaa !299
  %i.cl = icmp sgt i64 %i.cd, 0
  br i1 %i.cl, label %bb.t, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20: ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %.not.i17.i.i.i.i.i21 = icmp eq ptr %i.ca, null
  br i1 %.not.i17.i.i.i.i.i21, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cp) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  store ptr %i.cj, ptr %0, align 8, !tbaa !297
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !296
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !298
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22
  %i.cr = trunc i64 %i.f to i32
  ret i32 %i.cr
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
  %.pre9.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %.pre9.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -117, ptr %i.b, align 1, !tbaa !299
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
  store i8 -117, ptr %i.q, align 1, !tbaa !299
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
end_hunk_3
