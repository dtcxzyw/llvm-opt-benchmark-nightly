Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/basic_rewrite_rcons?download=true
inline.NumInlined: 5272
inline.NumDeleted: 1000
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit:
  %2 = alloca %class.__gmp_expr.476, align 8      ; 7 uses
  %3 = alloca %class.__gmp_expr.476, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = sext i32 %1 to i64
  call void @__gmpz_init_set_si(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 1)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit8 unwind label %bb.c

_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit8:  ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit unwind label %bb.d

_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit: ; preds = %.noexc
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit unwind label %bb.a

bb.a:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit:   ; preds = %_ZN10__gmp_exprIA1_12__mpq_structS1_EC2ERKS_IA1_12__mpz_structS4_ES7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit10 unwind label %bb.b

bb.b:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit10: ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_E12canonicalizeEv.exit unwind label %bb.g

_ZN10__gmp_exprIA1_12__mpq_structS1_E12canonicalizeEv.exit: ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit10
  ret void

bb.c:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12

bb.d:                                             ; preds = %.noexc, %_ZN10__gmp_exprIA1_12__mpz_structS1_EC2Ei.exit8
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12: ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit13 unwind label %bb.f

bb.f:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit13: ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit

bb.g:                                             ; preds = %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit10
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit:   ; preds = %bb.g, %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit13
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZN10__gmp_exprIA1_12__mpz_structS1_ED2Ev.exit13 ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal8rewriter17BasicRewriteRCons14proveTransIneqEPNS0_7CDProofERKNS0_12NodeTemplateILb1EEES8_(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 6 uses
  %12 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %13 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %16 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %19 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %22 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %25 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate.469", align 8 ; 4 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %29 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %31 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %35 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %36 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %37 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %39 = alloca %"class.std::vector.299", align 8  ; 13 uses
  %40 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %41 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %43 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %44 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %45 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %46 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %47 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %49 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %52 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %53 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %54 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %55 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %56 = alloca %"class.std::vector.299", align 8  ; 13 uses
  %57 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %58 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %59 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %60 = alloca %"class.std::vector.299", align 8  ; 13 uses
  %61 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %62 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %63 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %65 = alloca %"class.std::vector.299", align 8  ; 13 uses
  %66 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %67 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %68 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %70 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %71 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %73 = alloca %"class.std::vector.299", align 8  ; 13 uses
  %74 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %75 = alloca %"class.std::vector.299", align 8  ; 10 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %76 = and i64 %i.c, 1023
  %i.d = icmp eq i64 %76, 77                      ; 3 uses
  %i.e = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1023                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %i.k = icmp eq i32 %i.j, 1023
  %i.l = select i1 %i.k, i32 -1, i32 %i.j
  %i.m = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.l), !noalias !1470
  %i.n = icmp eq i32 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.p = zext i1 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26, !noalias !1470 ; 10 uses
  store ptr %i.r, ptr %28, align 8, !tbaa !23, !alias.scope !1470
  %i.s = load i64, ptr %i.r, align 8, !noalias !1470 ; 3 uses
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1048575                    ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 1048574
  br i1 %i.w, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = and i64 %i.s, -1152920405095219201
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.r, align 8, !noalias !1470
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = icmp eq i32 %i.v, 1048574
  br i1 %i.ac, label %bb.d, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.ad = or i64 %i.s, 1152920405095219200
  store i64 %i.ad, ptr %i.r, align 8, !noalias !1470
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !1470
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %i.ae = load ptr, ptr %4, align 8, !tbaa !23, !noalias !1473 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1473
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1023                     ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1023
  %i.ak = select i1 %i.aj, i32 -1, i32 %i.ai
  %i.al = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ak)
          to label %.noexc unwind label %bb.db

.noexc:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.am = icmp eq i32 %i.al, 2
  %spec.select.i.i = select i1 %i.am, i64 2, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26, !noalias !1473 ; 9 uses
  store ptr %i.ap, ptr %29, align 8, !tbaa !23, !alias.scope !1473
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1473 ; 3 uses
  %i.ar = lshr i64 %i.aq, 40
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = and i32 %i.as, 1048575                  ; 3 uses
  %i.au = icmp samesign ult i32 %i.at, 1048574
  br i1 %i.au, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %.noexc
  %i.av = add nuw nsw i32 %i.at, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 40
  %i.ay = and i64 %i.aq, -1152920405095219201
  %i.az = or i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.ap, align 8, !noalias !1473
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit136

bb.f:                                             ; preds = %.noexc
  %i.ba = icmp eq i32 %i.at, 1048574
  br i1 %i.ba, label %bb.g, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit136, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.bb = or i64 %i.aq, 1152920405095219200
  store i64 %i.bb, ptr %i.ap, align 8, !noalias !1473
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit136 unwind label %bb.db

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit136: ; preds = %bb.f, %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25, !noalias !1476
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67, !noalias !1476
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef %i.bd, i32 noundef %i.j)
          to label %.noexc137 unwind label %bb.dc

.noexc137:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit136
  store ptr %i.r, ptr %26, align 8, !tbaa !70, !noalias !1476
  %i.be = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull align 8 %26)
          to label %bb.h unwind label %bb.k, !noalias !1476

bb.h:                                             ; preds = %.noexc137
  store ptr %i.ap, ptr %27, align 8, !tbaa !70, !noalias !1476
  %i.bf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.be, ptr noundef nonnull align 8 %27)
          to label %bb.i unwind label %bb.l, !noalias !1476 ; 0 uses

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %25)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %.noexc137
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pn5.i = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %i.bi, %bb.l ], [ %i.bh, %bb.k ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !1476
  br label %.body

bb.n:                                             ; preds = %bb.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !1476
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.bj = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.bk = and i64 %i.bj, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bk, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.bl = add i64 %i.bj, 1152920405095219200
  %i.bm = and i64 %i.bl, 1152920405095219200      ; 2 uses
  %i.bn = and i64 %i.bj, -1152920405095219201
  %i.bo = or disjoint i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.ap, align 8
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !28

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.bs = load i64, ptr %i.r, align 8             ; 3 uses
  %i.bt = and i64 %i.bs, 1152920405095219200
  %.not.i.i138 = icmp eq i64 %i.bt, 1152920405095219200
  br i1 %.not.i.i138, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit139, label %bb.r, !prof !28

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bu = add i64 %i.bs, 1152920405095219200
  %i.bv = and i64 %i.bu, 1152920405095219200      ; 2 uses
  %i.bw = and i64 %i.bs, -1152920405095219201
  %i.bx = or disjoint i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.r, align 8
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit139, !prof !28

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit139 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit139: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.cb = load ptr, ptr %3, align 8, !tbaa !23    ; 10 uses
  store ptr %i.cb, ptr %30, align 8, !tbaa !23
  %i.cc = load i64, ptr %i.cb, align 8            ; 3 uses
  %i.cd = lshr i64 %i.cc, 40
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 1048575                  ; 3 uses
  %i.cg = icmp samesign ult i32 %i.cf, 1048574
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8rewriter17BasicRewriteRCons14proveTransIneqEPNS0_7CDProofERKNS0_12NodeTemplateILb1EEES8_:bb.a
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit229 unwind label %bb.mk

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit229: ; preds = %bb.ds, %bb.dr, %bb.dt
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %43, ptr noundef nonnull align 8 dereferenceable(8) %44, i1 noundef zeroext false)
          to label %bb.du unwind label %bb.ml

bb.du:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  invoke void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef -1)
          to label %bb.dv unwind label %bb.mm

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4cvc58internal11NodeManager16mkConstRealOrIntERKNS0_8TypeNodeERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %42, ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.dw unwind label %bb.mn

bb.dw:                                            ; preds = %bb.dv
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %_ZN4cvc58internal8RationalD2Ev.exit unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pw = landingpad { ptr, i32 }
          catch ptr null
  %i.px = extractvalue { ptr, i32 } %i.pw, 0
  call void @__clang_call_terminate(ptr %i.px) #26
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  %i.py = load ptr, ptr %43, align 8, !tbaa !251  ; 3 uses
  %i.pz = load i64, ptr %i.py, align 8            ; 3 uses
  %i.qa = and i64 %i.pz, 1152920405095219200
  %.not.i.i230 = icmp eq i64 %i.qa, 1152920405095219200
  br i1 %.not.i.i230, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.dy, !prof !28

bb.dy:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.qb = add i64 %i.pz, 1152920405095219200
  %i.qc = and i64 %i.qb, 1152920405095219200      ; 2 uses
  %i.qd = and i64 %i.pz, -1152920405095219201
  %i.qe = or disjoint i64 %i.qc, %i.qd
  store i64 %i.qe, ptr %i.py, align 8
  %i.qf = icmp eq i64 %i.qc, 0
  br i1 %i.qf, label %bb.dz, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !28

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal8RationalD2Ev.exit, %bb.dy, %bb.dz
  %i.qi = load ptr, ptr %44, align 8, !tbaa !23   ; 3 uses
  %i.qj = load i64, ptr %i.qi, align 8            ; 3 uses
  %i.qk = and i64 %i.qj, 1152920405095219200
  %.not.i.i232 = icmp eq i64 %i.qk, 1152920405095219200
  br i1 %.not.i.i232, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit234, label %bb.eb, !prof !28

bb.eb:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.ql = add i64 %i.qj, 1152920405095219200
  %i.qm = and i64 %i.ql, 1152920405095219200      ; 2 uses
  %i.qn = and i64 %i.qj, -1152920405095219201
  %i.qo = or disjoint i64 %i.qm, %i.qn
  store i64 %i.qo, ptr %i.qi, align 8
  %i.qp = icmp eq i64 %i.qm, 0
  br i1 %i.qp, label %bb.ec, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit234, !prof !28

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit234 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qq = landingpad { ptr, i32 }
          catch ptr null
  %i.qr = extractvalue { ptr, i32 } %i.qq, 0
  call void @__clang_call_terminate(ptr %i.qr) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit234: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.qs = load ptr, ptr %42, align 8, !tbaa !23   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %i.qt = load ptr, ptr %4, align 8, !tbaa !23, !noalias !1497 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load i64, ptr %i.qu, align 8, !noalias !1497
  %i.qw = trunc i64 %i.qv to i32
  %i.qx = and i32 %i.qw, 1023                     ; 2 uses
  %i.qy = icmp eq i32 %i.qx, 1023
  %i.qz = select i1 %i.qy, i32 -1, i32 %i.qx
  %i.ra = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.qz)
          to label %.noexc236 unwind label %.thread543

.noexc236:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit234
  %i.rb = zext i1 %i.d to i64
  %i.rc = icmp eq i32 %i.ra, 2
  %i.rd = zext i1 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.rb
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %i.rd
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !26, !noalias !1497 ; 5 uses
  store ptr %i.rh, ptr %48, align 8, !tbaa !23, !alias.scope !1497
  %i.ri = load i64, ptr %i.rh, align 8, !noalias !1497 ; 3 uses
  %i.rj = lshr i64 %i.ri, 40
  %i.rk = trunc nuw nsw i64 %i.rj to i32
  %i.rl = and i32 %i.rk, 1048575                  ; 3 uses
  %i.rm = icmp samesign ult i32 %i.rl, 1048574
  br i1 %i.rm, label %bb.ee, label %bb.ef, !prof !27

bb.ee:                                            ; preds = %.noexc236
  %i.rn = add nuw nsw i32 %i.rl, 1
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = shl nuw nsw i64 %i.ro, 40
  %i.rq = and i64 %i.ri, -1152920405095219201
  %i.rr = or i64 %i.rp, %i.rq
  store i64 %i.rr, ptr %i.rh, align 8, !noalias !1497
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit238

bb.ef:                                            ; preds = %.noexc236
  %i.rs = icmp eq i32 %i.rl, 1048574
  br i1 %i.rs, label %bb.eg, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit238, !prof !28

bb.eg:                                            ; preds = %bb.ef
  %i.rt = or i64 %i.ri, 1152920405095219200
  store i64 %i.rt, ptr %i.rh, align 8, !noalias !1497
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rh)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit238 unwind label %.thread543

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit238: ; preds = %bb.ef, %bb.ee, %bb.eg
  %i.ru = load ptr, ptr %48, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !1500
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !67, !noalias !1500
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef %i.rw, i32 noundef 41)
          to label %.noexc240 unwind label %bb.mr

.noexc240:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit238
  store ptr %i.qs, ptr %17, align 8, !tbaa !70, !noalias !1500
  %i.rx = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef nonnull align 8 %17)
          to label %bb.eh unwind label %bb.ek, !noalias !1500

bb.eh:                                            ; preds = %.noexc240
  store ptr %i.ru, ptr %18, align 8, !tbaa !70, !noalias !1500
  %i.ry = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.rx, ptr noundef nonnull align 8 %18)
          to label %bb.ei unwind label %bb.el, !noalias !1500 ; 0 uses

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %47, ptr noundef nonnull align 8 dereferenceable(124) %16)
          to label %bb.en unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ek:                                            ; preds = %.noexc240
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.eh
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %.pn5.i239 = phi { ptr, i32 } [ %i.rz, %bb.ej ], [ %i.sb, %bb.el ], [ %i.sa, %bb.ek ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1500
  br label %.thread549

bb.en:                                            ; preds = %bb.ei
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.sc = load ptr, ptr %47, align 8, !tbaa !23   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  %i.sd = load ptr, ptr %42, align 8, !tbaa !23   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.se = load ptr, ptr %4, align 8, !tbaa !23, !noalias !1503 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !noalias !1503
  %i.sh = trunc i64 %i.sg to i32
  %i.si = and i32 %i.sh, 1023                     ; 2 uses
  %i.sj = icmp eq i32 %i.si, 1023
  %i.sk = select i1 %i.sj, i32 -1, i32 %i.si
  %i.sl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.sk)
          to label %.noexc245 unwind label %bb.ms

.noexc245:                                        ; preds = %bb.en
  %not. = xor i1 %i.d, true
  %i.sm = zext i1 %not. to i64
  %i.sn = icmp eq i32 %i.sl, 2
  %i.so = zext i1 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.sm
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.so
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !26, !noalias !1503 ; 9 uses
  store ptr %i.ss, ptr %50, align 8, !tbaa !23, !alias.scope !1503
  %i.st = load i64, ptr %i.ss, align 8, !noalias !1503 ; 3 uses
  %i.su = lshr i64 %i.st, 40
  %i.sv = trunc nuw nsw i64 %i.su to i32
  %i.sw = and i32 %i.sv, 1048575                  ; 3 uses
  %i.sx = icmp samesign ult i32 %i.sw, 1048574
  br i1 %i.sx, label %bb.eo, label %bb.ep, !prof !27

bb.eo:                                            ; preds = %.noexc245
  %i.sy = add nuw nsw i32 %i.sw, 1
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = shl nuw nsw i64 %i.sz, 40
  %i.tb = and i64 %i.st, -1152920405095219201
  %i.tc = or i64 %i.ta, %i.tb
  store i64 %i.tc, ptr %i.ss, align 8, !noalias !1503
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit247

bb.ep:                                            ; preds = %.noexc245
  %i.td = icmp eq i32 %i.sw, 1048574
  br i1 %i.td, label %bb.eq, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit247, !prof !28

bb.eq:                                            ; preds = %bb.ep
  %i.te = or i64 %i.st, 1152920405095219200
  store i64 %i.te, ptr %i.ss, align 8, !noalias !1503
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ss)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit247 unwind label %bb.ms

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit247: ; preds = %bb.ep, %bb.eo, %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !1506
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !67, !noalias !1506
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef %i.tg, i32 noundef 41)
          to label %.noexc249 unwind label %bb.mt

.noexc249:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit247
  store ptr %i.sd, ptr %14, align 8, !tbaa !70, !noalias !1506
  %i.th = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull align 8 %14)
          to label %bb.er unwind label %bb.eu, !noalias !1506

bb.er:                                            ; preds = %.noexc249
  store ptr %i.ss, ptr %15, align 8, !tbaa !70, !noalias !1506
  %i.ti = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.th, ptr noundef nonnull align 8 %15)
          to label %bb.es unwind label %bb.ev, !noalias !1506 ; 0 uses

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %49, ptr noundef nonnull align 8 dereferenceable(124) %13)
          to label %bb.ex unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.eu:                                            ; preds = %.noexc249
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.et
  %.pn5.i248 = phi { ptr, i32 } [ %i.tj, %bb.et ], [ %i.tl, %bb.ev ], [ %i.tk, %bb.eu ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1506
  br label %.body250

bb.ex:                                            ; preds = %bb.es
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.tm = load ptr, ptr %49, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1509
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !67, !noalias !1509
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef %i.to, i32 noundef 77)
          to label %.noexc253 unwind label %bb.mu

.noexc253:                                        ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !1509
  store ptr %i.sc, ptr %11, align 8, !tbaa !70, !noalias !1509
  %i.tp = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %11)
          to label %.noexc.i unwind label %bb.ey, !noalias !1509 ; 0 uses

.noexc.i:                                         ; preds = %.noexc253
  store ptr %i.tm, ptr %11, align 8, !tbaa !70, !noalias !1509
  %i.tq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %11)
          to label %.noexc.1.i unwind label %bb.ey, !noalias !1509 ; 0 uses

.noexc.1.i:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !1509
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %46, ptr noundef nonnull align 8 dereferenceable(124) %12)
          to label %bb.fb unwind label %bb.ez

bb.ey:                                            ; preds = %.noexc.i, %.noexc253
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ez:                                            ; preds = %.noexc.1.i
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pn.i = phi { ptr, i32 } [ %i.ts, %bb.ez ], [ %i.tr, %bb.ey ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1509
  br label %.body254

bb.fb:                                            ; preds = %.noexc.1.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1509
  %i.tt = load ptr, ptr %49, align 8, !tbaa !23   ; 3 uses
  %i.tu = load i64, ptr %i.tt, align 8            ; 3 uses
  %i.tv = and i64 %i.tu, 1152920405095219200
  %.not.i.i256 = icmp eq i64 %i.tv, 1152920405095219200
  br i1 %.not.i.i256, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, label %bb.fc, !prof !28

bb.fc:                                            ; preds = %bb.fb
  %i.tw = add i64 %i.tu, 1152920405095219200
  %i.tx = and i64 %i.tw, 1152920405095219200      ; 2 uses
  %i.ty = and i64 %i.tu, -1152920405095219201
  %i.tz = or disjoint i64 %i.tx, %i.ty
  store i64 %i.tz, ptr %i.tt, align 8
  %i.ua = icmp eq i64 %i.tx, 0
  br i1 %i.ua, label %bb.fd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, !prof !28

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ub = landingpad { ptr, i32 }
          catch ptr null
  %i.uc = extractvalue { ptr, i32 } %i.ub, 0
  call void @__clang_call_terminate(ptr %i.uc) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258: ; preds = %bb.fb, %bb.fc, %bb.fd
  %i.ud = load i64, ptr %i.ss, align 8            ; 3 uses
  %i.ue = and i64 %i.ud, 1152920405095219200
  %.not.i.i259 = icmp eq i64 %i.ue, 1152920405095219200
  br i1 %.not.i.i259, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit261, label %bb.ff, !prof !28

bb.ff:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258
  %i.uf = add i64 %i.ud, 1152920405095219200
  %i.ug = and i64 %i.uf, 1152920405095219200      ; 2 uses
  %i.uh = and i64 %i.ud, -1152920405095219201
  %i.ui = or disjoint i64 %i.ug, %i.uh
  store i64 %i.ui, ptr %i.ss, align 8
  %i.uj = icmp eq i64 %i.ug, 0
  br i1 %i.uj, label %bb.fg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit261, !prof !28

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ss)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit261 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.uk = landingpad { ptr, i32 }
          catch ptr null
  %i.ul = extractvalue { ptr, i32 } %i.uk, 0
  call void @__clang_call_terminate(ptr %i.ul) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit261: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  %i.um = load ptr, ptr %47, align 8, !tbaa !23   ; 3 uses
  %i.un = load i64, ptr %i.um, align 8            ; 3 uses
  %i.uo = and i64 %i.un, 1152920405095219200
  %.not.i.i262 = icmp eq i64 %i.uo, 1152920405095219200
  br i1 %.not.i.i262, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, label %bb.fi, !prof !28

bb.fi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit261
  %i.up = add i64 %i.un, 1152920405095219200
  %i.uq = and i64 %i.up, 1152920405095219200      ; 2 uses
  %i.ur = and i64 %i.un, -1152920405095219201
  %i.us = or disjoint i64 %i.uq, %i.ur
  store i64 %i.us, ptr %i.um, align 8
  %i.ut = icmp eq i64 %i.uq, 0
  br i1 %i.ut, label %bb.fj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, !prof !28

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.um)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
end_hunk_1
