Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cegis_unif?download=true
inline.NumInlined: 2554
inline.NumDeleted: 910
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4cvc58internal6theory19DecisionStrategyFmfD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.b, !prof !37

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !37

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOIjEE, i64 16), ptr %i.v, align 8, !tbaa !20
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(44) %i.v)
          to label %_ZN4cvc57context3CDOIjED2Ev.exit unwind label %bb.f, !inline_history !116

bb.f:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #24, !inline_history !116
  unreachable

_ZN4cvc57context3CDOIjED2Ev.exit:                 ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOIbEE, i64 16), ptr %i.y, align 8, !tbaa !20
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(41) %i.y)
          to label %_ZN4cvc57context3CDOIbED2Ev.exit unwind label %bb.g, !inline_history !117

bb.g:                                             ; preds = %_ZN4cvc57context3CDOIjED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #24, !inline_history !117
  unreachable

_ZN4cvc57context3CDOIbED2Ev.exit:                 ; preds = %_ZN4cvc57context3CDOIjED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy9mkLiteralEj(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %29 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %32 = alloca %"class.cvc5::internal::SygusGrammar", align 8 ; 8 uses
  %33 = alloca %"class.std::vector", align 8      ; 10 uses
  %34 = alloca %"class.std::vector", align 8      ; 13 uses
  %35 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %36 = alloca %"class.std::vector", align 8      ; 13 uses
  %37 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 14 uses
  %38 = alloca %"class.cvc5::internal::Rational", align 8 ; 8 uses
  %39 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %43 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %44 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %45 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %46 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %47 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %48 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %49 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate.524", align 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.c, ptr %14, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, i64 6, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 6, ptr %i.d, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i8 0, ptr %i.e, align 2, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN4cvc58internal11NodeManager11booleanTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %15, ptr noundef nonnull align 8 dereferenceable(3592) %i.b)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4cvc58internal11NodeManager13mkDummySkolemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeENS0_11SkolemFlagsE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, i8 noundef zeroext 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %15, align 8, !tbaa !90    ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = and i64 %i.g, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.h, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.g, 1152920405095219200
  %i.j = and i64 %i.i, 1152920405095219200        ; 2 uses
  %i.k = and i64 %i.g, -1152920405095219201
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.d, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !37

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.p = load ptr, ptr %14, align 8, !tbaa !104   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.r = load i64, ptr %i.c, align 8, !tbaa !103
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.t = add i32 %2, 1                            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %.not447488 = icmp eq ptr %i.v, %i.w
  br i1 %.not447488, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 18
  %i.ad = getelementptr inbounds nuw i8, ptr %22, i64 18
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177
  %.pre499 = load ptr, ptr %i.u, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %51 = phi ptr [ %.pre499, %._crit_edge.loopexit ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.not448493 = icmp eq ptr %51, %i.w
  br i1 %.not448493, label %._crit_edge497, label %.lr.ph496

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ag = load ptr, ptr %14, align 8, !tbaa !104  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.h
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !103
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ke

bb.i:                                             ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177
  %.sroa.0426.0489 = phi ptr [ %i.v, %.lr.ph ], [ %i.fe, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177 ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0426.0489, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 5 uses
  store ptr %i.al, ptr %16, align 8, !tbaa !26
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = lshr i64 %i.am, 40
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575                  ; 3 uses
  %i.aq = icmp samesign ult i32 %i.ap, 1048574
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !59

bb.j:                                             ; preds = %bb.i
  %i.ar = add nuw nsw i32 %i.ap, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 40
  %i.au = and i64 %i.am, -1152920405095219201
  %i.av = or i64 %i.at, %i.au
  store i64 %i.av, ptr %i.al, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq i32 %i.ap, 1048574
  br i1 %i.aw, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.ax = or i64 %i.am, 1152920405095219200
  store i64 %i.ax, ptr %i.al, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.ad

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %16, i1 noundef zeroext false)
          to label %._crit_edge.i.i140 unwind label %bb.ae

._crit_edge.i.i140:                               ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.x, ptr %19, align 8, !tbaa !100
  store i16 30053, ptr %i.x, align 8
  store i64 2, ptr %i.y, align 8, !tbaa !102
  store i8 0, ptr %i.ac, align 2, !tbaa !103
  invoke void @_ZN4cvc58internal11NodeManager13mkDummySkolemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeENS0_11SkolemFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %17, i8 noundef zeroext 0)
          to label %bb.m unwind label %bb.af

bb.m:                                             ; preds = %._crit_edge.i.i140
  %i.ay = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.x
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.m
  %i.ba = load i64, ptr %i.x, align 8, !tbaa !103
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.bc = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %bb.r, !prof !21

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.be = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i147 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i147, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.p unwind label %bb.q       ; 3 uses

bb.p:                                             ; preds = %bb.o
  store i64 1152920405095219200, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr %i.bf, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body

bb.r:                                             ; preds = %bb.p, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.bi = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24 ; 5 uses
  store ptr %i.bi, ptr %20, align 8, !tbaa !26
  %i.bj = load i8, ptr %i.z, align 8, !tbaa !87, !range !88, !noundef !85
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0426.0489, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0426.0489, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !61
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.aj, label %._crit_edge.i.i148

._crit_edge.i.i148:                               ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %i.aa, ptr %22, align 8, !tbaa !100
  store i16 30051, ptr %i.aa, align 8
  store i64 2, ptr %i.ab, align 8, !tbaa !102
  store i8 0, ptr %i.ad, align 2, !tbaa !103
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0426.0489, i64 96
  invoke void @_ZN4cvc58internal11NodeManager13mkDummySkolemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeENS0_11SkolemFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i8 noundef zeroext 0)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %._crit_edge.i.i148
  %i.br = load ptr, ptr %21, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.bi, %i.br
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.u, !prof !37

bb.u:                                             ; preds = %bb.t
  %i.bs = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bt = and i64 %i.bs, 1152920405095219200
  %.not.i.i152 = icmp eq i64 %i.bt, 1152920405095219200
  br i1 %.not.i.i152, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.v, !prof !37

bb.v:                                             ; preds = %bb.u
  %i.bu = add i64 %i.bs, 1152920405095219200
  %i.bv = and i64 %i.bu, 1152920405095219200      ; 2 uses
  %i.bw = and i64 %i.bs, -1152920405095219201
  %i.bx = or disjoint i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.bi, align 8
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %bb.w, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !37

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.ah

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.w, %bb.v, %bb.u
  %i.bz = load ptr, ptr %21, align 8, !tbaa !26   ; 5 uses
  store ptr %i.bz, ptr %20, align 8, !tbaa !26
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = lshr i64 %i.ca, 40
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 1048575                  ; 3 uses
  %i.ce = icmp samesign ult i32 %i.cd, 1048574
  br i1 %i.ce, label %bb.x, label %bb.y, !prof !59

bb.x:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.cf = add nuw nsw i32 %i.cd, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 40
  %i.ci = and i64 %i.ca, -1152920405095219201
  %i.cj = or i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.bz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.y:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ck = icmp eq i32 %i.cd, 1048574
  br i1 %i.ck, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !37

bb.z:                                             ; preds = %bb.y
  %i.cl = or i64 %i.ca, 1152920405095219200
  store i64 %i.cl, ptr %i.bz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ah

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.y, %bb.x, %bb.t, %bb.z
  %i.cm = load ptr, ptr %21, align 8, !tbaa !26   ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy9mkLiteralEj:._crit_edge.i.i
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.aa, %bb.ab
  %i.cw = load ptr, ptr %22, align 8, !tbaa !104  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.aa
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cy = load i64, ptr %i.aa, align 8, !tbaa !103
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.aj

bb.ad:                                            ; preds = %bb.l
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.af:                                            ; preds = %._crit_edge.i.i140
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.x
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.af
  %i.df = load i64, ptr %i.x, align 8, !tbaa !103
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ck

bb.ag:                                            ; preds = %._crit_edge.i.i148
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z, %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn123 = phi { ptr, i32 } [ %i.di, %bb.ah ], [ %i.dh, %bb.ag ]
  %i.dj = load ptr, ptr %22, align 8, !tbaa !104  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.aa
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ai
  %i.dl = load i64, ptr %i.aa, align 8, !tbaa !103
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.cj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %bb.s, %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0426.0489, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %.val = load ptr, ptr %18, align 8              ; 6 uses
  store ptr %.val, ptr %23, align 8, !tbaa !26
  %i.do = load i64, ptr %.val, align 8            ; 3 uses
  %i.dp = lshr i64 %i.do, 40
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 1048575                  ; 3 uses
  %i.ds = icmp samesign ult i32 %i.dr, 1048574
  br i1 %i.ds, label %bb.aw, label %bb.ax, !prof !59

bb.ak:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1
  %i.dt = add i64 %i.iw, 1152920405095219200
  %i.du = and i64 %i.dt, 1152920405095219200      ; 2 uses
  %i.dv = and i64 %i.iw, -1152920405095219201
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.iv, align 8
  %i.dx = icmp eq i64 %i.du, 0
  br i1 %i.dx, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, !prof !37

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.ea = load ptr, ptr %18, align 8, !tbaa !26   ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  %i.ec = and i64 %i.eb, 1152920405095219200
  %.not.i.i169 = icmp eq i64 %i.ec, 1152920405095219200
  br i1 %.not.i.i169, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, label %bb.an, !prof !37

bb.an:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168
  %i.ed = add i64 %i.eb, 1152920405095219200
  %i.ee = and i64 %i.ed, 1152920405095219200      ; 2 uses
  %i.ef = and i64 %i.eb, -1152920405095219201
  %i.eg = or disjoint i64 %i.ee, %i.ef
  store i64 %i.eg, ptr %i.ea, align 8
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %bb.ao, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, !prof !37

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.ek = load ptr, ptr %17, align 8, !tbaa !90   ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8            ; 3 uses
  %i.em = and i64 %i.el, 1152920405095219200
  %.not.i.i172 = icmp eq i64 %i.em, 1152920405095219200
  br i1 %.not.i.i172, label %_ZN4cvc58internal8TypeNodeD2Ev.exit174, label %bb.aq, !prof !37

bb.aq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171
  %i.en = add i64 %i.el, 1152920405095219200
  %i.eo = and i64 %i.en, 1152920405095219200      ; 2 uses
  %i.ep = and i64 %i.el, -1152920405095219201
  %i.eq = or disjoint i64 %i.eo, %i.ep
  store i64 %i.eq, ptr %i.ek, align 8
  %i.er = icmp eq i64 %i.eo, 0
  br i1 %i.er, label %bb.ar, label %_ZN4cvc58internal8TypeNodeD2Ev.exit174, !prof !37

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit174 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit174:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.eu = load ptr, ptr %16, align 8, !tbaa !26   ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = and i64 %i.ev, 1152920405095219200
  %.not.i.i175 = icmp eq i64 %i.ew, 1152920405095219200
  br i1 %.not.i.i175, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177, label %bb.at, !prof !37

bb.at:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit174
  %i.ex = add i64 %i.ev, 1152920405095219200
  %i.ey = and i64 %i.ex, 1152920405095219200      ; 2 uses
  %i.ez = and i64 %i.ev, -1152920405095219201
  %i.fa = or disjoint i64 %i.ey, %i.ez
  store i64 %i.fa, ptr %i.eu, align 8
  %i.fb = icmp eq i64 %i.ey, 0
  br i1 %i.fb, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177, !prof !37

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit177: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit174, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.fe = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0426.0489) #26 ; 2 uses
  %.not447 = icmp eq ptr %i.fe, %i.w
  br i1 %.not447, label %._crit_edge.loopexit, label %bb.i

bb.aw:                                            ; preds = %bb.aj
  %i.ff = add nuw nsw i32 %i.dr, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 40
  %i.fi = and i64 %i.do, -1152920405095219201
  %i.fj = or i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %.val, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179

bb.ax:                                            ; preds = %bb.aj
  %i.fk = icmp eq i32 %i.dr, 1048574
  br i1 %i.fk, label %bb.ay, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179, !prof !37

bb.ay:                                            ; preds = %bb.ax
  %i.fl = or i64 %i.do, 1152920405095219200
  store i64 %i.fl, ptr %.val, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.val)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179 unwind label %bb.be

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179: ; preds = %bb.ax, %bb.aw, %bb.ay
  %i.fm = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.az, label %bb.bd, !prof !21

bb.az:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179
  %i.fo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i180 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i180, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.bb unwind label %bb.bc     ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  store i64 1152920405095219200, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  store ptr %i.fp, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bv, %bb.ba
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body181

bb.bd:                                            ; preds = %bb.bb, %bb.az, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179
  %i.fs = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  %i.ft = icmp eq ptr %.val, %i.fs
  %.pre = load ptr, ptr %23, align 8, !tbaa !26   ; 8 uses
  br i1 %i.ft, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187, label %bb.bg

bb.be:                                            ; preds = %bb.bs, %bb.ay
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bf:                                            ; preds = %bb.ca, %bb.bj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body181

bb.bg:                                            ; preds = %bb.bd
  store ptr %.pre, ptr %24, align 8, !tbaa !26
  %i.fw = load i64, ptr %.pre, align 8            ; 3 uses
  %i.fx = lshr i64 %i.fw, 40
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = and i32 %i.fy, 1048575                  ; 3 uses
  %i.ga = icmp samesign ult i32 %i.fz, 1048574
  br i1 %i.ga, label %bb.bh, label %bb.bi, !prof !59

bb.bh:                                            ; preds = %bb.bg
  %i.gb = add nuw nsw i32 %i.fz, 1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 40
  %i.ge = and i64 %i.fw, -1152920405095219201
  %i.gf = or i64 %i.gd, %i.ge
  store i64 %i.gf, ptr %.pre, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184

bb.bi:                                            ; preds = %bb.bg
  %i.gg = icmp eq i32 %i.fz, 1048574
  br i1 %i.gg, label %bb.bj, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184, !prof !37

bb.bj:                                            ; preds = %bb.bi
  %i.gh = or i64 %i.fw, 1152920405095219200
  store i64 %i.gh, ptr %.pre, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184 unwind label %bb.bf

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184: ; preds = %bb.bi, %bb.bh, %bb.bj
  invoke void @_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy15setUpEnumeratorENS0_12NodeTemplateILb1EEERNS3_14StrategyPtInfoEj(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 %24, ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i32 noundef 0)
          to label %bb.bk unwind label %bb.ch

bb.bk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184
  %i.gi = load ptr, ptr %24, align 8, !tbaa !26   ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 3 uses
  %i.gk = and i64 %i.gj, 1152920405095219200
  %.not.i.i185 = icmp eq i64 %i.gk, 1152920405095219200
  br i1 %.not.i.i185, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187, label %bb.bl, !prof !37

bb.bl:                                            ; preds = %bb.bk
  %i.gl = add i64 %i.gj, 1152920405095219200
  %i.gm = and i64 %i.gl, 1152920405095219200      ; 2 uses
  %i.gn = and i64 %i.gj, -1152920405095219201
  %i.go = or disjoint i64 %i.gm, %i.gn
  store i64 %i.go, ptr %i.gi, align 8
  %i.gp = icmp eq i64 %i.gm, 0
  br i1 %i.gp, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187, !prof !37

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.ce, %bb.bm
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bd
  %i.gs = load i64, ptr %.pre, align 8            ; 3 uses
  %i.gt = and i64 %i.gs, 1152920405095219200
  %.not.i.i188 = icmp eq i64 %i.gt, 1152920405095219200
  br i1 %.not.i.i188, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190, label %bb.bo, !prof !37

bb.bo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187
  %i.gu = add i64 %i.gs, 1152920405095219200
  %i.gv = and i64 %i.gu, 1152920405095219200      ; 2 uses
  %i.gw = and i64 %i.gs, -1152920405095219201
  %i.gx = or disjoint i64 %i.gv, %i.gw
  store i64 %i.gx, ptr %.pre, align 8
  %i.gy = icmp eq i64 %i.gv, 0
  br i1 %i.gy, label %bb.bp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190, !prof !37

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.cg, %bb.bp
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %.val450.1 = load ptr, ptr %20, align 8         ; 6 uses
  store ptr %.val450.1, ptr %23, align 8, !tbaa !26
  %i.hb = load i64, ptr %.val450.1, align 8       ; 3 uses
  %i.hc = lshr i64 %i.hb, 40
  %i.hd = trunc nuw nsw i64 %i.hc to i32
  %i.he = and i32 %i.hd, 1048575                  ; 3 uses
  %i.hf = icmp samesign ult i32 %i.he, 1048574
  br i1 %i.hf, label %bb.bt, label %bb.br, !prof !59

bb.br:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190
  %i.hg = icmp eq i32 %i.he, 1048574
  br i1 %i.hg, label %bb.bs, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1, !prof !37

bb.bs:                                            ; preds = %bb.br
  %i.hh = or i64 %i.hb, 1152920405095219200
  store i64 %i.hh, ptr %.val450.1, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.val450.1)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1 unwind label %bb.be

bb.bt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190
  %i.hi = add nuw nsw i32 %i.he, 1
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 40
  %i.hl = and i64 %i.hb, -1152920405095219201
  %i.hm = or i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %.val450.1, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.hn = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.bu, label %bb.bx, !prof !21

bb.bu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1
  %i.hp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i180.1 = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i180.1, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.bw unwind label %bb.bc     ; 3 uses

bb.bw:                                            ; preds = %bb.bv
  store i64 1152920405095219200, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false)
  store ptr %i.hq, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1
  %i.hs = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  %i.ht = icmp eq ptr %.val450.1, %i.hs
  %.pre498 = load ptr, ptr %23, align 8, !tbaa !26 ; 8 uses
  br i1 %i.ht, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %.pre498, ptr %24, align 8, !tbaa !26
  %i.hu = load i64, ptr %.pre498, align 8         ; 3 uses
  %i.hv = lshr i64 %i.hu, 40
  %i.hw = trunc nuw nsw i64 %i.hv to i32
  %i.hx = and i32 %i.hw, 1048575                  ; 3 uses
  %i.hy = icmp samesign ult i32 %i.hx, 1048574
  br i1 %i.hy, label %bb.cb, label %bb.bz, !prof !59

bb.bz:                                            ; preds = %bb.by
  %i.hz = icmp eq i32 %i.hx, 1048574
  br i1 %i.hz, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1, !prof !37

bb.ca:                                            ; preds = %bb.bz
  %i.ia = or i64 %i.hu, 1152920405095219200
  store i64 %i.ia, ptr %.pre498, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre498)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1 unwind label %bb.bf

bb.cb:                                            ; preds = %bb.by
  %i.ib = add nuw nsw i32 %i.hx, 1
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = shl nuw nsw i64 %i.ic, 40
  %i.ie = and i64 %i.hu, -1152920405095219201
  %i.if = or i64 %i.id, %i.ie
  store i64 %i.if, ptr %.pre498, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1: ; preds = %bb.cb, %bb.ca, %bb.bz
  invoke void @_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy15setUpEnumeratorENS0_12NodeTemplateILb1EEERNS3_14StrategyPtInfoEj(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 %24, ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i32 noundef 1)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1
  %i.ig = load ptr, ptr %24, align 8, !tbaa !26   ; 3 uses
  %i.ih = load i64, ptr %i.ig, align 8            ; 3 uses
  %i.ii = and i64 %i.ih, 1152920405095219200
  %.not.i.i185.1 = icmp eq i64 %i.ii, 1152920405095219200
  br i1 %.not.i.i185.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1, label %bb.cd, !prof !37

bb.cd:                                            ; preds = %bb.cc
  %i.ij = add i64 %i.ih, 1152920405095219200
  %i.ik = and i64 %i.ij, 1152920405095219200      ; 2 uses
  %i.il = and i64 %i.ih, -1152920405095219201
  %i.im = or disjoint i64 %i.ik, %i.il
  store i64 %i.im, ptr %i.ig, align 8
  %i.in = icmp eq i64 %i.ik, 0
  br i1 %i.in, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1, !prof !37

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1 unwind label %bb.bn

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1: ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.bx
  %i.io = load i64, ptr %.pre498, align 8         ; 3 uses
  %i.ip = and i64 %i.io, 1152920405095219200
  %.not.i.i188.1 = icmp eq i64 %i.ip, 1152920405095219200
  br i1 %.not.i.i188.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1, label %bb.cf, !prof !37

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1
  %i.iq = add i64 %i.io, 1152920405095219200
  %i.ir = and i64 %i.iq, 1152920405095219200      ; 2 uses
  %i.is = and i64 %i.io, -1152920405095219201
  %i.it = or disjoint i64 %i.ir, %i.is
  store i64 %i.it, ptr %.pre498, align 8
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %bb.cg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1, !prof !37

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre498)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1 unwind label %bb.bq

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1: ; preds = %bb.cg, %bb.cf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.iv = load ptr, ptr %20, align 8, !tbaa !26   ; 3 uses
  %i.iw = load i64, ptr %i.iv, align 8            ; 3 uses
  %i.ix = and i64 %i.iw, 1152920405095219200
  %.not.i.i166 = icmp eq i64 %i.ix, 1152920405095219200
  br i1 %.not.i.i166, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, label %bb.ak, !prof !37

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #22
  br label %.body181

.body181:                                         ; preds = %bb.bf, %bb.bc, %bb.ch
  %.pn126 = phi { ptr, i32 } [ %i.iy, %bb.ch ], [ %i.fv, %bb.bf ], [ %i.fr, %bb.bc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #22
  br label %bb.ci

bb.ci:                                            ; preds = %.body181, %bb.be
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %.body181 ], [ %i.fu, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.pn126.pn.pn = phi { ptr, i32 } [ %.pn126.pn, %bb.ci ], [ %.pn123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  br label %.body

.body:                                            ; preds = %bb.q, %bb.cj
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn, %bb.cj ], [ %i.bh, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.ck

bb.ck:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.pn126.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn, %.body ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ae
  %.pn126.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn, %bb.ck ], [ %i.db, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ad
  %.pn126.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn, %bb.cl ], [ %i.da, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body257

._crit_edge497:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, %._crit_edge
  %i.iz = icmp ugt i32 %i.t, 1
  br i1 %i.iz, label %bb.dv, label %bb.kd

.lr.ph496:                                        ; preds = %._crit_edge, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195
  %.sroa.0420.0494 = phi ptr [ %i.kb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195 ], [ %51, %._crit_edge ] ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0420.0494, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !26 ; 16 uses
  store ptr %i.jb, ptr %25, align 8, !tbaa !26
  %i.jc = load i64, ptr %i.jb, align 8            ; 3 uses
  %i.jd = lshr i64 %i.jc, 40
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = and i32 %i.je, 1048575                  ; 3 uses
  %i.jg = icmp samesign ult i32 %i.jf, 1048574
  br i1 %i.jg, label %bb.cn, label %bb.co, !prof !59

bb.cn:                                            ; preds = %.lr.ph496
  %i.jh = add nuw nsw i32 %i.jf, 1
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 40
  %i.jk = and i64 %i.jc, -1152920405095219201
  %i.jl = or i64 %i.jj, %i.jk
  store i64 %i.jl, ptr %i.jb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192

bb.co:                                            ; preds = %.lr.ph496
  %i.jm = icmp eq i32 %i.jf, 1048574
  br i1 %i.jm, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192, !prof !37

bb.cp:                                            ; preds = %bb.co
  %i.jn = or i64 %i.jc, 1152920405095219200
  store i64 %i.jn, ptr %i.jb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192 unwind label %bb.ct

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192: ; preds = %bb.co, %bb.cn, %bb.cp
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0420.0494, i64 104
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !61 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0420.0494, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !61 ; 2 uses
  %.not449490 = icmp eq ptr %i.jp, %i.jr
  br i1 %.not449490, label %._crit_edge492, label %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit

._crit_edge492:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192
  %i.js = load i64, ptr %i.jb, align 8            ; 3 uses
  %i.jt = and i64 %i.js, 1152920405095219200
  %.not.i.i193 = icmp eq i64 %i.jt, 1152920405095219200
  br i1 %.not.i.i193, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, label %bb.cq, !prof !37

bb.cq:                                            ; preds = %._crit_edge492
  %i.ju = add i64 %i.js, 1152920405095219200
  %i.jv = and i64 %i.ju, 1152920405095219200      ; 2 uses
  %i.jw = and i64 %i.js, -1152920405095219201
  %i.jx = or disjoint i64 %i.jv, %i.jw
  store i64 %i.jx, ptr %i.jb, align 8
  %i.jy = icmp eq i64 %i.jv, 0
  br i1 %i.jy, label %bb.cr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, !prof !37

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195: ; preds = %._crit_edge492, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.kb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0420.0494) #26 ; 2 uses
  %.not448 = icmp eq ptr %i.kb, %i.w
  br i1 %.not448, label %._crit_edge497, label %.lr.ph496

bb.ct:                                            ; preds = %bb.cp
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255
  %.sroa.0416.0491 = phi ptr [ %i.ms, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255 ], [ %i.jp, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192 ] ; 2 uses
  store ptr %i.jb, ptr %26, align 8, !tbaa !26
  %i.kd = load i64, ptr %i.jb, align 8            ; 3 uses
  %i.ke = lshr i64 %i.kd, 40
  %i.kf = trunc nuw nsw i64 %i.ke to i32
  %i.kg = and i32 %i.kf, 1048575                  ; 3 uses
  %i.kh = icmp samesign ult i32 %i.kg, 1048574
  br i1 %i.kh, label %bb.cu, label %bb.cv, !prof !59

bb.cu:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit
  %i.ki = add nuw nsw i32 %i.kg, 1
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 40
  %i.kl = and i64 %i.kd, -1152920405095219201
  %i.km = or i64 %i.kk, %i.kl
  store i64 %i.km, ptr %i.jb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242

bb.cv:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit
  %i.kn = icmp eq i32 %i.kg, 1048574
  br i1 %i.kn, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242, !prof !37

bb.cw:                                            ; preds = %bb.cv
  %i.ko = or i64 %i.kd, 1152920405095219200
  store i64 %i.ko, ptr %i.jb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242 unwind label %bb.dn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242: ; preds = %bb.cv, %bb.cu, %bb.cw
  %i.kp = load ptr, ptr %.sroa.0416.0491, align 8, !tbaa !26 ; 5 uses
  store ptr %i.kp, ptr %27, align 8, !tbaa !26
  %i.kq = load i64, ptr %i.kp, align 8            ; 3 uses
  %i.kr = lshr i64 %i.kq, 40
  %i.ks = trunc nuw nsw i64 %i.kr to i32
  %i.kt = and i32 %i.ks, 1048575                  ; 3 uses
  %i.ku = icmp samesign ult i32 %i.kt, 1048574
  br i1 %i.ku, label %bb.cx, label %bb.cy, !prof !59

bb.cx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242
  %i.kv = add nuw nsw i32 %i.kt, 1
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = shl nuw nsw i64 %i.kw, 40
  %i.ky = and i64 %i.kq, -1152920405095219201
  %i.kz = or i64 %i.kx, %i.ky
  store i64 %i.kz, ptr %i.kp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244

bb.cy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242
  %i.la = icmp eq i32 %i.kt, 1048574
  br i1 %i.la, label %bb.cz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244, !prof !37

bb.cz:                                            ; preds = %bb.cy
  %i.lb = or i64 %i.kq, 1152920405095219200
  store i64 %i.lb, ptr %i.kp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244 unwind label %bb.do

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244: ; preds = %bb.cy, %bb.cx, %bb.cz
  %i.lc = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  store ptr %i.lc, ptr %28, align 8, !tbaa !26
  %i.ld = load i64, ptr %i.lc, align 8            ; 3 uses
  %i.le = lshr i64 %i.ld, 40
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = and i32 %i.lf, 1048575                  ; 3 uses
  %i.lh = icmp samesign ult i32 %i.lg, 1048574
  br i1 %i.lh, label %bb.da, label %bb.db, !prof !59

bb.da:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244
  %i.li = add nuw nsw i32 %i.lg, 1
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = shl nuw nsw i64 %i.lj, 40
  %i.ll = and i64 %i.ld, -1152920405095219201
  %i.lm = or i64 %i.lk, %i.ll
  store i64 %i.lm, ptr %i.lc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246

bb.db:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244
  %i.ln = icmp eq i32 %i.lg, 1048574
  br i1 %i.ln, label %bb.dc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246, !prof !37

bb.dc:                                            ; preds = %bb.db
  %i.lo = or i64 %i.ld, 1152920405095219200
  store i64 %i.lo, ptr %i.lc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246 unwind label %bb.dp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246: ; preds = %bb.db, %bb.da, %bb.dc
  invoke void @_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy20registerEvalPtAtSizeENS0_12NodeTemplateILb1EEES5_S5_j(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 %27, ptr noundef nonnull align 8 %28, i32 noundef %i.t)
          to label %bb.dd unwind label %bb.dq

bb.dd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246
  %i.lp = load ptr, ptr %28, align 8, !tbaa !26   ; 3 uses
  %i.lq = load i64, ptr %i.lp, align 8            ; 3 uses
  %i.lr = and i64 %i.lq, 1152920405095219200
  %.not.i.i247 = icmp eq i64 %i.lr, 1152920405095219200
  br i1 %.not.i.i247, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, label %bb.de, !prof !37

bb.de:                                            ; preds = %bb.dd
  %i.ls = add i64 %i.lq, 1152920405095219200
  %i.lt = and i64 %i.ls, 1152920405095219200      ; 2 uses
  %i.lu = and i64 %i.lq, -1152920405095219201
  %i.lv = or disjoint i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.lp, align 8
  %i.lw = icmp eq i64 %i.lt, 0
  br i1 %i.lw, label %bb.df, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, !prof !37

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249: ; preds = %bb.dd, %bb.de, %bb.df
  %i.lz = load ptr, ptr %27, align 8, !tbaa !26   ; 3 uses
  %i.ma = load i64, ptr %i.lz, align 8            ; 3 uses
  %i.mb = and i64 %i.ma, 1152920405095219200
  %.not.i.i250 = icmp eq i64 %i.mb, 1152920405095219200
  br i1 %.not.i.i250, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, label %bb.dh, !prof !37

end_hunk_1
