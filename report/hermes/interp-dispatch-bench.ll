inline.NumInlined: 1651
inline.NumDeleted: 1097
begin_hunk_0_@_ZN6hermes3hbc23BytecodeModuleGeneratorD2Ev:bb.a
  br i1 %i.cy, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !587

_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cc, align 8, !tbaa !173
  br label %_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.j
  %i.cz = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.cp, %bb.j ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.db = load i64, ptr %i.da, align 8, !tbaa !168
  %i.dc = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #22
  br label %_ZN6hermes6bigint19UniquingBigIntTableD2Ev.exit

_ZN6hermes6bigint19UniquingBigIntTableD2Ev.exit:  ; preds = %_ZN6hermes19UniquingRegExpTableD2Ev.exit, %_ZNSt11_Deque_baseIN6hermes6bigint12ParsedBigIntESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZN6hermes3hbc22StringLiteralIDMappingD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.dd) #20
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !588 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  %.pre1.i = load ptr, ptr %i.de, align 8, !tbaa !589 ; 3 uses
  br i1 %i.dh, label %_ZN4llvh8DenseMapIPN6hermes8FunctionESt10unique_ptrINS1_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6hermes6bigint19UniquingBigIntTableD2Ev.exit
  %i.di = zext i32 %i.dg to i64
  %.idx.i.i = shl nuw nsw i64 %i.di, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.dn, %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dk = load ptr, ptr %.011.i.i, align 8, !tbaa !590
  %magicptr.i.i = ptrtoint ptr %i.dk to i64
  switch i64 %magicptr.i.i, label %bb.k [
    i64 -8, label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i
    i64 -16, label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i
  ]

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !286 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i12, label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt14default_deleteIN6hermes3hbc25BytecodeFunctionGeneratorEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.dm)
  br label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i, %.lr.ph.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dn, %i.dj
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionESt10unique_ptrINS2_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !592

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionESt10unique_ptrINS2_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.de, align 8, !tbaa !589
  br label %_ZN4llvh8DenseMapIPN6hermes8FunctionESt10unique_ptrINS1_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8FunctionESt10unique_ptrINS1_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN6hermes6bigint19UniquingBigIntTableD2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionESt10unique_ptrINS2_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i
  %i.do = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionESt10unique_ptrINS2_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %_ZN6hermes6bigint19UniquingBigIntTableD2Ev.exit ]
  call void @_ZdlPv(ptr noundef %i.do) #20
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !593
  call void @_ZdlPv(ptr noundef %i.dq) #20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !594 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i13, label %_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionESt10unique_ptrINS1_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !595
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #22
  br label %_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEED2Ev.exit

_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionESt10unique_ptrINS1_3hbc25BytecodeFunctionGeneratorESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.m
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !596
  call void @_ZdlPv(ptr noundef %i.dz) #20
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !125 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEED2Ev.exit
  call void @free(ptr noundef %i.ec) #20
  br label %_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEED2Ev.exit

_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEED2Ev.exit: ; preds = %_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEED2Ev.exit, %bb.n
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !597
  call void @_ZdlPv(ptr noundef %i.ef) #20
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !125 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEED2Ev.exit
  call void @free(ptr noundef %i.eh) #20
  br label %_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEED2Ev.exit

_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEED2Ev.exit: ; preds = %_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEED2Ev.exit, %bb.o
  %i.ek = load ptr, ptr %0, align 8, !tbaa !598
  call void @_ZdlPv(ptr noundef %i.ek) #20
  ret void
}

declare void @_ZN6hermes3hbc14BytecodeModule11setFunctionEjSt10unique_ptrINS0_16BytecodeFunctionESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(513), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6hermes3hbc25BytecodeFunctionGenerator24generateBytecodeFunctionENS_8Function14DefinitionKindENS_9ValueKindEbjjj(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.324") align 8, ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6hermes2vm13RuntimeModule38initializeWithoutCJSModulesMayAllocateEOSt10shared_ptrINS_3hbc14BCProviderBaseEE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes2vm9CodeBlock15createCodeBlockEPNS0_13RuntimeModuleENS_3hbc21RuntimeFunctionHeaderEPKhj(ptr noundef, ptr, ptr noundef, i32 noundef) local_unnamed_addr #4

declare { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator13emitLoadParamEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 108, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 108, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre14 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre14, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i3, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitUInt8El.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bm = trunc i64 %i.f to i32
  ret i32 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator12emitToNumberEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 125, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 125, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre15 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre15, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i3, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bm = trunc i64 %i.f to i32
  ret i32 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator8emitSubNElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 30, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 30, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.x to i8
  %5 = or i8 %i.y, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre26 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre26, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.as to i8
  %7 = or i8 %i.at, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ar
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  %.pre28 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bm = phi ptr [ %.pre28, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i14 = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bn = icmp ugt i64 %3, 255
  %i.bo = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bn to i8
  %9 = or i8 %i.bo, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bp = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.pre.i.i14, %i.bm
  br i1 %.not.i.i.i.i15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  store i8 %i.bp, ptr %.pre.i.i14, align 1, !tbaa !87
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  %i.bs = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bw, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bx = add i64 %.sroa.speculated.i.i.i.i.i.i17, %i.bv ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bv
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 9223372036854775807)
  %i.ca = select i1 %i.by, i64 9223372036854775807, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i.i18 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i18, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16
  %i.cc = phi ptr [ %i.cb, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bv ; 2 uses
  store i8 %i.bp, ptr %i.cd, align 1, !tbaa !87
  %i.ce = icmp sgt i64 %i.bv, 0
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %.not.i17.i.i.i.i.i21 = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.i.i.i21, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  store ptr %i.cc, ptr %0, align 8, !tbaa !308
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !599
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22
  %i.ch = trunc i64 %i.f to i32
  ret i32 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator10emitJLessNElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -100, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 -100, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.aa, ptr %.pre.i.i, align 1, !tbaa !87
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !599
  %.pre25 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ai = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ag ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 9223372036854775807)
  %i.al = select i1 %i.aj, i64 9223372036854775807, i64 %i.ak ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.an = phi ptr [ %i.am, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag ; 2 uses
  store i8 %i.aa, ptr %i.ao, align 1, !tbaa !87
  %i.ap = icmp sgt i64 %i.ag, 0
  br i1 %i.ap, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !308
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !599
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.as = phi ptr [ %.pre25, %bb.h ], [ %i.ar, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  store i8 %i.av, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !599
  %.pre27 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 8 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775807
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bd = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 9223372036854775807)
  %i.bg = select i1 %i.be, i64 9223372036854775807, i64 %i.bf ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bi = phi ptr [ %i.bh, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb ; 2 uses
  store i8 %i.av, ptr %i.bj, align 1, !tbaa !87
  %i.bk = icmp sgt i64 %i.bb, 0
  br i1 %i.bk, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bi, ptr %0, align 8, !tbaa !308
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !599
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg ; 2 uses
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bn = phi ptr [ %.pre27, %bb.n ], [ %i.bm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bq, ptr %.pre.i.i13, align 1, !tbaa !87
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i.i.i16, %i.bw ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i17, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cd = phi ptr [ %i.cc, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bw ; 2 uses
  store i8 %i.bq, ptr %i.ce, align 1, !tbaa !87
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %.not.i17.i.i.i.i.i20 = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i.i.i20, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  store ptr %i.cd, ptr %0, align 8, !tbaa !308
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !599
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21
  %i.ci = trunc i64 %i.f to i32
  ret i32 %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4, !tbaa !4     ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !601 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !602

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4, !tbaa !603
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !605
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 4, !tbaa !4
  %i.t = load i32, ptr %i.r, align 4, !tbaa !4
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !139
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #22
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.e, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4, !tbaa !4     ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !601 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !602

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4, !tbaa !603
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !605
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 4, !tbaa !4
  %i.t = load i32, ptr %i.r, align 4, !tbaa !4
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !139
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #22
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.e, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMovEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 8, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 8, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre15 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre15, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i3, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bm = trunc i64 %i.f to i32
  ret i32 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJLessEqualNElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -92, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 -92, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.aa, ptr %.pre.i.i, align 1, !tbaa !87
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !599
  %.pre25 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ai = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ag ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 9223372036854775807)
  %i.al = select i1 %i.aj, i64 9223372036854775807, i64 %i.ak ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.an = phi ptr [ %i.am, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag ; 2 uses
  store i8 %i.aa, ptr %i.ao, align 1, !tbaa !87
  %i.ap = icmp sgt i64 %i.ag, 0
  br i1 %i.ap, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !308
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !599
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.as = phi ptr [ %.pre25, %bb.h ], [ %i.ar, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  store i8 %i.av, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !599
  %.pre27 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 8 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775807
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bd = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 9223372036854775807)
  %i.bg = select i1 %i.be, i64 9223372036854775807, i64 %i.bf ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bi = phi ptr [ %i.bh, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb ; 2 uses
  store i8 %i.av, ptr %i.bj, align 1, !tbaa !87
  %i.bk = icmp sgt i64 %i.bb, 0
  br i1 %i.bk, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bi, ptr %0, align 8, !tbaa !308
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !599
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg ; 2 uses
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bn = phi ptr [ %.pre27, %bb.n ], [ %i.bm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bq, ptr %.pre.i.i13, align 1, !tbaa !87
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i.i.i16, %i.bw ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i17, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cd = phi ptr [ %i.cc, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bw ; 2 uses
  store i8 %i.bq, ptr %i.ce, align 1, !tbaa !87
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %.not.i17.i.i.i.i.i20 = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i.i.i20, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  store ptr %i.cd, ptr %0, align 8, !tbaa !308
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !599
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21
  %i.ci = trunc i64 %i.f to i32
  ret i32 %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMulElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 24, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 24, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.x to i8
  %5 = or i8 %i.y, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre26 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre26, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.as to i8
  %7 = or i8 %i.at, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ar
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  %.pre28 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bm = phi ptr [ %.pre28, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i14 = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bn = icmp ugt i64 %3, 255
  %i.bo = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bn to i8
  %9 = or i8 %i.bo, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bp = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.pre.i.i14, %i.bm
  br i1 %.not.i.i.i.i15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  store i8 %i.bp, ptr %.pre.i.i14, align 1, !tbaa !87
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  %i.bs = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bw, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bx = add i64 %.sroa.speculated.i.i.i.i.i.i17, %i.bv ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bv
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 9223372036854775807)
  %i.ca = select i1 %i.by, i64 9223372036854775807, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i.i18 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i18, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16
  %i.cc = phi ptr [ %i.cb, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bv ; 2 uses
  store i8 %i.bp, ptr %i.cd, align 1, !tbaa !87
  %i.ce = icmp sgt i64 %i.bv, 0
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %.not.i17.i.i.i.i.i21 = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.i.i.i21, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  store ptr %i.cc, ptr %0, align 8, !tbaa !308
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !599
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22
  %i.ch = trunc i64 %i.f to i32
  ret i32 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator13emitJGreaterNElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -84, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 -84, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.aa, ptr %.pre.i.i, align 1, !tbaa !87
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !599
  %.pre25 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ai = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ag ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 9223372036854775807)
  %i.al = select i1 %i.aj, i64 9223372036854775807, i64 %i.ak ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.an = phi ptr [ %i.am, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag ; 2 uses
  store i8 %i.aa, ptr %i.ao, align 1, !tbaa !87
  %i.ap = icmp sgt i64 %i.ag, 0
  br i1 %i.ap, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !308
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !599
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.as = phi ptr [ %.pre25, %bb.h ], [ %i.ar, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  store i8 %i.av, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !599
  %.pre27 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 8 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775807
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bd = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 9223372036854775807)
  %i.bg = select i1 %i.be, i64 9223372036854775807, i64 %i.bf ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bi = phi ptr [ %i.bh, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb ; 2 uses
  store i8 %i.av, ptr %i.bj, align 1, !tbaa !87
  %i.bk = icmp sgt i64 %i.bb, 0
  br i1 %i.bk, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bi, ptr %0, align 8, !tbaa !308
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !599
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg ; 2 uses
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bn = phi ptr [ %.pre27, %bb.n ], [ %i.bm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bq, ptr %.pre.i.i13, align 1, !tbaa !87
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i.i.i16, %i.bw ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i17, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cd = phi ptr [ %i.cc, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bw ; 2 uses
  store i8 %i.bq, ptr %i.ce, align 1, !tbaa !87
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %.not.i17.i.i.i.i.i20 = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i.i.i20, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  store ptr %i.cd, ptr %0, align 8, !tbaa !308
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !599
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21
  %i.ci = trunc i64 %i.f to i32
  ret i32 %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator8emitAddNElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 23, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 23, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.x to i8
  %5 = or i8 %i.y, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre26 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre26, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.as to i8
  %7 = or i8 %i.at, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ar
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  %.pre28 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bm = phi ptr [ %.pre28, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i14 = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bn = icmp ugt i64 %3, 255
  %i.bo = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bn to i8
  %9 = or i8 %i.bo, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bp = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.pre.i.i14, %i.bm
  br i1 %.not.i.i.i.i15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  store i8 %i.bp, ptr %.pre.i.i14, align 1, !tbaa !87
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit13
  %i.bs = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bw, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bx = add i64 %.sroa.speculated.i.i.i.i.i.i17, %i.bv ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bv
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 9223372036854775807)
  %i.ca = select i1 %i.by, i64 9223372036854775807, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i.i18 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i18, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16
  %i.cc = phi ptr [ %i.cb, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i16 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bv ; 2 uses
  store i8 %i.bp, ptr %i.cd, align 1, !tbaa !87
  %i.ce = icmp sgt i64 %i.bv, 0
  br i1 %i.ce, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %.not.i17.i.i.i.i.i21 = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.i.i.i21, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i20
  store ptr %i.cc, ptr %0, align 8, !tbaa !308
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !599
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit23: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i22
  %i.ch = trunc i64 %i.f to i32
  ret i32 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator18emitJGreaterEqualNElll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -76, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 -76, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.aa, ptr %.pre.i.i, align 1, !tbaa !87
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !599
  %.pre25 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ae = ptrtoint ptr %i.w to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ai = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ag ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 9223372036854775807)
  %i.al = select i1 %i.aj, i64 9223372036854775807, i64 %i.ak ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.an = phi ptr [ %i.am, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag ; 2 uses
  store i8 %i.aa, ptr %i.ao, align 1, !tbaa !87
  %i.ap = icmp sgt i64 %i.ag, 0
  br i1 %i.ap, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !308
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !599
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.as = phi ptr [ %.pre25, %bb.h ], [ %i.ar, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  store i8 %i.av, ptr %.pre.i.i4, align 1, !tbaa !87
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !599
  %.pre27 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator9emitAddr8El.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 8 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775807
  br i1 %i.bc, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bd = add i64 %.sroa.speculated.i.i.i.i.i.i7, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 9223372036854775807)
  %i.bg = select i1 %i.be, i64 9223372036854775807, i64 %i.bf ; 3 uses
  %.not.i.i.i.i.i.i8 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6
  %i.bi = phi ptr [ %i.bh, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i6 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb ; 2 uses
  store i8 %i.av, ptr %i.bj, align 1, !tbaa !87
  %i.bk = icmp sgt i64 %i.bb, 0
  br i1 %i.bk, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i.i.i.i11, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i10
  store ptr %i.bi, ptr %0, align 8, !tbaa !308
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !599
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg ; 2 uses
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12
  %i.bn = phi ptr [ %.pre27, %bb.n ], [ %i.bm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.bq, ptr %.pre.i.i13, align 1, !tbaa !87
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

bb.u:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i.i.i16, %i.bw ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i17, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15
  %i.cd = phi ptr [ %i.cc, %bb.w ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i15 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bw ; 2 uses
  store i8 %i.bq, ptr %i.ce, align 1, !tbaa !87
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19: ; preds = %bb.x, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %.not.i17.i.i.i.i.i20 = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i.i.i20, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i19
  store ptr %i.cd, ptr %0, align 8, !tbaa !308
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !599
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit22: ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i21
  %i.ci = trunc i64 %i.f to i32
  ret i32 %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator18emitAddEmptyStringEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -128, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 -128, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  %.pre15 = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = phi ptr [ %.pre15, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.au, ptr %.pre.i.i3, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.au, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit12: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11
  %i.bm = trunc i64 %i.f to i32
  ret i32 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 92, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 92, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %2 = zext i1 %i.x to i8
  %3 = or i8 %i.y, %2
  store i8 %3, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.ar = trunc i64 %i.f to i32
  ret i32 %i.ar
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator19emitLoadConstDoubleEll(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !308    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 112, ptr %i.b, align 1, !tbaa !87
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !599
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 112, ptr %i.s, align 1, !tbaa !87
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !308
  store ptr %i.u, ptr %i.a, align 8, !tbaa !599
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.z, ptr %.pre.i.i, align 1, !tbaa !87
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !599
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.am = phi ptr [ %i.al, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af ; 2 uses
  store i8 %i.z, ptr %i.an, align 1, !tbaa !87
  %i.ao = icmp sgt i64 %i.af, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !308
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !599
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !309
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %.ph = phi ptr [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %i.ab, %bb.h ]
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i
  %i.ar = phi ptr [ %i.bm, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ %.ph, %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader ] ; 3 uses
  %.07.i.i = phi i32 [ %i.as, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ 8, %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader ]
  %.036.i.i = phi i64 [ %i.bn, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ %2, %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit.preheader ] ; 2 uses
  %i.as = add nsw i32 %.07.i.i, -1                ; 2 uses
  %i.at = trunc i64 %.036.i.i to i8               ; 2 uses
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !309
  %.not.i.i.i.i4 = icmp eq ptr %i.ar, %i.au
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !87
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !599
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

bb.o:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !308   ; 4 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i.i.i6, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i5 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i8 %i.at, ptr %i.bi, align 1, !tbaa !87
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i.i.i10, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i9
  store ptr %i.bh, ptr %0, align 8, !tbaa !308
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !599
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !309
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11, %bb.n
  %i.bm = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i11 ]
  %i.bn = ashr i64 %.036.i.i, 8
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitDoubleEl.exit, label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit, !llvm.loop !606

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitDoubleEl.exit: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i
  %i.bo = trunc i64 %i.f to i32
  ret i32 %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !601  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = load i32, ptr %2, align 4, !tbaa !4
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !601 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !601 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !607

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

end_hunk_0
