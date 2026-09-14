Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/extension_set?download=true
inline.NumInlined: 3767
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@"_ZN6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_13NumExtensionsEvE3$_0EEvT_SN_T0_":bb.a
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !6

.critedge.loopexit23.i.i.i:                       ; preds = %bb.d
  %i.ag = zext i8 %i.u to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %.critedge.loopexit23.i.i.i, %bb.c
  %.sroa.8.1 = phi i32 [ 0, %bb.e ], [ %i.l, %bb.c ], [ %i.ag, %.critedge.loopexit23.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.116.i.i.i, %bb.e ], [ %.sroa.0.015, %bb.c ], [ %i.q, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.015, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp ne ptr %.sroa.0.1, %2
  %i.ai = icmp ne i32 %.sroa.8.1, %3
  %.not3.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge, !llvm.loop !467
}

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !19
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5

_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5: ; preds = %bb.c, %bb.d
  %.sink6.i.i.i.i.i4 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i4, i64 16 ; 2 uses
  store ptr %i.g, ptr %.sink6.i.i.i.i.i4, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !88
  store i8 0, ptr %i.g, align 8, !tbaa !23
  store ptr %.sink6.i.i.i.i.i4, ptr %0, align 8, !tbaa !30
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 0, i32 3, i32 1)
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !84
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.l, align 8, !tbaa !19
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1)
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit3

bb.j:                                             ; preds = %bb.h
  %i.r = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit3

_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit3: ; preds = %bb.i, %bb.j
  %.sink6.i.i.i.i.i2 = phi ptr [ %i.q, %bb.i ], [ %i.r, %bb.j ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i2, i64 16 ; 2 uses
  store ptr %i.s, ptr %.sink6.i.i.i.i.i2, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i2, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !88
  store i8 0, ptr %i.s, align 8, !tbaa !23
  store ptr %.sink6.i.i.i.i.i2, ptr %i.o, align 8, !tbaa !30
  %i.u = load ptr, ptr %0, align 8, !tbaa !95
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 2, ptr %i.y, align 4, !tbaa !104
  store i32 2, ptr %i.l, align 8, !tbaa !19
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i: ; preds = %bb.e
  %i.z = add nsw i64 %i.i, -1
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !84 ; 5 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !105
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.k, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, !prof !43

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.af = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1) ; 0 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !95
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.ah, -1
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !104
  %.pre21.i = load i32, ptr %i.ab, align 8, !tbaa !84
  br label %bb.m

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !104 ; 2 uses
  %i.am = icmp sgt i32 %i.al, %i.ac
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i32 %i.ac, 1
  store i32 %i.ao, ptr %i.ab, align 8, !tbaa !19
  %i.ap = sext i32 %i.ac to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  %.1.i.pre = load ptr, ptr %i.aq, align 8, !tbaa !30
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, %bb.k
  %i.ar = phi i32 [ %.pre21.i, %bb.k ], [ %i.ac, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.as = phi i32 [ %.pre.i, %bb.k ], [ %i.al, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ]
  %.015.i = phi ptr [ %i.aj, %bb.k ], [ %i.aa, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 4, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.ab, align 8, !tbaa !19
  %i.ax = sext i32 %i.ar to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  %i.az = icmp eq ptr %1, null
  br i1 %i.az, label %bb.n, label %bb.o, !prof !43

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit

_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit: ; preds = %bb.n, %bb.o
  %.sink6.i.i.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %i.bb, %bb.o ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.bc, ptr %.sink6.i.i.i.i.i, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !88
  store i8 0, ptr %i.bc, align 8, !tbaa !23
  store ptr %.sink6.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !30
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit: ; preds = %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5, %bb.g, %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit3, %bb.l, %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit
  %.1.i = phi ptr [ %.sink6.i.i.i.i.i4, %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit5 ], [ %i.a, %bb.g ], [ %.sink6.i.i.i.i.i2, %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit3 ], [ %.sink6.i.i.i.i.i, %_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10GetNewFuncEvEUlPNS4_5ArenaERPvE_vJSF_SH_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE.exit ], [ %.1.i.pre, %bb.l ]
  ret ptr %.1.i
}

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #15

declare void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv(ptr noundef %0) #7 comdat {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = load i32, ptr %0, align 8, !tbaa !471
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  br i1 %.not, label %.split8, label %.split

.split:                                           ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.b, 7
  %i.d = and i64 %i.c, 8589934584
  %i.e = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef %i.d) ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !472   ; 2 uses
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call noundef ptr %i.j(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %3), !inline_history !468
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.c:                                             ; preds = %.split
  %i.l = load i32, ptr %0, align 8, !tbaa !471    ; 6 uses
  %i.m = zext i32 %i.l to i64                     ; 11 uses
  %i.n = icmp eq i8 %i.g, 0
  %i.o = icmp ult i32 %i.l, 33                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = icmp ult i32 %i.l, 65
  br i1 %i.r, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.s = icmp ugt i32 %i.l, 80
  br i1 %i.s, label %.lr.ph64.i, label %._crit_edge65.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  br label %bb.l

._crit_edge65.i:                                  ; preds = %.lr.ph64.i, %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.x, i8 0, i64 64, i1 false)
  br label %bb.l

.lr.ph64.i:                                       ; preds = %.preheader.i, %.lr.ph64.i
  %4 = phi i64 [ %i.aa, %.lr.ph64.i ], [ 80, %.preheader.i ] ; 2 uses
  %.05563.i = phi i64 [ %4, %.lr.ph64.i ], [ 16, %.preheader.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.05563.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.z) #35, !srcloc !473
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.y, i8 0, i64 64, i1 false)
  %i.aa = add nuw nsw i64 %4, 64                  ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.m
  br i1 %i.ab, label %.lr.ph64.i, label %._crit_edge65.i, !llvm.loop !469

bb.h:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ad, ptr noundef nonnull align 1 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp ult i32 %i.l, 65
  br i1 %i.ag, label %bb.k, label %.preheader61.i

.preheader61.i:                                   ; preds = %bb.j
  %i.ah = icmp ugt i32 %i.l, 80
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.al, ptr noundef nonnull align 1 dereferenceable(32) %i.an, i64 32, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader61.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ap, ptr noundef nonnull align 1 dereferenceable(64) %i.ar, i64 64, i1 false)
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader61.i, %.lr.ph.i
  %i.as = phi i64 [ %i.ax, %.lr.ph.i ], [ 80, %.preheader61.i ] ; 2 uses
  %.062.i = phi i64 [ %i.as, %.lr.ph.i ], [ 16, %.preheader61.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.au, i32 0, i32 3, i32 1)
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %.062.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.aw) #35, !srcloc !473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.av, ptr noundef nonnull align 1 dereferenceable(64) %i.at, i64 64, i1 false)
  %i.ax = add nuw nsw i64 %i.as, 64               ; 2 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.m
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !470

bb.l:                                             ; preds = %._crit_edge.i, %bb.k, %bb.i, %._crit_edge65.i, %bb.g, %bb.e
  %i.az = load i64, ptr %2, align 1
  store i64 %i.az, ptr %i.e, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.ba, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

.split8:                                          ; preds = %bb.a
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #38 ; 14 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !472 ; 2 uses
  %i.be = icmp slt i8 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.n, !prof !43

bb.m:                                             ; preds = %.split8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = tail call noundef ptr %i.bg(ptr noundef %1, ptr noundef nonnull %i.bb, ptr noundef null), !inline_history !468
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %i.bi = load i32, ptr %0, align 8, !tbaa !471   ; 6 uses
  %i.bj = zext i32 %i.bi to i64                   ; 11 uses
  %i.bk = icmp eq i8 %i.bd, 0
  %i.bl = icmp ult i32 %i.bi, 33                  ; 2 uses
  br i1 %i.bk, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bo = icmp ult i32 %i.bi, 65
  br i1 %i.bo, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bp = icmp ugt i32 %i.bi, 80
  br i1 %i.bp, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bs, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bu, i8 0, i64 64, i1 false)
  br label %bb.w

.lr.ph64.i16:                                     ; preds = %.preheader.i14, %.lr.ph64.i16
  %5 = phi i64 [ %i.bx, %.lr.ph64.i16 ], [ 80, %.preheader.i14 ] ; 2 uses
  %.05563.i17 = phi i64 [ %5, %.lr.ph64.i16 ], [ 16, %.preheader.i14 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.05563.i17 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #35, !srcloc !473
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %5, 64                  ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %i.bj
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !469

bb.s:                                             ; preds = %bb.n
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %i.bi, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %i.bi, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w

.lr.ph.i12:                                       ; preds = %.preheader61.i9, %.lr.ph.i12
  %i.cp = phi i64 [ %i.cu, %.lr.ph.i12 ], [ 80, %.preheader61.i9 ] ; 2 uses
  %.062.i13 = phi i64 [ %i.cp, %.lr.ph.i12 ], [ 16, %.preheader61.i9 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.062.i13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #35, !srcloc !473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %i.bj
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !470

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
  %i.cw = load i64, ptr %2, align 1
  store i64 %i.cw, ptr %i.bb, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr null, ptr %i.cx, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit: ; preds = %bb.w, %bb.m, %bb.l, %bb.b
  %phi.call = phi ptr [ %i.e, %bb.l ], [ %i.k, %bb.b ], [ %i.bh, %bb.m ], [ %i.bb, %bb.w ]
  ret ptr %phi.call
}

declare noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_5ClearEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr nofree captures(address) %0, i32 %1, ptr nofree readnone captures(address) %2, i32 %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i103 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i103, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5108 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5108, label %.lr.ph113, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0106 = phi i32 [ %i.ak, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0104 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.11.0104, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0105, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.sroa.11.0104, 1            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0105, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !65 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !23
  %.not17.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !23    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !5

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 240
  %i.ac = add i32 %.sroa.11.0104, 1
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.ai, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !65 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !6

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.aj = zext i8 %i.x to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.b ], [ %i.aj, %.critedge.loopexit23.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0105, %bb.b ], [ %i.t, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0105, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0106, 1
  %i.al = icmp ne ptr %.sroa.0.2, %2
  %i.am = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.al, i1 true, i1 %i.am
  %i.an = icmp samesign ult i32 %.0106, 15
  %i.ao = select i1 %.not3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader93, !llvm.loop !474

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader93
  %.sroa.072.0.lcssa = phi ptr [ %0, %.preheader93 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %.sroa.1179.0.lcssa = phi i32 [ %1, %.preheader93 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %i.ap = icmp ne ptr %.sroa.072.0.lcssa, %2
  %i.aq = icmp ne i32 %.sroa.1179.0.lcssa, %3
  %.not3.i42116 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i42116, label %.lr.ph119, label %._crit_edge

.lr.ph113:                                        ; preds = %.preheader93, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38
  %.sroa.0.1112 = phi ptr [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.0.0.lcssa, %.preheader93 ] ; 7 uses
  %.sroa.11.1111 = phi i32 [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.11.0.lcssa, %.preheader93 ] ; 3 uses
  %.sroa.1179.0110 = phi i32 [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %1, %.preheader93 ] ; 3 uses
  %.sroa.072.0109 = phi ptr [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %0, %.preheader93 ] ; 7 uses
  %i.ar = and i32 %.sroa.1179.0110, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.072.0109, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au)
  %i.av = and i32 %.sroa.11.1111, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1112, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 34
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = trunc i8 %i.ba to i1
  %i.bc = load ptr, ptr %i.ay, align 8
  %spec.select.i6 = select i1 %i.bb, ptr %i.bc, ptr %i.ay
  tail call void @llvm.prefetch.p0(ptr %spec.select.i6, i32 0, i32 3, i32 1)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !23
  %.not.i.i7 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i7, label %.thread.i.i18, label %bb.e

bb.e:                                             ; preds = %.lr.ph113
  %i.bf = add nsw i32 %.sroa.1179.0110, 1         ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 10
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !23
  %i.bi = zext i8 %i.bh to i32
  %i.bj = icmp eq i32 %i.bf, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

.lr.ph.i.i.i14:                                   ; preds = %bb.e, %bb.f
  %.01521.i.i.i15 = phi ptr [ %i.bk, %bb.f ], [ %.sroa.072.0109, %bb.e ] ; 2 uses
  %i.bk = load ptr, ptr %.01521.i.i.i15, align 8, !tbaa !65 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23
  %.not17.i.i.i16 = icmp eq i8 %i.bm, 0
  br i1 %.not17.i.i.i16, label %bb.f, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

bb.f:                                             ; preds = %.lr.ph.i.i.i14
  %i.bn = getelementptr inbounds nuw i8, ptr %.01521.i.i.i15, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !23  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !23
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i17, !llvm.loop !5

.thread.i.i18:                                    ; preds = %.lr.ph113
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 240
  %i.bt = add i32 %.sroa.1179.0110, 1
  %i.bu = and i32 %i.bt, 255
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.thread.i.i18
  %.116.in.i.i.i19 = phi ptr [ %i.bw, %.thread.i.i18 ], [ %i.bz, %bb.g ]
  %.116.i.i.i20 = load ptr, ptr %.116.in.i.i.i19, align 8, !tbaa !65 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23
  %.not.i.i.i.i21 = icmp eq i8 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 240
  br i1 %.not.i.i.i.i21, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22, !llvm.loop !6

.critedge.loopexit23.i.i.i17:                     ; preds = %bb.f
  %i.ca = zext i8 %i.bo to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22: ; preds = %.lr.ph.i.i.i14, %bb.g, %.critedge.loopexit23.i.i.i17, %bb.e
  %.sroa.072.2 = phi ptr [ %.116.i.i.i20, %bb.g ], [ %.sroa.072.0109, %bb.e ], [ %i.bk, %.critedge.loopexit23.i.i.i17 ], [ %.sroa.072.0109, %.lr.ph.i.i.i14 ] ; 2 uses
  %.sroa.1179.2 = phi i32 [ 0, %bb.g ], [ %i.bf, %bb.e ], [ %i.ca, %.critedge.loopexit23.i.i.i17 ], [ %i.bf, %.lr.ph.i.i.i14 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %.not.i.i23 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i23, label %.thread.i.i34, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cd = add nsw i32 %.sroa.11.1111, 1           ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 10
end_hunk_0
