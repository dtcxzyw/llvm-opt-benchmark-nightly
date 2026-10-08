Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rewrite_atom?download=true
inline.NumInlined: 664
inline.NumDeleted: 195
begin_hunk_0_@_ZN4cvc58internal6theory5arith8rewriter13buildRelationENS0_4kind6Kind_tENS0_12NodeTemplateILb1EEES7_b:bb.a
bb.l:                                             ; preds = %.noexc12
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %8)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.n:                                             ; preds = %.noexc12
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.x, %bb.m ], [ %i.y, %bb.n ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !48
  br label %.body13

bb.o:                                             ; preds = %bb.l
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !47
  %i.z = load ptr, ptr %15, align 8, !tbaa !13    ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ab, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.ac = add i64 %i.aa, 1152920405095219200
  %i.ad = and i64 %i.ac, 1152920405095219200      ; 2 uses
  %i.ae = and i64 %i.aa, -1152920405095219201
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.z, align 8
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !14

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.ab

bb.s:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body13

.body13:                                          ; preds = %.body.i, %bb.t
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %.pn.i.i, %.body.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #15
  br label %.body

.body:                                            ; preds = %bb.s, %bb.j, %.body13
  %.pn = phi { ptr, i32 } [ %eh.lpad-body14, %.body13 ], [ %i.aj, %bb.s ], [ %.pn5.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.body17

.noexc16:                                         ; preds = %bb.c
  %i.al = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18, !noalias !49
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.ao, i32 noundef %1)
  store ptr %i.al, ptr %6, align 8, !tbaa !11, !noalias !49
  %i.ap = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.u unwind label %bb.x, !noalias !49

bb.u:                                             ; preds = %.noexc16
  store ptr %i.am, ptr %7, align 8, !tbaa !11, !noalias !49
  %i.aq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ap, ptr noundef nonnull align 8 %7)
          to label %bb.v unwind label %bb.y, !noalias !49 ; 0 uses

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.aa unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %.noexc16
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.pn5.i15 = phi { ptr, i32 } [ %i.ar, %bb.w ], [ %i.at, %bb.y ], [ %i.as, %bb.x ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !49
  br label %.body17

bb.aa:                                            ; preds = %bb.v
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.aa, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  ret void

.body17:                                          ; preds = %bb.z, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn5.i15, %bb.z ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith8rewriter20buildIntegerEqualityEPNS0_11NodeManagerEOSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS8_S9_EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %5 = alloca %"struct.std::pair.84", align 8     ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::Integer", align 8 ; 8 uses
  %9 = alloca %"struct.std::pair", align 8        ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.cvc5::internal::Rational", align 8 ; 5 uses
  %11 = alloca %"struct.std::pair.4", align 8     ; 11 uses
  %12 = alloca %"class.cvc5::internal::RealAlgebraicNumber", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::RealAlgebraicNumber", align 8 ; 8 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 7 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 3 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 3 uses
  %i.b = tail call fastcc noundef zeroext i1 @_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_115normalizeGCDLCMERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEEb(ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext false) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = tail call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @_ZNK4cvc58internal19RealAlgebraicNumber10toRationalEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Rational") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.i = call i32 @__gmpz_cmp_ui(ptr noundef nonnull %i.h, i64 noundef 1) #14
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN4cvc58internal8RationalD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #16
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %bb.b
  %i.l = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !22, !noalias !57
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cu

bb.e:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !27, !noalias !58 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.n = call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !58
  br i1 %i.n, label %bb.f, label %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.val.i) #14, !noalias !58
  br label %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i

_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.f ], [ %.val.i, %bb.e ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %.not42.i = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i54

._crit_edge.i:                                    ; preds = %bb.p, %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i
  %.sroa.031.0.lcssa.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i ], [ %.sroa.031.1.i, %bb.p ] ; 3 uses
  %i.q = icmp eq ptr %.sroa.031.0.lcssa.i, %i.p
  br i1 %i.q, label %bb.q, label %bb.aq

.lr.ph.i54:                                       ; preds = %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i, %bb.p
  %.sroa.031.044.i = phi ptr [ %.sroa.031.1.i, %bb.p ], [ %.sroa.0.0.i.i, %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i ] ; 3 uses
  %.sroa.027.043.i = phi ptr [ %i.ah, %bb.p ], [ %.sroa.0.0.i.i, %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_110getLTermItERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS7_S8_EEE.exit.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.027.043.i, i64 32
  %i.s = call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !58
  br i1 %i.s, label %bb.p, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !58
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.027.043.i, i64 40
  call void @_ZNK4cvc58internal19RealAlgebraicNumber10toRationalEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Rational") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !58
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.044.i, i64 40
  invoke void @_ZNK4cvc58internal19RealAlgebraicNumber10toRationalEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Rational") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.h unwind label %bb.l, !noalias !58

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef i32 @_ZNK4cvc58internal8Rational6absCmpERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.m, !noalias !58

bb.i:                                             ; preds = %bb.h
  %i.w = icmp slt i32 %i.v, 0
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i unwind label %bb.j, !noalias !58

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #16, !noalias !58
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i:            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !58
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4cvc58internal8RationalD2Ev.exit18.i unwind label %bb.k, !noalias !58

bb.k:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #16, !noalias !58
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit18.i:          ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !58
  %spec.select.i = select i1 %i.w, ptr %.sroa.027.043.i, ptr %.sroa.031.044.i
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit19.i

bb.m:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4cvc58internal8RationalD2Ev.exit19.i unwind label %bb.n, !noalias !58

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #16, !noalias !58
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit19.i:          ; preds = %bb.m, %bb.l
  %.pn15.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.ac, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !58
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4cvc58internal8RationalD2Ev.exit20.i unwind label %bb.o, !noalias !58

bb.o:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit19.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #16, !noalias !58
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit20.i:          ; preds = %_ZN4cvc58internal8RationalD2Ev.exit19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !58
  br label %common.resume

bb.p:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit18.i, %.lr.ph.i54
  %.sroa.031.1.i = phi ptr [ %.sroa.031.044.i, %.lr.ph.i54 ], [ %spec.select.i, %_ZN4cvc58internal8RationalD2Ev.exit18.i ] ; 2 uses
  %i.ah = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.027.043.i) #14, !noalias !58 ; 2 uses
  %.not.i55 = icmp eq ptr %i.ah, %i.p
  br i1 %.not.i55, label %._crit_edge.i, label %.lr.ph.i54, !llvm.loop !54

bb.q:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !58
  call void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1), !noalias !58
  invoke void @_ZN4cvc58internal6theory5arith8rewriter7mkConstEPNS0_11NodeManagerERKNS0_7IntegerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.r unwind label %bb.aj, !noalias !58

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !58
  call void @__gmpz_init(ptr noundef nonnull align 8 dereferenceable(16) %8) #15, !noalias !58
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ai = load ptr, ptr %6, align 8, !tbaa !13, !noalias !60 ; 10 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !13, !alias.scope !59, !noalias !58
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !60 ; 3 uses
  %i.ak = lshr i64 %i.aj, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 1048574
  br i1 %i.an, label %bb.s, label %bb.t, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.ao = add nuw nsw i32 %i.am, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 40
  %i.ar = and i64 %i.aj, -1152920405095219201
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.ai, align 8, !noalias !60
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.at = icmp eq i32 %i.am, 1048574
  br i1 %i.at, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.au = or i64 %i.aj, 1152920405095219200
  store i64 %i.au, ptr %i.ai, align 8, !noalias !60
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.v unwind label %bb.ak, !noalias !58

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !32, !noalias !58
  call void @__gmpz_init(ptr noundef nonnull align 8 dereferenceable(16) %8) #15, !noalias !60
  store ptr %i.ai, ptr %11, align 8, !tbaa !13, !alias.scope !58
  %i.aw = load i64, ptr %i.ai, align 8, !noalias !58 ; 3 uses
  %i.ax = lshr i64 %i.aw, 40
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 1048575                  ; 3 uses
  %i.ba = icmp samesign ult i32 %i.az, 1048574
  br i1 %i.ba, label %bb.w, label %bb.x, !prof !19

bb.w:                                             ; preds = %bb.v
  %i.bb = add nuw nsw i32 %i.az, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 40
  %i.be = and i64 %i.aw, -1152920405095219201
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ai, align 8, !noalias !58
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.bg = icmp eq i32 %i.az, 1048574
  br i1 %i.bg, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.bh = or i64 %i.aw, 1152920405095219200
  store i64 %i.bh, ptr %i.ai, align 8, !noalias !58
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.al, !noalias !58

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  invoke void @_ZN4cvc58internal19RealAlgebraicNumberC1ERKNS0_7IntegerE(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEEC2IS3_NS1_7IntegerETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairIS9_SA_EEclsr6_PCCFPIS9_SA_EE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS_IS9_SA_E.exit.i unwind label %bb.z

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %11) #15
  br label %.body.i

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEEC2IS3_NS1_7IntegerETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairIS9_SA_EEclsr6_PCCFPIS9_SA_EE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS_IS9_SA_E.exit.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEEC2IS3_NS1_7IntegerETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairIS9_SA_EEclsr6_PCCFPIS9_SA_EE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS_IS9_SA_E.exit.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #16
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i.i:           ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEEC2IS3_NS1_7IntegerETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairIS9_SA_EEclsr6_PCCFPIS9_SA_EE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS_IS9_SA_E.exit.i
  %i.bm = load ptr, ptr %5, align 8, !tbaa !13, !noalias !58 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = and i64 %i.bn, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.bo, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev.exit.i, label %bb.ab, !prof !14

bb.ab:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i.i
  %i.bp = add i64 %i.bn, 1152920405095219200
  %i.bq = and i64 %i.bp, 1152920405095219200      ; 2 uses
  %i.br = and i64 %i.bn, -1152920405095219201
  %i.bs = or disjoint i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.bm, align 8
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %bb.ac, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev.exit.i, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #16
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev.exit.i: ; preds = %bb.ac, %bb.ab, %_ZN4cvc58internal7IntegerD2Ev.exit.i.i
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev.exit.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #16
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i:             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !58
  %i.by = load ptr, ptr %6, align 8, !tbaa !13, !noalias !58 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, label %bb.af, !prof !14

bb.af:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i, !prof !14

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #16
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i: ; preds = %bb.ag, %bb.af, %_ZN4cvc58internal7IntegerD2Ev.exit.i
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit22.i unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #16
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit22.i:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !58
  br label %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_117removeMinAbsCoeffEPNS0_11NodeManagerERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS9_SA_EEE.exit

bb.aj:                                            ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %bb.z
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cm, %bb.al ], [ %i.bj, %bb.z ]
  call void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_7IntegerEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #15
  br label %bb.am

bb.am:                                            ; preds = %.body.i, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.cl, %bb.ak ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit23.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #16
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit23.i:           ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !58
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit23.i, %bb.aj
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZN4cvc58internal7IntegerD2Ev.exit23.i ], [ %i.ck, %bb.aj ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit24.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #16
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit24.i:           ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !58
  br label %common.resume

bb.aq:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !58
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i, i64 32
  call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.cr), !noalias !58
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_19RealAlgebraicNumberEESt10_Select1stIS7_ENS1_6theory5arith8rewriter18LeafNodeComparatorESaIS7_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.sroa.031.0.lcssa.i), !noalias !58
  invoke void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEEC2IKS3_S4_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairIS9_SA_EEclsr6_PCCFPIS9_SA_EE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS_IS9_SA_E(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #16
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit.i.i: ; preds = %bb.ar
  %i.cv = load ptr, ptr %9, align 8, !tbaa !13, !noalias !58 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = and i64 %i.cw, 1152920405095219200
  %.not.i.i.i25.i = icmp eq i64 %i.cx, 1152920405095219200
  br i1 %.not.i.i.i25.i, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEED2Ev.exit.i, label %bb.at, !prof !14

bb.at:                                            ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit.i.i
  %i.cy = add i64 %i.cw, 1152920405095219200
  %i.cz = and i64 %i.cy, 1152920405095219200      ; 2 uses
  %i.da = and i64 %i.cw, -1152920405095219201
  %i.db = or disjoint i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cv, align 8
  %i.dc = icmp eq i64 %i.cz, 0
  br i1 %i.dc, label %bb.au, label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEED2Ev.exit.i, !prof !14

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEED2Ev.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #16
  unreachable

_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEED2Ev.exit.i: ; preds = %bb.au, %bb.at, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !58
  br label %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_117removeMinAbsCoeffEPNS0_11NodeManagerERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS9_SA_EEE.exit

bb.aw:                                            ; preds = %bb.aq
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !58
  br label %common.resume

common.resume:                                    ; preds = %_ZN4cvc58internal8RationalD2Ev.exit20.i, %_ZN4cvc58internal7IntegerD2Ev.exit24.i, %bb.aw, %bb.ct
  %common.resume.op = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn.pn, %bb.ct ], [ %.pn15.i, %_ZN4cvc58internal8RationalD2Ev.exit20.i ], [ %.pn.pn.pn.i, %_ZN4cvc58internal7IntegerD2Ev.exit24.i ], [ %i.df, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_117removeMinAbsCoeffEPNS0_11NodeManagerERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS9_SA_EEE.exit: ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit22.i, %_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_19RealAlgebraicNumberEED2Ev.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.dh = invoke noundef i32 @_ZNK4cvc58internal19RealAlgebraicNumber3sgnEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_117removeMinAbsCoeffEPNS0_11NodeManagerERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS9_SA_EEE.exit
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  invoke void @_ZNK4cvc58internal19RealAlgebraicNumberngEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::RealAlgebraicNumber") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.dg)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @__gmpq_set(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit unwind label %bb.bd

_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit: ; preds = %bb.az
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #16
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit:  ; preds = %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.loopexit

bb.bb:                                            ; preds = %_ZN4cvc58internal6theory5arith8rewriter12_GLOBAL__N_117removeMinAbsCoeffEPNS0_11NodeManagerERSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS9_SA_EEE.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bc:                                            ; preds = %bb.ay
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit73

bb.bd:                                            ; preds = %bb.az
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit73 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #16
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit73: ; preds = %bb.bd, %bb.bc
  %.pn29 = phi { ptr, i32 } [ %i.dm, %bb.bc ], [ %i.dn, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.ct

bb.bf:                                            ; preds = %bb.ax
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %.not156 = icmp eq ptr %i.dq, %i.p
  br i1 %.not156, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bf, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit77
  %.sroa.0147.0157 = phi ptr [ %i.dv, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit77 ], [ %i.dq, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0147.0157, i64 40 ; 3 uses
  invoke void @_ZNK4cvc58internal19RealAlgebraicNumberngEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::RealAlgebraicNumber") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %.lr.ph
  %i.ds = icmp eq ptr %i.dr, %13
  br i1 %i.ds, label %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit75, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @__gmpq_set(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit75 unwind label %bb.bk

_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit75: ; preds = %bb.bg, %bb.bh
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit77 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit75
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #16
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit77: ; preds = %_ZN4cvc58internal19RealAlgebraicNumberaSEOS1_.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.dv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0147.0157) #14 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.p
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.bj:                                            ; preds = %.lr.ph
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit79

bb.bk:                                            ; preds = %bb.bh
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit79 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #16
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit79: ; preds = %bb.bk, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.bj ], [ %i.dx, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ct

.loopexit:                                        ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit77, %bb.bf, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.ea = load ptr, ptr %11, align 8, !tbaa !13
  store ptr %i.ea, ptr %15, align 8, !tbaa !11
  invoke void @_ZN4cvc58internal6theory5arith8rewriter10mkMultTermERKNS0_19RealAlgebraicNumberENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 %15)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit102 unwind label %bb.ck

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit102: ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  invoke void @_ZN4cvc58internal6theory5arith8rewriter10collectSumEPNS0_11NodeManagerERKSt3mapINS0_12NodeTemplateILb1EEENS0_19RealAlgebraicNumberENS3_18LeafNodeComparatorESaISt4pairIKS8_S9_EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %16, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.bm unwind label %bb.cl

bb.bm:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit102
  %i.eb = load ptr, ptr %14, align 8, !tbaa !13   ; 8 uses
  store ptr %i.eb, ptr %17, align 8, !tbaa !13
  %i.ec = load i64, ptr %i.eb, align 8            ; 3 uses
  %i.ed = lshr i64 %i.ec, 40
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 1048575                  ; 3 uses
  %i.eg = icmp samesign ult i32 %i.ef, 1048574
  br i1 %i.eg, label %bb.bn, label %bb.bo, !prof !19

end_hunk_0
