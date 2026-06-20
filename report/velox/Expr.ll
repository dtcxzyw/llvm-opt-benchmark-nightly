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
define noundef zeroext i1 @_ZNK8facebook5velox4exec4Expr30isCurrentFunctionDeterministicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(482) %0) local_unnamed_addr #2 align 2 {
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
begin_hunk_1_@_ZN8facebook5velox4exec4Expr24applyFunctionWithPeelingERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i: ; preds = %bb.ck, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr7.i, i64 noundef 40) #45
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit

bb.cl:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.ci
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #46
  unreachable

_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit: ; preds = %bb.cd, %bb.cg, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret i1 %.124

bb.cm:                                            ; preds = %bb.cc, %bb.e, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cc ], [ %i.aa, %bb.e ], [ %i.s, %bb.c ]
  call void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox4exec4Expr11evalAllImplERKNS3_17SelectivityVectorERNS4_7EvalCtxERSt10shared_ptrINS3_10BaseVectorEEE3$_0Lb1EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !338, !range !53, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox4exec4Expr11evalAllImplERKNS3_17SelectivityVectorERNS4_7EvalCtxERSt10shared_ptrINS3_10BaseVectorEEE3$_0Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !764 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !tbaa !766
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !241
  %i.e = getelementptr i8, ptr %.val1.val, i64 80
  %.val1.val.val = load ptr, ptr %i.e, align 8, !tbaa !388 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val1.val.val, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef i64 @_ZN8facebook5velox10VectorPool7releaseERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1856) %.val1.val.val, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i.i.i unwind label %bb.j ; 0 uses

_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !193  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194  ; 2 uses
  %.not.i.i2.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i2.i.i.i, label %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox4exec4Expr11evalAllImplERKNS3_17SelectivityVectorERNS4_7EvalCtxERSt10shared_ptrINS3_10BaseVectorEEE3$_0Lb1EE7executeEv.exit", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i.i.i, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.h, %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.m, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !77
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !767
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30, !inline_history !767
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i, !prof !61

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #30
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !194
  br label %"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox4exec4Expr11evalAllImplERKNS3_17SelectivityVectorERNS4_7EvalCtxERSt10shared_ptrINS3_10BaseVectorEEE3$_0Lb1EE7executeEv.exit"

bb.j:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #30 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #30, !inline_history !768
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox4exec4Expr11evalAllImplERKNS3_17SelectivityVectorERNS4_7EvalCtxERSt10shared_ptrINS3_10BaseVectorEEE3$_0Lb1EE7executeEv.exit": ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, %_ZN8facebook5velox4exec7EvalCtx14releaseVectorsERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE.exit.i.i.i, %bb.a
  ret void
}

declare void @_ZN8facebook5velox10BaseVector13flattenVectorERSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

declare void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE10setIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEbRKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(38) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.944", align 8 ; 9 uses
  tail call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !86, !alias.scope !775
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !89, !alias.scope !775
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !775
  %i.f = load atomic i32, ptr %i.d acquire, align 8, !noalias !775 ; 4 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !3, !noalias !775
  %i.g = and i32 %i.f, -1312
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.f, 128
  %i.j = cmpxchg ptr %i.d, i32 %i.f, i32 %i.i seq_cst seq_cst, align 4, !noalias !775 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !43

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0
  store i32 %i.l, ptr %i.b, align 4, !noalias !775
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !775 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !775
  store i8 1, ptr %i.e, align 8, !tbaa !89, !alias.scope !775
  %i.n = load ptr, ptr %4, align 8, !tbaa !86     ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %.neg.i.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !231
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !240
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = invoke noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.o, ptr noundef nonnull align 8 dereferenceable(38) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i8, ptr %i.c seq_cst, align 8, !range !53, !noundef !57
  %5 = select i1 %1, i8 %i.v, i8 0
  store atomic i8 %5, ptr %i.c seq_cst, align 8
  %.pre = load ptr, ptr %4, align 8, !tbaa !86
  br label %bb.i

bb.g:                                             ; preds = %bb.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.x = zext i1 %1 to i8
  store atomic i8 %i.x, ptr %i.c seq_cst, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.y = phi ptr [ %.pre, %bb.f ], [ %i.n, %bb.h ] ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.y, null
  %.neg.i.i9 = select i1 %.not.i.i8, i64 0, i64 -40
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.neg.i.i9
  invoke void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.z, ptr noundef nonnull align 8 dereferenceable(38) %2)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !86    ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.aa, null
  %.neg.i.i11 = select i1 %.not.i.i10, i64 0, i64 -40
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.neg.i.i11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !231
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !240
  %i.ag = icmp sge i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ai = zext i1 %i.ag to i8
  store atomic i8 %i.ai, ptr %i.ah seq_cst, align 1
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !89, !range !53, !noundef !57
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.al = atomicrmw and ptr %i.aa, i32 -401 seq_cst, align 4 ; 2 uses
  %i.am = and i32 %i.al, -401
  store i32 %i.am, ptr %i.a, align 4, !tbaa !3
  %i.an = and i32 %i.al, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.m

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox12CpuWallTimerESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !526    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN8facebook5velox12CpuWallTimerEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox12CpuWallTimerEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN8facebook5velox12CpuWallTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #45
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox12CpuWallTimerEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4exec4Expr8toStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(482) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  br i1 %2, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  invoke void @_ZNK8facebook5velox4exec4Expr12appendInputsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(482) %1, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !105, !alias.scope !782
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !106, !alias.scope !782
  store i8 0, ptr %i.g, align 8, !tbaa !9, !alias.scope !782
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !501, !noalias !782 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !noalias !782 ; 2 uses
  %i.m = icmp ugt ptr %i.j, %i.l
  %.08.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !505, !noalias !782 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !782 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.g, align 8, !tbaa !9, !alias.scope !782
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #45
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !78
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !78
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !9
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #45
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #30
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !78
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %3, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !507
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.at) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.m

bb.g:                                             ; preds = %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !1148, !alias.scope !2218
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !1152, !alias.scope !2218
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !1153, !alias.scope !2218
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !2218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30, !noalias !2218
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !2218 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !2218
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !2218 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !2218
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !1152, !alias.scope !2218
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30, !noalias !2218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !2218
  %i.u = load ptr, ptr %5, align 8, !tbaa !1148   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !231
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !240
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !319
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !1152
  switch i16 %i.ad, label %bb.n [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load atomic i32, ptr %i.u acquire, align 4
  %i.af = and i32 %i.ae, 768
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !1180

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !1153
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !1180

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #46
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  store ptr %i.j, ptr %6, align 8, !tbaa !86, !alias.scope !2225
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !89, !alias.scope !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30, !noalias !2225
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !2225 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !2225
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !2225 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !43

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !2225
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !2225 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30, !noalias !2225
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !2225
  store i8 1, ptr %i.ay, align 8, !tbaa !89, !alias.scope !2225
  %i.bh = load ptr, ptr %6, align 8, !tbaa !86    ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !231
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !240
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !319
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !53, !noundef !57
  %7 = select i1 %2, i8 %i.br, i8 0
  store atomic i8 %7, ptr %i.f seq_cst, align 8
  %i.bs = load ptr, ptr %6, align 8, !tbaa !86    ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bs, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.neg.i.i24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !231
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !240
  %i.by = icmp sge i32 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i8
  store atomic i8 %i.bz, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !89, !range !53
  %i.ca = trunc nuw i8 %.pre to i1
  br i1 %i.ca, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.cb = phi ptr [ %i.bs, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.cc = atomicrmw and ptr %i.cb, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cd = and i32 %i.cc, -401
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !3
  %i.ce = and i32 %i.cc, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !22

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !89, !range !53, !noundef !57
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !3
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #46
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiSF_St10shared_ptrINS1_10BaseVectorEERKNS1_17SimpleVectorStatsIS3_EEEEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.66", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !1092
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = load i32, ptr %3, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load <2 x ptr>, ptr %4, align 8, !tbaa !47
  store ptr null, ptr %i.g, align 8, !tbaa !72
  store <2 x ptr> %i.h, ptr %6, align 16, !tbaa !47
  store ptr null, ptr %4, align 8, !tbaa !304
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE(ptr noundef nonnull align 8 dereferenceable(272) %i.c, ptr noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.b unwind label %.body, !inline_history !2226

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !77
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #30, !inline_history !2227
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #30, !inline_history !2227
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #30, !inline_history !2226
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #30, !inline_history !2226
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorINS4_10StringViewEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(272) %i.a) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #45
  ret void
}
end_hunk_2
