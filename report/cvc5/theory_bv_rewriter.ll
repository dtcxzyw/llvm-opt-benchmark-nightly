Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_bv_rewriter?download=true
inline.NumInlined: 19905
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4cvc58internal6theory2bv21LinearRewriteStrategyINS2_11RewriteRuleILNS2_13RewriteRuleIdE60EEENS4_ILS5_98EEENS4_ILS5_121EEENS4_ILS5_0EEES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_E5applyENS0_12NodeTemplateILb0EEE:bb.a
  br label %bb.bc

_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE98EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread: ; preds = %bb.u, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87, %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE98EE7appliesENS0_12NodeTemplateILb0EEE.exit
  %i.ee = phi ptr [ %i.ba, %bb.u ], [ %i.dr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87 ], [ %i.ba, %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE98EE7appliesENS0_12NodeTemplateILb0EEE.exit ] ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = and i64 %i.eg, 1023
  %i.ei = icmp eq i64 %i.eh, 104
  br i1 %i.ei, label %bb.am, label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread

bb.am:                                            ; preds = %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE98EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread
  %i.ej = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 104)
          to label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit unwind label %bb.ay

_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit: ; preds = %bb.am
  %i.ek = icmp eq i32 %i.ej, 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.em = zext i1 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !43, !noalias !742
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = and i64 %i.eq, 1023
  %i.es = icmp eq i64 %i.er, 106
  br i1 %i.es, label %bb.an, label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread

bb.an:                                            ; preds = %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ee, ptr %2, align 8, !tbaa !40, !noalias !743
  invoke void @_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE5applyENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 %2)
          to label %bb.ao unwind label %bb.az

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.et = load ptr, ptr %7, align 8, !tbaa !42
  %.not.i90 = icmp eq ptr %i.ee, %i.et
  br i1 %.not.i90, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95, label %bb.ap, !prof !45

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.ev = and i64 %i.eu, 1152920405095219200
  %.not.i.i91 = icmp eq i64 %i.ev, 1152920405095219200
  br i1 %.not.i.i91, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i92, label %bb.aq, !prof !45

bb.aq:                                            ; preds = %bb.ap
  %i.ew = add i64 %i.eu, 1152920405095219200
  %i.ex = and i64 %i.ew, 1152920405095219200      ; 2 uses
  %i.ey = and i64 %i.eu, -1152920405095219201
  %i.ez = or disjoint i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.ee, align 8
  %i.fa = icmp eq i64 %i.ex, 0
  br i1 %i.fa, label %bb.ar, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i92, !prof !45

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i92 unwind label %bb.ba

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i92:  ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.fb = load ptr, ptr %7, align 8, !tbaa !42    ; 5 uses
  store ptr %i.fb, ptr %0, align 8, !tbaa !42
  %i.fc = load i64, ptr %i.fb, align 8            ; 3 uses
  %i.fd = lshr i64 %i.fc, 40
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 1048575                  ; 3 uses
  %i.fg = icmp samesign ult i32 %i.ff, 1048574
  br i1 %i.fg, label %bb.as, label %bb.at, !prof !44

bb.as:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i92
  %i.fh = add nuw nsw i32 %i.ff, 1
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 40
  %i.fk = and i64 %i.fc, -1152920405095219201
  %i.fl = or i64 %i.fj, %i.fk
  store i64 %i.fl, ptr %i.fb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95

bb.at:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i92
  %i.fm = icmp eq i32 %i.ff, 1048574
  br i1 %i.fm, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95, !prof !45

bb.au:                                            ; preds = %bb.at
  %i.fn = or i64 %i.fc, 1152920405095219200
  store i64 %i.fn, ptr %i.fb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95 unwind label %bb.ba

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95: ; preds = %bb.at, %bb.as, %bb.ao, %bb.au
  %i.fo = load ptr, ptr %7, align 8, !tbaa !42    ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 3 uses
  %i.fq = and i64 %i.fp, 1152920405095219200
  %.not.i.i96 = icmp eq i64 %i.fq, 1152920405095219200
  br i1 %.not.i.i96, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit98, label %bb.av, !prof !45

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95
  %i.fr = add i64 %i.fp, 1152920405095219200
  %i.fs = and i64 %i.fr, 1152920405095219200      ; 2 uses
  %i.ft = and i64 %i.fp, -1152920405095219201
  %i.fu = or disjoint i64 %i.fs, %i.ft
  store i64 %i.fu, ptr %i.fo, align 8
  %i.fv = icmp eq i64 %i.fs, 0
  br i1 %i.fv, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit98, !prof !45

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit98 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit98: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit95, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread

bb.ay:                                            ; preds = %bb.v, %bb.e, %bb.am
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.az:                                            ; preds = %bb.an
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au, %bb.ar
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn33 = phi { ptr, i32 } [ %i.ga, %bb.ba ], [ %i.fz, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bc

_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread: ; preds = %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE98EE7appliesENS0_12NodeTemplateILb0EEE.exit.thread, %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE121EE7appliesENS0_12NodeTemplateILb0EEE.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit98
  ret void

bb.bc:                                            ; preds = %bb.bb, %bb.ay, %bb.al, %bb.t
  %.pn67.pn = phi { ptr, i32 } [ %i.fy, %bb.ay ], [ %.pn31, %bb.al ], [ %.pn33, %bb.bb ], [ %.pn, %bb.t ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %.pn67.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv16TheoryBVRewriter11RewriteUdivENS0_12NodeTemplateILb0EEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cvc5::internal::theory::RewriteResponse") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 zeroext %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 15 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !42
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 0, ptr %i.a, align 1, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1023
  %i.s = icmp eq i64 %i.r, 107
  br i1 %i.s, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.af

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.t = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 107)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.e
  %i.u = icmp eq i32 %i.t, 2
  %spec.select.i.i.i = select i1 %i.u, i64 2, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %spec.select.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43, !noalias !748
  store ptr %i.x, ptr %4, align 8, !tbaa !40, !alias.scope !748
  %i.y = invoke noundef i32 @_ZN4cvc58internal6theory2bv5utils11isPow2ConstENS0_12NodeTemplateILb0EEERb(ptr noundef nonnull align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.f unwind label %bb.aa

bb.f:                                             ; preds = %.noexc
  %11 = icmp eq i32 %i.y, 0
  %.pre.i = load i8, ptr %i.a, align 1, !range !51
  %i.z = trunc nuw i8 %.pre.i to i1
  %.not41 = select i1 %11, i1 true, i1 %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !40  ; 2 uses
  br i1 %.not41, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.pre43, ptr %3, align 8, !tbaa !40, !noalias !749
  invoke void @_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE99EE5applyENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 %3)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aa = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %.not.i.a = icmp eq ptr %i.b, %i.aa
  br i1 %.not.i.a, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ac = and i64 %i.ab, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.j, !prof !45

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.ab, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.ab, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.b, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.k, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !45

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge unwind label %bb.ac

._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %6, align 8, !tbaa !42
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge, %bb.j, %bb.i
  %i.ai = phi ptr [ %.pre, %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge ], [ %i.aa, %bb.j ], [ %i.aa, %bb.i ] ; 8 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !42
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = lshr i64 %i.aj, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 1048574
  br i1 %i.an, label %bb.l, label %bb.m, !prof !44

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ao = add nuw nsw i32 %i.am, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 40
  %i.ar = and i64 %i.aj, -1152920405095219201
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.ai, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.m:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.at = icmp eq i32 %i.am, 1048574
  br i1 %i.at, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.au = or i64 %i.aj, 1152920405095219200
  store i64 %i.au, ptr %i.ai, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ac

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.m, %bb.l, %bb.h, %bb.n
  %i.av = phi ptr [ %i.ai, %bb.m ], [ %i.ai, %bb.l ], [ %i.b, %bb.h ], [ %i.ai, %bb.n ] ; 5 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i13 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i13, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !45

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !45

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr %i.av, ptr %7, align 8, !tbaa !42
  %i.bg = load i64, ptr %i.av, align 8            ; 3 uses
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1048575                  ; 3 uses
  %i.bk = icmp samesign ult i32 %i.bj, 1048574
  br i1 %i.bk, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 40
  %i.bo = and i64 %i.bg, -1152920405095219201
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.av, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bq = icmp eq i32 %i.bj, 1048574
  br i1 %i.bq, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.br = or i64 %i.bg, 1152920405095219200
  store i64 %i.br, ptr %i.av, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.s, %bb.r, %bb.t
  store i32 2, ptr %0, align 8, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %7, align 8, !tbaa !42    ; 8 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !42
  %i.bu = load i64, ptr %i.bt, align 8            ; 4 uses
  %i.bv = lshr i64 %i.bu, 40
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 1048575                  ; 3 uses
  %i.by = icmp samesign ult i32 %i.bx, 1048574
  br i1 %i.by, label %bb.u, label %bb.v, !prof !44

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bz = add nuw nsw i32 %i.bx, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 40
  %i.cc = and i64 %i.bu, -1152920405095219201
  %i.cd = or i64 %i.cb, %i.cc                     ; 2 uses
  store i64 %i.cd, ptr %i.bt, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ce = icmp eq i32 %i.bx, 1048574
  br i1 %i.ce, label %bb.w, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.cf = or i64 %i.bu, 1152920405095219200
  store i64 %i.cf, ptr %i.bt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge unwind label %bb.ae

._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge: ; preds = %bb.w
  %.pre42 = load i64, ptr %i.bt, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit: ; preds = %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge, %bb.v, %bb.u
  %i.cg = phi i64 [ %.pre42, %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge ], [ %i.bu, %bb.v ], [ %i.cd, %bb.u ] ; 3 uses
  %i.ch = and i64 %i.cg, 1152920405095219200
  %.not.i.i17 = icmp eq i64 %i.ch, 1152920405095219200
  br i1 %.not.i.i17, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, label %bb.x, !prof !45

bb.x:                                             ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit
  %i.ci = add i64 %i.cg, 1152920405095219200
  %i.cj = and i64 %i.ci, 1152920405095219200      ; 2 uses
  %i.ck = and i64 %i.cg, -1152920405095219201
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.bt, align 8
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, !prof !45

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #25
  unreachable

bb.aa:                                            ; preds = %bb.t, %bb.as, %.noexc, %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ab:                                            ; preds = %bb.g
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n, %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn5 = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %i.cq, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bg

bb.ae:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.bg

bb.af:                                            ; preds = %.thread, %bb.f
  %i.ct = phi ptr [ %i.o, %.thread ], [ %.pre43, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.ct, ptr %9, align 8, !tbaa !40
  invoke void @_ZN4cvc58internal6theory2bv21LinearRewriteStrategyINS2_11RewriteRuleILNS2_13RewriteRuleIdE48EEENS4_ILS5_100EEENS4_ILS5_101EEENS4_ILS5_0EEES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_E5applyENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.ag unwind label %bb.az

bb.ag:                                            ; preds = %bb.af
  %i.cu = load ptr, ptr %8, align 8, !tbaa !42    ; 3 uses
  %.not.i20 = icmp eq ptr %i.b, %i.cu
  br i1 %.not.i20, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, label %bb.ah, !prof !45

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i64, ptr %i.b, align 8             ; 3 uses
  %i.cw = and i64 %i.cv, 1152920405095219200
  %.not.i.i21 = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i21, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22, label %bb.ai, !prof !45

bb.ai:                                            ; preds = %bb.ah
  %i.cx = add i64 %i.cv, 1152920405095219200
  %i.cy = and i64 %i.cx, 1152920405095219200      ; 2 uses
  %i.cz = and i64 %i.cv, -1152920405095219201
  %i.da = or disjoint i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.b, align 8
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %bb.aj, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22, !prof !45

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge unwind label %bb.ba

._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge: ; preds = %bb.aj
  %.pre44 = load ptr, ptr %8, align 8, !tbaa !42
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22:  ; preds = %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge, %bb.ai, %bb.ah
  %i.dc = phi ptr [ %.pre44, %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge ], [ %i.cu, %bb.ai ], [ %i.cu, %bb.ah ] ; 8 uses
  store ptr %i.dc, ptr %5, align 8, !tbaa !42
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = lshr i64 %i.dd, 40
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 1048575                  ; 3 uses
  %i.dh = icmp samesign ult i32 %i.dg, 1048574
  br i1 %i.dh, label %bb.ak, label %bb.al, !prof !44

bb.ak:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22
  %i.di = add nuw nsw i32 %i.dg, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 40
  %i.dl = and i64 %i.dd, -1152920405095219201
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.dc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25

bb.al:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22
  %i.dn = icmp eq i32 %i.dg, 1048574
  br i1 %i.dn, label %bb.am, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, !prof !45

bb.am:                                            ; preds = %bb.al
  %i.do = or i64 %i.dd, 1152920405095219200
  store i64 %i.do, ptr %i.dc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25 unwind label %bb.ba

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25: ; preds = %bb.al, %bb.ak, %bb.ag, %bb.am
  %i.dp = phi ptr [ %i.dc, %bb.al ], [ %i.dc, %bb.ak ], [ %i.b, %bb.ag ], [ %i.dc, %bb.am ] ; 5 uses
  %i.dq = load ptr, ptr %8, align 8, !tbaa !42    ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = and i64 %i.dr, 1152920405095219200
  %.not.i.i26 = icmp eq i64 %i.ds, 1152920405095219200
  br i1 %.not.i.i26, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28, label %bb.an, !prof !45

bb.an:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25
  %i.dt = add i64 %i.dr, 1152920405095219200
  %i.du = and i64 %i.dt, 1152920405095219200      ; 2 uses
  %i.dv = and i64 %i.dr, -1152920405095219201
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.dq, align 8
  %i.dx = icmp eq i64 %i.du, 0
  br i1 %i.dx, label %bb.ao, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28, !prof !45

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  store ptr %i.dp, ptr %10, align 8, !tbaa !42
  %i.ea = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.eb = lshr i64 %i.ea, 40
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 1048575                  ; 3 uses
  %i.ee = icmp samesign ult i32 %i.ed, 1048574
  br i1 %i.ee, label %bb.aq, label %bb.ar, !prof !44

bb.aq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28
  %i.ef = add nuw nsw i32 %i.ed, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 40
  %i.ei = and i64 %i.ea, -1152920405095219201
  %i.ej = or i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %i.dp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30

bb.ar:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28
  %i.ek = icmp eq i32 %i.ed, 1048574
  br i1 %i.ek, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30, !prof !45

bb.as:                                            ; preds = %bb.ar
  %i.el = or i64 %i.ea, 1152920405095219200
  store i64 %i.el, ptr %i.dp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30 unwind label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30: ; preds = %bb.ar, %bb.aq, %bb.as
  store i32 0, ptr %0, align 8, !tbaa !63
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %10, align 8, !tbaa !42   ; 8 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !42
  %i.eo = load i64, ptr %i.en, align 8            ; 4 uses
  %i.ep = lshr i64 %i.eo, 40
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = and i32 %i.eq, 1048575                  ; 3 uses
  %i.es = icmp samesign ult i32 %i.er, 1048574
  br i1 %i.es, label %bb.at, label %bb.au, !prof !44

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30
  %i.et = add nuw nsw i32 %i.er, 1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 40
  %i.ew = and i64 %i.eo, -1152920405095219201
  %i.ex = or i64 %i.ev, %i.ew                     ; 2 uses
  store i64 %i.ex, ptr %i.en, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30
  %i.ey = icmp eq i32 %i.er, 1048574
  br i1 %i.ey, label %bb.av, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32, !prof !45

bb.av:                                            ; preds = %bb.au
  %i.ez = or i64 %i.eo, 1152920405095219200
  store i64 %i.ez, ptr %i.en, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge unwind label %bb.bc

._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge: ; preds = %bb.av
  %.pre45 = load i64, ptr %i.en, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32: ; preds = %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge, %bb.au, %bb.at
  %i.fa = phi i64 [ %.pre45, %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge ], [ %i.eo, %bb.au ], [ %i.ex, %bb.at ] ; 3 uses
  %i.fb = and i64 %i.fa, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.fb, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, label %bb.aw, !prof !45

bb.aw:                                            ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32
  %i.fc = add i64 %i.fa, 1152920405095219200
  %i.fd = and i64 %i.fc, 1152920405095219200      ; 2 uses
  %i.fe = and i64 %i.fa, -1152920405095219201
  %i.ff = or disjoint i64 %i.fd, %i.fe
  store i64 %i.ff, ptr %i.en, align 8
  %i.fg = icmp eq i64 %i.fd, 0
  br i1 %i.fg, label %bb.ax, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, !prof !45

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #25
  unreachable

bb.az:                                            ; preds = %bb.af
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.am, %bb.aj
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.ba ], [ %i.fj, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bg

bb.bc:                                            ; preds = %bb.av
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2bv21LinearRewriteStrategyINS2_11RewriteRuleILNS2_13RewriteRuleIdE48EEENS4_ILS5_100EEENS4_ILS5_101EEENS4_ILS5_0EEES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_E5applyENS0_12NodeTemplateILb0EEE:bb.a
  %i.ek = select i1 %i.ej, i32 -1, i32 %i.ei
  %i.el = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ek)
          to label %.noexc96 unwind label %bb.bf

.noexc96:                                         ; preds = %bb.ar
  %i.em = icmp eq i32 %i.el, 2
  %i.en = zext i1 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !43, !noalias !773 ; 7 uses
  store ptr %i.ep, ptr %11, align 8, !tbaa !42, !alias.scope !774
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !774 ; 3 uses
  %i.er = lshr i64 %i.eq, 40
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = and i32 %i.es, 1048575                  ; 3 uses
  %i.eu = icmp samesign ult i32 %i.et, 1048574
  br i1 %i.eu, label %bb.as, label %bb.at, !prof !44

bb.as:                                            ; preds = %.noexc96
  %i.ev = add nuw nsw i32 %i.et, 1
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 40
  %i.ey = and i64 %i.eq, -1152920405095219201
  %i.ez = or i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.ep, align 8, !noalias !774
  br label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit

bb.at:                                            ; preds = %.noexc96
  %i.fa = icmp eq i32 %i.et, 1048574
  br i1 %i.fa, label %bb.au, label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit, !prof !45

bb.au:                                            ; preds = %bb.at
  %i.fb = or i64 %i.eq, 1152920405095219200
  store i64 %i.fb, ptr %i.ep, align 8, !noalias !774
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit unwind label %bb.bf

_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit: ; preds = %bb.at, %bb.as, %bb.au
  %.not.i98 = icmp eq ptr %i.di, %i.ep
  br i1 %.not.i98, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103, label %bb.av, !prof !45

bb.av:                                            ; preds = %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit
  %i.fc = load i64, ptr %i.di, align 8            ; 3 uses
  %i.fd = and i64 %i.fc, 1152920405095219200
  %.not.i.i99 = icmp eq i64 %i.fd, 1152920405095219200
  br i1 %.not.i.i99, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i100, label %bb.aw, !prof !45

bb.aw:                                            ; preds = %bb.av
  %i.fe = add i64 %i.fc, 1152920405095219200
  %i.ff = and i64 %i.fe, 1152920405095219200      ; 2 uses
  %i.fg = and i64 %i.fc, -1152920405095219201
  %i.fh = or disjoint i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %i.di, align 8
  %i.fi = icmp eq i64 %i.ff, 0
  br i1 %i.fi, label %bb.ax, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i100, !prof !45

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i100 unwind label %bb.bg

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i100: ; preds = %bb.ax, %bb.aw, %bb.av
  %i.fj = load ptr, ptr %11, align 8, !tbaa !42   ; 8 uses
  store ptr %i.fj, ptr %0, align 8, !tbaa !42
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  %i.fl = lshr i64 %i.fk, 40
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = and i32 %i.fm, 1048575                  ; 3 uses
  %i.fo = icmp samesign ult i32 %i.fn, 1048574
  br i1 %i.fo, label %bb.ay, label %bb.az, !prof !44

bb.ay:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i100
  %i.fp = add nuw nsw i32 %i.fn, 1
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 40
  %i.fs = and i64 %i.fk, -1152920405095219201
  %i.ft = or i64 %i.fr, %i.fs
  store i64 %i.ft, ptr %i.fj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103

bb.az:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i100
  %i.fu = icmp eq i32 %i.fn, 1048574
  br i1 %i.fu, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103, !prof !45

bb.ba:                                            ; preds = %bb.az
  %i.fv = or i64 %i.fk, 1152920405095219200
  store i64 %i.fv, ptr %i.fj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103 unwind label %bb.bg

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103: ; preds = %bb.az, %bb.ay, %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit, %bb.ba
  %i.fw = phi ptr [ %i.fj, %bb.az ], [ %i.fj, %bb.ay ], [ %i.ep, %_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE101EE3runILb0EEENS0_12NodeTemplateILb1EEENS7_ILb0EEE.exit ], [ %i.fj, %bb.ba ] ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8            ; 3 uses
  %i.fy = and i64 %i.fx, 1152920405095219200
  %.not.i.i104 = icmp eq i64 %i.fy, 1152920405095219200
  br i1 %.not.i.i104, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit106, label %bb.bb, !prof !45

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103
  %i.fz = add i64 %i.fx, 1152920405095219200
  %i.ga = and i64 %i.fz, 1152920405095219200      ; 2 uses
  %i.gb = and i64 %i.fx, -1152920405095219201
  %i.gc = or disjoint i64 %i.ga, %i.gb
  store i64 %i.gc, ptr %i.fw, align 8
  %i.gd = icmp eq i64 %i.ga, 0
  br i1 %i.gd, label %bb.bc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit106, !prof !45

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit106 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit106: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit103, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bi

bb.be:                                            ; preds = %.critedge.i, %.noexc75, %.noexc76, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, %.noexc94, %.noexc93, %.critedge.i89
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bf:                                            ; preds = %bb.au, %bb.ar
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ba, %bb.ax
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn33 = phi { ptr, i32 } [ %i.gi, %bb.bg ], [ %i.gh, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bj

bb.bi:                                            ; preds = %bb.aq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit106, %.thread336
  ret void

bb.bj:                                            ; preds = %bb.bh, %bb.be, %bb.al, %bb.s
  %.pn67.pn = phi { ptr, i32 } [ %i.gg, %bb.be ], [ %.pn31, %bb.al ], [ %.pn33, %bb.bh ], [ %.pn, %bb.s ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %.pn67.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv16TheoryBVRewriter11RewriteUremENS0_12NodeTemplateILb0EEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cvc5::internal::theory::RewriteResponse") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 zeroext %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 15 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !42
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1023
  %i.s = icmp eq i64 %i.r, 108
  br i1 %i.s, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.af

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.t = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 108)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.e
  %i.u = icmp eq i32 %i.t, 2
  %spec.select.i.i.i = select i1 %i.u, i64 2, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %spec.select.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43, !noalias !779
  store ptr %i.x, ptr %4, align 8, !tbaa !40, !alias.scope !779
  %i.y = invoke noundef i32 @_ZN4cvc58internal6theory2bv5utils11isPow2ConstENS0_12NodeTemplateILb0EEERb(ptr noundef nonnull align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.f unwind label %bb.aa

bb.f:                                             ; preds = %.noexc
  %11 = icmp eq i32 %i.y, 0
  %.pre.i = load i8, ptr %i.a, align 1, !range !51
  %i.z = trunc nuw i8 %.pre.i to i1
  %.not41 = select i1 %11, i1 true, i1 %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !40  ; 2 uses
  br i1 %.not41, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.pre43, ptr %3, align 8, !tbaa !40, !noalias !780
  invoke void @_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE102EE5applyENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 %3)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aa = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %.not.i.a = icmp eq ptr %i.b, %i.aa
  br i1 %.not.i.a, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ac = and i64 %i.ab, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.j, !prof !45

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.ab, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.ab, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.b, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.k, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !45

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge unwind label %bb.ac

._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %6, align 8, !tbaa !42
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge, %bb.j, %bb.i
  %i.ai = phi ptr [ %.pre, %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge ], [ %i.aa, %bb.j ], [ %i.aa, %bb.i ] ; 8 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !42
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = lshr i64 %i.aj, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 1048574
  br i1 %i.an, label %bb.l, label %bb.m, !prof !44

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ao = add nuw nsw i32 %i.am, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 40
  %i.ar = and i64 %i.aj, -1152920405095219201
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.ai, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.m:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.at = icmp eq i32 %i.am, 1048574
  br i1 %i.at, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.au = or i64 %i.aj, 1152920405095219200
  store i64 %i.au, ptr %i.ai, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ac

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.m, %bb.l, %bb.h, %bb.n
  %i.av = phi ptr [ %i.ai, %bb.m ], [ %i.ai, %bb.l ], [ %i.b, %bb.h ], [ %i.ai, %bb.n ] ; 5 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i13 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i13, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !45

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !45

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr %i.av, ptr %7, align 8, !tbaa !42
  %i.bg = load i64, ptr %i.av, align 8            ; 3 uses
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1048575                  ; 3 uses
  %i.bk = icmp samesign ult i32 %i.bj, 1048574
  br i1 %i.bk, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 40
  %i.bo = and i64 %i.bg, -1152920405095219201
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.av, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bq = icmp eq i32 %i.bj, 1048574
  br i1 %i.bq, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.br = or i64 %i.bg, 1152920405095219200
  store i64 %i.br, ptr %i.av, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.s, %bb.r, %bb.t
  store i32 2, ptr %0, align 8, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %7, align 8, !tbaa !42    ; 8 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !42
  %i.bu = load i64, ptr %i.bt, align 8            ; 4 uses
  %i.bv = lshr i64 %i.bu, 40
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 1048575                  ; 3 uses
  %i.by = icmp samesign ult i32 %i.bx, 1048574
  br i1 %i.by, label %bb.u, label %bb.v, !prof !44

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bz = add nuw nsw i32 %i.bx, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 40
  %i.cc = and i64 %i.bu, -1152920405095219201
  %i.cd = or i64 %i.cb, %i.cc                     ; 2 uses
  store i64 %i.cd, ptr %i.bt, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ce = icmp eq i32 %i.bx, 1048574
  br i1 %i.ce, label %bb.w, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.cf = or i64 %i.bu, 1152920405095219200
  store i64 %i.cf, ptr %i.bt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge unwind label %bb.ae

._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge: ; preds = %bb.w
  %.pre42 = load i64, ptr %i.bt, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit: ; preds = %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge, %bb.v, %bb.u
  %i.cg = phi i64 [ %.pre42, %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge ], [ %i.bu, %bb.v ], [ %i.cd, %bb.u ] ; 3 uses
  %i.ch = and i64 %i.cg, 1152920405095219200
  %.not.i.i17 = icmp eq i64 %i.ch, 1152920405095219200
  br i1 %.not.i.i17, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, label %bb.x, !prof !45

bb.x:                                             ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit
  %i.ci = add i64 %i.cg, 1152920405095219200
  %i.cj = and i64 %i.ci, 1152920405095219200      ; 2 uses
  %i.ck = and i64 %i.cg, -1152920405095219201
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.bt, align 8
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, !prof !45

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #25
  unreachable

bb.aa:                                            ; preds = %bb.t, %bb.as, %.noexc, %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ab:                                            ; preds = %bb.g
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n, %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn5 = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %i.cq, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bg

bb.ae:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.bg

bb.af:                                            ; preds = %.thread, %bb.f
  %i.ct = phi ptr [ %i.o, %.thread ], [ %.pre43, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.ct, ptr %9, align 8, !tbaa !40
  invoke void @_ZN4cvc58internal6theory2bv21LinearRewriteStrategyINS2_11RewriteRuleILNS2_13RewriteRuleIdE49EEENS4_ILS5_103EEENS4_ILS5_104EEENS4_ILS5_0EEES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_E5applyENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.ag unwind label %bb.az

bb.ag:                                            ; preds = %bb.af
  %i.cu = load ptr, ptr %8, align 8, !tbaa !42    ; 3 uses
  %.not.i20 = icmp eq ptr %i.b, %i.cu
  br i1 %.not.i20, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, label %bb.ah, !prof !45

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i64, ptr %i.b, align 8             ; 3 uses
  %i.cw = and i64 %i.cv, 1152920405095219200
  %.not.i.i21 = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i21, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22, label %bb.ai, !prof !45

bb.ai:                                            ; preds = %bb.ah
  %i.cx = add i64 %i.cv, 1152920405095219200
  %i.cy = and i64 %i.cx, 1152920405095219200      ; 2 uses
  %i.cz = and i64 %i.cv, -1152920405095219201
  %i.da = or disjoint i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.b, align 8
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %bb.aj, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22, !prof !45

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge unwind label %bb.ba

._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge: ; preds = %bb.aj
  %.pre44 = load ptr, ptr %8, align 8, !tbaa !42
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22:  ; preds = %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge, %bb.ai, %bb.ah
  %i.dc = phi ptr [ %.pre44, %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i22_crit_edge ], [ %i.cu, %bb.ai ], [ %i.cu, %bb.ah ] ; 8 uses
  store ptr %i.dc, ptr %5, align 8, !tbaa !42
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = lshr i64 %i.dd, 40
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 1048575                  ; 3 uses
  %i.dh = icmp samesign ult i32 %i.dg, 1048574
  br i1 %i.dh, label %bb.ak, label %bb.al, !prof !44

bb.ak:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22
  %i.di = add nuw nsw i32 %i.dg, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 40
  %i.dl = and i64 %i.dd, -1152920405095219201
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.dc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25

bb.al:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i22
  %i.dn = icmp eq i32 %i.dg, 1048574
  br i1 %i.dn, label %bb.am, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, !prof !45

bb.am:                                            ; preds = %bb.al
  %i.do = or i64 %i.dd, 1152920405095219200
  store i64 %i.do, ptr %i.dc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25 unwind label %bb.ba

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25: ; preds = %bb.al, %bb.ak, %bb.ag, %bb.am
  %i.dp = phi ptr [ %i.dc, %bb.al ], [ %i.dc, %bb.ak ], [ %i.b, %bb.ag ], [ %i.dc, %bb.am ] ; 5 uses
  %i.dq = load ptr, ptr %8, align 8, !tbaa !42    ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = and i64 %i.dr, 1152920405095219200
  %.not.i.i26 = icmp eq i64 %i.ds, 1152920405095219200
  br i1 %.not.i.i26, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28, label %bb.an, !prof !45

bb.an:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25
  %i.dt = add i64 %i.dr, 1152920405095219200
  %i.du = and i64 %i.dt, 1152920405095219200      ; 2 uses
  %i.dv = and i64 %i.dr, -1152920405095219201
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.dq, align 8
  %i.dx = icmp eq i64 %i.du, 0
  br i1 %i.dx, label %bb.ao, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28, !prof !45

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit25, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  store ptr %i.dp, ptr %10, align 8, !tbaa !42
  %i.ea = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.eb = lshr i64 %i.ea, 40
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 1048575                  ; 3 uses
  %i.ee = icmp samesign ult i32 %i.ed, 1048574
  br i1 %i.ee, label %bb.aq, label %bb.ar, !prof !44

bb.aq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28
  %i.ef = add nuw nsw i32 %i.ed, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 40
  %i.ei = and i64 %i.ea, -1152920405095219201
  %i.ej = or i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %i.dp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30

bb.ar:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit28
  %i.ek = icmp eq i32 %i.ed, 1048574
  br i1 %i.ek, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30, !prof !45

bb.as:                                            ; preds = %bb.ar
  %i.el = or i64 %i.ea, 1152920405095219200
  store i64 %i.el, ptr %i.dp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30 unwind label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30: ; preds = %bb.ar, %bb.aq, %bb.as
  store i32 0, ptr %0, align 8, !tbaa !63
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %10, align 8, !tbaa !42   ; 8 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !42
  %i.eo = load i64, ptr %i.en, align 8            ; 4 uses
  %i.ep = lshr i64 %i.eo, 40
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = and i32 %i.eq, 1048575                  ; 3 uses
  %i.es = icmp samesign ult i32 %i.er, 1048574
  br i1 %i.es, label %bb.at, label %bb.au, !prof !44

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30
  %i.et = add nuw nsw i32 %i.er, 1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 40
  %i.ew = and i64 %i.eo, -1152920405095219201
  %i.ex = or i64 %i.ev, %i.ew                     ; 2 uses
  store i64 %i.ex, ptr %i.en, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit30
  %i.ey = icmp eq i32 %i.er, 1048574
  br i1 %i.ey, label %bb.av, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32, !prof !45

bb.av:                                            ; preds = %bb.au
  %i.ez = or i64 %i.eo, 1152920405095219200
  store i64 %i.ez, ptr %i.en, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge unwind label %bb.bc

._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge: ; preds = %bb.av
  %.pre45 = load i64, ptr %i.en, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32: ; preds = %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge, %bb.au, %bb.at
  %i.fa = phi i64 [ %.pre45, %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge ], [ %i.eo, %bb.au ], [ %i.ex, %bb.at ] ; 3 uses
  %i.fb = and i64 %i.fa, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.fb, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, label %bb.aw, !prof !45

bb.aw:                                            ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32
  %i.fc = add i64 %i.fa, 1152920405095219200
  %i.fd = and i64 %i.fc, 1152920405095219200      ; 2 uses
  %i.fe = and i64 %i.fa, -1152920405095219201
  %i.ff = or disjoint i64 %i.fd, %i.fe
  store i64 %i.ff, ptr %i.en, align 8
  %i.fg = icmp eq i64 %i.fd, 0
  br i1 %i.fg, label %bb.ax, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, !prof !45

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #25
  unreachable

bb.az:                                            ; preds = %bb.af
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.am, %bb.aj
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.ba ], [ %i.fj, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bg

bb.bc:                                            ; preds = %bb.av
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
end_hunk_1
