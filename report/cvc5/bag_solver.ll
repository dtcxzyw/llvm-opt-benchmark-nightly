Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bag_solver?download=true
inline.NumInlined: 1761
inline.NumDeleted: 626
begin_hunk_0_@_ZN4cvc58internal6theory4bags9BagSolver28getElementsForBinaryOperatorERKNS0_12NodeTemplateILb1EEE:bb.a
          cleanup
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  br label %bb.ai

bb.ae:                                            ; preds = %bb.r, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit32
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.ah

bb.ag:                                            ; preds = %_ZSt9set_unionISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEES5_St15insert_iteratorISt3setIS4_St4lessIS4_ESaIS4_EEEET1_T_SE_T0_SF_SD_.exit, %bb.w
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.ag ], [ %i.dz, %bb.af ], [ %i.dy, %bb.ae ]
  call void @_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.dx, %bb.ad ], [ %i.dw, %bb.ac ]
  call void @_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.dv, %bb.ab ], [ %i.du, %bb.aa ]
  call void @_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4cvc58internal6theory4bags18InferenceGenerator5emptyENS0_12NodeTemplateILb1EEES5_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory24InferenceManagerBuffered20lemmaTheoryInferenceEPNS1_15TheoryInferenceE(ptr noundef nonnull align 8 dereferenceable(337), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory4bags9InferInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal6theory4bags9InferInfoE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.g, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i, align 8, !tbaa !45 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = and i64 %i.k, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.c, !prof !46

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = add i64 %i.k, 1152920405095219200
  %i.n = and i64 %i.m, 1152920405095219200        ; 2 uses
  %i.o = and i64 %i.k, -1152920405095219201
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.j, align 8
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.d, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !46

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.f, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ad, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !46

bb.g:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.ae = add i64 %i.ac, 1152920405095219200
  %i.af = and i64 %i.ae, 1152920405095219200      ; 2 uses
  %i.ag = and i64 %i.ac, -1152920405095219201
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.ab, align 8
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !46

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.g, %bb.h
  ret void
}

declare void @_ZN4cvc58internal6theory4bags18InferenceGenerator13unionDisjointENS0_12NodeTemplateILb1EEES5_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory4bags18InferenceGenerator8unionMaxENS0_12NodeTemplateILb1EEES5_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory4bags18InferenceGenerator12intersectionENS0_12NodeTemplateILb1EEES5_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory4bags18InferenceGenerator18differenceSubtractENS0_12NodeTemplateILb1EEES5_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory4bags9BagSolver12checkBagMakeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::EmptyBag", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::theory::eq::EqClassIterator", align 8 ; 7 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::theory::bags::InferInfo", align 8 ; 13 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !56, !align !57
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4cvc58internal6theory4bags11SolverState7getBagsEv(ptr noundef nonnull align 8 dereferenceable(536) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.e, %i.f
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %13 = trunc nuw i8 %.4 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %13, %._crit_edge.loopexit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %.094 = phi i8 [ 0, %.lr.ph ], [ %.4, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 3 uses
  %.sroa.067.093 = phi ptr [ %i.e, %.lr.ph ], [ %i.fb, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.067.093, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i1 noundef zeroext false)
  %i.p = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN4cvc58internal8EmptyBagC1ERKNS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_8EmptyBagEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3592) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @_ZN4cvc58internal8EmptyBagD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !56, !align !57 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %i.r, ptr %4, align 8, !tbaa !66
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !45
  store ptr %i.s, ptr %5, align 8, !tbaa !66
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !56, !align !57 ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %i.y, ptr %6, align 8, !tbaa !66
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !45
  store ptr %i.z, ptr %7, align 8, !tbaa !66
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7)
          to label %.critedge unwind label %bb.m

.critedge:                                        ; preds = %bb.g
  br i1 %i.ad, label %.critedge.thread, label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.i:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8EmptyBagD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bm

bb.l:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.m:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.n:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !45  ; 5 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !45
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = lshr i64 %i.ak, 40
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = and i32 %i.am, 1048575                  ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, 1048574
  br i1 %i.ao, label %bb.o, label %bb.p, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.ap = add nuw nsw i32 %i.an, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 40
  %i.as = and i64 %i.ak, -1152920405095219201
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.au = icmp eq i32 %i.an, 1048574
  br i1 %i.au, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !46

bb.q:                                             ; preds = %bb.p
  %i.av = or i64 %i.ak, 1152920405095219200
  store i64 %i.av, ptr %i.aj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.p, %bb.o, %bb.q
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !56, !align !57
  %i.ax = invoke noundef ptr @_ZNK4cvc58internal6theory11TheoryState17getEqualityEngineEv(ptr noundef nonnull align 8 dereferenceable(160) %i.aw)
          to label %bb.r unwind label %bb.ap

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  invoke void @_ZN4cvc58internal6theory2eq15EqClassIteratorC1ENS0_12NodeTemplateILb1EEEPKNS2_14EqualityEngineE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 %9, ptr noundef %i.ax)
          to label %bb.s unwind label %bb.ap

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %9, align 8, !tbaa !45    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = and i64 %i.az, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ba, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader, label %bb.t, !prof !46

bb.t:                                             ; preds = %bb.s
  %i.bb = add i64 %i.az, 1152920405095219200
  %i.bc = and i64 %i.bb, 1152920405095219200      ; 2 uses
  %i.bd = and i64 %i.az, -1152920405095219201
  %i.be = or disjoint i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.ay, align 8
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader, !prof !46

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader unwind label %bb.v

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader: ; preds = %bb.s, %bb.t, %bb.u
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56
  %.1 = phi i8 [ %.2, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56 ], [ %.094, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.preheader ] ; 3 uses
  %i.bi = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq15EqClassIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %i.bi, label %bb.bd, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK4cvc58internal6theory2eq15EqClassIteratordeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.y unwind label %bb.aq

bb.y:                                             ; preds = %bb.x
  %i.bj = load ptr, ptr %10, align 8, !tbaa !45   ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 1023
  %.not70 = icmp eq i64 %i.bm, 301                ; 2 uses
  br i1 %.not70, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit, label %bb.aw

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.bj, ptr %12, align 8, !tbaa !45
  %i.bn = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bo = lshr i64 %i.bn, 40
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 1048575                  ; 3 uses
  %i.br = icmp samesign ult i32 %i.bq, 1048574
  br i1 %i.br, label %bb.z, label %bb.aa, !prof !47

bb.z:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.bs = add nuw nsw i32 %i.bq, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 40
  %i.bv = and i64 %i.bn, -1152920405095219201
  %i.bw = or i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.bj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit52

bb.aa:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.bx = icmp eq i32 %i.bq, 1048574
  br i1 %i.bx, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit52, !prof !46

bb.ab:                                            ; preds = %bb.aa
  %i.by = or i64 %i.bn, 1152920405095219200
  store i64 %i.by, ptr %i.bj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit52 unwind label %bb.as

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit52: ; preds = %bb.aa, %bb.z, %bb.ab
  invoke void @_ZN4cvc58internal6theory4bags18InferenceGenerator7bagMakeENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 %12)
          to label %bb.ac unwind label %bb.at

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit52
  %i.bz = load ptr, ptr %12, align 8, !tbaa !45   ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = and i64 %i.ca, 1152920405095219200
  %.not.i.i53 = icmp eq i64 %i.cb, 1152920405095219200
  br i1 %.not.i.i53, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, label %bb.ad, !prof !46

bb.ad:                                            ; preds = %bb.ac
  %i.cc = add i64 %i.ca, 1152920405095219200
  %i.cd = and i64 %i.cc, 1152920405095219200      ; 2 uses
  %i.ce = and i64 %i.ca, -1152920405095219201
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bz, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, !prof !46

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !67, !nonnull !56, !align !57
  %i.ck = invoke noundef zeroext i1 @_ZN4cvc58internal6theory24InferenceManagerBuffered20lemmaTheoryInferenceEPNS1_15TheoryInferenceE(ptr noundef nonnull align 8 dereferenceable(337) %i.cj, ptr noundef nonnull %11)
          to label %bb.ag unwind label %bb.au

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54
  %14 = zext i1 %i.ck to i8
  %15 = or i8 %.1, %14
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal6theory4bags9InferInfoE, i64 16), ptr %11, align 8, !tbaa !17
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.cl)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #25
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i: ; preds = %bb.ag
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !74  ; 3 uses
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !75  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.co, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i ] ; 2 uses
  %i.cq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !45 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.cs = and i64 %i.cr, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cs, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.ai, !prof !46

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ct = add i64 %i.cr, 1152920405095219200
  %i.cu = and i64 %i.ct, 1152920405095219200      ; 2 uses
  %i.cv = and i64 %i.cr, -1152920405095219201
  %i.cw = or disjoint i64 %i.cu, %i.cv
  store i64 %i.cw, ptr %i.cq, align 8
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %bb.aj, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !46

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %i.cp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.k, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i
  %i.db = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.co, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i: ; preds = %bb.al, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !45  ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8            ; 3 uses
  %i.di = and i64 %i.dh, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.di, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory4bags9InferInfoD2Ev.exit, label %bb.am, !prof !46

bb.am:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i
  %i.dj = add i64 %i.dh, 1152920405095219200
  %i.dk = and i64 %i.dj, 1152920405095219200      ; 2 uses
  %i.dl = and i64 %i.dh, -1152920405095219201
  %i.dm = or disjoint i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.dg, align 8
  %i.dn = icmp eq i64 %i.dk, 0
  br i1 %i.dn, label %bb.an, label %_ZN4cvc58internal6theory4bags9InferInfoD2Ev.exit, !prof !46

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_ZN4cvc58internal6theory4bags9InferInfoD2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #25
  unreachable

_ZN4cvc58internal6theory4bags9InferInfoD2Ev.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ax

.loopexit:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ap:                                            ; preds = %bb.r, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.bk

bb.aq:                                            ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ar:                                            ; preds = %bb.aw
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.as:                                            ; preds = %bb.ab
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit52
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.av

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory4bags9InferInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %11) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.pn38 = phi { ptr, i32 } [ %i.dv, %bb.au ], [ %i.du, %bb.at ], [ %i.dt, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bb

bb.aw:                                            ; preds = %bb.y
  %i.dw = invoke { ptr, i64 } @_ZN4cvc58internal6theory2eq15EqClassIteratorppEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.ax unwind label %bb.ar     ; 0 uses

bb.ax:                                            ; preds = %bb.aw, %_ZN4cvc58internal6theory4bags9InferInfoD2Ev.exit
  %.2 = phi i8 [ %17, %_ZN4cvc58internal6theory4bags9InferInfoD2Ev.exit ], [ %.1, %bb.aw ] ; 2 uses
  %i.dx = load ptr, ptr %10, align 8, !tbaa !45   ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8            ; 3 uses
  %i.dz = and i64 %i.dy, 1152920405095219200
  %.not.i.i55 = icmp eq i64 %i.dz, 1152920405095219200
  br i1 %.not.i.i55, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56, label %bb.ay, !prof !46

bb.ay:                                            ; preds = %bb.ax
  %i.ea = add i64 %i.dy, 1152920405095219200
  %i.eb = and i64 %i.ea, 1152920405095219200      ; 2 uses
  %i.ec = and i64 %i.dy, -1152920405095219201
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.dx, align 8
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %bb.az, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56, !prof !46

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56: ; preds = %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.not70, label %bb.bd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit

bb.bb:                                            ; preds = %bb.av, %bb.ar
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.av ], [ %i.ds, %bb.ar ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.aq
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.bb ], [ %i.dr, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bk

bb.bd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56, %bb.w
  %.3 = phi i8 [ %.2, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit56 ], [ %.1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.f, %.critedge, %bb.bd
  %.4 = phi i8 [ %.3, %bb.bd ], [ %.094, %.critedge ], [ %.094, %bb.f ] ; 2 uses
  %i.eh = load ptr, ptr %2, align 8, !tbaa !45    ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.ej = and i64 %i.ei, 1152920405095219200
  %.not.i.i57 = icmp eq i64 %i.ej, 1152920405095219200
  br i1 %.not.i.i57, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, label %bb.be, !prof !46

bb.be:                                            ; preds = %.critedge.thread
  %i.ek = add i64 %i.ei, 1152920405095219200
  %i.el = and i64 %i.ek, 1152920405095219200      ; 2 uses
  %i.em = and i64 %i.ei, -1152920405095219201
  %i.en = or disjoint i64 %i.el, %i.em
  store i64 %i.en, ptr %i.eh, align 8
  %i.eo = icmp eq i64 %i.el, 0
  br i1 %i.eo, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, !prof !46

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58: ; preds = %.critedge.thread, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.er = load ptr, ptr %1, align 8, !tbaa !105   ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 3 uses
  %i.et = and i64 %i.es, 1152920405095219200
  %.not.i.i59 = icmp eq i64 %i.et, 1152920405095219200
  br i1 %.not.i.i59, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.bh, !prof !46

bb.bh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58
  %i.eu = add i64 %i.es, 1152920405095219200
  %i.ev = and i64 %i.eu, 1152920405095219200      ; 2 uses
  %i.ew = and i64 %i.es, -1152920405095219201
  %i.ex = or disjoint i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.er, align 8
  %i.ey = icmp eq i64 %i.ev, 0
  br i1 %i.ey, label %bb.bi, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !46

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.fb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.067.093) #27 ; 2 uses
  %.not = icmp eq ptr %i.fb, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

bb.bk:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bc, %bb.ap
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bc ], [ %i.dq, %bb.ap ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.l, %bb.m, %bb.bk
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bk ], [ %i.ai, %bb.m ], [ %i.ah, %bb.l ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.k
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.bl ], [ %.pn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.h
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.bm ], [ %i.ae, %bb.h ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.432", align 8 ; 2 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %i.a, ptr %3, align 8, !tbaa !66
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext %2, ptr noundef null)
  %i.b = load ptr, ptr %0, align 8, !tbaa !105
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %i.k, ptr %6, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext %2, ptr noundef nonnull %i.l)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal8TypeNodeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.n = call ptr @__cxa_allocate_exception(i64 48) #23 ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %i.o, ptr %7, align 8, !tbaa !66
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4cvc58internal28TypeCheckingExceptionPrivateE, ptr nonnull @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev) #28
          to label %bb.v unwind label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !243    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !87
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.h, %bb.e ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.v:                                             ; preds = %bb.l
  unreachable
}

declare void @_ZN4cvc58internal11NodeManager7mkConstINS0_8EmptyBagEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4cvc58internal8EmptyBagC1ERKNS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal8EmptyBagD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN4cvc58internal6theory4bags18InferenceGenerator7bagMakeENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::bags::InferInfo") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !46

end_hunk_0
