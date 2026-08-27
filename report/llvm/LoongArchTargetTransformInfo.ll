Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchTargetTransformInfo?download=true
inline.NumInlined: 5020
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt9__find_ifIPKPKN4llvm5ValueEN9__gnu_cxx5__ops10_Iter_predIZNKS0_27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS0_4TypeENS0_19TargetTransformInfo14TargetCostKindENSC_16OperandValueInfoESE_NS0_8ArrayRefIS3_EEPKNS0_11InstructionEEUlS3_E_EEET_SM_SM_T0_St26random_access_iterator_tag:bb.a
  %.not.i.i.i.i69 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i69, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !149
  %i.db = icmp eq i32 %i.da, 179
  %spec.select = select i1 %i.db, ptr %.2, ptr %1
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i35
  %i.dc = getelementptr inbounds nuw i8, ptr %.02989, i64 8
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i42
  %i.dd = getelementptr inbounds nuw i8, ptr %.02989, i64 16
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i49
  %i.de = getelementptr inbounds nuw i8, ptr %.02989, i64 24
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56, %._crit_edge, %bb.p, %bb.q, %bb.r, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68
  %.028 = phi ptr [ %.029.lcssa, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i56 ], [ %1, %._crit_edge ], [ %1, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i68 ], [ %1, %bb.r ], [ %.1, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i63 ], [ %1, %bb.q ], [ %1, %bb.p ], [ %spec.select, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i70 ], [ %i.de, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit106 ], [ %i.dc, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit ], [ %i.dd, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm27TargetTransformInfoImplBase22getArithmeticInstrCostEjPNS2_4TypeENS2_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS2_8ArrayRefIPKNS2_5ValueEEEPKNS2_11InstructionEEUlSC_E_EclIPKSC_EEbT_.exit71.loopexit.split.loop.exit104 ], [ %.02989, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_5ValueEEEDcPT0_.exit.i.i ]
  ret ptr %.028
}

declare void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind writable sret(%"struct.std::pair.373") align 8, ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(8), i16, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm15InstructionCostmLEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
_ZN4llvm15InstructionCost14propagateStateERKS0_.exit.i:
  %i.a = add i64 %1, 2305843009213693952
  %i.b = icmp ult i64 %i.a, 4611686018427387904
  %i.c = shl nsw i64 %1, 2
  %i.d = icmp sgt i64 %1, 0
  %i.e = select i1 %i.d, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i = select i1 %i.b, i64 %i.c, i64 %i.e      ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !583    ; 3 uses
  %i.g = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.f, i64 %.0.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZN4llvm15InstructionCost14propagateStateERKS0_.exit.i
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %.0.i, 0
  br i1 %i.j, label %_ZN4llvm15InstructionCostmLERKS0_.exit, label %.thread.i

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.f, 0
  %i.l = icmp slt i64 %.0.i, 0
  %or.cond.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i, label %_ZN4llvm15InstructionCostmLERKS0_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  br label %_ZN4llvm15InstructionCostmLERKS0_.exit

bb.d:                                             ; preds = %_ZN4llvm15InstructionCost14propagateStateERKS0_.exit.i
  %i.m = extractvalue { i64, i1 } %i.g, 0
  %i.n = sdiv i64 %i.m, 4
  br label %_ZN4llvm15InstructionCostmLERKS0_.exit

_ZN4llvm15InstructionCostmLERKS0_.exit:           ; preds = %bb.b, %bb.c, %.thread.i, %bb.d
  %.0.i1 = phi i64 [ %i.n, %bb.d ], [ -9223372036854775808, %.thread.i ], [ 9223372036854775807, %bb.c ], [ 9223372036854775807, %bb.b ]
  store i64 %.0.i1, ptr %0, align 8, !tbaa !583
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE35filterConstantAndDuplicatedOperandsENS_8ArrayRefIPKNS_5ValueEEENS3_IPNS_4TypeEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.142") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallPtrSet.375", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.a, ptr %5, align 8, !tbaa !714
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 4, ptr %i.b, align 8, !tbaa !715
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !716
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !717
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %0, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.g, align 4, !tbaa !167
  %.idx = shl nuw nsw i64 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not24 = icmp eq i64 %2, 0
  br i1 %.not24, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge
  %.pre28 = load i8, ptr %i.d, align 8, !tbaa !717, !range !127
  %i.i = trunc nuw i8 %.pre28 to i1
  br i1 %i.i, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %5, align 8, !tbaa !714
  call void @free(ptr noundef %i.j) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.a, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.011.026 = phi ptr [ %i.ak, %.critedge ], [ %3, %bb.a ] ; 2 uses
  %.sroa.6.025 = phi ptr [ %i.aj, %.critedge ], [ %1, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.6.025, align 8, !tbaa !175 ; 4 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !176
  %i.m = icmp ult i8 %i.l, 23
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %i.d, align 8, !tbaa !717, !range !127, !noalias !718, !noundef !128
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !714, !noalias !718 ; 2 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !716, !noalias !718 ; 4 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.q, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %.023.i.i, align 8, !tbaa !393, !noalias !718
  %.not15.i.i = icmp eq ptr %i.t, %i.k
  br i1 %.not15.i.i, label %.critedge, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.d
  %i.v = load i32, ptr %i.b, align 8, !tbaa !715, !noalias !718
  %i.w = icmp ult i32 %i.q, %i.v
  br i1 %i.w, label %.critedge32, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge32:                                      ; preds = %._crit_edge.i.i
  %i.x = add nuw i32 %i.q, 1
  store i32 %i.x, ptr %i.c, align 4, !tbaa !716, !noalias !718
  store ptr %i.k, ptr %i.s, align 8, !tbaa !393, !noalias !718
  br label %bb.e

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  %i.y = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull %i.k) #19, !noalias !718
  %i.z = extractvalue { ptr, i8 } %i.y, 1
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.critedge32, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.ab = load ptr, ptr %.sroa.011.026, align 8, !tbaa !138 ; 2 uses
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !166 ; 2 uses
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !167
  %.not.i = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !602

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ab)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !165
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  store ptr %i.ab, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !166
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.f, align 8, !tbaa !166
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %.lr.ph, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.025, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 8
  %.not = icmp eq ptr %i.aj, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindENS_8ArrayRefIiEEPNS_10VectorTypeERiRS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.fr128 = freeze i64 %3                         ; 15 uses
  %i.b = icmp eq i64 %.fr128, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !253  ; 20 uses
  %.idx3.i = shl i64 %.fr128, 2                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx3.i ; 4 uses
  %i.f = lshr i64 %.fr128, 2                      ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %.idx3.i, 9223372036854775792
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %2, i64 %i.g ; 5 uses
  %i.h = and i64 %.fr128, 3
  br i1 %.not.i, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.split

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  switch i32 %1, label %.loopexit [
    i32 7, label %.split.us
    i32 6, label %._crit_edge.i.i.i.i.i.us.peel
  ]

._crit_edge.i.i.i.i.i.us.peel:                    ; preds = %.lr.ph.split.us.split.preheader
  switch i64 %.fr128, label %.split.us [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.us.peel
  %i.j = load i32, ptr %2, align 4, !tbaa !172
  %.not.i.i.i.i.i.us.peel = icmp slt i32 %i.j, %i.d
  br i1 %.not.i.i.i.i.i.us.peel, label %bb.c, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i.us.peel
  %.1.i.i.i.i.i.us.peel = phi ptr [ %2, %._crit_edge.i.i.i.i.i.us.peel ], [ %i.i, %bb.b ] ; 3 uses
  %i.k = load i32, ptr %.1.i.i.i.i.i.us.peel, align 4, !tbaa !172
  %.not36.i.i.i.i.i.us.peel = icmp slt i32 %i.k, %i.d
  br i1 %.not36.i.i.i.i.i.us.peel, label %bb.d, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.us.peel, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i.i.us.peel
  %.2.i.i.i.i.i.us.peel = phi ptr [ %i.l, %bb.d ], [ %2, %._crit_edge.i.i.i.i.i.us.peel ] ; 2 uses
  %i.m = load i32, ptr %.2.i.i.i.i.i.us.peel, align 4, !tbaa !172
  %.not37.i.i.i.i.i.us.peel = icmp slt i32 %i.m, %i.d
  br i1 %.not37.i.i.i.i.i.us.peel, label %.split.us, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel

_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel: ; preds = %bb.e, %bb.c, %bb.b
  %.028.i.i.i.i.i.us.peel = phi ptr [ %.1.i.i.i.i.i.us.peel, %bb.c ], [ %2, %bb.b ], [ %.2.i.i.i.i.i.us.peel, %bb.e ]
  %i.n = icmp eq ptr %i.e, %.028.i.i.i.i.i.us.peel
  br i1 %i.n, label %.split.us, label %.split97.us

.lr.ph.split.split:                               ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i, i64 4
  switch i32 %1, label %.loopexit [
    i32 7, label %.split.us
    i32 6, label %.lr.ph.i.i.i.i.i
  ]

.split.us:                                        ; preds = %.lr.ph.split.split, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit, %bb.t, %._crit_edge.loopexit.i.i.i.i.i, %.lr.ph.split.us.split.preheader, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel, %bb.e, %._crit_edge.i.i.i.i.i.us.peel
  %i.p = trunc i64 %.fr128 to i32                 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst13isReverseMaskENS_8ArrayRefIiEEi(ptr %2, i64 %.fr128, i32 noundef %i.d) #19
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.r = tail call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst18isZeroEltSplatMaskENS_8ArrayRefIiEEi(ptr %2, i64 %.fr128, i32 noundef %i.d) #19
  br i1 %i.r, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.s = ptrtoint ptr %2 to i64                   ; 2 uses
  %7 = add i64 %.idx3.i, %i.s
  %i.t = shl i32 %i.d, 1
  %i.u = add i64 %.fr128, -1                      ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.011.i = phi i1 [ false, %.lr.ph.i.i.i.i.i.i ], [ %.112.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ] ; 3 uses
  %.0.i = phi i32 [ -1, %.lr.ph.i.i.i.i.i.i ], [ %.2.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ] ; 7 uses
  %.sroa.35.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ] ; 3 uses
  %i.v = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ] ; 4 uses
  %i.w = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ] ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !172, !noalias !721 ; 5 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not8.i.i.i.i.i.i.i.i = icmp ne i64 %.sroa.35.0.i.i.i.i.i, %i.u ; 2 uses
  %brmerge.i = select i1 %.not8.i.i.i.i.i.i.i.i, i1 true, i1 %.011.i
  %not..not8.i.i.i.i.i.i.i.i = xor i1 %.not8.i.i.i.i.i.i.i.i, true
  %.011.mux.i = select i1 %not..not8.i.i.i.i.i.i.i.i, i1 true, i1 %.011.i
  br i1 %brmerge.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i, label %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.x, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.z = icmp eq i32 %.0.i, -1
  br i1 %i.z, label %.split10.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split10.i.i.i.i.i.i:                             ; preds = %bb.j
  %.not11.i.i.i.i.i.i = icmp eq i64 %.sroa.35.0.i.i.i.i.i, %i.u
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.j
  %i.aa = icmp eq i32 %.0.i, %i.x
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i, label %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %.split10.i.i.i.i.i.i, %bb.h
  %.112.i = phi i1 [ true, %.split.i.i.i.i.i.i ], [ %.011.mux.i, %bb.h ], [ %.011.i, %.split10.i.i.i.i.i.i ]
  %.2.i = phi i32 [ %.0.i, %.split.i.i.i.i.i.i ], [ %.0.i, %bb.h ], [ %i.x, %.split10.i.i.i.i.i.i ] ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.35.0.i.i.i.i.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.e
  %i.ad = ptrtoint ptr %i.ac to i64
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i, label %bb.g, !llvm.loop !728

_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.split10.i.i.i.i.i.i, %bb.i, %bb.h
  %.1.i = phi i32 [ %.2.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ], [ %.0.i, %bb.h ], [ %i.x, %.split10.i.i.i.i.i.i ], [ %.0.i, %.split.i.i.i.i.i.i ], [ %.0.i, %bb.i ]
  %.ph.i.i.i = phi i64 [ %7, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm16BasicTTIImplBaseINS2_16LoongArchTTIImplEE11isSplatMaskENS2_8ArrayRefIiEEjRiEUlRKT_E_EclINS2_6detail14zip_enumeratorIJNSF_14index_iteratorEPKiEEEEEbS9_.exit.thread2.i.i.i.i.i.i ], [ %i.v, %bb.h ], [ %i.v, %.split10.i.i.i.i.i.i ], [ %i.v, %.split.i.i.i.i.i.i ], [ %i.v, %bb.i ]
  %i.ae = inttoptr i64 %.ph.i.i.i to ptr
  %i.af = icmp eq ptr %i.e, %i.ae
  br i1 %i.af, label %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit.thread, label %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit

_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit.thread: ; preds = %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i
  store i32 %.1.i, ptr %5, align 4, !tbaa !172
  br label %.loopexit

_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit: ; preds = %_ZN4llvm6all_ofINS_6detail5zippyINS1_14zip_enumeratorEJNS1_12index_streamERNS_8ArrayRefIiEEEEEZNS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskES6_jRiEUlRKT_E_EEbOSD_T0_.exit.i
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst22isExtractSubvectorMaskENS_8ArrayRefIiEEiRi(ptr %2, i64 %.fr128, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %5) #19
  br i1 %i.ag, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit
  %i.ah = load i32, ptr %5, align 4, !tbaa !172
  %i.ai = add nsw i32 %i.ah, %i.p
  %.not = icmp sgt i32 %i.ai, %i.d
  br i1 %.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !272
  %i.al = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ak, i32 noundef %i.p) #19
  store ptr %i.al, ptr %6, align 8, !tbaa !492
  br label %.loopexit

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.split.split, %bb.p
  %.053.i.i.i.i.i = phi i64 [ %i.au, %bb.p ], [ %i.f, %.lr.ph.split.split ] ; 2 uses
  %.02952.i.i.i.i.i = phi ptr [ %i.at, %bb.p ], [ %2, %.lr.ph.split.split ] ; 9 uses
  %i.am = load i32, ptr %.02952.i.i.i.i.i, align 4, !tbaa !172
  %.not38.i.i.i.i.i = icmp slt i32 %i.am, %i.d
  br i1 %.not38.i.i.i.i.i, label %bb.m, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !172
  %.not39.i.i.i.i.i = icmp slt i32 %i.ao, %i.d
  br i1 %.not39.i.i.i.i.i, label %bb.n, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !172
  %.not40.i.i.i.i.i = icmp slt i32 %i.aq, %i.d
  br i1 %.not40.i.i.i.i.i, label %bb.o, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit146

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !172
  %.not41.i.i.i.i.i = icmp slt i32 %i.as, %i.d
  br i1 %.not41.i.i.i.i.i, label %bb.p, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit148

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 16
  %i.au = add nsw i64 %.053.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.053.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !729

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.p
  switch i64 %i.h, label %default.unreachable [
    i64 3, label %bb.q
    i64 2, label %bb.r
    i64 1, label %bb.t
    i64 0, label %.split.us
  ]

bb.q:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i
  %i.aw = load i32, ptr %scevgep.i.i.i.i.i, align 4, !tbaa !172
  %.not.i.i.i.i.i = icmp slt i32 %i.aw, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.r, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

bb.r:                                             ; preds = %bb.q, %._crit_edge.loopexit.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %bb.q ] ; 3 uses
  %i.ax = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !172
  %.not36.i.i.i.i.i = icmp slt i32 %i.ax, %i.d
  br i1 %.not36.i.i.i.i.i, label %bb.s, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.s
  %.2.i.i.i.i.i = phi ptr [ %i.ay, %bb.s ], [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.az = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !172
  %.not37.i.i.i.i.i = icmp slt i32 %i.az, %i.d
  br i1 %.not37.i.i.i.i.i, label %.split.us, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 4
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit146: ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 8
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit148: ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 12
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit146, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit148, %bb.q, %bb.r, %bb.t
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.r ], [ %scevgep.i.i.i.i.i, %bb.q ], [ %.2.i.i.i.i.i, %bb.t ], [ %i.bc, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit148 ], [ %i.bb, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit146 ], [ %i.ba, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit ], [ %.02952.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bd = icmp eq ptr %i.e, %.028.i.i.i.i.i
  br i1 %i.bd, label %.split.us, label %.split97.us

default.unreachable:                              ; preds = %._crit_edge.loopexit.i.i.i.i.i
  unreachable

.split97.us:                                      ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_16LoongArchTTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel
  %i.be = trunc i64 %.fr128 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bf = icmp sgt i32 %i.be, 2
  br i1 %i.bf, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.split97.us
  %i.bg = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst21isInsertSubvectorMaskENS_8ArrayRefIiEEiRiS3_(ptr %2, i64 %.fr128, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %5) #19
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bh = load i32, ptr %5, align 4, !tbaa !172
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !172 ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = icmp sgt i32 %i.bj, %i.d
  br i1 %i.bk, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !272
  %i.bn = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.bm, i32 noundef %i.bi) #19
  store ptr %i.bn, ptr %6, align 8, !tbaa !492
  br label %.thread

bb.x:                                             ; preds = %bb.u, %.split97.us
  %i.bo = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst12isSelectMaskENS_8ArrayRefIiEEi(ptr %2, i64 %.fr128, i32 noundef %i.d) #19
  br i1 %i.bo, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst15isTransposeMaskENS_8ArrayRefIiEEi(ptr %2, i64 %.fr128, i32 noundef %i.d) #19
  br i1 %i.bp, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y, %bb.w, %bb.v, %bb.x
  %.0.ph = phi i32 [ 2, %bb.x ], [ 6, %bb.v ], [ 4, %bb.w ], [ 3, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.bq = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst12isSpliceMaskENS_8ArrayRefIiEEiRi(ptr %2, i64 %.fr128, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %spec.select = select i1 %i.bq, i32 8, i32 6
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us.split.preheader, %bb.z, %bb.a, %bb.k, %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit, %.thread, %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit.thread, %bb.l, %.split.us, %bb.f
  %.2 = phi i32 [ 0, %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit.thread ], [ %1, %.lr.ph.split.us.split.preheader ], [ %spec.select, %bb.z ], [ 1, %.split.us ], [ 0, %bb.f ], [ 5, %bb.l ], [ %.0.ph, %.thread ], [ 7, %_ZN4llvm16BasicTTIImplBaseINS_16LoongArchTTIImplEE11isSplatMaskENS_8ArrayRefIiEEjRi.exit ], [ 7, %bb.k ], [ %1, %bb.a ], [ %1, %.lr.ph.split.split ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm27TargetTransformInfoImplBase16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) unnamed_addr #6 comdat align 2 {
bb.a:
  switch i32 %1, label %.thread [
    i32 50, label %bb.b
    i32 49, label %bb.l
    i32 48, label %bb.u
    i32 51, label %bb.ae
    i32 39, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #21 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173, !nonnull !128, !align !174 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !730  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !731  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ashr i64 %i.g, 2                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.l = and i64 %i.g, -4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.g ] ; 9 uses
  %i.m = load i8, ptr %.02946.i.i.i.i.i, align 1, !tbaa !221
  %i.n = zext i8 %i.m to i32
  %i.o = icmp eq i32 %i.a, %i.n
  br i1 %i.o, label %_ZNK4llvm10DataLayout14isLegalIntegerEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !221
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.a, %i.r
  br i1 %i.s, label %_ZNK4llvm10DataLayout14isLegalIntegerEm.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
end_hunk_0
