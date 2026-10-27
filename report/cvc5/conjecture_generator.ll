Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/conjecture_generator?download=true
inline.NumInlined: 9988
inline.NumDeleted: 3008
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers10TermGenEnv24considerCurrentTermCanonEj:bb.a

bb.o:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %i.bi, %bb.o ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1287", align 8   ; 4 uses
  %3 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !374    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !374
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit, label %bb.b, !llvm.loop !23

_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !374
  %i.k = icmp ult i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit, %bb.c
  %.08.lcssa.i.i.i11 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %1, ptr %2, align 8, !tbaa !637
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.l = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4cvc58internal6theory11quantifiers13TermGeneratorEESt10_Select1stIS7_ESt4lessIjESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.06.0 = phi ptr [ %i.l, %.critedge ], [ %.19.i.i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 40
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers10TermGenEnv9removeVarENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1258", align 8   ; 4 uses
  %3 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !373
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !373
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 1099511627775
  %i.l = icmp samesign ult i64 %i.k, %i.g         ; 2 uses
  %.19.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i, label %bb.b, !llvm.loop !24

_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i: ; preds = %bb.b
  %i.m = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.m, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !373
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 1099511627775
  %i.r = icmp samesign ult i64 %i.g, %i.q
  br i1 %i.r, label %.critedge.i, label %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %1, ptr %2, align 8, !tbaa !377
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.s = call ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_.exit

_ZNSt3mapIN4cvc58internal8TypeNodeEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.s, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !374
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !374
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers13TermGenerator13resetMatchingEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((48, 60)) %0, i32 noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.a, align 8, !tbaa !646
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.b, align 4, !tbaa !647
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !648  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !649
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit, label %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !649
  br label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit

_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !648  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !649
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit3, label %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i2

_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i2: ; preds = %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit
  store ptr %i.h, ptr %i.i, align 8, !tbaa !649
  br label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit3

_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit3: ; preds = %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit, %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.k, align 8, !tbaa !650
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple.1287", align 8   ; 4 uses
  %6 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %7 = alloca %"class.std::tuple.1258", align 8   ; 4 uses
  %8 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %9 = alloca %"class.std::tuple.1258", align 8   ; 4 uses
  %10 = alloca %"class.std::tuple.1210", align 1  ; 3 uses
  %11 = alloca %"class.std::tuple.1455", align 8  ; 4 uses
  %12 = alloca %"class.std::tuple.1210", align 1  ; 3 uses
  %13 = alloca %"class.std::tuple.1258", align 8  ; 4 uses
  %14 = alloca %"class.std::tuple.1210", align 1  ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %16 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.3", align 8 ; 4 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.3", align 8 ; 4 uses
  %19 = alloca %"struct.std::_Rb_tree_iterator.1050", align 8 ; 4 uses
  %20 = alloca %"struct.std::_Rb_tree_iterator.1050", align 8 ; 4 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %22 = alloca %"struct.std::_Rb_tree_iterator.1050", align 8 ; 4 uses
  %23 = alloca %"struct.std::_Rb_tree_iterator.1050", align 8 ; 4 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !646  ; 5 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread, label %.critedge94

.critedge94:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !695
  switch i32 %i.g, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread [
    i32 1, label %bb.b
    i32 2, label %bb.r
    i32 5, label %bb.w
  ]

bb.b:                                             ; preds = %.critedge94
  %i.h = icmp eq i32 %i.d, 0
  br i1 %i.h, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !646
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !650  ; 2 uses
  %i.k = and i32 %i.j, 2
  %.not89 = icmp eq i32 %i.k, 0
  br i1 %.not89, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !617    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3744
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 3736 ; 2 uses
  %.not10.i.i.i.i.i215 = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i.i.i215, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread, label %.lr.ph.i.i.i.i.i216

.lr.ph.i.i.i.i.i216:                              ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !62
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1099511627775              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i216
  %.012.i.i.i.i.i217 = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i216 ], [ %.1.i.i.i.i.i222, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i218 = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i216 ], [ %.19.i.i.i.i.i219, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i217, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1099511627775
  %i.w = icmp samesign ult i64 %i.v, %i.r         ; 2 uses
  %.19.i.i.i.i.i219 = select i1 %i.w, ptr %.0811.i.i.i.i.i218, ptr %.012.i.i.i.i.i217 ; 3 uses
  %.1.in.v.i.i.i.i.i220 = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i.i221 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i217, i64 %.1.in.v.i.i.i.i.i220
  %.1.i.i.i.i.i222 = load ptr, ptr %.1.in.i.i.i.i.i221, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i.i223 = icmp eq ptr %.1.i.i.i.i.i222, null
  br i1 %.not.i.i.i.i.i223, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.e, !llvm.loop !3

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %bb.e
  %i.x = icmp eq ptr %.19.i.i.i.i.i219, %i.o
  br i1 %i.x, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit

_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i219, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 1099511627775
  %.not344 = icmp samesign ult i64 %i.r, %i.ab
  br i1 %.not344, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit
  %i.ac = and i32 %i.j, 1
  %.not92 = icmp eq i32 %i.ac, 0
  br i1 %.not92, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.ag = load ptr, ptr %2, align 8, !tbaa !62
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 1099511627775            ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.h ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, 1099511627775
  %i.an = icmp samesign ult i64 %i.am, %i.ai      ; 2 uses
  %.19.i.i.i = select i1 %i.an, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.h, !llvm.loop !21

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.h
  %i.ao = icmp eq ptr %.19.i.i.i, %i.af
  br i1 %i.ao, label %.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 1099511627775
  %i.at = icmp samesign ult i64 %i.ai, %i.as
  br i1 %i.at, label %.thread, label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

.thread:                                          ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit, %bb.g, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.au = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store i8 1, ptr %i.au, align 1, !tbaa !345
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !78 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not10.i.i.i.i224 = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i.i.i224, label %.critedge.i234, label %.lr.ph.i.i.i.i225

.lr.ph.i.i.i.i225:                                ; preds = %bb.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !373
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 1099511627775            ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i225
  %.012.i.i.i.i226 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i225 ], [ %.1.i.i.i.i231, %bb.j ] ; 3 uses
  %.0811.i.i.i.i227 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i225 ], [ %.19.i.i.i.i228, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i226, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !373
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 1099511627775
  %i.bf = icmp samesign ult i64 %i.be, %i.ba      ; 2 uses
  %.19.i.i.i.i228 = select i1 %i.bf, ptr %.0811.i.i.i.i227, ptr %.012.i.i.i.i226 ; 6 uses
  %.1.in.v.i.i.i.i229 = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i.i230 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i226, i64 %.1.in.v.i.i.i.i229
  %.1.i.i.i.i231 = load ptr, ptr %.1.in.i.i.i.i230, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i232 = icmp eq ptr %.1.i.i.i.i231, null
  br i1 %.not.i.i.i.i232, label %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEE11lower_boundERSD_.exit.i, label %bb.j, !llvm.loop !1202

_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEE11lower_boundERSD_.exit.i: ; preds = %bb.j
  %i.bg = icmp eq ptr %.19.i.i.i.i228, %i.ax
  br i1 %i.bg, label %.critedge.i234, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEE11lower_boundERSD_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i228, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !373
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, 1099511627775
  %i.bl = icmp samesign ult i64 %i.ba, %i.bk
  br i1 %i.bl, label %.critedge.i234, label %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit

.critedge.i234:                                   ; preds = %bb.k, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEE11lower_boundERSD_.exit.i, %bb.i
  %.08.lcssa.i.i.i11.i235 = phi ptr [ %.19.i.i.i.i228, %bb.k ], [ %.19.i.i.i.i228, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEE11lower_boundERSD_.exit.i ], [ %i.ax, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %0, ptr %13, align 8, !tbaa !377
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.bm = call ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St3mapIjNS1_12NodeTemplateILb0EEESt4lessIjESaIS3_IKjS7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESO_IJEEEEESt17_Rb_tree_iteratorISE_ESt23_Rb_tree_const_iteratorISE_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i11.i235, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit

_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit: ; preds = %bb.k, %.critedge.i234
  %.sroa.06.0.i233 = phi ptr [ %i.bm, %.critedge.i234 ], [ %.19.i.i.i.i228, %bb.k ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i233, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !696 ; 3 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !374
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i233, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !78 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i233, i64 48 ; 3 uses
  %.not10.i.i.i.i236 = icmp eq ptr %i.br, null
  br i1 %.not10.i.i.i.i236, label %.critedge.i246, label %.lr.ph.i.i.i.i237

.lr.ph.i.i.i.i237:                                ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit, %.lr.ph.i.i.i.i237
  %.012.i.i.i.i238 = phi ptr [ %.1.i.i.i.i243, %.lr.ph.i.i.i.i237 ], [ %i.br, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit ] ; 3 uses
  %.0811.i.i.i.i239 = phi ptr [ %.19.i.i.i.i240, %.lr.ph.i.i.i.i237 ], [ %i.bs, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i238, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !374
  %i.bv = icmp ult i32 %i.bu, %i.bp               ; 2 uses
  %.19.i.i.i.i240 = select i1 %i.bv, ptr %.0811.i.i.i.i239, ptr %.012.i.i.i.i238 ; 6 uses
  %.1.in.v.i.i.i.i241 = select i1 %i.bv, i64 24, i64 16
  %.1.in.i.i.i.i242 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i238, i64 %.1.in.v.i.i.i.i241
  %.1.i.i.i.i243 = load ptr, ptr %.1.in.i.i.i.i242, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i244 = icmp eq ptr %.1.i.i.i.i243, null
  br i1 %.not.i.i.i.i244, label %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i237, !llvm.loop !35

_ZNSt3mapIjN4cvc58internal12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i237
  %i.bw = icmp eq ptr %.19.i.i.i.i240, %i.bs
  br i1 %i.bw, label %.critedge.i246, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i240, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !374
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE:bb.a
  br label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

bb.ai:                                            ; preds = %bb.ag, %bb.ad
  %.pn85.pn = phi { ptr, i32 } [ %i.fl, %bb.ad ], [ %.pn83, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  resume { ptr, i32 } %.pn85.pn

bb.aj:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.fs = zext nneg i32 %i.eo to i64
  %i.ft = getelementptr [8 x i8], ptr %i.eu, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1207
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85
  store ptr %i.fx, ptr %22, align 8
  call void @_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE9push_backEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(8) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.fz = load i32, ptr %i.en, align 4, !tbaa !647
  %i.ga = load ptr, ptr %i.er, align 8, !tbaa !648
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1207
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store ptr %i.gf, ptr %23, align 8
  call void @_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE9push_backEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.ak

bb.ak:                                            ; preds = %.thread342, %bb.aj, %bb.y
  %i.gg = load i32, ptr %i.c, align 8, !tbaa !646
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.c, align 8, !tbaa !646
  %i.gi = load i32, ptr %i.en, align 4, !tbaa !647 ; 4 uses
  %i.gj = sext i32 %i.gi to i64                   ; 3 uses
  %i.gk = load ptr, ptr %i.er, align 8, !tbaa !648
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !648
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gj
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !1207
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !1207
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = load ptr, ptr %i.es, align 8, !tbaa !649
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8
  store ptr %i.gt, ptr %i.es, align 8, !tbaa !649
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !649
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !649
  %i.gx = add nsw i32 %i.gi, -1
  store i32 %i.gx, ptr %i.en, align 4, !tbaa !647
  %i.gy = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.gy, ptr %24, align 8, !tbaa !62
  %i.gz = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 %24, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

bb.am:                                            ; preds = %bb.ak
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !697
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !381 ; 2 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = lshr exact i64 %i.hg, 2
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = icmp eq i32 %i.gi, %i.hi
  br i1 %i.hj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hk = load ptr, ptr %i.es, align 8, !tbaa !649
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -8
  store ptr %i.hl, ptr %i.es, align 8, !tbaa !649
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !649
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -8
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !649
  %i.hp = add nsw i32 %i.gi, -1
  store i32 %i.hp, ptr %i.en, align 4, !tbaa !647
  br label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.gj
  %i.hs = call noundef nonnull align 8 dereferenceable(112) ptr @_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.hq, ptr noundef nonnull align 4 dereferenceable(4) %i.hr) ; 7 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !650
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store i32 0, ptr %i.hv, align 8, !tbaa !646
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 52
  store i32 0, ptr %i.hw, align 4, !tbaa !647
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !648 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 72 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !649
  %.not.i.i.i289 = icmp eq ptr %i.ia, %i.hy
  br i1 %.not.i.i.i289, label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i: ; preds = %bb.ao
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !649
  br label %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit.i

_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i, %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 88
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !648 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 96 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !649
  %.not.i.i1.i = icmp eq ptr %i.ie, %i.ic
  br i1 %.not.i.i1.i, label %_ZN4cvc58internal6theory11quantifiers13TermGenerator13resetMatchingEj.exit, label %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i2.i

_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i2.i: ; preds = %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit.i
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !649
  br label %_ZN4cvc58internal6theory11quantifiers13TermGenerator13resetMatchingEj.exit

_ZN4cvc58internal6theory11quantifiers13TermGenerator13resetMatchingEj.exit: ; preds = %_ZNSt6vectorISt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESaISA_EE5clearEv.exit.i, %_ZSt8_DestroyIPSt17_Rb_tree_iteratorISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_16NodeTemplateTrieILb0EEEEESA_EvT_SC_RSaIT0_E.exit.i.i2.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  store i32 %i.hu, ptr %i.if, align 8, !tbaa !650
  %i.ig = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.ig, ptr %25, align 8, !tbaa !62
  %i.ih = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %25, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

bb.ap:                                            ; preds = %bb.x
  %i.ii = add nsw i32 %i.d, -1
  store i32 %i.ii, ptr %i.c, align 8, !tbaa !646
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.il = zext nneg i32 %i.eo to i64
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !381
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.il ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !78 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %.not10.i.i.i.i290 = icmp eq ptr %i.ip, null
  br i1 %.not10.i.i.i.i290, label %.critedge.i300, label %.lr.ph.i.i.i.i291

.lr.ph.i.i.i.i291:                                ; preds = %bb.ap
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !374 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.i291
  %.012.i.i.i.i292 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i291 ], [ %.1.i.i.i.i297, %bb.aq ] ; 3 uses
  %.0811.i.i.i.i293 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i291 ], [ %.19.i.i.i.i294, %bb.aq ]
  %i.is = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i292, i64 32
  %i.it = load i32, ptr %i.is, align 4, !tbaa !374
  %i.iu = icmp ult i32 %i.it, %i.ir               ; 2 uses
  %.19.i.i.i.i294 = select i1 %i.iu, ptr %.0811.i.i.i.i293, ptr %.012.i.i.i.i292 ; 6 uses
  %.1.in.v.i.i.i.i295 = select i1 %i.iu, i64 24, i64 16
  %.1.in.i.i.i.i296 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i292, i64 %.1.in.v.i.i.i.i295
  %.1.i.i.i.i297 = load ptr, ptr %.1.in.i.i.i.i296, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i298 = icmp eq ptr %.1.i.i.i.i297, null
  br i1 %.not.i.i.i.i298, label %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i, label %bb.aq, !llvm.loop !23

_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.aq
  %i.iv = icmp eq ptr %.19.i.i.i.i294, %i.iq
  br i1 %i.iv, label %.critedge.i300, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i294, i64 32
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !374
  %i.iy = icmp ult i32 %i.ir, %i.ix
  br i1 %i.iy, label %.critedge.i300, label %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_.exit

.critedge.i300:                                   ; preds = %bb.ar, %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i, %bb.ap
  %.08.lcssa.i.i.i11.i301 = phi ptr [ %.19.i.i.i.i294, %bb.ar ], [ %.19.i.i.i.i294, %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i ], [ %i.iq, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.in, ptr %5, align 8, !tbaa !637
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.iz = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4cvc58internal6theory11quantifiers13TermGeneratorEESt10_Select1stIS7_ESt4lessIjESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ij, ptr %.08.lcssa.i.i.i11.i301, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pre = load i32, ptr %i.en, align 4, !tbaa !647
  br label %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_.exit

_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_.exit: ; preds = %bb.ar, %.critedge.i300
  %i.ja = phi i32 [ %.pre, %.critedge.i300 ], [ %i.eo, %bb.ar ]
  %.sroa.06.0.i299 = phi ptr [ %i.iz, %.critedge.i300 ], [ %.19.i.i.i.i294, %bb.ar ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i299, i64 40
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jd = sext i32 %i.ja to i64
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !648
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jd
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !1207
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !62
  store ptr %i.ji, ptr %26, align 8, !tbaa !62
  %i.jj = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.jb, ptr noundef nonnull %1, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.jk = load i32, ptr %i.en, align 4, !tbaa !647 ; 2 uses
  br i1 %i.jj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_.exit
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.en, align 4, !tbaa !647
  %29 = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %29, ptr %27, align 8, !tbaa !62
  %30 = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %27, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

bb.at:                                            ; preds = %_ZNSt3mapIjN4cvc58internal6theory11quantifiers13TermGeneratorESt4lessIjESaISt4pairIKjS4_EEEixERS8_.exit
  %i.jm = sext i32 %i.jk to i64
  %i.jn = load ptr, ptr %i.jc, align 8, !tbaa !648
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jm ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.jo, align 8, !tbaa !79
  %i.jp = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.0.copyload.i) #33
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !1207
  %31 = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %31, ptr %28, align 8, !tbaa !62
  %32 = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13TermGenerator12getNextMatchEPNS2_10TermGenEnvENS0_12NodeTemplateILb0EEERSt3mapINS0_8TypeNodeES8_IjS7_St4lessIjESaISt4pairIKjS7_EEESA_IS9_ESaISC_IKS9_SG_EEERS8_IS7_bSA_IS7_ESaISC_IKS7_bEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %28, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread

_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit.thread: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit, %bb.at, %bb.al, %_ZN4cvc58internal6theory11quantifiers13TermGenerator13resetMatchingEj.exit, %bb.as, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %bb.d, %bb.ah, %.critedge94, %bb.w, %bb.r, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit262, %bb.q, %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit, %bb.a, %bb.an, %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %.2 = phi i1 [ false, %bb.w ], [ false, %bb.a ], [ true, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit ], [ false, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i ], [ false, %_ZN4cvc58internal6theory11quantifiers10TermGenEnv11isGroundEqcENS0_12NodeTemplateILb0EEE.exit ], [ %i.em, %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit ], [ false, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjNS1_12NodeTemplateILb0EEESt4lessIjESaISt4pairIKjS4_EEES5_IS2_ESaIS7_IKS2_SB_EEEixERSD_.exit262 ], [ false, %bb.r ], [ %32, %bb.at ], [ true, %bb.an ], [ %i.gz, %bb.al ], [ %i.fr, %bb.ah ], [ %i.ih, %_ZN4cvc58internal6theory11quantifiers13TermGenerator13resetMatchingEj.exit ], [ %30, %bb.as ], [ false, %bb.q ], [ false, %.critedge94 ], [ false, %bb.d ], [ false, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE4findERS7_.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers13TermGenerator10debugPrintEPNS2_10TermGenEnvEPKcS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.1287", align 8   ; 4 uses
  %5 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %6 = alloca %"class.std::tuple.1207", align 8   ; 4 uses
  %7 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %8 = alloca %"class.std::tuple.1258", align 8   ; 4 uses
  %9 = alloca %"class.std::tuple.1210", align 1   ; 3 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %11 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !695
  %cond = icmp eq i32 %i.b, 5
  br i1 %cond, label %bb.b, label %.critedge35

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.c = load ptr, ptr %0, align 8, !tbaa !373    ; 7 uses
  store ptr %i.c, ptr %11, align 8, !tbaa !373
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.c, label %bb.d, !prof !83

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.e, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53:        ; preds = %bb.c, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !1211 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53
  %i.v = load i64, ptr %i.c, align 8, !noalias !1211 ; 2 uses
  %i.w = and i64 %i.v, 1099511627775              ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.f ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !373, !noalias !1211
  %i.z = load i64, ptr %i.y, align 8, !noalias !1211
  %i.aa = and i64 %i.z, 1099511627775
  %i.ab = icmp samesign ult i64 %i.aa, %i.w       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ab, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !79, !noalias !1211 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb0EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i.i, label %bb.f, !llvm.loop !20

_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb0EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i.i: ; preds = %bb.f
  %i.ac = icmp eq ptr %.19.i.i.i.i.i, %i.u
  br i1 %i.ac, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb0EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !373, !noalias !1211
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1211
  %i.ag = and i64 %i.af, 1099511627775
  %i.ah = icmp samesign ult i64 %i.w, %i.ag
  br i1 %i.ah, label %.critedge.i.i, label %bb.h

.critedge.i.i:                                    ; preds = %bb.g, %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb0EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i.i, %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.g ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb0EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i.i ], [ %i.u, %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit53 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !1211
  store ptr %11, ptr %8, align 8, !tbaa !377, !noalias !1211
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !1211
  %i.ai = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St6vectorINS1_12NodeTemplateILb0EEESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc54 unwind label %bb.n

.noexc54:                                         ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !1211
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !1211
  %.pre = load ptr, ptr %11, align 8, !tbaa !373  ; 2 uses
  %.pre89 = load i64, ptr %.pre, align 8
  br label %bb.h

bb.h:                                             ; preds = %.noexc54, %bb.g
  %i.aj = phi i64 [ %.pre89, %.noexc54 ], [ %i.v, %bb.g ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %.noexc54 ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.06.0.i.i = phi ptr [ %i.ai, %.noexc54 ], [ %.19.i.i.i.i.i, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 40
  %i.am = zext i32 %i.q to i64
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !72, !noalias !1211
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62, !noalias !1211 ; 2 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !62, !alias.scope !1211
  %i.aq = and i64 %i.aj, 1152920405095219200
  %.not.i.i55 = icmp eq i64 %i.aq, 1152920405095219200
  br i1 %.not.i.i55, label %_ZN4cvc58internal8TypeNodeD2Ev.exit56, label %bb.i, !prof !68

bb.i:                                             ; preds = %bb.h
  %i.ar = add i64 %i.aj, 1152920405095219200
  %i.as = and i64 %i.ar, 1152920405095219200      ; 2 uses
  %i.at = and i64 %i.aj, -1152920405095219201
  %i.au = or disjoint i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ak, align 8
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %bb.j, label %_ZN4cvc58internal8TypeNodeD2Ev.exit56, !prof !68

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit56 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #29
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit56:            ; preds = %bb.h, %bb.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !697
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !381 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.bb
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit56
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  br label %bb.o

._crit_edge:                                      ; preds = %bb.r, %_ZN4cvc58internal8TypeNodeD2Ev.exit56
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge
  %i.bj = load i64, ptr %i.ap, align 8
  %i.bk = and i64 %i.bj, 1099511627775            ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 1099511627775
  %i.bp = icmp samesign ult i64 %i.bo, %i.bk      ; 2 uses
  %.19.i.i.i.i = select i1 %i.bp, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bp, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorINS1_8TypeNodeESaIS5_EESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i, label %bb.l, !llvm.loop !18

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorINS1_8TypeNodeESaIS5_EESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i: ; preds = %bb.l
  %i.bq = icmp eq ptr %.19.i.i.i.i, %i.bi
  br i1 %i.bq, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorINS1_8TypeNodeESaIS5_EESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 1099511627775
  %i.bv = icmp samesign ult i64 %i.bk, %i.bu
  br i1 %i.bv, label %.critedge.i, label %bb.s

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorINS1_8TypeNodeESaIS5_EESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i, %._crit_edge
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEESt6vectorINS1_8TypeNodeESaIS5_EESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i ], [ %i.bi, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %10, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
end_hunk_1
