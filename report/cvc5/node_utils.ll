Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_utils?download=true
inline.NumInlined: 647
inline.NumDeleted: 258
begin_hunk_0_@_ZN4cvc58internal6theory5arith8rewriter10mkMultTermERKNS0_8RationalENS0_12NodeTemplateILb0EEE:bb.a
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %3)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !35
  br label %.body

bb.s:                                             ; preds = %bb.q
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.an = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.t, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.an, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !22

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.s, %bb.t, %bb.u
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit16 unwind label %bb.w

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #20
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit16: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.x:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZN4cvc58internal6theory5arith8rewriter7mkConstEPNS0_11NodeManagerERKNS0_19RealAlgebraicNumberE.exit15
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.y ], [ %i.am, %bb.r ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.az, %bb.x ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit17 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #20
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit17: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ab

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.n, %bb.m, %bb.l, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit16, %_ZN4cvc58internal8RationalD2Ev.exit
  ret void

bb.ab:                                            ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit17, %_ZN4cvc58internal8RationalD2Ev.exit14
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZN4cvc58internal8RationalD2Ev.exit14 ], [ %.pn, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit17 ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal8RationalmlERKS1_(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::Rational") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.__gmp_expr, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @__gmpq_init(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @__gmpq_mul(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %1, ptr noundef nonnull %2)
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %_ZN4cvc58internal8RationalC2ERK10__gmp_exprIA1_12__mpq_structS4_E.exit unwind label %bb.c

_ZN4cvc58internal8RationalC2ERK10__gmp_exprIA1_12__mpq_structS4_E.exit: ; preds = %.noexc
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN4cvc58internal8RationalC2ERK10__gmp_exprIA1_12__mpq_structS4_E.exit
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #20
  unreachable

_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit:   ; preds = %_ZN4cvc58internal8RationalC2ERK10__gmp_exprIA1_12__mpq_structS4_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit4 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit4:  ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.e
}

declare void @_ZN4cvc58internal19RealAlgebraicNumberC1ERKNS0_8RationalE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith8rewriter10mkMultTermERKNS0_19RealAlgebraicNumberENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::RealAlgebraicNumber", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::RealAlgebraicNumber", align 8 ; 7 uses
  %9 = alloca %"class.std::vector", align 8       ; 14 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4cvc58internal11NodeManager21mkRealAlgebraicNumberERKNS0_19RealAlgebraicNumberE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %5, ptr noundef nonnull align 8 dereferenceable(3592) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %5, align 8, !tbaa !20
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit unwind label %bb.d

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit: ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !14
  store ptr %i.g, ptr %6, align 8, !tbaa !14
  invoke void @_ZN4cvc58internal6theory5arith8rewriter10mkMultTermERKNS0_8RationalENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 %6)
          to label %bb.af unwind label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.e, %bb.c, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.e:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !14
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_8RationalEEERKT_v.exit unwind label %bb.l

_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_8RationalEEERKT_v.exit: ; preds = %bb.g
  invoke void @_ZN4cvc58internal19RealAlgebraicNumberC1ERKNS0_8RationalE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_8RationalEEERKT_v.exit
  invoke void @_ZNK4cvc58internal19RealAlgebraicNumbermlERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::RealAlgebraicNumber") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal11NodeManager21mkRealAlgebraicNumberERKNS0_19RealAlgebraicNumberE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4cvc58internal6theory5arith8rewriter7mkConstEPNS0_11NodeManagerERKNS0_19RealAlgebraicNumberE.exit unwind label %bb.n

_ZN4cvc58internal6theory5arith8rewriter7mkConstEPNS0_11NodeManagerERKNS0_19RealAlgebraicNumberE.exit: ; preds = %bb.i
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal6theory5arith8rewriter7mkConstEPNS0_11NodeManagerERKNS0_19RealAlgebraicNumberE.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit:  ; preds = %_ZN4cvc58internal6theory5arith8rewriter7mkConstEPNS0_11NodeManagerERKNS0_19RealAlgebraicNumberE.exit
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit18 unwind label %bb.k

bb.k:                                             ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #20
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit18: ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.af

bb.l:                                             ; preds = %bb.g, %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_8RationalEEERKT_v.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit20

bb.m:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit19

bb.n:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit19 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #20
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit19: ; preds = %bb.n, %bb.m
  %.pn13 = phi { ptr, i32 } [ %i.q, %bb.m ], [ %i.r, %bb.n ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit20 unwind label %bb.p

bb.p:                                             ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit19
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit20: ; preds = %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit19, %bb.l
  %.pn13.pn = phi { ptr, i32 } [ %i.p, %bb.l ], [ %.pn13, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.aj

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc21 unwind label %bb.t

.noexc21:                                         ; preds = %bb.q
  %i.x = load ptr, ptr %2, align 8, !tbaa !14     ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1023                     ; 2 uses
  %.off = add nsw i32 %i.ab, -41
  %switch = icmp ult i32 %.off, 2
  %11 = load ptr, ptr %10, align 8, !tbaa !24     ; 4 uses
  br i1 %switch, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.noexc21
  %i.ac = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ab)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ad = icmp eq i32 %i.ac, 2
  %spec.select.v.i.i = select i1 %i.ad, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.v.i.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = and i64 %i.ai, 67108863
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.am = ptrtoint ptr %11 to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorINS2_ILb0EEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ap, ptr nonnull %spec.select.i.i, ptr nonnull %i.ak)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRNS2_ILb0EEEEEERS3_DpOT_.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.y, %bb.z, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRNS2_ILb0EEEEEERS3_DpOT_.exit, %bb.s, %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.noexc21
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !26
  %.not.i24 = icmp eq ptr %11, %i.ar
  br i1 %.not.i24, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.x, ptr %11, align 8, !tbaa !20
  %i.as = load i64, ptr %i.x, align 8             ; 3 uses
  %i.at = lshr i64 %i.as, 40
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 1048575                  ; 3 uses
  %i.aw = icmp samesign ult i32 %i.av, 1048574
  br i1 %i.aw, label %bb.w, label %bb.x, !prof !21

bb.w:                                             ; preds = %bb.v
  %i.ax = add nuw nsw i32 %i.av, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 40
  %i.ba = and i64 %i.as, -1152920405095219201
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.x, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bc = icmp eq i32 %i.av, 1048574
  br i1 %i.bc, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.bd = or i64 %i.as, 1152920405095219200
  store i64 %i.bd, ptr %i.x, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i unwind label %bb.t

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.be = load ptr, ptr %10, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %10, align 8, !tbaa !27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRNS2_ILb0EEEEEERS3_DpOT_.exit

bb.z:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRNS2_ILb0EEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRNS2_ILb0EEEEEERS3_DpOT_.exit unwind label %bb.t

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRNS2_ILb0EEEEEERS3_DpOT_.exit: ; preds = %bb.z, %bb.s, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !38
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(3592) %i.c, i32 noundef 42)
          to label %.noexc28 unwind label %bb.t

.noexc28:                                         ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRNS2_ILb0EEEEEERS3_DpOT_.exit
  %i.bg = load ptr, ptr %9, align 8, !tbaa !24, !noalias !38 ; 2 uses
  %i.bh = load ptr, ptr %10, align 8, !tbaa !24, !noalias !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !38
  %.not6.i.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc28, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.bk, %.noexc.i ], [ %i.bg, %.noexc28 ] ; 2 uses
  %i.bi = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !20, !noalias !38
  store ptr %i.bi, ptr %3, align 8, !tbaa !14, !noalias !38
  %i.bj = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %3)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bh
  br i1 %.not.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !0

.loopexit4.i:                                     ; preds = %.noexc.i, %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !38
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.loopexit4.i
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !38
  br label %.body

bb.aa:                                            ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !38
  %i.bl = load ptr, ptr %9, align 8, !tbaa !29    ; 3 uses
  %i.bm = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %bb.aa, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.bl, %bb.aa ] ; 2 uses
  %i.bn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = and i64 %i.bo, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bp, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.ab, !prof !22

bb.ab:                                            ; preds = %.lr.ph.i.i.i29
  %i.bq = add i64 %i.bo, 1152920405095219200
  %i.br = and i64 %i.bq, 1152920405095219200      ; 2 uses
  %i.bs = and i64 %i.bo, -1152920405095219201
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bn, align 8
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %bb.ac, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !22

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #20
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i29
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bx, %i.bm
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i29, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.aa
  %i.by = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bl, %bb.aa ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.af

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.aj

bb.af:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit18
  %i.cd = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 3 uses
  %i.cf = and i64 %i.ce, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cf, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ag, !prof !22

bb.ag:                                            ; preds = %bb.af
  %i.cg = add i64 %i.ce, 1152920405095219200
  %i.ch = and i64 %i.cg, 1152920405095219200      ; 2 uses
  %i.ci = and i64 %i.ce, -1152920405095219201
  %i.cj = or disjoint i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.cd, align 8
  %i.ck = icmp eq i64 %i.ch, 0
  br i1 %i.ck, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !22

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #20
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.aj:                                            ; preds = %.body, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit20, %bb.d
  %.pn16 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn, %.body ], [ %.pn13.pn, %_ZN4cvc58internal19RealAlgebraicNumberD2Ev.exit20 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn16
}

declare noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK4cvc58internal19RealAlgebraicNumbermlERKS1_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::RealAlgebraicNumber") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #22
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith8rewriter10mkMultTermEPNS0_11NodeManagerERKNS0_19RealAlgebraicNumberEOSt6vectorINS0_12NodeTemplateILb1EEESaISB_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4cvc58internal11NodeManager21mkRealAlgebraicNumberERKNS0_19RealAlgebraicNumberE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4cvc58internal11NodeManager21mkRealAlgebraicNumberERKNS0_19RealAlgebraicNumberE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %3, align 8, !tbaa !24     ; 6 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !24   ; 6 uses
  %.not.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory5arith8rewriter18LeafNodeComparatorEEvT_SF_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS3_6theory5arith8rewriter18LeafNodeComparatorEEEEvT_SI_T0_T1_(ptr %i.f, ptr %i.g, i64 noundef %i.n)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.o = icmp sgt i64 %i.j, 128
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_6theory5arith8rewriter18LeafNodeComparatorEEEEvT_SI_T0_(ptr %i.f, ptr nonnull %i.p)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.g
  %.not6.i.i.i.i = icmp eq ptr %i.p, %i.g
  br i1 %.not6.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory5arith8rewriter18LeafNodeComparatorEEvT_SF_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc22, %.noexc23
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.q, %.noexc23 ], [ %i.p, %.noexc22 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS3_6theory5arith8rewriter18LeafNodeComparatorEEEEvT_T0_(ptr nonnull %.sroa.0.07.i.i.i.i)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory5arith8rewriter18LeafNodeComparatorEEvT_SF_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !39

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_6theory5arith8rewriter18LeafNodeComparatorEEEEvT_SI_T0_(ptr %i.f, ptr %i.g)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory5arith8rewriter18LeafNodeComparatorEEvT_SF_T0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory5arith8rewriter18LeafNodeComparatorEEvT_SF_T0_.exit: ; preds = %.noexc23, %.noexc22, %bb.e, %bb.h
  %i.r = load ptr, ptr %6, align 8, !tbaa !20
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS3_6theory5arith8rewriter18LeafNodeComparatorEEvT_SF_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
end_hunk_0
