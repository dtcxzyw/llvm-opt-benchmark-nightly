Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonVectorCombine?download=true
inline.NumInlined: 6843
inline.NumDeleted: 3195
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE12emplace_backIJRKNS1_8AddrInfoERKPN4llvm11InstructionEbbEEERS2_DpOT_:bb.a
  %.not9.i.i.i.i.i.i = icmp eq ptr %.val24.i, %i.b
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112AlignVectors9MoveGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit32.i.thread, label %.lr.ph.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112AlignVectors9MoveGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit32.i.thread: ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.val24.i, %_ZNKSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_112AlignVectors9MoveGroupC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(82) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(82) %.0810.i.i.i.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 88
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt8_DestroyIN12_GLOBAL__N_112AlignVectors9MoveGroupEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyIN12_GLOBAL__N_112AlignVectors9MoveGroupEEvPT_.exit.i.i.i ], [ %.val24.i, %.lr.ph.i.i.i.i.i.i ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 76
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !302 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !303
  %i.as = zext i32 %i.ao to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 4
  %i.au = add nuw nsw i64 %i.as, 31
  %i.av = lshr i64 %i.au, 3
  %i.aw = and i64 %i.av, 1073741820
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ar, i64 noundef %i.ax, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i.i.i.i.i

_ZN4llvm8DenseMapIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !250 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !296
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #23
  br label %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIPN4llvm11InstructionESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN4llvm8DenseMapIPNS_11InstructionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !250 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_112AlignVectors9MoveGroupEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !296
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #23
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112AlignVectors9MoveGroupEEvPT_.exit.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_112AlignVectors9MoveGroupEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm11InstructionESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i.loopexit: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112AlignVectors9MoveGroupEEvPT_.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 176
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112AlignVectors9MoveGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit32.i.thread
  %i.bo = phi ptr [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_112AlignVectors9MoveGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit32.i.thread ], [ %i.bn, %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i.loopexit ]
  %.not.i33.i = icmp eq ptr %.val24.i, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE17_M_realloc_insertIJRKNS1_8AddrInfoERKPN4llvm11InstructionEbbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !395
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.val24.i, i64 noundef %i.br) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE17_M_realloc_insertIJRKNS1_8AddrInfoERKPN4llvm11InstructionEbbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE17_M_realloc_insertIJRKNS1_8AddrInfoERKPN4llvm11InstructionEbbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112AlignVectors9MoveGroupEEvT_S4_.exit.i, %bb.h
  store ptr %i.z, ptr %0, align 8, !tbaa !307
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !308
  %i.bs = getelementptr inbounds nuw [88 x i8], ptr %i.z, i64 %i.x
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !395
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112AlignVectors9MoveGroupESaIS2_EE17_M_realloc_insertIJRKNS1_8AddrInfoERKPN4llvm11InstructionEbbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_120HexagonVectorCombine22isSafeToMoveBeforeInBBISt6vectorIPN4llvm11InstructionESaIS5_EEEEbRKS4_NS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb1EEERKT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %5 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %6 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %7 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %8 = alloca %"class.std::optional.572", align 8 ; 9 uses
  %9 = alloca %"class.std::optional.572", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !295
  %i.c = icmp eq i8 %i.b, 87
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !266
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.not = icmp eq ptr %2, %i.f                    ; 2 uses
  br i1 %.not, label %.critedge5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %2, i64 -24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !295
  %i.i = icmp eq i8 %i.h, 87
  br i1 %i.i, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %bb.b, %bb.c
  %i.j = tail call noundef zeroext i1 @_ZN4llvm26mayHaveNonDefUseDependencyERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.critedge5
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.l = load i8, ptr %1, align 8, !tbaa !295, !noalias !1053
  %i.m = icmp eq i8 %i.l, 88
  br i1 %i.m, label %bb.e, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %1, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !327, !noalias !1053 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.o, align 8, !tbaa !295, !noalias !1053
  %i.q = icmp eq i8 %i.p, 14
  br i1 %i.q, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load i32, ptr %i.r, align 8, !noalias !1053
  %i.t = and i32 %i.s, 8192
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !389, !noalias !1053
  switch i32 %i.v, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i [
    i32 241, label %bb.g
    i32 245, label %bb.h
  ]

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !1053
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !388, !noalias !1053, !nonnull !37, !align !252
  call void @_ZN4llvm14MemoryLocation14getForArgumentEPKNS_8CallBaseEjPKNS_17TargetLibraryInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(80) %i.x) #20, !noalias !1053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !1055
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %i.y, align 8, !tbaa !1057, !alias.scope !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1053
  br label %_ZZNK12_GLOBAL__N_120HexagonVectorCombine22isSafeToMoveBeforeInBBISt6vectorIPN4llvm11InstructionESaIS5_EEEEbRKS4_NS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb1EEERKT_ENKUlS9_E_clES9_.exit

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !1053
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !388, !noalias !1053, !nonnull !37, !align !252
  call void @_ZN4llvm14MemoryLocation14getForArgumentEPKNS_8CallBaseEjPKNS_17TargetLibraryInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryLocation") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(80) %i.aa) #20, !noalias !1053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !1055
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %i.ab, align 8, !tbaa !1057, !alias.scope !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !1053
  br label %_ZZNK12_GLOBAL__N_120HexagonVectorCombine22isSafeToMoveBeforeInBBISt6vectorIPN4llvm11InstructionESaIS5_EEEEbRKS4_NS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb1EEERKT_ENKUlS9_E_clES9_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i, %bb.f, %bb.e, %bb.d
  call void @_ZN4llvm14MemoryLocation9getOrNoneEPKNS_11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.572") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  br label %_ZZNK12_GLOBAL__N_120HexagonVectorCombine22isSafeToMoveBeforeInBBISt6vectorIPN4llvm11InstructionESaIS5_EEEEbRKS4_NS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb1EEERKT_ENKUlS9_E_clES9_.exit

_ZZNK12_GLOBAL__N_120HexagonVectorCombine22isSafeToMoveBeforeInBBISt6vectorIPN4llvm11InstructionESaIS5_EEEEbRKS4_NS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb1EEERKT_ENKUlS9_E_clES9_.exit: ; preds = %bb.g, %bb.h, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i
  %i.ac = icmp eq ptr %i.a, %2
  br i1 %i.ac, label %.critedge64, label %bb.i

bb.i:                                             ; preds = %_ZZNK12_GLOBAL__N_120HexagonVectorCombine22isSafeToMoveBeforeInBBISt6vectorIPN4llvm11InstructionESaIS5_EEEEbRKS4_NS3_21ilist_iterator_w_bitsINS3_12ilist_detail12node_optionsIS4_Lb0ELb0EvLb1ENS3_10BasicBlockEEELb0ELb1EEERKT_ENKUlS9_E_clES9_.exit
  br i1 %.not, label %.critedge58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %2, i64 -24
  %i.ae = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull %1) #20
  br i1 %i.ae, label %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.critedge58

.critedge58:                                      ; preds = %bb.i, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !406
  br label %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.critedge58, %bb.j
  %.sroa.11.0 = phi ptr [ %i.a, %bb.j ], [ %2, %.critedge58 ] ; 2 uses
  %.sroa.085.0 = phi ptr [ %2, %bb.j ], [ %i.ag, %.critedge58 ] ; 2 uses
  %.not123134 = icmp eq ptr %.sroa.085.0, %.sroa.11.0
  br i1 %.not123134, label %.critedge64, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.0.0135 = phi ptr [ %.sroa.085.0, %.lr.ph ], [ %i.dm, %bb.ae ] ; 5 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0135, i64 -24 ; 18 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !293   ; 4 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !293 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = ashr i64 %i.ar, 5                       ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.au = and i64 %i.ar, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i ], [ %i.bh, %bb.p ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.p ] ; 9 uses
  %i.av = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !218
  %i.aw = icmp eq ptr %i.av, %i.am
  br i1 %i.aw, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !218
  %i.az = icmp eq ptr %i.ay, %i.am
  br i1 %i.az, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !218
  %i.bc = icmp eq ptr %i.bb, %i.am
  br i1 %i.bc, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit153, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !218
  %i.bf = icmp eq ptr %i.be, %i.am
  br i1 %i.bf, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit155, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.bh = add nsw i64 %.052.i.i.i.i, -1
  %i.bi = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.bi, label %bb.l, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1049

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.p
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.ap, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.k
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ar, %bb.k ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.an, %bb.k ] ; 5 uses
  %i.bj = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.bj, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.thread [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !218
  %i.bl = icmp eq ptr %i.bk, %i.am
  br i1 %i.bl, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.r
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.bm, %bb.r ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !218
  %i.bo = icmp eq ptr %i.bn, %i.am
  br i1 %i.bo, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.s
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.bp, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !218
  %i.br = icmp eq ptr %i.bq, %i.am
  %spec.select.i.i.i.i = select i1 %i.br, ptr %.sroa.032.2.i.i.i.i, ptr %i.ao
  br label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit153: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit155: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit: ; preds = %bb.l, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit153, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit155, %bb.q, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.q ], [ %i.bu, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit155 ], [ %i.bt, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit153 ], [ %i.bs, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.l ]
  %.not124 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.ao
  br i1 %.not124, label %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.thread, label %bb.ae

_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit
  %i.bv = load i8, ptr %i.am, align 8, !tbaa !295 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 88
  br i1 %i.bw, label %bb.t, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.thread
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.0135, i64 -56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !295
  %i.ca = icmp eq i8 %i.bz, 14
  br i1 %i.ca, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i: ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = and i32 %i.cc, 8192
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !389
  %i.cg = icmp eq i32 %i.cf, 16
  br i1 %i.cg, label %bb.ae, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i, %bb.u, %_ZN4llvm12is_containedIRKSt6vectorIPNS_11InstructionESaIS3_EEPKS2_EEbOT_RKT0_.exit.thread, %bb.t, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit
  %i.ch = call noundef zeroext i1 @_ZNK4llvm11Instruction8mayThrowEb(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i1 noundef zeroext false) #24
  br i1 %i.ch, label %.critedge64, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread
  switch i8 %i.bv, label %.critedge60 [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseEKNS_11InstructionEEEDcPT0_.exit
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseEKNS_11InstructionEEEDcPT0_.exit
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseEKNS_11InstructionEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_8CallBaseEKNS_11InstructionEEEDcPT0_.exit: ; preds = %bb.v, %bb.v, %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0135, i64 48 ; 2 uses
  %i.cj = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i32 noundef 81) #20
  br i1 %i.cj, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit

_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit: ; preds = %_ZN4llvm8dyn_castINS_8CallBaseEKNS_11InstructionEEEDcPT0_.exit
  %i.ck = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.am, i32 noundef 81) #20
  br i1 %i.ck, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread, label %.critedge64

_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread: ; preds = %_ZN4llvm8dyn_castINS_8CallBaseEKNS_11InstructionEEEDcPT0_.exit, %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit
  %i.cl = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i32 noundef 43) #20
  br i1 %i.cl, label %.critedge60, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit74

_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit74: ; preds = %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread
  %i.cm = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.am, i32 noundef 43) #20
  br i1 %i.cm, label %.critedge60, label %.critedge64

.critedge60:                                      ; preds = %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread, %bb.v, %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit74
  %i.cn = call noundef zeroext i1 @_ZNK4llvm11Instruction17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.am) #24
  br i1 %i.cn, label %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread, label %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit

_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit: ; preds = %.critedge60
  %i.co = call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.am) #24
  br i1 %i.co, label %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread, label %bb.ae

_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread: ; preds = %.critedge60, %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.cp = load i8, ptr %i.am, align 8, !tbaa !295, !noalias !1058
  %i.cq = icmp eq i8 %i.cp, 88
  br i1 %i.cq, label %bb.w, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i75

bb.w:                                             ; preds = %_ZNK4llvm11Instruction20mayReadOrWriteMemoryEv.exit.thread
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0135, i64 -56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !327, !noalias !1058 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i76 = icmp eq ptr %i.cs, null
end_hunk_0
