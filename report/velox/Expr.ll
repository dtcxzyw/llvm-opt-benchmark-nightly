inline.NumInlined: 11089
inline.NumDeleted: 4035
begin_hunk_0_@_ZN8facebook5velox4exec4Expr11mergeFieldsERSt6vectorIPNS1_14FieldReferenceESaIS5_EERSt13unordered_setIS5_St4hashIS5_ESt8equal_toIS5_ES6_ERKS7_:bb.a
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val6
  br i1 %.not, label %_ZN8facebook5velox4exec12_GLOBAL__N_18isMemberERKSt6vectorIPNS1_14FieldReferenceESaIS5_EERS4_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_18isMemberERKSt6vectorIPNS1_14FieldReferenceESaIS5_EERS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %1, ptr %3, align 8, !tbaa !221
  %i.ao = call { ptr, i8 } @_ZNSt10_HashtableIPN8facebook5velox4exec14FieldReferenceES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit

_ZN8facebook5velox4exec12_GLOBAL__N_18isMemberERKSt6vectorIPNS1_14FieldReferenceESaIS5_EERS4_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN8facebook5velox4exec12_GLOBAL__N_18isMemberERKSt6vectorIPNS1_14FieldReferenceESaIS5_EERS4_.exit
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !200
  %.not.i = icmp eq ptr %.val6, %i.ap
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_18isMemberERKSt6vectorIPNS1_14FieldReferenceESaIS5_EERS4_.exit.thread
  store ptr %i.h, ptr %.val6, align 8, !tbaa !214
  %i.aq = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !213
  br label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit

bb.m:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_18isMemberERKSt6vectorIPNS1_14FieldReferenceESaIS5_EERS4_.exit.thread
  %i.ar = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.ar, label %bb.n, label %_ZNKSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #44
  unreachable

_ZNKSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.as = ashr exact i64 %i.k, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #47 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.k ; 2 uses
  store ptr %i.h, ptr %i.az, align 8, !tbaa !214
  %i.ba = icmp sgt i64 %i.k, 0
  br i1 %i.ba, label %bb.o, label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %.val, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i = icmp eq ptr %.val, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.k) #45
  br label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !199
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !213
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !200
  br label %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit

_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE12emplace_backIJRS4_EEES8_DpOT_.exit: ; preds = %_ZNSt6vectorIPN8facebook5velox4exec14FieldReferenceESaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.019, i64 8 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec4Expr21computeDistinctFieldsEv(ptr noundef nonnull align 8 dereferenceable(482) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.07 = phi ptr [ %i.b, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.07, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  tail call void @_ZN8facebook5velox4exec4Expr11mergeFieldsERSt6vectorIPNS1_14FieldReferenceESaIS5_EERSt13unordered_setIS5_St4hashIS5_ESt8equal_toIS5_ES6_ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(482) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.d = load i8, ptr %i.c, align 1, !tbaa !223, !range !53, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = load i8, ptr %i.f, align 4, !tbaa !111, !range !53, !noundef !57
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEvE18veloxCheckFailArgs) #44
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec4Expr15computeMetadataEv(ptr noundef nonnull align 8 dereferenceable(482) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unordered_set", align 8 ; 17 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !189, !range !53, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.l = load i8, ptr %i.k, align 1, !tbaa !223, !range !53, !noundef !57
  br label %_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.n = load i8, ptr %i.m, align 4, !tbaa !111, !range !53, !noundef !57
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEvE18veloxCheckFailArgs) #44
  unreachable

_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i8 [ %i.l, %bb.c ], [ 1, %bb.d ]    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 281 ; 2 uses
  store i8 %.0.i, ptr %i.p, align 1, !tbaa !182
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge111, label %.lr.ph110

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.084.0106 = phi ptr [ %i.u, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.084.0106, align 8, !tbaa !113
  tail call void @_ZN8facebook5velox4exec4Expr15computeMetadataEv(ptr noundef nonnull align 8 dereferenceable(482) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.084.0106, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %._crit_edge, label %.lr.ph

._crit_edge111:                                   ; preds = %bb.g, %_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(482) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !111, !range !53, !noundef !57
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.l

.lr.ph110:                                        ; preds = %_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit, %bb.g
  %.sroa.080.0109 = phi ptr [ %i.ag, %bb.g ], [ %i.q, %_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit ] ; 2 uses
  %storemerge107108 = phi i8 [ %storemerge, %bb.g ], [ %.0.i, %_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv.exit ]
  %i.ac = load ptr, ptr %.sroa.080.0109, align 8, !tbaa !113 ; 2 uses
  %i.ad = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(482) %i.ac, ptr nonnull @_ZTIN8facebook5velox4exec4ExprE, ptr nonnull @_ZTIN8facebook5velox4exec10LambdaExprE, i64 0) #30 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph110
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 504
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph110, %bb.f
  %.pn124 = phi ptr [ %i.af, %bb.f ], [ %i.ac, %.lr.ph110 ]
  %.pn123.in = getelementptr inbounds nuw i8, ptr %.pn124, i64 281
  %.pn123 = load i8, ptr %.pn123.in, align 1, !tbaa !182, !range !53, !noundef !57
  %storemerge = and i8 %storemerge107108, %.pn123 ; 2 uses
  store i8 %storemerge, ptr %i.p, align 1, !tbaa !182
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.080.0109, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %._crit_edge111, label %.lr.ph110

bb.h:                                             ; preds = %._crit_edge111
  %i.ai = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(482) %0, ptr nonnull @_ZTIN8facebook5velox4exec4ExprE, ptr nonnull @_ZTIN8facebook5velox4exec12ConstantExprE, i64 0) #30
  %.not93 = icmp eq ptr %i.ai, null
  br i1 %.not93, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(482) %0, ptr nonnull @_ZTIN8facebook5velox4exec4ExprE, ptr nonnull @_ZTIN8facebook5velox4exec14FieldReferenceE, i64 0) #30
  %.not94 = icmp eq ptr %i.aj, null
  br i1 %.not94, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(482) %0, ptr nonnull @_ZTIN8facebook5velox4exec4ExprE, ptr nonnull @_ZTIN8facebook5velox4exec8CastExprE, i64 0) #30
  %.not95 = icmp eq ptr %i.ak, null
  br i1 %.not95, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(482) %0, ptr nonnull @_ZTIN8facebook5velox4exec4ExprE, ptr nonnull @_ZTIN8facebook5velox4exec11SpecialFormE, i64 0) #30 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(482) %i.al)
  br label %bb.ai

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %._crit_edge111
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !107
  %.not96 = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.ar = load i8, ptr %i.aq, align 2, !range !53
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond = select i1 %.not96, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.at, align 8, !tbaa !219
  br label %bb.ai

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.au, ptr %1, align 8, !tbaa !179
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 1, ptr %i.av, align 8, !tbaa !180
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ax, align 8, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 1, ptr %i.ba, align 8, !tbaa !180
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !181
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !98  ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %._crit_edge115.thread, label %.lr.ph114

._crit_edge115.thread:                            ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 1, ptr %i.bh, align 8, !tbaa !219
  br label %_ZNSt10_HashtableIPN8facebook5velox4exec14FieldReferenceES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i

.lr.ph114:                                        ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.q

._crit_edge115:                                   ; preds = %_ZNSt13unordered_setIPN8facebook5velox4exec14FieldReferenceESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_S9_EEEEEvT_SI_.exit
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !207 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store i8 1, ptr %i.bk, align 8, !tbaa !219
  %cond = icmp eq ptr %.pre, null
  br i1 %cond, label %_ZNSt10_HashtableIPN8facebook5velox4exec14FieldReferenceES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph118

.lr.ph118:                                        ; preds = %._crit_edge115
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !224
  %.not.not.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = load i64, ptr %i.av, align 8            ; 2 uses
  %i.bo = load ptr, ptr %1, align 8
  br i1 %.not.not.i.i.i, label %.preheader.us, label %.lr.ph118.split

.preheader.us:                                    ; preds = %.lr.ph118, %.critedge.loopexit.us
  %.sroa.072.0116.us = phi ptr [ %i.bv, %.critedge.loopexit.us ], [ %.pre, %.lr.ph118 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.072.0116.us, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !214
  br label %bb.o

bb.o:                                             ; preds = %.preheader.us, %bb.p
  %.sroa.06.0.in.i.i.i.us = phi ptr [ %.sroa.06.0.i.i.i.us, %bb.p ], [ %i.aw, %.preheader.us ]
  %.sroa.06.0.i.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.i.us, align 8, !tbaa !208 ; 3 uses
  %i.br = icmp eq ptr %.sroa.06.0.i.i.i.us, null
  br i1 %i.br, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !214
  %i.bu = icmp eq ptr %i.bq, %i.bt
  br i1 %i.bu, label %.critedge.loopexit.us, label %bb.o, !llvm.loop !225

.critedge.loopexit.us:                            ; preds = %bb.p
  %i.bv = load ptr, ptr %.sroa.072.0116.us, align 8, !tbaa !208 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.lr.ph.i.i.i.i.preheader, label %.preheader.us

bb.q:                                             ; preds = %.lr.ph114, %_ZNSt13unordered_setIPN8facebook5velox4exec14FieldReferenceESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_S9_EEEEEvT_SI_.exit
  %.sroa.076.0112 = phi ptr [ %i.be, %.lr.ph114 ], [ %i.eu, %_ZNSt13unordered_setIPN8facebook5velox4exec14FieldReferenceESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_S9_EEEEEvT_SI_.exit ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.076.0112, align 8, !tbaa !113 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 280
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !219, !range !53, !noundef !57
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !220 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !220 ; 3 uses
  %i.cf = icmp eq ptr %i.cc, %i.ce                ; 2 uses
  br i1 %i.ca, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  br i1 %i.cf, label %_ZNSt13unordered_setIPN8facebook5velox4exec14FieldReferenceESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_S9_EEEEEvT_SI_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.noexc
  %.sroa.03.06.i.i.i = phi ptr [ %i.dl, %.noexc ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cg = load i64, ptr %i.bj, align 8, !tbaa !224
  %.not.not.i = icmp eq i64 %i.cg, 0
  %i.ch = load ptr, ptr %.sroa.03.06.i.i.i, align 8 ; 6 uses
  br i1 %.not.not.i, label %.preheader, label %.thread35.i

.thread35.i:                                      ; preds = %.lr.ph.i.i.i
  %i.ci = ptrtoint ptr %i.ch to i64               ; 4 uses
  %i.cj = load i64, ptr %i.av, align 8, !tbaa !180 ; 2 uses
  %i.ck = urem i64 %i.ci, %i.cj                   ; 5 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !179
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !226 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.u

.preheader:                                       ; preds = %.lr.ph.i.i.i, %bb.s
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.s ], [ %i.aw, %.lr.ph.i.i.i ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !208 ; 3 uses
  %i.co = icmp eq ptr %.sroa.028.0.i, null
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !214
  %i.cr = icmp eq ptr %i.ch, %i.cq
  br i1 %i.cr, label %.noexc, label %.preheader, !llvm.loop !227

bb.t:                                             ; preds = %.preheader
  %i.cs = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !180
  %i.cu = urem i64 %i.cs, %i.ct
  br label %.critedge.i

bb.u:                                             ; preds = %.thread35.i
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !208 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !214
  %i.cy = icmp eq ptr %i.ch, %i.cx
  br i1 %i.cy, label %.noexc, label %.lr.ph.i.i.i45

bb.v:                                             ; preds = %bb.w
  %i.cz = icmp eq ptr %i.ch, %i.dc
  br i1 %i.cz, label %.noexc, label %.lr.ph.i.i.i45, !llvm.loop !228

.lr.ph.i.i.i45:                                   ; preds = %bb.u, %bb.v
  %.020.i.i.i = phi ptr [ %i.da, %bb.v ], [ %i.cv, %bb.u ]
  %i.da = load ptr, ptr %.020.i.i.i, align 8, !tbaa !208 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i45
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !214 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = urem i64 %i.dd, %i.cj
  %.not19.i.i.i = icmp eq i64 %i.de, %i.ck
  br i1 %.not19.i.i.i, label %bb.v, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !228

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.w
  br label %.critedge.i, !llvm.loop !228

.critedge.i:                                      ; preds = %.lr.ph.i.i.i45, %..loopexit_crit_edge21.i.i.i, %bb.t, %.thread35.i
  %i.df = phi i64 [ %i.cu, %bb.t ], [ %i.ck, %.thread35.i ], [ %i.ck, %..loopexit_crit_edge21.i.i.i ], [ %i.ck, %.lr.ph.i.i.i45 ]
  %i.dg = phi i64 [ %i.cs, %bb.t ], [ %i.ci, %.thread35.i ], [ %i.ci, %..loopexit_crit_edge21.i.i.i ], [ %i.ci, %.lr.ph.i.i.i45 ]
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec4Expr18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.gz = and i64 %i.gy, %i.gw
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !33
  %indvars.iv.next163.2 = add nuw nsw i64 %indvars.iv162, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.062.i131, i64 %indvars.iv.next163.2
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !33
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next163.2 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !33
  %i.he = and i64 %i.hd, %i.hb
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !33
  %indvars.iv.next163.3 = add nuw nsw i64 %indvars.iv162, 4 ; 2 uses
  %exitcond165.not.3 = icmp eq i64 %indvars.iv.next163.3, %i.dx
  br i1 %exitcond165.not.3, label %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit, label %.lr.ph147.split.us, !llvm.loop !385

bb.ah:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ai:                                            ; preds = %bb.af
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph147.split:                                  ; preds = %.lr.ph147.split.prol.loopexit, %.lr.ph147.split
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.1, %.lr.ph147.split ], [ %indvars.iv159.unr, %.lr.ph147.split.prol.loopexit ] ; 5 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.062.i131, i64 %indvars.iv159
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !33
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv159
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !33
  %i.hm = or i64 %i.hl, %i.hj
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv159 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !33
  %i.hp = and i64 %i.ho, %i.hm
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !33
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.062.i131, i64 %indvars.iv.next160
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !33
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next160
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !33
  %i.hu = or i64 %i.ht, %i.hr
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next160 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !33
  %i.hx = and i64 %i.hw, %i.hu
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !33
  %indvars.iv.next160.1 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next160.1, %i.dx
  br i1 %exitcond.not.1, label %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit, label %.lr.ph147.split, !llvm.loop !386

_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit: ; preds = %.lr.ph147.split.prol.loopexit, %.lr.ph147.split, %.lr.ph147.split.us.prol.loopexit, %.lr.ph147.split.us, %middle.block277, %vec.epilog.middle.block293, %middle.block, %vec.epilog.middle.block, %bb.ag
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.pre170 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !319 ; 6 uses
  %.not.i.i.i57 = icmp sgt i32 %.pre170, 0
  br i1 %.not.i.i.i57, label %bb.ak, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.ak:                                            ; preds = %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit
  %i.hy = and i32 %.pre170, 2147483584            ; 4 uses
  %i.hz = zext nneg i32 %i.hy to i64
  %.not37.i.i.not.i227.not = icmp eq i32 %i.hy, 0
  br i1 %.not37.i.i.not.i227.not, label %.critedge.i.i.i, label %.lr.ph229

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph229
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i228, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.hz
  br i1 %.not37.i.i.not.i, label %.lr.ph229, label %.critedge.i.i.i, !llvm.loop !320

.lr.ph229:                                        ; preds = %bb.ak, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i228 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.ak ] ; 3 uses
  %i.ia = lshr exact i64 %indvars.iv.i228, 3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !33 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.ic, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !320

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.ak
  %.not38.i.i.i = icmp eq i32 %.pre170, %i.hy
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %.critedge.i.i.i
  %i.id = lshr i32 %.pre170, 6
  %i.ie = and i32 %.pre170, 63
  %i.if = zext nneg i32 %i.ie to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.if
  %i.ig = xor i64 %notmask.i43.i.i.i, -1
  %i.ih = zext nneg i32 %i.id to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !33
  %i.ik = and i64 %i.ij, %i.ig                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.al, %.critedge.i.i.i, %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  store i32 0, ptr %i.il, align 4, !tbaa !231
  %i.im = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store i32 0, ptr %i.im, align 8, !tbaa !240
  %i.in = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  store i16 256, ptr %i.in, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph229
  %i.io = trunc nuw nsw i64 %indvars.iv.i228 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.al
  %.sink67.i.i.i = phi i64 [ %i.ik, %bb.al ], [ %i.ic, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.hy, %bb.al ], [ %i.io, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ip = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = or disjoint i32 %.sink65.i.i.i, %i.iq   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.ds, ptr %4, align 8, !tbaa !321
  store ptr %i.a, ptr %i.bx, align 8, !tbaa !324
  store i8 1, ptr %i.by, align 8, !tbaa !325
  store ptr %i.ds, ptr %5, align 8, !tbaa !326
  store ptr %i.a, ptr %i.bz, align 8, !tbaa !324
  store i8 1, ptr %i.ca, align 8, !tbaa !328
  %i.it = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ir, i32 noundef %.pre170, ptr noundef nonnull byval(%class.anon.499) align 8 %4, ptr noundef nonnull byval(%class.anon.501) align 8 %5)
          to label %.noexc58 unwind label %bb.aj  ; 0 uses

.noexc58:                                         ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.iu = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.iv = add nsw i32 %i.iu, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !240
  %i.ix = getelementptr inbounds nuw i8, ptr %i.dr, i64 37
  store i8 0, ptr %i.ix, align 1, !tbaa !329
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc58, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeEi.exit
  invoke void @_ZN8facebook5velox4exec7EvalCtx16moveAppendErrorsERSt10shared_ptrINS1_10EvalErrorsEE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.thread133 unwind label %bb.ah, !inline_history !363

bb.am:                                            ; preds = %bb.ac
  %.not67.i = icmp eq ptr %i.dd, null
  br i1 %.not67.i, label %.thread133, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = load ptr, ptr %i.j, align 8, !tbaa !336 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  %i.ja = load ptr, ptr %i.i, align 8, !tbaa !335 ; 2 uses
  br i1 %i.iz, label %bb.ao, label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i54

bb.ao:                                            ; preds = %bb.an
  %i.jb = invoke noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(38) %i.ja)
          to label %.noexc55 unwind label %bb.ab  ; 4 uses

.noexc55:                                         ; preds = %bb.ao
  store ptr %i.jb, ptr %i.j, align 8, !tbaa !336
  store ptr %i.jb, ptr %i.i, align 8, !tbaa !335
  br label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i54

_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i54: ; preds = %bb.an, %.noexc55
  %i.jc = phi ptr [ %i.jb, %.noexc55 ], [ %i.ja, %bb.an ] ; 2 uses
  %i.jd = phi ptr [ %i.jb, %.noexc55 ], [ %i.iy, %bb.an ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 28
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !231
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !240
  invoke void @_ZN8facebook5velox17SelectivityVector13deselectNullsEPKmii(ptr noundef nonnull align 8 dereferenceable(38) %i.jd, ptr noundef nonnull %i.dd, i32 noundef %i.jf, i32 noundef %i.jh)
          to label %.thread133 unwind label %bb.ab

.thread133:                                       ; preds = %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i54, %.thread, %bb.am, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.ji = load ptr, ptr %i.i, align 8, !tbaa !335 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 28
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !231
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !240
  %i.jn = icmp slt i32 %i.jk, %i.jm
  br i1 %i.jn, label %bb.t, label %.thread133._crit_edge

.thread133._crit_edge:                            ; preds = %bb.t, %.thread133, %_ZNK8facebook5velox4exec4Expr19throwArgumentErrorsERKNS1_7EvalCtxE.exit
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !51
  %i.jo = load ptr, ptr %i.j, align 8, !tbaa !336 ; 2 uses
  %.not.i51 = icmp eq ptr %i.jo, null
  br i1 %.not.i51, label %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread133._crit_edge
  %i.jp = invoke noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %i.jo)
          to label %.noexc52 unwind label %bb.f

.noexc52:                                         ; preds = %bb.ap
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !333
  %i.jr = invoke noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %i.jq)
          to label %.noexc53 unwind label %bb.f

.noexc53:                                         ; preds = %.noexc52
  %i.js = icmp ne i32 %i.jp, %i.jr
  br label %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %bb.ai, %bb.ah, %bb.ab
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.hg, %bb.ai ], [ %i.de, %bb.ab ], [ %i.hf, %bb.ah ], [ %i.hh, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !51
  br label %bb.be

_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit: ; preds = %.noexc53, %.thread133._crit_edge
  %11 = phi i1 [ false, %.thread133._crit_edge ], [ %i.js, %.noexc53 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !330, !range !53, !noundef !57
  %12 = trunc nuw i8 %i.ju to i1
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %i.jt, align 8, !tbaa !330
  %i.jv = load ptr, ptr %i.i, align 8, !tbaa !335 ; 2 uses
  %i.jw = load ptr, ptr %6, align 8, !tbaa !344   ; 2 uses
  %.not.i48 = icmp eq ptr %i.jw, null
  br i1 %.not.i48, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit
  %i.jx = load i8, ptr %i.bk, align 1, !tbaa !347, !range !53, !noundef !57
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.as, label %.noexc49

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNK8facebook5velox4exec10EvalErrors15throwFirstErrorERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(40) %i.jw, ptr noundef nonnull align 8 dereferenceable(38) %i.jv)
          to label %.noexc49 unwind label %bb.f

.noexc49:                                         ; preds = %bb.as, %bb.ar
  invoke void @_ZNK8facebook5velox4exec7EvalCtx9addErrorsERKNS0_17SelectivityVectorERKSt10shared_ptrINS1_10EvalErrorsEERS8_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.at unwind label %bb.f

bb.at:                                            ; preds = %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit, %.noexc49
  %i.jz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ka = load <2 x ptr>, ptr %7, align 16, !tbaa !47
  %i.kb = load <2 x ptr>, ptr %i.s, align 8, !tbaa !47
  store <2 x ptr> %i.kb, ptr %7, align 16, !tbaa !47
  store <2 x ptr> %i.ka, ptr %i.s, align 8, !tbaa !47
  %i.kc = load ptr, ptr %i.j, align 8, !tbaa !336 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.au, label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i

bb.au:                                            ; preds = %bb.at
  %i.ke = load ptr, ptr %i.i, align 8, !tbaa !335
  %i.kf = invoke noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(38) %i.ke)
          to label %.noexc46 unwind label %bb.f   ; 3 uses

.noexc46:                                         ; preds = %bb.au
  store ptr %i.kf, ptr %i.j, align 8, !tbaa !336
  store ptr %i.kf, ptr %i.i, align 8, !tbaa !335
  br label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i

_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i: ; preds = %.noexc46, %bb.at
  %i.kg = phi ptr [ %i.kc, %bb.at ], [ %i.kf, %.noexc46 ]
  %i.kh = load ptr, ptr %9, align 8, !tbaa !387, !nonnull !57, !align !283
  invoke void @_ZNK8facebook5velox4exec7EvalCtx14deselectErrorsERNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.kh, ptr noundef nonnull align 8 dereferenceable(38) %i.kg)
          to label %bb.av unwind label %bb.f

bb.av:                                            ; preds = %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i
  %i.ki = load ptr, ptr %i.j, align 8, !tbaa !336 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !231
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !240
  %i.kn = icmp slt i32 %i.kk, %i.km               ; 2 uses
  br i1 %i.kn, label %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ko = load ptr, ptr %2, align 8, !tbaa !241
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 80
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !388 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i43, label %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kr = invoke noundef i64 @_ZN8facebook5velox10VectorPool7releaseERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1856) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i unwind label %bb.f ; 0 uses

_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i: ; preds = %bb.ax, %bb.aw
  %i.ks = load ptr, ptr %i.y, align 8, !tbaa !193 ; 3 uses
  %i.kt = load ptr, ptr %i.ah, align 8, !tbaa !194 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.kt, %i.ks
  br i1 %.not.i.i2.i, label %_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ll, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i ], [ %i.ks, %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 4 uses
  %i.kx = load atomic i64, ptr %i.kw acquire, align 8 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 4294967297
  %i.kz = trunc i64 %i.kx to i32                  ; 2 uses
  br i1 %i.ky, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.kw, align 8, !tbaa !75
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.la, align 4, !tbaa !77
  %i.lb = load ptr, ptr %i.kv, align 8, !tbaa !78
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #30, !inline_history !389
  %i.le = load ptr, ptr %i.kv, align 8, !tbaa !78
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #30, !inline_history !389
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.lh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.li = add nsw i32 %i.kz, -1
  store i32 %i.li, ptr %i.kw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.lj = atomicrmw volatile add ptr %i.kw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kz, %bb.bb ], [ %i.lj, %bb.bc ]
  %i.lk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.lk, label %bb.bd, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i, !prof !61

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #30
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.az, %.lr.ph.i.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.ll, %i.kt
  br i1 %.not.i.i.i.i.i44, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i
  store ptr %i.ks, ptr %i.ah, align 8, !tbaa !194
  br label %_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit

_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i
  %i.lm = load ptr, ptr %i.h, align 8, !tbaa !333
  invoke void @_ZNK8facebook5velox4exec4Expr11setAllNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %i.lm, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit" unwind label %bb.f, !inline_history !363

bb.be:                                            ; preds = %bb.aq, %bb.f
  %.pn75.i = phi { ptr, i32 } [ %i.x, %bb.f ], [ %.pn70.pn.pn.i, %bb.aq ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30, !inline_history !363
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #30, !inline_history !363
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #30, !inline_history !363
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body

"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit": ; preds = %bb.av, %_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30, !inline_history !363
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ln = load ptr, ptr %i.jz, align 8, !tbaa !72 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42, label %bb.bf

bb.bf:                                            ; preds = %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit"
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.lo, align 8, !tbaa !75
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !77
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !78
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #30, !inline_history !390
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !78
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #30, !inline_history !390
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42

bb.bh:                                            ; preds = %bb.bf
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i39 = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i39, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ma = add nsw i32 %i.lr, -1
  store i32 %i.ma, ptr %i.lo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

bb.bj:                                            ; preds = %bb.bh
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i41 = phi i32 [ %i.lr, %bb.bi ], [ %i.mb, %bb.bj ]
  %i.mc = icmp eq i32 %.0.i.i.i.i41, 1
  br i1 %i.mc, label %bb.bk, label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42, !prof !61

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42

_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42: ; preds = %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit", %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !72 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec4Expr11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !33
  %indvars.iv.next180.2 = add nuw nsw i64 %indvars.iv179, 3 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.062.i142, i64 %indvars.iv.next180.2
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next180.2 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !33
  %i.hj = and i64 %i.hi, %i.hg
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !33
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %exitcond182.not.3 = icmp eq i64 %indvars.iv.next180.3, %i.ec
  br i1 %exitcond182.not.3, label %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit, label %.lr.ph155.split.us, !llvm.loop !727

bb.al:                                            ; preds = %bb.aj
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.am:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.lr.ph155.split:                                  ; preds = %.lr.ph155.split.prol.loopexit, %.lr.ph155.split
  %indvars.iv176 = phi i64 [ %indvars.iv.next177.1, %.lr.ph155.split ], [ %indvars.iv176.unr, %.lr.ph155.split.prol.loopexit ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.062.i142, i64 %indvars.iv176
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !33
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv176
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !33
  %i.hq = or i64 %i.hp, %i.hn
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv176 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !33
  %i.ht = and i64 %i.hs, %i.hq
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !33
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.062.i142, i64 %indvars.iv.next177
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !33
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next177
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !33
  %i.hy = or i64 %i.hx, %i.hv
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next177 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !33
  %i.ib = and i64 %i.ia, %i.hy
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !33
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next177.1, %i.ec
  br i1 %exitcond.not.1, label %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit, label %.lr.ph155.split, !llvm.loop !728

_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit: ; preds = %.lr.ph155.split.prol.loopexit, %.lr.ph155.split, %.lr.ph155.split.us.prol.loopexit, %.lr.ph155.split.us, %middle.block313, %vec.epilog.middle.block329, %middle.block, %vec.epilog.middle.block, %bb.ak
  %.phi.trans.insert188 = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.pre189 = load i32, ptr %.phi.trans.insert188, align 8, !tbaa !319 ; 6 uses
  %.not.i.i.i64 = icmp sgt i32 %.pre189, 0
  br i1 %.not.i.i.i64, label %bb.an, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.an:                                            ; preds = %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit
  %i.ic = and i32 %.pre189, 2147483584            ; 4 uses
  %i.id = zext nneg i32 %i.ic to i64
  %.not37.i.i.not.i262.not = icmp eq i32 %i.ic, 0
  br i1 %.not37.i.i.not.i262.not, label %.critedge.i.i.i, label %.lr.ph265

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph265
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i263, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.id
  br i1 %.not37.i.i.not.i, label %.lr.ph265, label %.critedge.i.i.i, !llvm.loop !320

.lr.ph265:                                        ; preds = %bb.an, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i263 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.an ] ; 3 uses
  %i.ie = lshr exact i64 %indvars.iv.i263, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ie
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !33 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !320

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.an
  %.not38.i.i.i = icmp eq i32 %.pre189, %i.ic
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i.i.i
  %i.ih = lshr i32 %.pre189, 6
  %i.ii = and i32 %.pre189, 63
  %i.ij = zext nneg i32 %i.ii to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.ij
  %i.ik = xor i64 %notmask.i43.i.i.i, -1
  %i.il = zext nneg i32 %i.ih to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !33
  %i.io = and i64 %i.in, %i.ik                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.io, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.ao, %.critedge.i.i.i, %_ZN8facebook5velox4exec20MutableRemainingRows11mutableRowsEv.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  store i32 0, ptr %i.ip, align 4, !tbaa !231
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 0, ptr %i.iq, align 8, !tbaa !240
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  store i16 256, ptr %i.ir, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph265
  %i.is = trunc nuw nsw i64 %indvars.iv.i263 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.ao
  %.sink67.i.i.i = phi i64 [ %i.io, %bb.ao ], [ %i.ig, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.ic, %bb.ao ], [ %i.is, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.it = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.iu = trunc nuw nsw i64 %i.it to i32
  %i.iv = or disjoint i32 %.sink65.i.i.i, %i.iu   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.dx, ptr %4, align 8, !tbaa !321
  store ptr %i.a, ptr %i.by, align 8, !tbaa !324
  store i8 1, ptr %i.bz, align 8, !tbaa !325
  store ptr %i.dx, ptr %5, align 8, !tbaa !326
  store ptr %i.a, ptr %i.ca, align 8, !tbaa !324
  store i8 1, ptr %i.cb, align 8, !tbaa !328
  %i.ix = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.iv, i32 noundef %.pre189, ptr noundef nonnull byval(%class.anon.499) align 8 %4, ptr noundef nonnull byval(%class.anon.501) align 8 %5)
          to label %.noexc65 unwind label %bb.am  ; 0 uses

.noexc65:                                         ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.iy = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.iz = add nsw i32 %i.iy, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 %i.iz, ptr %i.ja, align 8, !tbaa !240
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dw, i64 37
  store i8 0, ptr %i.jb, align 1, !tbaa !329
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc65, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeEi.exit
  invoke void @_ZN8facebook5velox4exec7EvalCtx16moveAppendErrorsERSt10shared_ptrINS1_10EvalErrorsEE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.thread144 unwind label %bb.ap, !inline_history !708

bb.ap:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aq:                                            ; preds = %bb.ag
  %.not67.i = icmp eq ptr %i.dh, null
  br i1 %.not67.i, label %.thread144, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jd = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  %i.jf = load ptr, ptr %i.n, align 8, !tbaa !335 ; 2 uses
  br i1 %i.je, label %bb.as, label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i61

bb.as:                                            ; preds = %bb.ar
  %i.jg = invoke noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(38) %i.jf)
          to label %.noexc62 unwind label %bb.af  ; 4 uses

.noexc62:                                         ; preds = %bb.as
  store ptr %i.jg, ptr %i.o, align 8, !tbaa !336
  store ptr %i.jg, ptr %i.n, align 8, !tbaa !335
  br label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i61

_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i61: ; preds = %bb.ar, %.noexc62
  %i.jh = phi ptr [ %i.jg, %.noexc62 ], [ %i.jf, %bb.ar ] ; 2 uses
  %i.ji = phi ptr [ %i.jg, %.noexc62 ], [ %i.jd, %bb.ar ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !231
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !240
  invoke void @_ZN8facebook5velox17SelectivityVector13deselectNullsEPKmii(ptr noundef nonnull align 8 dereferenceable(38) %i.ji, ptr noundef nonnull %i.dh, i32 noundef %i.jk, i32 noundef %i.jm)
          to label %.thread144 unwind label %bb.af

.thread144:                                       ; preds = %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i61, %.thread, %bb.aq, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.jn = load ptr, ptr %i.n, align 8, !tbaa !335 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 28
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !231
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !240
  %i.js = icmp slt i32 %i.jp, %i.jr
  br i1 %i.js, label %bb.v, label %.thread144._crit_edge

.thread144._crit_edge:                            ; preds = %bb.v, %.thread144, %_ZNK8facebook5velox4exec4Expr19throwArgumentErrorsERKNS1_7EvalCtxE.exit
  %.2 = phi i8 [ %i.j, %_ZNK8facebook5velox4exec4Expr19throwArgumentErrorsERKNS1_7EvalCtxE.exit ], [ %i.cw, %.thread144 ], [ %i.cw, %bb.v ]
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !51
  %i.jt = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i57 = icmp eq ptr %i.jt, null
  br i1 %.not.i57, label %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60, label %bb.at

bb.at:                                            ; preds = %.thread144._crit_edge
  %i.ju = invoke noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %i.jt)
          to label %.noexc58 unwind label %bb.w

.noexc58:                                         ; preds = %bb.at
  %i.jv = load ptr, ptr %i.m, align 8, !tbaa !333
  %i.jw = invoke noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %i.jv)
          to label %.noexc59 unwind label %bb.w

.noexc59:                                         ; preds = %.noexc58
  %i.jx = icmp ne i32 %i.ju, %i.jw
  br label %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60

bb.au:                                            ; preds = %bb.ap, %bb.am, %bb.al, %bb.af, %bb.ae
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.di, %bb.ae ], [ %i.dj, %bb.af ], [ %i.jc, %bb.ap ], [ %i.hl, %bb.am ], [ %i.hk, %bb.al ]
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !51
  br label %bb.bi

_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60: ; preds = %.noexc59, %.thread144._crit_edge
  %11 = phi i1 [ false, %.thread144._crit_edge ], [ %i.jx, %.noexc59 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !330, !range !53, !noundef !57
  %12 = trunc nuw i8 %i.jz to i1
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %i.jy, align 8, !tbaa !330
  %i.ka = load ptr, ptr %i.n, align 8, !tbaa !335 ; 2 uses
  %i.kb = load ptr, ptr %6, align 8, !tbaa !344   ; 2 uses
  %.not.i54 = icmp eq ptr %i.kb, null
  br i1 %.not.i54, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60
  %i.kc = load i8, ptr %i.bl, align 1, !tbaa !347, !range !53, !noundef !57
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.aw, label %.noexc55

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK8facebook5velox4exec10EvalErrors15throwFirstErrorERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(40) %i.kb, ptr noundef nonnull align 8 dereferenceable(38) %i.ka)
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.aw, %bb.av
  invoke void @_ZNK8facebook5velox4exec7EvalCtx9addErrorsERKNS0_17SelectivityVectorERKSt10shared_ptrINS1_10EvalErrorsEERS8_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ax unwind label %bb.w

bb.ax:                                            ; preds = %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60, %.noexc55
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kf = load <2 x ptr>, ptr %7, align 16, !tbaa !47
  %i.kg = load <2 x ptr>, ptr %i.u, align 8, !tbaa !47
  store <2 x ptr> %i.kg, ptr %7, align 16, !tbaa !47
  store <2 x ptr> %i.kf, ptr %i.u, align 8, !tbaa !47
  %i.kh = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.ay, label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.kj = load ptr, ptr %i.n, align 8, !tbaa !335
  %i.kk = invoke noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(38) %i.kj)
          to label %.noexc52 unwind label %bb.w   ; 3 uses

.noexc52:                                         ; preds = %bb.ay
  store ptr %i.kk, ptr %i.o, align 8, !tbaa !336
  store ptr %i.kk, ptr %i.n, align 8, !tbaa !335
  br label %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i

_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i: ; preds = %.noexc52, %bb.ax
  %i.kl = phi ptr [ %i.kh, %bb.ax ], [ %i.kk, %.noexc52 ]
  %i.km = load ptr, ptr %10, align 8, !tbaa !387, !nonnull !57, !align !283
  invoke void @_ZNK8facebook5velox4exec7EvalCtx14deselectErrorsERNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.km, ptr noundef nonnull align 8 dereferenceable(38) %i.kl)
          to label %bb.az unwind label %bb.w

bb.az:                                            ; preds = %_ZN8facebook5velox4exec20MutableRemainingRows26ensureMutableRemainingRowsEv.exit.i
  %i.kn = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 28
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !231
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !240
  %i.ks = icmp slt i32 %i.kp, %i.kr               ; 2 uses
  br i1 %i.ks, label %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kt = load ptr, ptr %2, align 8, !tbaa !241
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 80
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !388 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i49, label %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kw = invoke noundef i64 @_ZN8facebook5velox10VectorPool7releaseERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1856) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i unwind label %bb.w ; 0 uses

_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i: ; preds = %bb.bb, %bb.ba
  %i.kx = load ptr, ptr %i.z, align 8, !tbaa !193 ; 3 uses
  %i.ky = load ptr, ptr %i.ai, align 8, !tbaa !194 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.ky, %i.kx
  br i1 %.not.i.i2.i, label %_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.lq, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i ], [ %i.kx, %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load atomic i64, ptr %i.lb acquire, align 8 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 4294967297
  %i.le = trunc i64 %i.lc to i32                  ; 2 uses
  br i1 %i.ld, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.lb, align 8, !tbaa !75
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 0, ptr %i.lf, align 4, !tbaa !77
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !78
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #30, !inline_history !729
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !78
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #30, !inline_history !729
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.lm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ln = add nsw i32 %i.le, -1
  store i32 %i.ln, ptr %i.lb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.lo = atomicrmw volatile add ptr %i.lb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.le, %bb.bf ], [ %i.lo, %bb.bg ]
  %i.lp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.lp, label %bb.bh, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i, !prof !61

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #30
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.bd, %.lr.ph.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.lq, %i.ky
  br i1 %.not.i.i.i.i.i50, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i
  store ptr %i.kx, ptr %i.ai, align 8, !tbaa !194
  br label %_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit

_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i
  %i.lr = load ptr, ptr %i.m, align 8, !tbaa !333
  invoke void @_ZNK8facebook5velox4exec4Expr11setAllNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %i.lr, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit" unwind label %bb.w, !inline_history !708

bb.bi:                                            ; preds = %bb.au, %bb.w
  %.pn75.i = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %.pn70.pn.pn.i, %bb.au ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30, !inline_history !708
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #30, !inline_history !708
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #30, !inline_history !708
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body

"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit": ; preds = %bb.az, %_ZN8facebook5velox4exec4Expr18releaseInputValuesERNS1_7EvalCtxE.exit
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30, !inline_history !708
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ls = load ptr, ptr %i.ke, align 8, !tbaa !72 ; 8 uses
  %.not.i.i44 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i44, label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, label %bb.bj

bb.bj:                                            ; preds = %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit"
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 4 uses
  %i.lu = load atomic i64, ptr %i.lt acquire, align 8 ; 2 uses
  %i.lv = icmp eq i64 %i.lu, 4294967297
  %i.lw = trunc i64 %i.lu to i32                  ; 2 uses
  br i1 %i.lv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.lt, align 8, !tbaa !75
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  store i32 0, ptr %i.lx, align 4, !tbaa !77
  %i.ly = load ptr, ptr %i.ls, align 8, !tbaa !78
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #30, !inline_history !730
  %i.mb = load ptr, ptr %i.ls, align 8, !tbaa !78
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #30, !inline_history !730
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

bb.bl:                                            ; preds = %bb.bj
  %i.me = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i45 = icmp eq i8 %i.me, 0
  br i1 %.not.i.i.i45, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mf = add nsw i32 %i.lw, -1
  store i32 %i.mf, ptr %i.lt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

bb.bn:                                            ; preds = %bb.bl
  %i.mg = atomicrmw volatile add ptr %i.lt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i47 = phi i32 [ %i.lw, %bb.bm ], [ %i.mg, %bb.bn ]
  %i.mh = icmp eq i32 %.0.i.i.i.i47, 1
  br i1 %i.mh, label %bb.bo, label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, !prof !61

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48: ; preds = %"_ZN8facebook5velox4exec4Expr20evalArgsDefaultNullsIZNS2_11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_1EEbRNS1_20MutableRemainingRowsET_S8_SC_.exit", %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !72 ; 8 uses
end_hunk_2
