Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/base_solver?download=true
inline.NumInlined: 2775
inline.NumDeleted: 942
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4cvc58internal6theory7strings10BaseSolver17getCardinalityReqENS0_8TypeNodeERm:bb.a
  br label %_ZN4cvc58internal11CardinalityD2Ev.exit23

bb.x:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.y:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit

bb.z:                                             ; preds = %bb.u, %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

bb.ab:                                            ; preds = %bb.v, %bb.t
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit22 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit22:             ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.au = zext i1 %i.aj to i32
  br label %bb.ad

_ZN4cvc58internal7IntegerD2Ev.exit:               ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.y ], [ %i.ap, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

bb.ad:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit22, %_ZNK4cvc58internal11Cardinality13isLargeFiniteEv.exit
  %.1 = phi i32 [ 0, %_ZNK4cvc58internal11Cardinality13isLargeFiniteEv.exit ], [ %i.au, %_ZN4cvc58internal7IntegerD2Ev.exit22 ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN4cvc58internal11CardinalityD2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZN4cvc58internal11CardinalityD2Ev.exit:          ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ai

bb.af:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4cvc58internal7IntegerD2Ev.exit ], [ %i.an, %bb.x ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN4cvc58internal11CardinalityD2Ev.exit23 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN4cvc58internal11CardinalityD2Ev.exit23:        ; preds = %bb.af, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.w ], [ %.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.am

bb.ah:                                            ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117, !nonnull !63, !align !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  invoke void @_ZN4cvc58internal6theory22TheoryInferenceManager15setModelUnsoundENS1_12IncompleteIdE(ptr noundef nonnull align 8 dereferenceable(240) %i.bb, i32 noundef 18)
          to label %bb.ai unwind label %bb.k

bb.ai:                                            ; preds = %_ZN4cvc58internal11CardinalityD2Ev.exit, %bb.ah, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %.115 = phi i32 [ 0, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ 2, %bb.ah ], [ %.1, %_ZN4cvc58internal11CardinalityD2Ev.exit ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !95    ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = and i64 %i.bd, 1152920405095219200
  %.not.i.i24 = icmp eq i64 %i.be, 1152920405095219200
  br i1 %.not.i.i24, label %_ZN4cvc58internal8TypeNodeD2Ev.exit25, label %bb.aj, !prof !61

bb.aj:                                            ; preds = %bb.ai
  %i.bf = add i64 %i.bd, 1152920405095219200
  %i.bg = and i64 %i.bf, 1152920405095219200      ; 2 uses
  %i.bh = and i64 %i.bd, -1152920405095219201
  %i.bi = or disjoint i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.bc, align 8
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %bb.ak, label %_ZN4cvc58internal8TypeNodeD2Ev.exit25, !prof !61

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit25 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit25:            ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.an

bb.am:                                            ; preds = %_ZN4cvc58internal11CardinalityD2Ev.exit23, %bb.l, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4cvc58internal11CardinalityD2Ev.exit23 ], [ %i.ae, %bb.k ], [ %i.af, %bb.l ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.an:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit25, %bb.b
  %.216 = phi i32 [ 1, %bb.b ], [ %.115, %_ZN4cvc58internal8TypeNodeD2Ev.exit25 ]
  ret i32 %.216
}

declare void @_ZNK4cvc58internal8TypeNode22getSequenceElementTypeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal3Env12isFiniteTypeENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(696), ptr noundef align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal24isCardinalityClassFiniteENS0_16CardinalityClassEb(i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef i64 @_ZN4cvc58internal8TypeNode19getCardinalityClassEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal8TypeNode14getCardinalityEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::Cardinality") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal11Cardinality20getFiniteCardinalityEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::Integer") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal7Integer15fitsUnsignedIntEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal7Integer13toUnsignedIntEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory22TheoryInferenceManager15setModelUnsoundENS1_12IncompleteIdE(ptr noundef nonnull align 8 dereferenceable(240), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory7strings10BaseSolver15isCardinalityOkEmNS0_12NodeTemplateILb1EEEmRm(ptr noundef nonnull align 8 dereferenceable(292) %0, i64 noundef %1, ptr noundef align 8 %2, i64 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.492", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.492", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %10 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.492", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.492", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.492", align 8 ; 2 uses
  %i.a = icmp ult i64 %3, 2
  br i1 %i.a, label %._crit_edge138, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %4, align 8, !tbaa !113
  br label %._crit_edge138

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %4, align 8, !tbaa !113
  %i.c = uitofp i64 %3 to double                  ; 2 uses
  %i.d = uitofp i64 %1 to double                  ; 3 uses
  %i.e = fcmp ogt double %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.026135 = phi double [ %i.g, %.lr.ph ], [ %i.c, %bb.d ]
  %i.f = phi i64 [ %i.h, %.lr.ph ], [ 1, %bb.d ]
  %i.g = fdiv double %.026135, %i.d               ; 2 uses
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = fcmp ogt double %i.g, %i.d
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !595

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.h, ptr %4, align 8, !tbaa !113
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.j = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.k, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.l = load i64, ptr %4, align 8, !tbaa !113
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.o = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.p = load i64, ptr %4, align 8, !tbaa !113
  invoke void @_ZN4cvc58internal8RationalC2Em(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.p)
          to label %bb.g unwind label %bb.ad

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal11NodeManager10mkConstIntERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3592) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.h unwind label %bb.ae

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %9, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !599
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116, !noalias !599
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.s, i32 noundef 79)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.h
  store ptr %i.o, ptr %6, align 8, !tbaa !112, !noalias !599
  %i.t = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.i unwind label %bb.k, !noalias !599

bb.i:                                             ; preds = %.noexc
  store ptr %i.q, ptr %7, align 8, !tbaa !112, !noalias !599
  %i.u = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.t, ptr noundef nonnull align 8 %7)
          to label %bb.j unwind label %bb.k, !noalias !599 ; 0 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !599
  br label %.body

bb.l:                                             ; preds = %bb.j
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.w = load ptr, ptr %9, align 8, !tbaa !31     ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.m, !prof !61

bb.m:                                             ; preds = %bb.l
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !61

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.l, %bb.m, %bb.n
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN4cvc58internal8RationalD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ai = load ptr, ptr %8, align 8, !tbaa !31
  store ptr %i.ai, ptr %12, align 8, !tbaa !112
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %12)
          to label %bb.q unwind label %bb.ai

bb.q:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.aj = load ptr, ptr %8, align 8, !tbaa !31    ; 4 uses
  %i.ak = load ptr, ptr %11, align 8, !tbaa !31
  %.not.i69 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i69, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.r, !prof !61

bb.r:                                             ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1152920405095219200
  %.not.i.i70 = icmp eq i64 %i.am, 1152920405095219200
  br i1 %.not.i.i70, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.s, !prof !61

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %i.al, 1152920405095219200
  %i.ao = and i64 %i.an, 1152920405095219200      ; 2 uses
  %i.ap = and i64 %i.al, -1152920405095219201
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.aj, align 8
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %bb.t, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !61

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.aj

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.t, %bb.s, %bb.r
  %i.as = load ptr, ptr %11, align 8, !tbaa !31   ; 5 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !31
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = lshr i64 %i.at, 40
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 1048575                  ; 3 uses
  %i.ax = icmp samesign ult i32 %i.aw, 1048574
  br i1 %i.ax, label %bb.u, label %bb.v, !prof !62

bb.u:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ay = add nuw nsw i32 %i.aw, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 40
  %i.bb = and i64 %i.at, -1152920405095219201
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.as, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.v:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bd = icmp eq i32 %i.aw, 1048574
  br i1 %i.bd, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !61

bb.w:                                             ; preds = %bb.v
  %i.be = or i64 %i.at, 1152920405095219200
  store i64 %i.be, ptr %i.as, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.aj

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.v, %bb.u, %bb.q, %bb.w
  %i.bf = load ptr, ptr %11, align 8, !tbaa !31   ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = and i64 %i.bg, 1152920405095219200
  %.not.i.i73 = icmp eq i64 %i.bh, 1152920405095219200
  br i1 %.not.i.i73, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, label %bb.x, !prof !61

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.bi = add i64 %i.bg, 1152920405095219200
  %i.bj = and i64 %i.bi, 1152920405095219200      ; 2 uses
  %i.bk = and i64 %i.bg, -1152920405095219201
  %i.bl = or disjoint i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bf, align 8
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, !prof !61

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bp = load ptr, ptr %8, align 8, !tbaa !31
  %i.bq = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit unwind label %bb.al

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !60, !range !141, !noundef !63
  %i.bs = load ptr, ptr %8, align 8, !tbaa !31    ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.bu = and i64 %i.bt, 1152920405095219200
  %.not.i.i77 = icmp eq i64 %i.bu, 1152920405095219200
  br i1 %.not.i.i77, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, label %bb.aa, !prof !61

bb.aa:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit
  %i.bv = add i64 %i.bt, 1152920405095219200
  %i.bw = and i64 %i.bv, 1152920405095219200      ; 2 uses
  %i.bx = and i64 %i.bt, -1152920405095219201
  %i.by = or disjoint i64 %i.bw, %i.bx
  store i64 %i.by, ptr %i.bs, align 8
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, !prof !61

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %17 = trunc nuw i8 %i.br to i1
  br label %._crit_edge138

bb.ad:                                            ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit80

bb.ae:                                            ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.ce, %bb.af ], [ %i.v, %bb.k ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.ae
  %.pn30 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cd, %bb.ae ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN4cvc58internal8RationalD2Ev.exit80 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit80:            ; preds = %bb.ag, %bb.ad
  %.pn30.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %.pn30, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.an

bb.ai:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w, %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn33 = phi { ptr, i32 } [ %i.ci, %bb.aj ], [ %i.ch, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.am

bb.al:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn35 = phi { ptr, i32 } [ %i.cj, %bb.al ], [ %.pn33, %bb.ak ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4cvc58internal8RationalD2Ev.exit80
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.am ], [ %.pn30.pn, %_ZN4cvc58internal8RationalD2Ev.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.az

bb.ao:                                            ; preds = %.lr.ph137, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85
  %.0128136 = phi i64 [ 1, %.lr.ph137 ], [ %spec.select, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN4cvc58internal8RationalC2Em(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %.0128136)
  invoke void @_ZN4cvc58internal11NodeManager10mkConstIntERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(3592) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN4cvc58internal8RationalD2Ev.exit81 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit81:            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !93, !nonnull !63, !align !64 ; 2 uses
  %i.cn = load ptr, ptr %13, align 8, !tbaa !31
  store ptr %i.cn, ptr %15, align 8, !tbaa !112
  %i.co = load ptr, ptr %2, align 8, !tbaa !31
  store ptr %i.co, ptr %16, align 8, !tbaa !112
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(160) %i.cm, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 %16)
          to label %bb.ar unwind label %bb.au     ; 2 uses

bb.ar:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit81
  %i.ct = zext i1 %i.cs to i64
  %spec.select = add nuw i64 %.0128136, %i.ct     ; 3 uses
  %i.cu = load ptr, ptr %13, align 8, !tbaa !31   ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = and i64 %i.cv, 1152920405095219200
  %.not.i.i83 = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i83, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85, label %bb.av, !prof !61

bb.as:                                            ; preds = %bb.ao
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN4cvc58internal8RationalD2Ev.exit82 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit82:            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ay

bb.au:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit81
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23
  br label %bb.ay

bb.av:                                            ; preds = %bb.ar
  %i.db = add i64 %i.cv, 1152920405095219200
  %i.dc = and i64 %i.db, 1152920405095219200      ; 2 uses
  %i.dd = and i64 %i.cv, -1152920405095219201
  %i.de = or disjoint i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.cu, align 8
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85, !prof !61

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85: ; preds = %bb.ar, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.di = load i64, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.dj = icmp ult i64 %spec.select, %i.di
  %i.dk = and i1 %i.cs, %i.dj
  br i1 %i.dk, label %bb.ao, label %._crit_edge138.loopexit.a, !llvm.loop !598

bb.ay:                                            ; preds = %bb.au, %_ZN4cvc58internal8RationalD2Ev.exit82
  %.pn = phi { ptr, i32 } [ %i.da, %bb.au ], [ %i.cx, %_ZN4cvc58internal8RationalD2Ev.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.az

._crit_edge138.loopexit.a:                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85
  %18 = icmp uge i64 %spec.select, %i.di
  br label %._crit_edge138

bb.az:                                            ; preds = %bb.ay, %bb.an
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.an ], [ %.pn, %bb.ay ]
  resume { ptr, i32 } %.pn35.pn.pn

._crit_edge138:                                   ; preds = %.preheader, %._crit_edge138.loopexit.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, %bb.a, %bb.c
  %.027 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ %17, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79 ], [ true, %.preheader ], [ %18, %._crit_edge138.loopexit.a ]
  ret i1 %.027
}

declare void @_ZN4cvc58internal11NodeManager10mkConstIntERKNS0_8RationalE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8RationalC2Em(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Em.exit:
  %2 = alloca %class.__gmp_expr, align 8          ; 7 uses
  %3 = alloca %class.__gmp_expr, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 1)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit unwind label %bb.c

_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit:   ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Em.exit
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit unwind label %bb.d

_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit: ; preds = %.noexc
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit unwind label %bb.a

bb.a:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit:   ; preds = %_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit9 unwind label %bb.b

bb.b:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit9:  ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_E12canonicalizeEv.exit unwind label %bb.g

_ZN10__gmp_exprIA1_12__mpq_structS1_E12canonicalizeEv.exit: ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit9
  ret void

bb.c:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Em.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit11

bb.d:                                             ; preds = %.noexc, %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit11 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit11: ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12 unwind label %bb.f

bb.f:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit11
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12: ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit

bb.g:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit9
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit:   ; preds = %bb.g, %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12 ], [ %i.l, %bb.g ]
  resume { ptr, i32 } %.pn6
}

declare void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory7strings10BaseSolver15isCardinalityOkEmNS0_12NodeTemplateILb1EEEm(ptr noundef nonnull align 8 dereferenceable(292) %0, i64 noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr %2, align 8, !tbaa !31     ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !31
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory7strings10BaseSolver15isCardinalityOkEmNS0_12NodeTemplateILb1EEEmRm(ptr noundef nonnull align 8 dereferenceable(292) %0, i64 noundef %1, ptr noundef nonnull align 8 %4, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !31     ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = and i64 %i.q, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.r, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.q, 1152920405095219200
  %i.t = and i64 %i.s, 1152920405095219200        ; 2 uses
  %i.u = and i64 %i.q, -1152920405095219201
  %i.v = or disjoint i64 %i.t, %i.u
  store i64 %i.v, ptr %i.p, align 8
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !61

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %i.o

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.z
}

declare noundef ptr @_ZN4cvc58internal6theory7strings11SolverState16getOrMakeEqcInfoENS0_12NodeTemplateILb1EEEb(ptr noundef nonnull align 8 dereferenceable(560), ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory7strings16InferenceManager13sendInferenceERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EESA_S6_NS1_11InferenceIdEbb(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef align 8, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory7strings10BaseSolver11isCongruentENS0_12NodeTemplateILb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(292) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102
  %.not.not.i.i.i.i.i = icmp eq i64 %i.d, 0
end_hunk_0
