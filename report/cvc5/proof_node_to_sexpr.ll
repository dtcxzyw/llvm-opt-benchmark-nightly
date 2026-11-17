Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/proof_node_to_sexpr?download=true
inline.NumInlined: 1838
inline.NumDeleted: 836
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEENS2_ILb1EEESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc516ProofRewriteRuleENS0_8internal12NodeTemplateILb1EEESt4lessIS1_ESaISt4pairIKS1_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc516ProofRewriteRuleESt4pairIKS1_NS0_8internal12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc516ProofRewriteRuleESt4pairIKS1_NS0_8internal12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc516ProofRewriteRuleESt4pairIKS1_NS0_8internal12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal6theory11InferenceIdENS1_12NodeTemplateILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal6theory11InferenceIdESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal6theory11InferenceIdESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal6theory11InferenceIdESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal7TrustIdENS1_12NodeTemplateILb1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal7TrustIdESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal7TrustIdESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal7TrustIdESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal8MethodIdENS1_12NodeTemplateILb1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal8MethodIdESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal8MethodIdESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal8MethodIdESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal6theory8TheoryIdENS1_12NodeTemplateILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal6theory8TheoryIdESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal6theory8TheoryIdESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal6theory8TheoryIdESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal4kind6Kind_tENS1_12NodeTemplateILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal4kind6Kind_tESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal4kind6Kind_tESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal4kind6Kind_tESt4pairIKS3_NS1_12NodeTemplateILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc59ProofRuleENS0_8internal12NodeTemplateILb1EEESt4lessIS1_ESaISt4pairIKS1_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt8_Rb_treeIN4cvc59ProofRuleESt4pairIKS1_NS0_8internal12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc59ProofRuleESt4pairIKS1_NS0_8internal12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIN4cvc59ProofRuleESt4pairIKS1_NS0_8internal12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal16ProofNodeToSExpr14convertToSExprEPKNS0_9ProofNodeEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::NodeTemplate") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i:
  %4 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %6 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.142", align 8 ; 4 uses
  %17 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %18 = alloca %"class.std::tuple.196", align 8   ; 4 uses
  %19 = alloca %"class.std::tuple.199", align 1   ; 3 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %21 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 6 uses
  %22 = alloca %"class.std::vector.133", align 8  ; 16 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %25 = alloca %"class.std::vector.133", align 8  ; 11 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %29 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit.split-lp313 ; 3 uses

_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNKSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %2, ptr %i.c, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit, %.loopexit
  %.sroa.13.0 = phi ptr [ %i.d, %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.13.2, %.loopexit ] ; 2 uses
  %.sroa.26.0 = phi ptr [ %i.d, %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.26.3, %.loopexit ] ; 12 uses
  %.sroa.0263.0 = phi ptr [ null, %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.0263.2, %.loopexit ] ; 12 uses
  %.sroa.9.0 = phi ptr [ null, %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.9.1, %.loopexit ] ; 8 uses
  %.sroa.16.0 = phi ptr [ null, %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.16.2, %.loopexit ] ; 7 uses
  %.sroa.0273.0 = phi ptr [ %i.c, %_ZNSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.0273.3, %.loopexit ] ; 13 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.13.0, i64 -8 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 3 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !83
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.s = icmp ult ptr %i.r, %i.o                  ; 2 uses
  %.19.i.i.i = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i64, label %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !164

_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i, %i.g
  br i1 %i.t, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit

_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.w = icmp ult ptr %i.o, %i.v
  br i1 %i.w, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread, label %bb.au

_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %bb.a, %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.x = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !70, !noalias !178 ; 14 uses
  store ptr %i.x, ptr %20, align 8, !tbaa !70, !alias.scope !178
  %i.y = load i64, ptr %i.x, align 8, !noalias !178 ; 3 uses
  %i.z = lshr i64 %i.y, 40
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1048575                  ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 1048574
  br i1 %i.ac, label %bb.b, label %bb.c, !prof !78

bb.b:                                             ; preds = %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread
  %i.ad = add nuw nsw i32 %i.ab, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 40
  %i.ag = and i64 %i.y, -1152920405095219201
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.x, align 8, !noalias !178
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.c:                                             ; preds = %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit.thread
  %i.ai = icmp eq i32 %i.ab, 1048574
  br i1 %i.ai, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.aj = or i64 %i.y, 1152920405095219200
  store i64 %i.aj, ptr %i.x, align 8, !noalias !178
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit unwind label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = icmp ult ptr %i.an, %i.al               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i, label %bb.e, !llvm.loop !164

_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i: ; preds = %bb.e
  %i.ap = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.ap, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  %i.as = icmp ult ptr %i.al, %i.ar
  br i1 %i.as, label %.critedge.i, label %bb.g

.critedge.i:                                      ; preds = %bb.f, %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i, %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.f ], [ %.19.i.i.i.i, %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit.i ], [ %i.g, %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr %i.b, ptr %18, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.at = invoke ptr @_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %.noexc66 unwind label %bb.ab

.noexc66:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.g

bb.g:                                             ; preds = %.noexc66, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.at, %.noexc66 ], [ %.19.i.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70 ; 4 uses
  %.not.i67 = icmp eq ptr %i.av, %i.x
  br i1 %.not.i67, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.h, !prof !77

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = and i64 %i.aw, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ax, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.i, !prof !77

bb.i:                                             ; preds = %bb.h
  %i.ay = add i64 %i.aw, 1152920405095219200
  %i.az = and i64 %i.ay, 1152920405095219200      ; 2 uses
  %i.ba = and i64 %i.aw, -1152920405095219201
  %i.bb = or disjoint i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.av, align 8
  %i.bc = icmp eq i64 %i.az, 0
  br i1 %i.bc, label %bb.j, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !77

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.ab

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.j, %bb.i, %bb.h
  store ptr %i.x, ptr %i.au, align 8, !tbaa !70
  %i.bd = load i64, ptr %i.x, align 8             ; 3 uses
  %i.be = lshr i64 %i.bd, 40
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1048575                  ; 3 uses
  %i.bh = icmp samesign ult i32 %i.bg, 1048574
  br i1 %i.bh, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bi = add nuw nsw i32 %i.bg, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 40
  %i.bl = and i64 %i.bd, -1152920405095219201
  %i.bm = or i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %i.x, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bn = icmp eq i32 %i.bg, 1048574
  br i1 %i.bn, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !77

bb.m:                                             ; preds = %bb.l
  %i.bo = or i64 %i.bd, 1152920405095219200
  store i64 %i.bo, ptr %i.x, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ab

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.l, %bb.k, %bb.g, %bb.m
  %i.bp = load i64, ptr %i.x, align 8             ; 3 uses
  %i.bq = and i64 %i.bp, 1152920405095219200
  %.not.i.i70 = icmp eq i64 %i.bq, 1152920405095219200
  br i1 %.not.i.i70, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.n, !prof !77

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.br = add i64 %i.bp, 1152920405095219200
  %i.bs = and i64 %i.br, 1152920405095219200      ; 2 uses
  %i.bt = and i64 %i.bp, -1152920405095219201
  %i.bu = or disjoint i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.x, align 8
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal16ProofNodeToSExpr14convertToSExprEPKNS0_9ProofNodeEb:_ZNKSt6vectorIPKN4cvc58internal9ProofNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
bb.bz:                                            ; preds = %bb.by
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit118: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit115, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bb
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bh, %bb.bg
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn = phi { ptr, i32 } [ %i.iw, %bb.cb ], [ %i.iv, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.fk

bb.cd:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bw, %bb.bv
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn42 = phi { ptr, i32 } [ %i.iy, %bb.ce ], [ %i.ix, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.fk

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit118, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107
  %i.iz = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.ja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal9ProofNode11getChildrenEv(ptr noundef nonnull align 8 dereferenceable(65) %i.iz)
          to label %bb.ch unwind label %.loopexit.split-lp308.loopexit.split-lp ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !180 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !180 ; 2 uses
  %.not638 = icmp eq ptr %i.jb, %i.jd
  br i1 %.not638, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit136, %bb.ch
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal9ProofNode12getArgumentsEv(ptr noundef nonnull align 8 dereferenceable(65) %i.je)
          to label %bb.co unwind label %.loopexit.split-lp308.loopexit.split-lp ; 4 uses

.lr.ph:                                           ; preds = %bb.ch, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit136
  %.sroa.0249.0639 = phi ptr [ %i.kh, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit136 ], [ %i.jb, %bb.ch ] ; 2 uses
  %i.jg = load ptr, ptr %.sroa.0249.0639, align 8, !tbaa !184 ; 2 uses
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %.not10.i.i.i119 = icmp eq ptr %i.jh, null
  br i1 %.not10.i.i.i119, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit131, label %.lr.ph.i.i.i120

.lr.ph.i.i.i120:                                  ; preds = %.lr.ph, %.lr.ph.i.i.i120
  %.012.i.i.i121 = phi ptr [ %.1.i.i.i126, %.lr.ph.i.i.i120 ], [ %i.jh, %.lr.ph ] ; 3 uses
  %.0811.i.i.i122 = phi ptr [ %.19.i.i.i123, %.lr.ph.i.i.i120 ], [ %i.g, %.lr.ph ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i121, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !83
  %i.jk = icmp ult ptr %i.jj, %i.jg               ; 2 uses
  %.19.i.i.i123 = select i1 %i.jk, ptr %.0811.i.i.i122, ptr %.012.i.i.i121 ; 4 uses
  %.1.in.v.i.i.i124 = select i1 %i.jk, i64 24, i64 16
  %.1.in.i.i.i125 = getelementptr inbounds nuw i8, ptr %.012.i.i.i121, i64 %.1.in.v.i.i.i124
  %.1.i.i.i126 = load ptr, ptr %.1.in.i.i.i125, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %.1.i.i.i126, null
  br i1 %.not.i.i.i127, label %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i128, label %.lr.ph.i.i.i120, !llvm.loop !164

_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i128: ; preds = %.lr.ph.i.i.i120
  %i.jl = icmp eq ptr %.19.i.i.i123, %i.g
  br i1 %i.jl, label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit131, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i128
  %i.jm = getelementptr inbounds nuw i8, ptr %.19.i.i.i123, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !83
  %i.jo = icmp ult ptr %i.jg, %i.jn
  %spec.select.i.i129 = select i1 %i.jo, ptr %i.g, ptr %.19.i.i.i123
  br label %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit131

_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit131: ; preds = %bb.ci, %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i128, %.lr.ph
  %.sroa.0.0.i.i130 = phi ptr [ %i.g, %.lr.ph ], [ %i.g, %_ZNSt8_Rb_treeIPKN4cvc58internal9ProofNodeESt4pairIKS4_NS1_12NodeTemplateILb1EEEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i128 ], [ %spec.select.i.i129, %bb.ci ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i130, i64 40 ; 2 uses
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !94
  %.not.i132 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not.i132, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit131
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !70 ; 5 uses
  store ptr %i.js, ptr %i.jq, align 8, !tbaa !70
  %i.jt = load i64, ptr %i.js, align 8            ; 3 uses
  %i.ju = lshr i64 %i.jt, 40
  %i.jv = trunc nuw nsw i64 %i.ju to i32
  %i.jw = and i32 %i.jv, 1048575                  ; 3 uses
  %i.jx = icmp samesign ult i32 %i.jw, 1048574
  br i1 %i.jx, label %bb.ck, label %bb.cl, !prof !78

bb.ck:                                            ; preds = %bb.cj
  %i.jy = add nuw nsw i32 %i.jw, 1
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = shl nuw nsw i64 %i.jz, 40
  %i.kb = and i64 %i.jt, -1152920405095219201
  %i.kc = or i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %i.js, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i133

bb.cl:                                            ; preds = %bb.cj
  %i.kd = icmp eq i32 %i.jw, 1048574
  br i1 %i.kd, label %bb.cm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i133, !prof !77

bb.cm:                                            ; preds = %bb.cl
  %i.ke = or i64 %i.jt, 1152920405095219200
  store i64 %i.ke, ptr %i.js, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.js)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i133 unwind label %.loopexit.split-lp308.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i133: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.kf = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.kg, ptr %i.h, align 8, !tbaa !93
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit136

bb.cn:                                            ; preds = %_ZNSt3mapIPKN4cvc58internal9ProofNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEE4findERSA_.exit131
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit136 unwind label %.loopexit.split-lp308.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit136: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i133, %bb.cn
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0249.0639, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kh, %i.jd
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.co:                                            ; preds = %._crit_edge
  %i.ki = load ptr, ptr %i.jf, align 8, !tbaa !185
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !185
  %i.kl = icmp eq ptr %i.ki, %i.kk
  br i1 %i.kl, label %bb.eq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.kn = load ptr, ptr %i.i, align 8, !tbaa !94
  %.not.i137 = icmp eq ptr %i.km, %i.kn
  br i1 %.not.i137, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ko = load ptr, ptr %i.k, align 8, !tbaa !70  ; 5 uses
  store ptr %i.ko, ptr %i.km, align 8, !tbaa !70
  %i.kp = load i64, ptr %i.ko, align 8            ; 3 uses
  %i.kq = lshr i64 %i.kp, 40
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = and i32 %i.kr, 1048575                  ; 3 uses
  %i.kt = icmp samesign ult i32 %i.ks, 1048574
  br i1 %i.kt, label %bb.cr, label %bb.cs, !prof !78

bb.cr:                                            ; preds = %bb.cq
  %i.ku = add nuw nsw i32 %i.ks, 1
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kv, 40
  %i.kx = and i64 %i.kp, -1152920405095219201
  %i.ky = or i64 %i.kw, %i.kx
  store i64 %i.ky, ptr %i.ko, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i138

bb.cs:                                            ; preds = %bb.cq
  %i.kz = icmp eq i32 %i.ks, 1048574
  br i1 %i.kz, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i138, !prof !77

bb.ct:                                            ; preds = %bb.cs
  %i.la = or i64 %i.kp, 1152920405095219200
  store i64 %i.la, ptr %i.ko, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ko)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i138 unwind label %.loopexit.split-lp308.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i138: ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.lb = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %i.lc, ptr %i.h, align 8, !tbaa !93
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit141

bb.cu:                                            ; preds = %bb.cp
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.km, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit141 unwind label %.loopexit.split-lp308.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit141: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i138, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.ld = load ptr, ptr %i.kj, align 8, !tbaa !93 ; 2 uses
  %i.le = load ptr, ptr %i.jf, align 8, !tbaa !95 ; 2 uses
  %.not660 = icmp eq ptr %i.ld, %i.le
  br i1 %.not660, label %._crit_edge642, label %.lr.ph641.preheader

.lr.ph641.preheader:                              ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit141
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = ashr exact i64 %i.lh, 3
  br label %.lr.ph641

._crit_edge642:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.lj = load ptr, ptr %1, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !186
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull align 8 dereferenceable(3592) %i.lj, i32 noundef 10)
          to label %.noexc144 unwind label %bb.en

.noexc144:                                        ; preds = %._crit_edge642
  %i.lk = load ptr, ptr %25, align 8, !tbaa !185, !noalias !186 ; 2 uses
  %i.ll = load ptr, ptr %i.l, align 8, !tbaa !185, !noalias !186 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !186
  %.not6.i.i.i = icmp eq ptr %i.ll, %i.lk
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i142

.lr.ph.i.i.i142:                                  ; preds = %.noexc144, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.lo, %.noexc.i ], [ %i.lk, %.noexc144 ] ; 2 uses
  %i.lm = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !70, !noalias !186
  store ptr %i.lm, ptr %16, align 8, !tbaa !97, !noalias !186
  %i.ln = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull align 8 %16)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !186 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i142
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.lo, %i.ll
  br i1 %.not.i.i.i143, label %.loopexit4.i, label %.lr.ph.i.i.i142, !llvm.loop !171

.loopexit4.i:                                     ; preds = %.noexc.i, %.noexc144
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !186
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %28, ptr noundef nonnull align 8 dereferenceable(124) %17)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i142, %.loopexit4.i
  %lpad.loopexit.split-lp1418 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !186
  br label %.body145

.loopexit.split-lp308.loopexit.split-lp:          ; preds = %bb.cm, %bb.cn, %bb.cu, %bb.ct, %bb.bq, %bb.bp, %bb.cg, %bb.ba, %._crit_edge
  %lpad.loopexit.split-lp1421 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.lr.ph641:                                        ; preds = %.lr.ph641.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167
  %.0640 = phi i64 [ %i.oc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 ], [ 0, %.lr.ph641.preheader ] ; 3 uses
  %i.lp = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.lq = invoke noundef i32 @_ZN4cvc58internal16ProofNodeToSExpr17getArgumentFormatEPKNS0_9ProofNodeEm(ptr nonnull align 8 poison, ptr noundef %i.lp, i64 noundef %.0640)
          to label %bb.cv unwind label %bb.dv

bb.cv:                                            ; preds = %.lr.ph641
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.lr = load ptr, ptr %i.jf, align 8, !tbaa !95
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %.0640
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !70 ; 19 uses
  store ptr %i.lt, ptr %27, align 8, !tbaa !70
  %i.lu = load i64, ptr %i.lt, align 8            ; 3 uses
  %i.lv = lshr i64 %i.lu, 40
  %i.lw = trunc nuw nsw i64 %i.lv to i32
  %i.lx = and i32 %i.lw, 1048575                  ; 3 uses
  %i.ly = icmp samesign ult i32 %i.lx, 1048574
  br i1 %i.ly, label %bb.cw, label %bb.cx, !prof !78

bb.cw:                                            ; preds = %bb.cv
  %i.lz = add nuw nsw i32 %i.lx, 1
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = shl nuw nsw i64 %i.ma, 40
  %i.mc = and i64 %i.lu, -1152920405095219201
  %i.md = or i64 %i.mb, %i.mc
  store i64 %i.md, ptr %i.lt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.cx:                                            ; preds = %bb.cv
  %i.me = icmp eq i32 %i.lx, 1048574
  br i1 %i.me, label %bb.cy, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !77

bb.cy:                                            ; preds = %bb.cx
  %i.mf = or i64 %i.lu, 1152920405095219200
  store i64 %i.mf, ptr %i.lt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.dw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.cx, %bb.cw, %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  switch i32 %i.lq, label %bb.df [
    i32 1, label %bb.cz
    i32 2, label %bb.da
    i32 3, label %bb.db
    i32 4, label %bb.dc
    i32 5, label %bb.dd
    i32 6, label %bb.de
  ]

bb.cz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %10, align 8, !tbaa !97, !noalias !187
  invoke void @_ZN4cvc58internal16ProofNodeToSExpr19getOrMkKindVariableENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %10)
          to label %bb.dj unwind label %bb.dx

bb.da:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %11, align 8, !tbaa !97, !noalias !187
  invoke void @_ZN4cvc58internal16ProofNodeToSExpr23getOrMkTheoryIdVariableENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %11)
          to label %bb.dj unwind label %bb.dx

bb.db:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %12, align 8, !tbaa !97, !noalias !187
  invoke void @_ZN4cvc58internal16ProofNodeToSExpr23getOrMkMethodIdVariableENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %12)
          to label %bb.dj unwind label %bb.dx

bb.dc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %13, align 8, !tbaa !97, !noalias !187
  invoke void @_ZN4cvc58internal16ProofNodeToSExpr22getOrMkTrustIdVariableENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %13)
          to label %bb.dj unwind label %bb.dx

bb.dd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %14, align 8, !tbaa !97, !noalias !187
  invoke void @_ZN4cvc58internal16ProofNodeToSExpr26getOrMkInferenceIdVariableENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %14)
          to label %bb.dj unwind label %bb.dx

bb.de:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %15, align 8, !tbaa !97, !noalias !187
  invoke void @_ZN4cvc58internal16ProofNodeToSExpr25getOrMkDslRewriteVariableENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %15)
          to label %bb.dj unwind label %bb.dx

bb.df:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.lt, ptr %26, align 8, !tbaa !70, !alias.scope !187
  %i.mg = load i64, ptr %i.lt, align 8, !noalias !187 ; 3 uses
  %i.mh = lshr i64 %i.mg, 40
  %i.mi = trunc nuw nsw i64 %i.mh to i32
  %i.mj = and i32 %i.mi, 1048575                  ; 3 uses
  %i.mk = icmp samesign ult i32 %i.mj, 1048574
  br i1 %i.mk, label %bb.dg, label %bb.dh, !prof !78

bb.dg:                                            ; preds = %bb.df
  %i.ml = add nuw nsw i32 %i.mj, 1
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl nuw nsw i64 %i.mm, 40
  %i.mo = and i64 %i.mg, -1152920405095219201
  %i.mp = or i64 %i.mn, %i.mo
  store i64 %i.mp, ptr %i.lt, align 8, !noalias !187
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %i.mq = icmp eq i32 %i.mj, 1048574
  br i1 %i.mq, label %bb.di, label %bb.dj, !prof !77

bb.di:                                            ; preds = %bb.dh
  %i.mr = or i64 %i.mg, 1152920405095219200
  store i64 %i.mr, ptr %i.lt, align 8, !noalias !187
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %bb.dj unwind label %bb.dx

bb.dj:                                            ; preds = %bb.dh, %bb.dg, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ms = load i64, ptr %i.lt, align 8            ; 3 uses
  %i.mt = and i64 %i.ms, 1152920405095219200
  %.not.i.i157 = icmp eq i64 %i.mt, 1152920405095219200
  br i1 %.not.i.i157, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit159, label %bb.dk, !prof !77

bb.dk:                                            ; preds = %bb.dj
  %i.mu = add i64 %i.ms, 1152920405095219200
  %i.mv = and i64 %i.mu, 1152920405095219200      ; 2 uses
  %i.mw = and i64 %i.ms, -1152920405095219201
  %i.mx = or disjoint i64 %i.mv, %i.mw
  store i64 %i.mx, ptr %i.lt, align 8
  %i.my = icmp eq i64 %i.mv, 0
  br i1 %i.my, label %bb.dl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit159, !prof !77

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit159 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit159: ; preds = %bb.dj, %bb.dk, %bb.dl
  %i.nb = load ptr, ptr %i.l, align 8, !tbaa !93  ; 3 uses
  %i.nc = load ptr, ptr %i.m, align 8, !tbaa !94
  %.not.i160 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not.i160, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit159
  %i.nd = load ptr, ptr %26, align 8, !tbaa !70   ; 5 uses
  store ptr %i.nd, ptr %i.nb, align 8, !tbaa !70
  %i.ne = load i64, ptr %i.nd, align 8            ; 3 uses
  %i.nf = lshr i64 %i.ne, 40
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = and i32 %i.ng, 1048575                  ; 3 uses
  %i.ni = icmp samesign ult i32 %i.nh, 1048574
  br i1 %i.ni, label %bb.do, label %bb.dp, !prof !78

bb.do:                                            ; preds = %bb.dn
  %i.nj = add nuw nsw i32 %i.nh, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 40
  %i.nm = and i64 %i.ne, -1152920405095219201
  %i.nn = or i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.nd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i161

bb.dp:                                            ; preds = %bb.dn
  %i.no = icmp eq i32 %i.nh, 1048574
  br i1 %i.no, label %bb.dq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i161, !prof !77

bb.dq:                                            ; preds = %bb.dp
  %i.np = or i64 %i.ne, 1152920405095219200
  store i64 %i.np, ptr %i.nd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i161 unwind label %bb.dy

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i161: ; preds = %bb.dq, %bb.dp, %bb.do
  %i.nq = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %i.nr, ptr %i.l, align 8, !tbaa !93
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit164

bb.dr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit159
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.nb, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit164 unwind label %bb.dy

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit164: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i161, %bb.dr
  %i.ns = load ptr, ptr %26, align 8, !tbaa !70   ; 3 uses
  %i.nt = load i64, ptr %i.ns, align 8            ; 3 uses
  %i.nu = and i64 %i.nt, 1152920405095219200
  %.not.i.i165 = icmp eq i64 %i.nu, 1152920405095219200
  br i1 %.not.i.i165, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, label %bb.ds, !prof !77

bb.ds:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit164
  %i.nv = add i64 %i.nt, 1152920405095219200
  %i.nw = and i64 %i.nv, 1152920405095219200      ; 2 uses
  %i.nx = and i64 %i.nt, -1152920405095219201
  %i.ny = or disjoint i64 %i.nw, %i.nx
  store i64 %i.ny, ptr %i.ns, align 8
  %i.nz = icmp eq i64 %i.nw, 0
  br i1 %i.nz, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, !prof !77

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit164, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  %i.oc = add nuw i64 %.0640, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.oc, %i.li
  br i1 %exitcond.not, label %._crit_edge642, label %.lr.ph641, !llvm.loop !174

bb.dv:                                            ; preds = %.lr.ph641
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.dw:                                            ; preds = %bb.cy
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dx:                                            ; preds = %bb.di, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dr, %bb.dq
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #20
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %.pn46 = phi { ptr, i32 } [ %i.og, %bb.dy ], [ %i.of, %bb.dx ], [ %i.oe, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.ep

bb.ea:                                            ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !186
  %i.oh = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.oi = load ptr, ptr %i.i, align 8, !tbaa !94
  %.not.i168 = icmp eq ptr %i.oh, %i.oi
  br i1 %.not.i168, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.oj = load ptr, ptr %28, align 8, !tbaa !70   ; 5 uses
  store ptr %i.oj, ptr %i.oh, align 8, !tbaa !70
  %i.ok = load i64, ptr %i.oj, align 8            ; 3 uses
  %i.ol = lshr i64 %i.ok, 40
  %i.om = trunc nuw nsw i64 %i.ol to i32
  %i.on = and i32 %i.om, 1048575                  ; 3 uses
  %i.oo = icmp samesign ult i32 %i.on, 1048574
  br i1 %i.oo, label %bb.ec, label %bb.ed, !prof !78

bb.ec:                                            ; preds = %bb.eb
  %i.op = add nuw nsw i32 %i.on, 1
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = shl nuw nsw i64 %i.oq, 40
  %i.os = and i64 %i.ok, -1152920405095219201
  %i.ot = or i64 %i.or, %i.os
  store i64 %i.ot, ptr %i.oj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i169

bb.ed:                                            ; preds = %bb.eb
  %i.ou = icmp eq i32 %i.on, 1048574
  br i1 %i.ou, label %bb.ee, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i169, !prof !77

bb.ee:                                            ; preds = %bb.ed
  %i.ov = or i64 %i.ok, 1152920405095219200
  store i64 %i.ov, ptr %i.oj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i169 unwind label %bb.eo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i169: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.ow = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store ptr %i.ox, ptr %i.h, align 8, !tbaa !93
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit172

bb.ef:                                            ; preds = %bb.ea
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.oh, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit172 unwind label %bb.eo

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit172: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i169, %bb.ef
  %i.oy = load ptr, ptr %28, align 8, !tbaa !70   ; 3 uses
  %i.oz = load i64, ptr %i.oy, align 8            ; 3 uses
  %i.pa = and i64 %i.oz, 1152920405095219200
  %.not.i.i173 = icmp eq i64 %i.pa, 1152920405095219200
  br i1 %.not.i.i173, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175, label %bb.eg, !prof !77

bb.eg:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit172
  %i.pb = add i64 %i.oz, 1152920405095219200
  %i.pc = and i64 %i.pb, 1152920405095219200      ; 2 uses
  %i.pd = and i64 %i.oz, -1152920405095219201
  %i.pe = or disjoint i64 %i.pc, %i.pd
  store i64 %i.pe, ptr %i.oy, align 8
  %i.pf = icmp eq i64 %i.pc, 0
  br i1 %i.pf, label %bb.eh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175, !prof !77

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit172, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  %i.pi = load ptr, ptr %25, align 8, !tbaa !95   ; 3 uses
  %i.pj = load ptr, ptr %i.l, align 8, !tbaa !93  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pi, %i.pj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i176

.lr.ph.i.i.i176:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pu, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.pi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175 ] ; 2 uses
  %i.pk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 3 uses
  %i.pl = load i64, ptr %i.pk, align 8            ; 3 uses
  %i.pm = and i64 %i.pl, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.pm, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.ej, !prof !77

bb.ej:                                            ; preds = %.lr.ph.i.i.i176
  %i.pn = add i64 %i.pl, 1152920405095219200
  %i.po = and i64 %i.pn, 1152920405095219200      ; 2 uses
  %i.pp = and i64 %i.pl, -1152920405095219201
  %i.pq = or disjoint i64 %i.po, %i.pp
  store i64 %i.pq, ptr %i.pk, align 8
  %i.pr = icmp eq i64 %i.po, 0
  br i1 %i.pr, label %bb.ek, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !77

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pk)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #22
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.ek, %bb.ej, %.lr.ph.i.i.i176
  %i.pu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.pu, %i.pj
  br i1 %.not.i.i.i177, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i176, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %25, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175
  %i.pv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.pi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit175 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.em

bb.em:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.pw = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = ptrtoint ptr %i.pv to i64
  %i.pz = sub i64 %i.px, %i.py
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.pz) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.eq

bb.en:                                            ; preds = %._crit_edge642
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %.body145

bb.eo:                                            ; preds = %bb.ef, %bb.ee
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #20
  br label %.body145

.body145:                                         ; preds = %bb.en, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.eo
  %.pn44 = phi { ptr, i32 } [ %i.qb, %bb.eo ], [ %i.qa, %bb.en ], [ %lpad.loopexit.split-lp1418, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.ep

bb.ep:                                            ; preds = %bb.dv, %bb.dz, %.body145
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn44, %.body145 ], [ %.pn46, %bb.dz ], [ %i.od, %bb.dv ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.fk

bb.eq:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.qc = load ptr, ptr %1, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !188
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull align 8 dereferenceable(3592) %i.qc, i32 noundef 10)
          to label %.noexc186 unwind label %bb.fi

.noexc186:                                        ; preds = %bb.eq
  %i.qd = load ptr, ptr %22, align 8, !tbaa !185, !noalias !188 ; 2 uses
  %i.qe = load ptr, ptr %i.h, align 8, !tbaa !185, !noalias !188 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !188
  %.not6.i.i.i178 = icmp eq ptr %i.qe, %i.qd
  br i1 %.not6.i.i.i178, label %.loopexit4.i185, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %.noexc186, %.noexc.i183
  %.sroa.0.07.i.i.i180 = phi ptr [ %i.qh, %.noexc.i183 ], [ %i.qd, %.noexc186 ] ; 2 uses
  %i.qf = load ptr, ptr %.sroa.0.07.i.i.i180, align 8, !tbaa !70, !noalias !188
  store ptr %i.qf, ptr %8, align 8, !tbaa !97, !noalias !188
  %i.qg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull align 8 %8)
          to label %.noexc.i183 unwind label %.loopexit.split-lp.loopexit.split-lp.i181.loopexit.split-lp.loopexit.split-lp, !noalias !188 ; 0 uses

.noexc.i183:                                      ; preds = %.lr.ph.i.i.i179
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i180, i64 8 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.qh, %i.qe
  br i1 %.not.i.i.i184, label %.loopexit4.i185, label %.lr.ph.i.i.i179, !llvm.loop !171

.loopexit4.i185:                                  ; preds = %.noexc.i183, %.noexc186
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !188
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %29, ptr noundef nonnull align 8 dereferenceable(124) %9)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.i181.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i181.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i179, %.loopexit4.i185
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %9) #20
end_hunk_1
