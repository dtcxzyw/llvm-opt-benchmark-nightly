Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonTargetTransformInfo?download=true
inline.NumInlined: 4800
inline.NumDeleted: 1942
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE:bb.a
_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit: ; preds = %bb.cn, %_ZN4llvm5APIntD2Ev.exit.i
  %.pn.i = phi { i64, i32 } [ %i.zd, %_ZN4llvm5APIntD2Ev.exit.i ], [ { i64 0, i32 1 }, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract12 = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract13 = extractvalue { i64, i32 } %.pn.i, 1
  %i.zi = icmp eq i32 %.fca.1.extract13, 1
  %spec.select1088 = select i1 %i.zi, i32 1, i32 %.sroa.9.01122 ; 2 uses
  %.0.i839 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0858.01123, i64 %.fca.0.extract12) ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.06841124, i64 8 ; 2 uses
  %.not712 = icmp eq ptr %i.zj, %i.yo
  br i1 %.not712, label %_ZN4llvm15InstructionCostpLERKS0_.exit842, label %bb.cn

_ZN4llvm15InstructionCostpLERKS0_.exit842:        ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit, %bb.cm
  %.sroa.9.1 = phi i32 [ 0, %bb.cm ], [ 0, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit ], [ %spec.select1088, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ]
  %.sroa.0858.1 = phi i64 [ 0, %bb.cm ], [ 0, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit ], [ %.0.i839, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  %i.zk = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.zl = load i32, ptr %i.hu, align 8, !tbaa !210
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !26
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !210
  %i.zr = zext i32 %i.zq to i64
  call void @_ZN4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE35filterConstantAndDuplicatedOperandsENS_8ArrayRefIPKNS_5ValueEEENS3_IPNS_4TypeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.97") align 8 %54, ptr %i.zk, i64 %i.zm, ptr %i.zo, i64 %i.zr)
  %i.zs = load ptr, ptr %54, align 8, !tbaa !26
  %i.zt = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !210
  %i.zv = zext i32 %i.zu to i64
  %i.zw = load ptr, ptr %0, align 8, !tbaa !14
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 720
  %i.zy = load ptr, ptr %i.zx, align 8
  %i.zz = call { i64, i32 } %i.zy(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.zs, i64 %i.zv, i32 noundef %2, i8 noundef zeroext 0) #23 ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i32 } %i.zz, 0
  %.fca.1.extract9 = extractvalue { i64, i32 } %i.zz, 1
  %i.aaa = icmp eq i32 %.fca.1.extract9, 1
  %spec.select1089 = select i1 %i.aaa, i32 1, i32 %.sroa.9.1
  %.0.i841 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0858.1, i64 %.fca.0.extract8)
  %i.aab = load ptr, ptr %54, align 8, !tbaa !26  ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.aad = icmp eq ptr %i.aab, %i.aac
  br i1 %i.aad, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit842
  call void @free(ptr noundef %i.aab) #23
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit:   ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit842, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %bb.cu

bb.cu:                                            ; preds = %.critedge718, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit
  %.sroa.9.2 = phi i32 [ 1, %.critedge718 ], [ %spec.select1089, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit ]
  %.sroa.0858.2 = phi i64 [ 0, %.critedge718 ], [ %.0.i841, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !26
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !210
  %i.aai = zext i32 %i.aah to i64
  store i64 %.sroa.0858.2, ptr %56, align 8, !tbaa !195
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 %.sroa.9.2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !196
  call void @_ZN4llvm23IntrinsicCostAttributesC1EjPNS_4TypeENS_8ArrayRefIS2_EENS_13FastMathFlagsEPKNS_13IntrinsicInstENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(144) %55, i32 noundef %i.l, ptr noundef %i.hy, ptr %i.aaf, i64 %i.aai, i32 %.sroa.0.0.copyload.i766, ptr noundef %i.in, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %56) #23
  %i.aaj = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %55, i32 noundef %2) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.aaj, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.aaj, 1
  call void @_ZN4llvm23IntrinsicCostAttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %55) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  br label %bb.cv

bb.cv:                                            ; preds = %bb.bw, %bb.bu, %bb.bs, %_ZN4llvm15InstructionCostpLERKS0_.exit796, %_ZN4llvm15InstructionCostpLERKS0_.exit808, %_ZN4llvm13isPowerOf2_32Ej.exit.thread, %bb.bq, %bb.aq, %bb.bf, %bb.bd, %_ZN4llvm5APIntD2Ev.exit, %bb.ck, %bb.cu, %_ZN4llvm15InstructionCostpLERKS0_.exit827, %bb.cj, %bb.ci, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bm, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.sroa.01031.5 = phi i64 [ %.fca.0.extract, %bb.cu ], [ %.sroa.01031.1, %_ZN4llvm5APIntD2Ev.exit ], [ %.0.i833, %_ZN4llvm15InstructionCostpLERKS0_.exit827 ], [ 4, %bb.bd ], [ 4, %bb.bf ], [ %.fca.0.extract297, %bb.bg ], [ %.fca.0.extract290, %bb.bh ], [ %.fca.0.extract283, %bb.bi ], [ %.fca.0.extract277, %bb.bj ], [ %.fca.0.extract266, %bb.bm ], [ %.fca.0.extract257, %bb.bp ], [ %.fca.0.extract253, %bb.br ], [ 16, %bb.aq ], [ %.fca.0.extract249, %bb.bt ], [ %.0.i809, %_ZN4llvm15InstructionCostpLERKS0_.exit808 ], [ %.fca.0.extract240, %bb.bv ], [ 4, %bb.bs ], [ 4, %bb.bu ], [ %.fca.0.extract222, %bb.bx ], [ %.fca.0.extract215, %bb.by ], [ 4, %bb.bq ], [ %.sroa.01031.3, %bb.ci ], [ %.fca.0.extract93, %bb.cj ], [ %.sroa.01031.0.copyload1049, %bb.ck ], [ %.0.i799, %_ZN4llvm15InstructionCostpLERKS0_.exit796 ], [ %.0.i805, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ], [ 4, %bb.bw ]
  %.sroa.78.5 = phi i32 [ %.fca.1.extract, %bb.cu ], [ %.sroa.78.1, %_ZN4llvm5APIntD2Ev.exit ], [ %.sroa.78.25, %_ZN4llvm15InstructionCostpLERKS0_.exit827 ], [ 0, %bb.bd ], [ 0, %bb.bf ], [ %.fca.1.extract298, %bb.bg ], [ %.fca.1.extract291, %bb.bh ], [ %.fca.1.extract284, %bb.bi ], [ %.fca.1.extract278, %bb.bj ], [ %.fca.1.extract267, %bb.bm ], [ %.fca.1.extract258, %bb.bp ], [ %.fca.1.extract254, %bb.br ], [ 0, %bb.aq ], [ %.fca.1.extract250, %bb.bt ], [ %.sroa.78.15, %_ZN4llvm15InstructionCostpLERKS0_.exit808 ], [ %.fca.1.extract241, %bb.bv ], [ 0, %bb.bs ], [ 0, %bb.bu ], [ %.fca.1.extract223, %bb.bx ], [ %.fca.1.extract216, %bb.by ], [ 0, %bb.bq ], [ %.sroa.78.3, %bb.ci ], [ %.fca.1.extract94, %bb.cj ], [ %.sroa.78.0.copyload1051, %bb.ck ], [ %.sroa.78.11, %_ZN4llvm15InstructionCostpLERKS0_.exit796 ], [ %spec.select1082, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ], [ 0, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.m, %bb.p, %bb.r, %bb.u, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit732.thread, %bb.z, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit739.thread, %bb.ad, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit749.thread, %bb.ai, %bb.al, %bb.b, %bb.a, %bb.am, %bb.cv
  %.sroa.01031.7 = phi i64 [ %.fca.0.extract398, %bb.al ], [ 0, %bb.a ], [ 4, %bb.b ], [ %.fca.0.extract394, %bb.am ], [ %.sroa.01031.5, %bb.cv ], [ %.fca.0.extract506, %bb.i ], [ %.fca.0.extract493, %bb.m ], [ %.fca.0.extract485, %bb.p ], [ %.fca.0.extract481, %bb.r ], [ %.fca.0.extract462, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit732.thread ], [ %.fca.0.extract451, %bb.z ], [ %.fca.0.extract442, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit739.thread ], [ %.fca.0.extract431, %bb.ad ], [ %.fca.0.extract422, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit749.thread ], [ %.fca.0.extract414, %bb.ai ], [ %.fca.0.extract472, %bb.u ]
  %.sroa.78.7 = phi i32 [ %.fca.1.extract399, %bb.al ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.fca.1.extract395, %bb.am ], [ %.sroa.78.5, %bb.cv ], [ %.fca.1.extract507, %bb.i ], [ %.fca.1.extract494, %bb.m ], [ %.fca.1.extract486, %bb.p ], [ %.fca.1.extract482, %bb.r ], [ %.fca.1.extract463, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit732.thread ], [ %.fca.1.extract452, %bb.z ], [ %.fca.1.extract443, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit739.thread ], [ %.fca.1.extract432, %bb.ad ], [ %.fca.1.extract423, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit749.thread ], [ %.fca.1.extract415, %bb.ai ], [ %.fca.1.extract473, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.01031.7, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.78.7, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl25getAddressComputationCostEPNS_4TypeEPNS_15ScalarEvolutionEPKNS_4SCEVENS_19TargetTransformInfo14TargetCostKindE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #7 align 2 {
bb.a:
  ret { i64, i32 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef %5, i64 %6, ptr noundef %7) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 33
  %i.b = icmp eq i32 %5, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 33, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef 1, i64 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract41 = extractvalue { i64, i32 } %i.c, 0
  %.fca.1.extract42 = extractvalue { i64, i32 } %i.c, 1
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 34
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 34, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef 0, i64 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract35 = extractvalue { i64, i32 } %i.e, 0
  %.fca.1.extract36 = extractvalue { i64, i32 } %i.e, 1
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 254
  %spec.select.i = icmp eq i32 %i.h, 18
  br i1 %spec.select.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.i = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  %.fca.0.extract25 = extractvalue { i64, i8 } %i.i, 0
  %i.j = trunc i64 %.fca.0.extract25 to i32       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !23, !align !35
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget12isTypeForHVXEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.l, ptr noundef nonnull %2, i1 noundef zeroext false) #23
  br i1 %i.m, label %bb.h, label %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge

._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !158
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre112 = load i32, ptr %.phi.trans.insert111, align 8 ; 2 uses
  %.pre113 = trunc i32 %.pre112 to i8
  br label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !23, !align !35 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !151  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 9
  br i1 %i.q, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  %trunc.i.i.i = trunc i32 %i.u to i8             ; 2 uses
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i:       ; preds = %bb.i
  %i.v = and i32 %i.u, 253
  %spec.select.i.i = icmp eq i32 %i.v, 4
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i: ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.w = icmp eq i32 %i.p, 9
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableV68FloatAutoHVX, i64 120), align 8, !range !22
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond104 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond104, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101

_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread: ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i, %bb.h
  %i.z = icmp sgt i32 %i.p, 0
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14HexagonAutoHVX, i64 120), align 8, !range !22
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.j, label %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit

bb.j:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.ae = load i8, ptr %i.ad, align 8, !range !22
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, i64 512, i64 1024
  br label %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit

_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit: ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread, %bb.j
  %i.ah = phi i64 [ %i.ag, %bb.j ], [ 32, %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = and i32 %i.aj, %i.j
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit
  %i.am = tail call range(i32 5, 33) i32 @llvm.cttz.i32(i32 %i.ai, i1 true)
  %i.an = lshr i32 %i.j, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  br label %bb.p

bb.l:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit
  %i.aq = lshr exact i64 %i.ah, 3
  %i.ar = tail call range(i64 56, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i8
  %i.at = xor i8 %i.as, 63
  %spec.select = tail call i8 @llvm.umin.i8(i8 %3, i8 %i.at)
  %i.au = add i32 %i.j, -1
  %narrow = add nuw nsw i8 %spec.select, 3
  %i.av = zext nneg i8 %narrow to i32             ; 2 uses
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = add nuw nsw i32 %i.aw, 1
  %i.ay = lshr i32 -1, %i.av
  %i.az = and i32 %i.ay, %i.ax
  %i.ba = mul nuw nsw i32 %i.az, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  br label %bb.p

_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101: ; preds = %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
  %trunc.i.i.pre-phi = phi i8 [ %.pre113, %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge ], [ %trunc.i.i.i, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i ] ; 2 uses
  %i.bd = phi i32 [ %.pre112, %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge ], [ %i.u, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i ]
  %i.be = icmp ult i8 %trunc.i.i.pre-phi, 6
  %switch.shifted = lshr i8 47, %trunc.i.i.pre-phi
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond116 = select i1 %i.be, i1 %switch.lobit, i1 false
  %i.bf = and i32 %i.bd, 253
  %spec.select.i77 = icmp eq i32 %i.bf, 4
  %i.bg = select i1 %or.cond116, i1 true, i1 %spec.select.i77
  %i.bh = select i1 %i.bg, i32 2, i32 0           ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %3, i8 3) ; 2 uses
  %i.bi = icmp ne i32 %i.j, 0
  %i.bj = zext i1 %i.bi to i32                    ; 2 uses
  %i.bk = sub i32 %i.j, %i.bj
  %narrow115 = add nuw nsw i8 %.sroa.speculated, 3
  %i.bl = zext nneg i8 %narrow115 to i32          ; 2 uses
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = add nuw nsw i32 %i.bm, %i.bj
  %i.bo = lshr i32 -1, %i.bl
  %i.bp = and i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = and i8 %3, -2
  %switch = icmp eq i8 %i.bq, 2
  br i1 %switch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101
  %i.br = shl nuw nsw i32 %i.bp, %i.bh
  %i.bs = shl nuw i32 %i.br, 2
  %i.bt = zext i32 %i.bs to i64
  br label %bb.p

bb.n:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101
  %i.bu = xor i8 %.sroa.speculated, 3
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, %i.bh
  %i.bx = mul i32 %i.bw, %i.bp
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 2
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.ca = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %3, i32 noundef %4, i32 noundef 0, i64 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.ca, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.ca, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.c, %bb.l, %bb.k, %bb.o, %bb.e, %bb.b
  %.sroa.098.1 = phi i64 [ %.fca.0.extract41, %bb.b ], [ %.fca.0.extract35, %bb.e ], [ %i.ap, %bb.k ], [ %i.bc, %bb.l ], [ 4, %bb.c ], [ %.fca.0.extract, %bb.o ], [ %i.bt, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract42, %bb.b ], [ %.fca.1.extract36, %bb.e ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.c ], [ %.fca.1.extract, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.098.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.9.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef %5, i64 %6, ptr noundef %7) unnamed_addr #4 comdat align 2 {
bb.a:
  %8 = alloca %"struct.std::pair.203", align 8    ; 7 uses
  %9 = alloca %"class.llvm::ArrayRef.126", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184, !nonnull !23, !align !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185, !nonnull !23, !align !35
  %i.e = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.b, ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.f = extractvalue { i16, ptr } %i.e, 0
  %i.g = extractvalue { i16, ptr } %i.e, 1
  %.not.i.i = icmp eq i16 %i.f, 1
  %i.h = icmp eq ptr %i.g, null
  %.not4.i = select i1 %.not.i.i, i1 %i.h, i1 false
  br i1 %.not4.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !183, !noalias !440, !nonnull !23, !align !35
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !184, !noalias !440, !nonnull !23, !align !35
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !185, !noalias !440, !nonnull !23, !align !35
  %i.l = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.j, ptr noundef nonnull align 8 dereferenceable(912) %i.k, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !440 ; 2 uses
  %i.m = extractvalue { i16, ptr } %i.l, 0
  %i.n = extractvalue { i16, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.sroa.019.0.i = phi i64 [ 4, %bb.b ], [ %.sroa.019.1.i, %bb.i ] ; 5 uses
  %.sroa.025.0.i = phi i16 [ %i.m, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.i ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.24.0.copyload.i, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !440
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !184, !noalias !440, !nonnull !23, !align !35
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.203") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !440
  %i.q = load i8, ptr %8, align 8, !tbaa !191, !noalias !440 ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 9, label %bb.d
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = and i8 %i.q, -5
  %or.cond.i = icmp eq i8 %i.r, 2
  br i1 %or.cond.i, label %bb.f, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.t = icmp ult i64 %i.s, -2305843009213693952
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.u, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.v = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.e ], [ %i.v, %bb.h ], [ %spec.select28.i, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.o, align 8, !tbaa !192, !noalias !440 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !193, !noalias !440 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.w = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.w, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !440
  br label %bb.c, !llvm.loop !1

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.c, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.d
  %.sroa.019.1.lcssa.sink.i = phi i64 [ 0, %bb.d ], [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %bb.c ] ; 5 uses
  %.sink.i = phi i32 [ 1, %bb.d ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ 0, %bb.c ] ; 5 uses
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.d ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !440
  %i.x = icmp eq i32 %1, 33
  %i.y = icmp eq i32 %5, 1
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %0, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(912) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 254
  %spec.select.i47 = icmp eq i32 %i.af, 18
  br i1 %spec.select.i47, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ag = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ac, ptr noundef nonnull %2) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ag, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ag, 1
  %i.ah = add i64 %.fca.0.extract.i, 7
  %i.ai = and i64 %i.ah, -8
  %i.aj = zext i16 %.sroa.025.0.lcssa38.sink.i to i64 ; 2 uses
  %i.ak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.al, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ak, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.am = trunc nuw i8 %.fca.1.extract.i to i1
  %.not.i51 = xor i1 %i.am, true
  %i.an = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  %or.cond.i52 = select i1 %.not.i51, i1 true, i1 %i.an
  %i.ao = icmp ult i64 %i.ai, %.sroa.0.0.copyload.i48
  %.0.i = select i1 %or.cond.i52, i1 %i.ao, i1 false
  br i1 %.0.i, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
end_hunk_0
