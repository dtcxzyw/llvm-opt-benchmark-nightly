Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_grammar?download=true
inline.NumInlined: 2103
inline.NumDeleted: 985
begin_hunk_0_@_ZNK4cvc58internal12SygusGrammar16getLambdaForRuleERKNS0_12NodeTemplateILb1EEERSt3mapIS3_S3_St4lessIS3_ESaISt4pairIS4_S3_EEE:bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.l:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %bb.g, %bb.n
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.t, %bb.g ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %.body

.body:                                            ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body15
  %.pn = phi { ptr, i32 } [ %eh.lpad-body16, %.body15 ], [ %i.af, %bb.m ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.o:                                             ; preds = %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !47
  %i.ah = load i64, ptr %i.f, align 8             ; 3 uses
  %i.ai = lshr i64 %i.ah, 40
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 1048575                  ; 3 uses
  %i.al = icmp samesign ult i32 %i.ak, 1048574
  br i1 %i.al, label %bb.p, label %bb.q, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.am = add nuw nsw i32 %i.ak, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 40
  %i.ap = and i64 %i.ah, -1152920405095219201
  %i.aq = or i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.f, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.ar = icmp eq i32 %i.ak, 1048574
  br i1 %i.ar, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.as = or i64 %i.ah, 1152920405095219200
  store i64 %i.as, ptr %i.f, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.q, %bb.p, %bb.r, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.au = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = and i64 %i.av, 1152920405095219200
  %.not.i.i18 = icmp eq i64 %i.aw, 1152920405095219200
  br i1 %.not.i.i18, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, label %bb.t, !prof !27

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ax = add i64 %i.av, 1152920405095219200
  %i.ay = and i64 %i.ax, 1152920405095219200      ; 2 uses
  %i.az = and i64 %i.av, -1152920405095219201
  %i.ba = or disjoint i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.au, align 8
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, !prof !27

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.be = load ptr, ptr %9, align 8, !tbaa !26    ; 3 uses
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.be, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 ] ; 2 uses
  %i.bg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = and i64 %i.bh, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.w, !prof !27

bb.w:                                             ; preds = %.lr.ph.i.i.i20
  %i.bj = add i64 %i.bh, 1152920405095219200
  %i.bk = and i64 %i.bj, 1152920405095219200      ; 2 uses
  %i.bl = and i64 %i.bh, -1152920405095219201
  %i.bm = or disjoint i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %i.bg, align 8
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %bb.x, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !27

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.x, %bb.w, %.lr.ph.i.i.i20
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bq, %i.bf
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i20, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !26
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19
  %i.br = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.be, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.aa:                                            ; preds = %bb.s, %.body
  %.pn11 = phi { ptr, i32 } [ %i.at, %bb.s ], [ %.pn, %.body ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.l
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.aa ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal12SygusGrammar8hasRulesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.08.0.in = phi ptr [ %i.a, %bb.a ], [ %.sroa.08.0, %bb.c ]
  %.sroa.08.0 = load ptr, ptr %.sroa.08.0.in, align 8, !tbaa !50 ; 4 uses
  %.not12.not.not.not.not.not = icmp ne ptr %.sroa.08.0, null ; 2 uses
  br i1 %.not12.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !26
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not12.not.not.not.not.not
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal12SygusGrammar7resolveEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::TypeNode") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>, std::__detail::_Identity, std::equal_to<cvc5::internal::NodeTemplate<true>>, std::hash<cvc5::internal::Node>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.189", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %8 = alloca %"class.std::unordered_map.191", align 8 ; 15 uses
  %9 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::unordered_set.212", align 8 ; 19 uses
  %12 = alloca %"class.std::vector.226", align 8  ; 13 uses
  %13 = alloca %"class.cvc5::internal::DType", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %15 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %17 = alloca %"class.std::vector.5", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4cvc58internal12SygusGrammar10isResolvedEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4cvc58internal12SygusGrammar10isResolvedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %_ZN4cvc58internal12SygusGrammar10isResolvedEv.exit

common.resume:                                    ; preds = %bb.dd, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.t, %bb.j ], [ %.pn50.pn.pn.pn, %bb.dd ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %common.resume

_ZN4cvc58internal12SygusGrammar10isResolvedEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  %.not = icmp eq ptr %i.b, %i.i
  br i1 %.not, label %bb.f, label %bb.de

bb.f:                                             ; preds = %_ZN4cvc58internal12SygusGrammar10isResolvedEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.o = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, !prof !41

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.i unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %bb.h
  store i64 1152920405095219200, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %common.resume

_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit:   ; preds = %bb.f, %bb.g, %bb.i
  %i.u = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43 ; 7 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !47
  %i.v = load ptr, ptr %1, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.x, label %bb.k

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !219
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 dereferenceable(3592) %i.n, i32 noundef 373)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.k
  %i.z = load ptr, ptr %1, align 8, !tbaa !29, !noalias !219 ; 2 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !29, !noalias !219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !219
  %.not6.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.ad, %.noexc.i ], [ %i.z, %.noexc ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !47, !noalias !219
  store ptr %i.ab, ptr %4, align 8, !tbaa !100, !noalias !219
  %i.ac = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !219 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.ad, %i.aa
  br i1 %.not.i.i.i55, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !7

.loopexit4.i:                                     ; preds = %.noexc.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !219
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.loopexit4.i
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !219
  br label %.body

bb.l:                                             ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !219
  %i.ae = load ptr, ptr %7, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.u, %i.ae
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.af = load i64, ptr %i.u, align 8             ; 3 uses
  %i.ag = and i64 %i.af, 1152920405095219200
  %.not.i.i56 = icmp eq i64 %i.ag, 1152920405095219200
  br i1 %.not.i.i56, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.n, !prof !27

bb.n:                                             ; preds = %bb.m
  %i.ah = add i64 %i.af, 1152920405095219200
  %i.ai = and i64 %i.ah, 1152920405095219200      ; 2 uses
  %i.aj = and i64 %i.af, -1152920405095219201
  %i.ak = or disjoint i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.u, align 8
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %bb.o, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !27

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.w

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.o, %bb.n, %bb.m
  %i.am = load ptr, ptr %7, align 8, !tbaa !47    ; 8 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !47
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = lshr i64 %i.an, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1048575                  ; 3 uses
  %i.ar = icmp samesign ult i32 %i.aq, 1048574
  br i1 %i.ar, label %bb.p, label %bb.q, !prof !64

bb.p:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.as = add nuw nsw i32 %i.aq, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = and i64 %i.an, -1152920405095219201
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.am, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.q:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ax = icmp eq i32 %i.aq, 1048574
  br i1 %i.ax, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.ay = or i64 %i.an, 1152920405095219200
  store i64 %i.ay, ptr %i.am, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.w

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.q, %bb.p, %bb.l, %bb.r
  %i.az = phi ptr [ %i.am, %bb.q ], [ %i.am, %bb.p ], [ %i.u, %bb.l ], [ %i.am, %bb.r ]
  %i.ba = load ptr, ptr %7, align 8, !tbaa !47    ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = and i64 %i.bb, 1152920405095219200
  %.not.i.i59 = icmp eq i64 %i.bc, 1152920405095219200
  br i1 %.not.i.i59, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.s, !prof !27

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.bd = add i64 %i.bb, 1152920405095219200
  %i.be = and i64 %i.bd, 1152920405095219200      ; 2 uses
  %i.bf = and i64 %i.bb, -1152920405095219201
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.ba, align 8
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !27

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.x

bb.v:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r, %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %.body

.body:                                            ; preds = %bb.v, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %i.bk, %bb.v ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.dd

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit
  %i.bm = phi ptr [ %i.az, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.u, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.bn, ptr %8, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.bo, align 8, !tbaa !105
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bq, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !29  ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29 ; 2 uses
  %.not132142 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not132142, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.y

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !29
  %.pre160 = load ptr, ptr %i.bt, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.bw = phi ptr [ %.pre160, %._crit_edge.loopexit ], [ %i.bs, %bb.x ] ; 2 uses
  %i.bx = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bs, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %i.by, ptr %11, align 8, !tbaa !108
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 1, ptr %i.bz, align 8, !tbaa !109
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cb, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not133148 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not133148, label %._crit_edge152, label %.lr.ph151

.lr.ph151:                                        ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.ai

bb.y:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0128.0143 = phi ptr [ %i.bs, %.lr.ph ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0128.0143)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal11NodeManager24mkUnresolvedDatatypeSortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3592) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.cj = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_8TypeNodeEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS5_S6_EEES4_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0128.0143, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.ag ; 0 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.aa
  %i.ck = load ptr, ptr %9, align 8, !tbaa !45    ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = and i64 %i.cl, 1152920405095219200
  %.not.i.i62 = icmp eq i64 %i.cm, 1152920405095219200
  br i1 %.not.i.i62, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.ab, !prof !27

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit
  %i.cn = add i64 %i.cl, 1152920405095219200
  %i.co = and i64 %i.cn, 1152920405095219200      ; 2 uses
  %i.cp = and i64 %i.cl, -1152920405095219201
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.ck, align 8
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %bb.ac, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !27

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit, %bb.ab, %bb.ac
  %i.cu = load ptr, ptr %10, align 8, !tbaa !68   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bv
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.cw = load i64, ptr %i.bv, align 8, !tbaa !70
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0128.0143, i64 8 ; 2 uses
  %.not132 = icmp eq ptr %i.cy, %i.bu
  br i1 %.not132, label %._crit_edge.loopexit, label %bb.y

bb.ae:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.af:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn50 = phi { ptr, i32 } [ %i.db, %bb.ag ], [ %i.da, %bb.af ] ; 2 uses
  %i.dc = load ptr, ptr %10, align 8, !tbaa !68   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bv
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ah
  %i.de = load i64, ptr %i.bv, align 8, !tbaa !70
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.ae
  %.pn50.pn = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %.pn50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn50, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.dc

._crit_edge152:                                   ; preds = %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EE9push_backERKS2_.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN4cvc58internal11NodeManager21mkMutualDatatypeTypesERKSt6vectorINS0_5DTypeESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %17, ptr noundef nonnull align 8 dereferenceable(3592) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.cd unwind label %bb.cy

bb.ai:                                            ; preds = %.lr.ph151, %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EE9push_backERKS2_.exit
  %.sroa.0124.0149 = phi ptr [ %i.bx, %.lr.ph151 ], [ %i.is, %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EE9push_backERKS2_.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0124.0149)
          to label %bb.aj unwind label %bb.as

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal5DTypeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(448) %13, ptr noundef nonnull align 8 %14, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.dg = load ptr, ptr %14, align 8, !tbaa !68   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cd
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ak
  %i.di = load i64, ptr %i.cd, align 8, !tbaa !70
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.dk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_St6vectorIS4_SaIS4_EEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0124.0149)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixERSC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixERSC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 2 uses
  %.not134144 = icmp eq ptr %i.dl, %i.dn
  br i1 %.not134144, label %._crit_edge147, label %.lr.ph146

._crit_edge147:                                   ; preds = %bb.bm, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixERSC_.exit
  %i.do = load i64, ptr %i.cf, align 8, !tbaa !110
  %.not.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.not.i.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %._crit_edge147
  %i.dp = load ptr, ptr %.sroa.0124.0149, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.06.0.in.i.i = phi ptr [ %i.ca, %bb.al ], [ %.sroa.06.0.i.i, %bb.an ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !50 ; 4 uses
  %.not.i.i71 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i71, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %bb.an

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal12SygusGrammar7resolveEb:bb.a

bb.ci:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i89
  %i.jq = icmp eq i32 %i.jj, 1048574
  br i1 %i.jq, label %bb.cj, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, !prof !27

bb.cj:                                            ; preds = %bb.ci
  %i.jr = or i64 %i.jg, 1152920405095219200
  store i64 %i.jr, ptr %i.jf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit unwind label %bb.cz

_ZN4cvc58internal8TypeNodeaSERKS1_.exit:          ; preds = %bb.ci, %bb.ch, %bb.cd, %bb.cj
  %i.js = load ptr, ptr %17, align 8, !tbaa !63   ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.js, %i.ju
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kf, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i ], [ %i.js, %_ZN4cvc58internal8TypeNodeaSERKS1_.exit ] ; 2 uses
  %i.jv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !45 ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 8            ; 3 uses
  %i.jx = and i64 %i.jw, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jx, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, label %bb.ck, !prof !27

bb.ck:                                            ; preds = %.lr.ph.i.i.i92
  %i.jy = add i64 %i.jw, 1152920405095219200
  %i.jz = and i64 %i.jy, 1152920405095219200      ; 2 uses
  %i.ka = and i64 %i.jw, -1152920405095219201
  %i.kb = or disjoint i64 %i.jz, %i.ka
  store i64 %i.kb, ptr %i.jv, align 8
  %i.kc = icmp eq i64 %i.jz, 0
  br i1 %i.kc, label %bb.cl, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, !prof !27

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i: ; preds = %bb.cl, %bb.ck, %.lr.ph.i.i.i92
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.kf, %i.ju
  br i1 %.not.i.i.i93, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i92, !llvm.loop !3

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal8TypeNodeaSERKS1_.exit
  %i.kg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.js, %_ZN4cvc58internal8TypeNodeaSERKS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !87
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kg to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kl) #24
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.km = load ptr, ptr %12, align 8, !tbaa !119  ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !117 ; 2 uses
  %.not4.i.i.i94 = icmp eq ptr %i.km, %i.ko
  br i1 %.not4.i.i.i94, label %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, %.lr.ph.i.i.i95
  %.05.i.i.i96 = phi ptr [ %i.kp, %.lr.ph.i.i.i95 ], [ %i.km, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN4cvc58internal5DTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %.05.i.i.i96) #25
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i96, i64 448 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.kp, %i.ko
  br i1 %.not.i.i.i97, label %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i95, !llvm.loop !9

_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i95
  %.pr.i98 = load ptr, ptr %12, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit
  %i.kq = phi ptr [ %.pr.i98, %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.km, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i99 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i1.i99, label %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !118
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.kv) #24
  br label %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal5DTypeES2_EvT_S4_RSaIT0_E.exit.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.kw = load ptr, ptr %i.ca, align 8, !tbaa !120 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.kx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.kw, %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev.exit ] ; 3 uses
  %i.kx = load ptr, ptr %.06.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !47 ; 3 uses
  %i.la = load i64, ptr %i.kz, align 8            ; 3 uses
  %i.lb = and i64 %i.la, 1152920405095219200
  %.not.i.i.i.i.i.i113 = icmp eq i64 %i.lb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i113, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.cp, !prof !27

bb.cp:                                            ; preds = %.lr.ph.i.i.i112
  %i.lc = add i64 %i.la, 1152920405095219200
  %i.ld = and i64 %i.lc, 1152920405095219200      ; 2 uses
  %i.le = and i64 %i.la, -1152920405095219201
  %i.lf = or disjoint i64 %i.ld, %i.le
  store i64 %i.lf, ptr %i.kz, align 8
  %i.lg = icmp eq i64 %i.ld, 0
  br i1 %i.lg, label %bb.cq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !27

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kz)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.cq, %bb.cp, %.lr.ph.i.i.i112
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #24
  %.not.i.i.i114 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i114, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i112, !llvm.loop !10

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev.exit
  %i.lj = load ptr, ptr %11, align 8, !tbaa !108
  %i.lk = load i64, ptr %i.bz, align 8, !tbaa !109
  %i.ll = shl i64 %i.lk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lj, i8 0, i64 %i.ll, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.lm = load ptr, ptr %11, align 8, !tbaa !108  ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.by
  br i1 %i.ln, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.lo = load i64, ptr %i.bz, align 8, !tbaa !109
  %i.lp = shl i64 %i.lo, 3
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #24
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.lq = load ptr, ptr %i.bp, align 8, !tbaa !121 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_8TypeNodeEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i100

.lr.ph.i.i.i.i100:                                ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, %.noexc.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.lr, %.noexc.i.i.i ], [ %i.lq, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit ] ; 2 uses
  %i.lr = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEENS4_8TypeNodeEELb1EEEEE18_M_deallocate_nodeEPSA_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull %.06.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.ct

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i100
  %.not.i.i.i.i101 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.i101, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_8TypeNodeEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i100, !llvm.loop !11

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i100
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #26
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_8TypeNodeEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit
  %i.lu = load ptr, ptr %8, align 8, !tbaa !106
  %i.lv = load i64, ptr %i.bo, align 8, !tbaa !105
  %i.lw = shl i64 %i.lv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lu, i8 0, i64 %i.lw, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.lx = load ptr, ptr %8, align 8, !tbaa !106   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.bn
  br i1 %i.ly, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_8TypeNodeEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.lz = load i64, ptr %i.bo, align 8, !tbaa !105
  %i.ma = shl i64 %i.lz, 3
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #24
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_8TypeNodeEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.mb = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.mc = and i64 %i.mb, 1152920405095219200
  %.not.i.i102 = icmp eq i64 %i.mc, 1152920405095219200
  br i1 %.not.i.i102, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, label %bb.cv, !prof !27

bb.cv:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit
  %i.md = add i64 %i.mb, 1152920405095219200
  %i.me = and i64 %i.md, 1152920405095219200      ; 2 uses
  %i.mf = and i64 %i.mb, -1152920405095219201
  %i.mg = or disjoint i64 %i.me, %i.mf
  store i64 %i.mg, ptr %i.bm, align 8
  %i.mh = icmp eq i64 %i.me, 0
  br i1 %i.mh, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, !prof !27

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  call void @__clang_call_terminate(ptr %i.mj) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.de

bb.cy:                                            ; preds = %._crit_edge152
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cj, %bb.cg
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #25
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn39 = phi { ptr, i32 } [ %i.ml, %bb.cz ], [ %i.mk, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn39, %bb.da ]
  call void @_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn45.pn.pn.pn, %bb.db ]
  call void @_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_8TypeNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.body
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.dc ], [ %.pn, %.body ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.de:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, %_ZN4cvc58internal12SygusGrammar10isResolvedEv.exit
  %i.mm = load ptr, ptr %i.a, align 8, !tbaa !45  ; 5 uses
  store ptr %i.mm, ptr %0, align 8, !tbaa !45
  %i.mn = load i64, ptr %i.mm, align 8            ; 3 uses
  %i.mo = lshr i64 %i.mn, 40
  %i.mp = trunc nuw nsw i64 %i.mo to i32
  %i.mq = and i32 %i.mp, 1048575                  ; 3 uses
  %i.mr = icmp samesign ult i32 %i.mq, 1048574
  br i1 %i.mr, label %bb.df, label %bb.dg, !prof !64

bb.df:                                            ; preds = %bb.de
  %i.ms = add nuw nsw i32 %i.mq, 1
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 40
  %i.mv = and i64 %i.mn, -1152920405095219201
  %i.mw = or i64 %i.mu, %i.mv
  store i64 %i.mw, ptr %i.mm, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.dg:                                            ; preds = %bb.de
  %i.mx = icmp eq i32 %i.mq, 1048574
  br i1 %i.mx, label %bb.dh, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !27

bb.dh:                                            ; preds = %bb.dg
  %i.my = or i64 %i.mn, 1152920405095219200
  store i64 %i.my, ptr %i.mm, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mm)
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.df, %bb.dg, %bb.dh
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal12SygusGrammar10isResolvedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK4cvc58internal8TypeNode6isNullEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNK4cvc58internal8TypeNode6isNullEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %_ZNK4cvc58internal8TypeNode6isNullEv.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  resume { ptr, i32 } %i.h

_ZNK4cvc58internal8TypeNode6isNullEv.exit:        ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !43
  %i.j = icmp ne ptr %i.b, %i.i
  ret i1 %i.j
}

declare void @_ZN4cvc58internal11NodeManager24mkUnresolvedDatatypeSortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare void @_ZNK4cvc58internal12NodeTemplateILb1EE7getNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4cvc58internal5DTypeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef align 8, i1 noundef zeroext) unnamed_addr #5

declare void @_ZN4cvc58internal5DType8setSygusENS0_8TypeNodeENS0_12NodeTemplateILb1EEEbb(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef align 8, ptr noundef align 8, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4cvc58internal5DTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448)) unnamed_addr #6

declare void @_ZN4cvc58internal11NodeManager21mkMutualDatatypeTypesERKSt6vectorINS0_5DTypeESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::vector.5") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal8TypeNodeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !45
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.c, %bb.d
  %i.j = load ptr, ptr %1, align 8, !tbaa !45     ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !45
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.e, label %bb.f, !prof !64

bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

_ZN4cvc58internal4expr9NodeValue3incEv.exit:      ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal5DTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
end_hunk_1
