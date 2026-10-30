Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/oracle_checker?download=true
inline.NumInlined: 672
inline.NumDeleted: 350
begin_hunk_0_@_ZN4cvc58internal14LogicExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !50
  %i.i = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.i, ptr %i.c, align 8, !tbaa !41
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !41
  store i8 %i.k, ptr %i.j, align 1, !tbaa !41
  br label %_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #22
  resume { ptr, i32 } %i.l

_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !68
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal14LogicExceptionE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !28 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !30

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers13OracleChecker8evaluateENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %2, align 8, !tbaa !28     ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !28
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !29

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
  br i1 %i.m, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  invoke void @_ZN4cvc58internal13NodeConverter7convertENS0_12NodeTemplateILb1EEEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(241) %i.a, ptr noundef nonnull align 8 %3, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !28     ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = and i64 %i.p, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.q, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %i.p, 1152920405095219200
  %i.s = and i64 %i.r, 1152920405095219200        ; 2 uses
  %i.t = and i64 %i.p, -1152920405095219201
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.o, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  resume { ptr, i32 } %i.y
}

declare void @_ZN4cvc58internal13NodeConverter7convertENS0_12NodeTemplateILb1EEEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(241), ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers13OracleChecker11postConvertENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef align 8 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.317", align 8 ; 2 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.317", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.317", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 26                     ; 2 uses
  br i1 %i.e, label %bb.b, label %10

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.f = invoke noundef zeroext i1 @_ZN4cvc58internal12OracleCaller16isOracleFunctionENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 %3)
          to label %10 unwind label %bb.h

10:                                               ; preds = %bb.b, %bb.a
  %11 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  br i1 %i.e, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit

bb.c:                                             ; preds = %10
  %i.g = load ptr, ptr %3, align 8, !tbaa !28     ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.i, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %i.h, 1152920405095219200
  %i.k = and i64 %i.j, 1152920405095219200        ; 2 uses
  %i.l = and i64 %i.h, -1152920405095219201
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %i.g, align 8
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !30

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.d, %bb.c, %10
  %.pre45 = load ptr, ptr %2, align 8, !tbaa !28  ; 3 uses
  br i1 %11, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.a

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.pre45, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 1023                       ; 2 uses
  %i.u = icmp eq i32 %i.t, 1023
  %i.v = select i1 %i.u, i32 -1, i32 %i.t
  %i.w = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.v)
  %i.x = icmp eq i32 %i.w, 2
  %spec.select.v.i.i = select i1 %i.x, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.pre45, i64 %spec.select.v.i.i ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = and i64 %i.ac, 67108863
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ad ; 2 uses
  %.not40 = icmp eq ptr %spec.select.i.i, %i.ae
  br i1 %.not40, label %.critedge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.am

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32, %.lr.ph
  %.01542 = phi i1 [ true, %.lr.ph ], [ %.116, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32 ] ; 2 uses
  %.sroa.036.041 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.cp, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.am = load ptr, ptr %.sroa.036.041, align 8, !tbaa !52, !noalias !118 ; 5 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !28, !alias.scope !118
  %i.an = load i64, ptr %i.am, align 8, !noalias !118 ; 3 uses
  %i.ao = lshr i64 %i.an, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1048575                  ; 3 uses
  %i.ar = icmp samesign ult i32 %i.aq, 1048574
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.as = add nuw nsw i32 %i.aq, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = and i64 %i.an, -1152920405095219201
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.am, align 8, !noalias !118
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %i.aq, 1048574
  br i1 %i.ax, label %bb.l, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.ay = or i64 %i.an, 1152920405095219200
  store i64 %i.ay, ptr %i.am, align 8, !noalias !118
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !118
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.az = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  br i1 %i.az, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 1023
  %i.be = icmp eq i64 %i.bd, 28
  br i1 %i.be, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  store ptr %i.ba, ptr %5, align 8, !tbaa !38
  %i.bf = invoke noundef zeroext i1 @_ZN4cvc58internal4expr10hasFreeVarENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %5)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  br i1 %i.bf, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.af, ptr %6, align 8, !tbaa !77
  store i64 1, ptr %i.ag, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ai, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %4, align 8, !tbaa !28
  store ptr %i.bg, ptr %7, align 8, !tbaa !38
  invoke void @_ZN4cvc58internal4expr10getSymbolsENS0_12NodeTemplateILb0EEERSt13unordered_setINS2_ILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE(ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !120
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !79 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bk, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.bj, %bb.r ] ; 3 uses
  %i.bk = load ptr, ptr %.06.i.i.i, align 8, !tbaa !80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = and i64 %i.bn, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bo, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.s, !prof !30

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = add i64 %i.bn, 1152920405095219200
  %i.bq = and i64 %i.bp, 1152920405095219200      ; 2 uses
  %i.br = and i64 %i.bn, -1152920405095219201
  %i.bs = or disjoint i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.bm, align 8
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %bb.t, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !30

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #25
  %.not.i.i.i35 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i35, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %bb.r
  %i.bw = load ptr, ptr %6, align 8, !tbaa !77
  %i.bx = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.by = shl i64 %i.bx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.by, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.bz = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.af
  br i1 %i.ca, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.cb = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.cc = shl i64 %i.cb, 3
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.bi, label %bb.z, label %bb.y

bb.w:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ad

bb.y:                                             ; preds = %bb.p, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, %bb.n
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, %bb.y
  %.116 = phi i1 [ %.01542, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit ], [ false, %bb.y ], [ %.01542, %bb.m ] ; 2 uses
  %cond.not = phi i1 [ false, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit ], [ true, %bb.y ], [ false, %bb.m ]
  %i.cf = load ptr, ptr %4, align 8, !tbaa !28    ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = and i64 %i.cg, 1152920405095219200
  %.not.i.i31 = icmp eq i64 %i.ch, 1152920405095219200
  br i1 %.not.i.i31, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32, label %bb.aa, !prof !30

bb.aa:                                            ; preds = %bb.z
  %i.ci = add i64 %i.cg, 1152920405095219200
  %i.cj = and i64 %i.ci, 1152920405095219200      ; 2 uses
  %i.ck = and i64 %i.cg, -1152920405095219201
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.cf, align 8
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32, !prof !30

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.036.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.ae
  %or.cond = select i1 %cond.not, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.i

bb.ad:                                            ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.x ], [ %i.cd, %bb.w ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.am

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit32
  %.pre46 = load ptr, ptr %2, align 8, !tbaa !28  ; 2 uses
  br i1 %.116, label %.critedge.a, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.a

.critedge.a:                                      ; preds = %bb.g, %._crit_edge
  %i.cq = phi ptr [ %.pre46, %._crit_edge ], [ %i.y, %bb.g ] ; 5 uses
  store ptr %i.cq, ptr %8, align 8, !tbaa !28
  %i.cr = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.cs = lshr i64 %i.cr, 40
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 1048575                  ; 3 uses
  %i.cv = icmp samesign ult i32 %i.cu, 1048574
  br i1 %i.cv, label %bb.ae, label %bb.af, !prof !29

bb.ae:                                            ; preds = %.critedge.a
  %i.cw = add nuw nsw i32 %i.cu, 1
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 40
  %i.cz = and i64 %i.cr, -1152920405095219201
  %i.da = or i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.cq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.af:                                            ; preds = %.critedge.a
  %i.db = icmp eq i32 %i.cu, 1048574
  br i1 %i.db, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !30

bb.ag:                                            ; preds = %bb.af
  %i.dc = or i64 %i.cr, 1152920405095219200
  store i64 %i.dc, ptr %i.cq, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ae, %bb.af, %bb.ag
  invoke void @_ZN4cvc58internal6theory11quantifiers13OracleChecker11evaluateAppENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 %8)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.dd = load ptr, ptr %8, align 8, !tbaa !28    ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8            ; 3 uses
  %i.df = and i64 %i.de, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.df, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.thread, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %bb.ah
  %i.dg = add i64 %i.de, 1152920405095219200
  %i.dh = and i64 %i.dg, 1152920405095219200      ; 2 uses
  %i.di = and i64 %i.de, -1152920405095219201
  %i.dj = or disjoint i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.dd, align 8
  %i.dk = icmp eq i64 %i.dh, 0
  br i1 %i.dk, label %bb.aj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.thread, !prof !30

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.thread unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #23
  unreachable

bb.al:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.am

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.a: ; preds = %._crit_edge, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %12 = phi ptr [ %.pre45, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %.pre46, %._crit_edge ]
  store ptr %12, ptr %9, align 8, !tbaa !38
  call void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 %9)
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.thread

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.thread: ; preds = %bb.ah, %bb.ai, %bb.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34.a
  ret void

bb.am:                                            ; preds = %bb.ad, %bb.al, %bb.h
  %.pn28 = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.al, %bb.h ], [ %i.dn, %bb.al ]
  resume { ptr, i32 } %.pn28
}

declare noundef zeroext i1 @_ZN4cvc58internal12OracleCaller16isOracleFunctionENS0_12NodeTemplateILb1EEE(ptr noundef align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal4expr10hasFreeVarENS0_12NodeTemplateILb0EEE(ptr noundef align 8) local_unnamed_addr #1

declare void @_ZN4cvc58internal4expr10getSymbolsENS0_12NodeTemplateILb0EEERSt13unordered_setINS2_ILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE(ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: uwtable
define hidden void @_ZThn16_N4cvc58internal6theory11quantifiers13OracleChecker11postConvertENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  tail call void @_ZN4cvc58internal6theory11quantifiers13OracleChecker11postConvertENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef align 8 %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers13OracleChecker10hasOraclesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory11quantifiers13OracleChecker14hasOracleCallsENS0_12NodeTemplateILb1EEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(312) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !28
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = icmp samesign ult i64 %i.j, %i.f         ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !4

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.l, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 1099511627775
  %i.q = icmp samesign uge i64 %i.f, %i.p
  br label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit: ; preds = %bb.a, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ false, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %i.q, %bb.c ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4cvc58internal6theory11quantifiers13OracleChecker14getOracleCallsENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !28
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = icmp samesign ult i64 %i.j, %i.f         ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !4

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.l, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 1099511627775
  %i.q = icmp samesign ult i64 %i.f, %i.p
  %spec.select.i.i = select i1 %i.q, ptr %i.c, ptr %.19.i.i.i
  br label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEE4findERS8_.exit: ; preds = %bb.a, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4cvc58internal12OracleCaller16getCachedResultsEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r)
  ret ptr %i.s
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4cvc58internal12OracleCaller16getCachedResultsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers13OracleCheckerD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers13OracleCheckerE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers13OracleCheckerE, i64 56), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_12OracleCallerESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN4cvc58internal13NodeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.a) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers13OracleCheckerD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers13OracleCheckerE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers13OracleCheckerE, i64 56), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZN4cvc58internal6theory11quantifiers13OracleCheckerD2Ev.exit unwind label %bb.b, !inline_history !81

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23, !inline_history !81
  unreachable

_ZN4cvc58internal6theory11quantifiers13OracleCheckerD2Ev.exit: ; preds = %bb.a
  tail call void @_ZN4cvc58internal13NodeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.a) #22, !inline_history !81
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn16_N4cvc58internal6theory11quantifiers13OracleCheckerD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers13OracleCheckerE, i64 16), ptr %i.a, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers13OracleCheckerE, i64 56), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_12OracleCallerEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZN4cvc58internal6theory11quantifiers13OracleCheckerD2Ev.exit unwind label %bb.b, !inline_history !81

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23, !inline_history !81
  unreachable

_ZN4cvc58internal6theory11quantifiers13OracleCheckerD2Ev.exit: ; preds = %bb.a
end_hunk_0
