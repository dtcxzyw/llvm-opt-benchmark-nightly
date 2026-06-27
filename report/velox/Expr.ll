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
