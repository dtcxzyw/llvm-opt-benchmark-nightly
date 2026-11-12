Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/inference_manager?download=true
inline.NumInlined: 1654
inline.NumDeleted: 566
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4cvc58internal6theory7strings16InferenceManager9doPendingEv:bb.a
  tail call void @_ZN4cvc58internal6theory24InferenceManagerBuffered18clearPendingLemmasEv(ptr noundef nonnull align 8 dereferenceable(337) %i.a)
  tail call void @_ZN4cvc58internal6theory24InferenceManagerBuffered29clearPendingPhaseRequirementsEv(ptr noundef nonnull align 8 dereferenceable(337) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4cvc58internal6theory24InferenceManagerBuffered15doPendingLemmasEv(ptr noundef nonnull align 8 dereferenceable(337) %i.a)
  tail call void @_ZN4cvc58internal6theory24InferenceManagerBuffered26doPendingPhaseRequirementsEv(ptr noundef nonnull align 8 dereferenceable(337) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN4cvc58internal6theory24InferenceManagerBuffered14doPendingFactsEv(ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory24InferenceManagerBuffered18clearPendingLemmasEv(ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory24InferenceManagerBuffered29clearPendingPhaseRequirementsEv(ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory24InferenceManagerBuffered15doPendingLemmasEv(ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory24InferenceManagerBuffered26doPendingPhaseRequirementsEv(ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory7strings16InferenceManager21sendInternalInferenceERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES6_NS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 19 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = and i32 %i.d, 1023
  switch i32 %i.e, label %.thread [
    i32 21, label %.thread.thread
    i32 20, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20), !noalias !375
  %i.g = icmp eq i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = zext i1 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24, !noalias !375 ; 8 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !375 ; 4 uses
  %i.m = lshr i64 %i.l, 40
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 1048575                    ; 3 uses
  %i.p = icmp samesign ult i32 %i.o, 1048574
  br i1 %i.p, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = and i64 %i.l, -1152920405095219201
  %i.u = or i64 %i.s, %i.t                        ; 2 uses
  store i64 %i.u, ptr %i.k, align 8, !noalias !375
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %i.o, 1048574
  br i1 %i.v, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.w = or i64 %i.l, 1152920405095219200
  store i64 %i.w, ptr %i.k, align 8, !noalias !375
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !375
  %.pre = load i64, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = phi i64 [ %.pre, %bb.e ], [ %i.l, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1023
  %i.ab = icmp eq i64 %i.aa, 23
  %i.ac = and i64 %i.x, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i, label %.critedge, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %i.x, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.x, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.k, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.h, label %.critedge, !prof !27

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.critedge unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #23
  unreachable

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f
  %.pre247 = load ptr, ptr %2, align 8, !tbaa !26 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre247, i64 8
  %.pre246 = load i64, ptr %.phi.trans.insert, align 8
  %.pre251 = trunc i64 %.pre246 to i32            ; 2 uses
  br i1 %i.ab, label %.thread.thread, label %.thread

.thread.thread:                                   ; preds = %.critedge, %bb.a
  %.pre-phi252 = phi i32 [ %i.d, %bb.a ], [ %.pre251, %.critedge ]
  %i.ak = phi ptr [ %i.a, %bb.a ], [ %.pre247, %.critedge ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.al = and i32 %.pre-phi252, 1023              ; 3 uses
  %i.am = icmp eq i32 %i.al, 21
  br i1 %i.am, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.thread.thread
  store ptr %i.ak, ptr %4, align 8, !tbaa !26
  %i.an = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.ao = lshr i64 %i.an, 40
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 1048575                  ; 3 uses
  %i.ar = icmp samesign ult i32 %i.aq, 1048574
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.as = add nuw nsw i32 %i.aq, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = and i64 %i.an, -1152920405095219201
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ak, align 8
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp eq i32 %i.aq, 1048574
  br i1 %i.ax, label %bb.m, label %bb.r, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ay = or i64 %i.an, 1152920405095219200
  store i64 %i.ay, ptr %i.ak, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %bb.r

bb.n:                                             ; preds = %.thread.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.az = icmp eq i32 %i.al, 1023
  %i.ba = select i1 %i.az, i32 -1, i32 %i.al
  %i.bb = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ba), !noalias !376
  %i.bc = icmp eq i32 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.be = zext i1 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !24, !noalias !376 ; 8 uses
  store ptr %i.bg, ptr %4, align 8, !tbaa !26, !alias.scope !376
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !376 ; 3 uses
  %i.bi = lshr i64 %i.bh, 40
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1048575                  ; 3 uses
  %i.bl = icmp samesign ult i32 %i.bk, 1048574
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.bm = add nuw nsw i32 %i.bk, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 40
  %i.bp = and i64 %i.bh, -1152920405095219201
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bg, align 8, !noalias !376
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.br = icmp eq i32 %i.bk, 1048574
  br i1 %i.br, label %bb.q, label %bb.r, !prof !27

bb.q:                                             ; preds = %bb.p
  %i.bs = or i64 %i.bh, 1152920405095219200
  store i64 %i.bs, ptr %i.bg, align 8, !noalias !376
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg), !noalias !376
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %i.bt = phi ptr [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.bg, %bb.o ], [ %i.bg, %bb.p ], [ %i.bg, %bb.q ] ; 7 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 1023
  %i.by = icmp eq i64 %i.bx, 21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 1023                     ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 1023
  %i.ce = select i1 %i.cd, i32 -1, i32 %i.cc
  %i.cf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ce)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.cg = icmp eq i32 %i.cf, 2
  %spec.select.v.i.i = select i1 %i.cg, i64 32, i64 24 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = and i32 %25, 536870904
  %narrow = add nuw nsw i32 %26, 24
  %27 = zext nneg i32 %narrow to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 %27
  %.not238 = icmp samesign eq i64 %spec.select.v.i.i, %27
  br i1 %.not238, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %spec.select.v.i.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, %bb.s
  %.088.lcssa = phi i1 [ true, %bb.s ], [ %i.ec, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 ]
  %i.ci = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i160 = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i160, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161, label %bb.t, !prof !27

bb.t:                                             ; preds = %._crit_edge
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.bt, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161, !prof !27

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161: ; preds = %._crit_edge, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.eh

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167
  %.088240 = phi i1 [ %i.ec, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 ], [ true, %.lr.ph.preheader ]
  %.sroa.0214.0239 = phi ptr [ %i.en, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 ], [ %spec.select.i.i, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.cr = load ptr, ptr %.sroa.0214.0239, align 8, !tbaa !24, !noalias !377 ; 5 uses
  store ptr %i.cr, ptr %5, align 8, !tbaa !26, !alias.scope !377
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !377 ; 3 uses
  %i.ct = lshr i64 %i.cs, 40
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 1048575                  ; 3 uses
  %i.cw = icmp samesign ult i32 %i.cv, 1048574
  br i1 %i.cw, label %bb.w, label %bb.x, !prof !28

bb.w:                                             ; preds = %.lr.ph
  %i.cx = add nuw nsw i32 %i.cv, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 40
  %i.da = and i64 %i.cs, -1152920405095219201
  %i.db = or i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cr, align 8, !noalias !377
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dc = icmp eq i32 %i.cv, 1048574
  br i1 %i.dc, label %bb.y, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !27

bb.y:                                             ; preds = %bb.x
  %i.dd = or i64 %i.cs, 1152920405095219200
  store i64 %i.dd, ptr %i.cr, align 8, !noalias !377
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.x, %bb.w, %bb.y
  br i1 %i.by, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.de = load ptr, ptr %5, align 8, !tbaa !26    ; 5 uses
  store ptr %i.de, ptr %6, align 8, !tbaa !26
  %i.df = load i64, ptr %i.de, align 8            ; 3 uses
  %i.dg = lshr i64 %i.df, 40
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = and i32 %i.dh, 1048575                  ; 3 uses
  %i.dj = icmp samesign ult i32 %i.di, 1048574
  br i1 %i.dj, label %bb.aa, label %bb.ab, !prof !28

bb.aa:                                            ; preds = %bb.z
  %i.dk = add nuw nsw i32 %i.di, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 40
  %i.dn = and i64 %i.df, -1152920405095219201
  %i.do = or i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.de, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163

bb.ab:                                            ; preds = %bb.z
  %i.dp = icmp eq i32 %i.di, 1048574
  br i1 %i.dp, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163, !prof !27

bb.ac:                                            ; preds = %bb.ab
  %i.dq = or i64 %i.df, 1152920405095219200
  store i64 %i.dq, ptr %i.de, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163 unwind label %bb.al

bb.ad:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163 unwind label %bb.al

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163: ; preds = %bb.ab, %bb.aa, %bb.ac, %bb.ad
  %i.dr = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings16InferenceManager21sendInternalInferenceERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES6_NS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 %6, i32 noundef %3)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163
  %i.ds = load ptr, ptr %6, align 8, !tbaa !26    ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = and i64 %i.dt, 1152920405095219200
  %.not.i.i164 = icmp eq i64 %i.du, 1152920405095219200
  br i1 %.not.i.i164, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, label %bb.af, !prof !27

bb.af:                                            ; preds = %bb.ae
  %i.dv = add i64 %i.dt, 1152920405095219200
  %i.dw = and i64 %i.dv, 1152920405095219200      ; 2 uses
  %i.dx = and i64 %i.dt, -1152920405095219201
  %i.dy = or disjoint i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.ds, align 8
  %i.dz = icmp eq i64 %i.dw, 0
  br i1 %i.dz, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, !prof !27

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.ec = and i1 %.088240, %i.dr                  ; 2 uses
  %i.ed = load ptr, ptr %5, align 8, !tbaa !26    ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8            ; 3 uses
  %i.ef = and i64 %i.ee, 1152920405095219200
  %.not.i.i166 = icmp eq i64 %i.ef, 1152920405095219200
  br i1 %.not.i.i166, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, label %bb.ai, !prof !27

bb.ai:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165
  %i.eg = add i64 %i.ee, 1152920405095219200
  %i.eh = and i64 %i.eg, 1152920405095219200      ; 2 uses
  %i.ei = and i64 %i.ee, -1152920405095219201
  %i.ej = or disjoint i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %i.ed, align 8
  %i.ek = icmp eq i64 %i.eh, 0
  br i1 %i.ek, label %bb.aj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, !prof !27

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0214.0239, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.en, %i.ch
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.r
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.al:                                            ; preds = %bb.ac, %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.thread219

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit163
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %.thread219

.thread219:                                       ; preds = %bb.am, %bb.al
  %.pn126.pn = phi { ptr, i32 } [ %i.eo, %bb.al ], [ %i.ep, %bb.am ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread219
  %.pn126.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn, %.thread219 ], [ %lpad.loopexit.split-lp288, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ei

.thread:                                          ; preds = %.critedge, %bb.a
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings16InferenceManager18mkPrefixExplainMinENS0_12NodeTemplateILb1EEES5_RKSt6vectorINS4_ILb0EEESaIS7_EERKSt3mapIS7_S7_St4lessIS7_ESaISt4pairIKS7_S7_EEEb
define hidden void @_ZN4cvc58internal6theory7strings16InferenceManager18mkPrefixExplainMinENS0_12NodeTemplateILb1EEES5_RKSt6vectorINS4_ILb0EEESaIS7_EERKSt3mapIS7_S7_St4lessIS7_ESaISt4pairIKS7_S7_EEEb(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(432) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i:
  %7 = alloca %"class.std::vector.305", align 8   ; 13 uses
  %8 = alloca %"class.std::vector.311", align 8   ; 12 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 11 uses
  %11 = alloca %"class.std::vector.311", align 8  ; 8 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.512", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !26
  %i.b = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %.noexc96 unwind label %.thread ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.d = load ptr, ptr %3, align 8, !tbaa !26
  store ptr %i.d, ptr %9, align 8, !tbaa !94
  invoke void @_ZN4cvc58internal6theory7strings4Word8getCharsENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.311") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %.preheader394 unwind label %.thread535

.preheader394:                                    ; preds = %.noexc96
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.outer

.outer:                                           ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223, %.preheader394
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.2, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223 ], [ %i.b, %.preheader394 ] ; 16 uses
  %.sroa.14.0.ph = phi ptr [ %.sroa.14.1, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223 ], [ %i.c, %.preheader394 ]
  %.sroa.25.0.ph = phi ptr [ %.sroa.25.2, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223 ], [ %i.c, %.preheader394 ] ; 12 uses
  %.0378.ph = phi i64 [ %.0378, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223 ], [ 0, %.preheader394 ]
  br label %bb.a

bb.a:                                             ; preds = %.outer, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %.sroa.14.0 = phi ptr [ %i.t, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ], [ %.sroa.14.0.ph, %.outer ] ; 3 uses
  %.0378 = phi i64 [ %.1.lcssa, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ], [ %.0378.ph, %.outer ] ; 7 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.m = load ptr, ptr %8, align 8, !tbaa !101
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp uge i64 %.0378, %i.q
  %i.s = icmp eq ptr %.sroa.0.0.ph, %.sroa.14.0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %.critedge, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit134

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit134: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.t = getelementptr inbounds i8, ptr %.sroa.14.0, i64 -8 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  store ptr %i.u, ptr %10, align 8, !tbaa !94
  %i.v = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit134
  br i1 %i.v, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.w = load ptr, ptr %10, align 8, !tbaa !94
  store ptr %i.w, ptr %12, align 8, !tbaa !94
  invoke void @_ZN4cvc58internal6theory7strings4Word8getCharsENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.311") align 8 %11, ptr noundef nonnull align 8 %12)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %bb.c
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.y = load ptr, ptr %8, align 8, !tbaa !101    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 4 uses
  %i.ad = icmp ult i64 %.0378, %i.ac
  %.pre488 = load ptr, ptr %11, align 8, !tbaa !101 ; 5 uses
  %.pre489 = load ptr, ptr %i.j, align 8, !tbaa !102 ; 3 uses
  br i1 %i.ad, label %.lr.ph441, label %.critedge2

.lr.ph441:                                        ; preds = %.preheader
  %i.ae = ptrtoint ptr %.pre489 to i64
  %i.af = ptrtoint ptr %.pre488 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 3 uses
  %i.ai = add i64 %.0378, %i.ah
  %i.aj = sub nuw i64 %i.ac, %.0378
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph441, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160
  %.051440 = phi i64 [ 0, %.lr.ph441 ], [ %i.ay, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160 ] ; 4 uses
  %.1439 = phi i64 [ %.0378, %.lr.ph441 ], [ %i.ax, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160 ] ; 4 uses
  %exitcond478.not = icmp eq i64 %.051440, %i.ah
  br i1 %exitcond478.not, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = xor i64 %.1439, -1
  %i.al = add i64 %i.ac, %i.ak
  %i.am = xor i64 %.051440, -1
  %i.an = add i64 %i.ah, %i.am
  %i.ao = select i1 %6, i64 %i.al, i64 %.1439
  %i.ap = select i1 %6, i64 %i.an, i64 %.051440
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre488, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !26
  %.not = icmp eq ptr %i.as, %i.at
  br i1 %.not, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160, label %.critedge2

.thread:                                          ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit282

.thread535:                                       ; preds = %.noexc96
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.at

bb.f:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160: ; preds = %bb.e
  %i.ax = add nuw i64 %.1439, 1
  %i.ay = add i64 %.051440, 1                     ; 2 uses
  %exitcond479.not = icmp eq i64 %i.ay, %i.aj
  br i1 %exitcond479.not, label %.critedge2, label %bb.d

.critedge2:                                       ; preds = %bb.d, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160, %bb.e, %.preheader
  %.1.lcssa = phi i64 [ %.0378, %.preheader ], [ %.1439, %bb.e ], [ %i.ac, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160 ], [ %i.ai, %bb.d ]
  %.356 = phi i1 [ false, %.preheader ], [ true, %bb.e ], [ false, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit160 ], [ false, %bb.d ]
  %.not4.i.i.i = icmp eq ptr %.pre488, %.pre489
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge2, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %.pre488, %.critedge2 ] ; 2 uses
  %i.az = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.g, !prof !27

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = add i64 %i.ba, 1152920405095219200
  %i.bd = and i64 %i.bc, 1152920405095219200      ; 2 uses
  %i.be = and i64 %i.ba, -1152920405095219201
  %i.bf = or disjoint i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.az, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %bb.h, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !27

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %.pre489
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.critedge2
  %i.bk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre488, %.critedge2 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.356, label %.critedge.thread, label %bb.a

bb.k:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !35  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bp, null
  %.pre = load ptr, ptr %10, align 8, !tbaa !94   ; 3 uses
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188, label %.lr.ph.i.i.i161

.lr.ph.i.i.i161:                                  ; preds = %bb.k
  %i.bq = load i64, ptr %.pre, align 8
  %i.br = and i64 %i.bq, 1099511627775            ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i161
  %.012.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i161 ], [ %.1.i.i.i, %bb.l ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i161 ], [ %.19.i.i.i, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !94
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bu, 1099511627775
  %i.bw = icmp samesign ult i64 %i.bv, %i.br      ; 2 uses
  %.19.i.i.i = select i1 %i.bw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i162, label %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.l, !llvm.loop !458

_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.l
  %i.bx = icmp eq ptr %.19.i.i.i, %i.g
  br i1 %i.bx, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188, label %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit

_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !94
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 1099511627775
  %i.cc = icmp samesign ult i64 %i.br, %i.cb
  br i1 %i.cc, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !94 ; 11 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !326   ; 10 uses
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !326 ; 8 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.ci = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 7 uses
  %i.ck = ashr i64 %i.cj, 5                       ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i163, label %._crit_edge.i.i.i

.lr.ph.i.i.i163:                                  ; preds = %bb.m
  %i.cm = and i64 %i.cj, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i.i163
  %.052.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i163 ], [ %i.cz, %bb.r ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i163 ], [ %i.cy, %bb.r ] ; 9 uses
  %i.cn = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !94
  %i.co = icmp eq ptr %i.cn, %i.ce
  br i1 %i.co, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !94
  %i.cr = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit610, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.cu = icmp eq ptr %i.ct, %i.ce
  br i1 %i.cu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit608, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !94
  %i.cx = icmp eq ptr %i.cw, %i.ce
  br i1 %i.cx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.cz = add nsw i64 %.052.i.i.i, -1
  %i.da = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.da, label %bb.n, label %._crit_edge.loopexit.i.i.i, !llvm.loop !459

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.r
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ch, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.m
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cj, %bb.m ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cf, %bb.m ] ; 5 uses
  %i.db = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.db, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.dc = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !94
  %i.dd = icmp eq ptr %i.dc, %i.ce
  br i1 %i.dd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.t
  %.sroa.032.1.i.i.i = phi ptr [ %i.de, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.df = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !94
  %i.dg = icmp eq ptr %i.df, %i.ce
  br i1 %i.dg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.u
  %.sroa.032.2.i.i.i = phi ptr [ %i.dh, %bb.u ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !94
  %i.dj = icmp eq ptr %i.di, %i.ce
  %spec.select.i.i.i = select i1 %i.dj, ptr %.sroa.032.2.i.i.i, ptr %i.cg
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit608: ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit610: ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.n, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit608, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit610, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.s
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.s ], [ %i.dm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit610 ], [ %i.dl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit608 ], [ %i.dk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.n ]
  %i.dn = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cg
  br i1 %i.dn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !315
  %.not.i164 = icmp eq ptr %i.cg, %i.do
  br i1 %.not.i164, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !94
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.dp, ptr %i.h, align 8, !tbaa !476
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.w:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %i.dq = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.dq, label %.invoke, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dr = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i.i165 = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %.not.i.i.i165)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #22
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.cj
  store ptr %i.ce, ptr %i.dy, align 8, !tbaa !94
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc167
  %i.dz = ptrtoaddr ptr %i.dx to i64
  %i.ea = add i64 %i.ch, -8
  %i.eb = sub i64 %i.ea, %i.ci                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check698 = icmp ult i64 %i.eb, 24
  %i.ee = sub i64 %i.ci, %i.dz
  %diff.check700 = icmp ugt i64 %i.ee, -32
  %or.cond714.a = or i1 %min.iters.check698, %diff.check700
  br i1 %or.cond714.a, label %.lr.ph.i.i.i.i.i.i.i.preheader719, label %vector.ph701

vector.ph701:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec702 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec702, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.cf, i64 %i.ef
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph701
  %index704 = phi i64 [ 0, %vector.ph701 ], [ %index.next709, %vector.body703 ] ; 2 uses
  %i.ei = shl i64 %index704, 3                    ; 2 uses
  %next.gep705.a = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep706 = getelementptr i8, ptr %i.cf, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep706, i64 16
  %wide.load707.a = load <2 x ptr>, ptr %next.gep706, align 8, !tbaa !94
  %wide.load708 = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !94
  %i.ek = getelementptr i8, ptr %next.gep705.a, i64 16
  store <2 x ptr> %wide.load707.a, ptr %next.gep705.a, align 8, !tbaa !94
  store <2 x ptr> %wide.load708, ptr %i.ek, align 8, !tbaa !94
  %index.next709 = add nuw i64 %index704, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next709, %n.vec702
  br i1 %i.el, label %middle.block710, label %vector.body703, !llvm.loop !460

middle.block710:                                  ; preds = %vector.body703
  %cmp.n711 = icmp eq i64 %i.ed, %n.vec702
  br i1 %cmp.n711, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader719

.lr.ph.i.i.i.i.i.i.i.preheader719:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block710
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eg, %middle.block710 ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eh, %middle.block710 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader719, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader719 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader719 ] ; 2 uses
  %i.em = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !94
  store ptr %i.em, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !94
  %i.en = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.en, %i.cg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !461

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block710, %.noexc167
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.noexc167 ], [ %i.eg, %middle.block710 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.dx, ptr %7, align 8, !tbaa !314
  store ptr %i.ep, ptr %i.h, align 8, !tbaa !476
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.eq, ptr %i.i, align 8, !tbaa !315
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !noalias !479
  %i.et = trunc i64 %i.es to i32
  %i.eu = and i32 %i.et, 1023                     ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 1023
  %i.ew = select i1 %i.ev, i32 -1, i32 %i.eu
  %i.ex = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ew)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %i.ey = icmp eq i32 %i.ex, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.fa = zext i1 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !24, !noalias !479
  %i.fd = load ptr, ptr %10, align 8, !tbaa !94
  %i.fe = load i64, ptr %i.er, align 8, !noalias !480
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = and i32 %i.ff, 1023                     ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 1023
  %i.fi = select i1 %i.fh, i32 -1, i32 %i.fg
  %i.fj = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fi)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.fk = icmp eq ptr %i.fc, %i.fd
  %i.fl = zext i1 %i.fk to i64
  %i.fm = icmp eq i32 %i.fj, 2
  %i.fn = zext i1 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fl
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !24, !noalias !480 ; 2 uses
  %.not.i173 = icmp eq ptr %i.t, %.sroa.25.0.ph
  br i1 %.not.i173, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.fq, ptr %i.t, align 8, !tbaa !94
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223

bb.ab:                                            ; preds = %bb.z
  %i.fr = ptrtoint ptr %.sroa.25.0.ph to i64      ; 2 uses
  %i.fs = ptrtoint ptr %.sroa.0.0.ph to i64       ; 3 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 4 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %.invoke, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i174

.invoke:                                          ; preds = %bb.ab, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i174: ; preds = %bb.ab
  %i.fv = ashr exact i64 %i.ft, 3                 ; 3 uses
  %.sroa.speculated.i.i.i175 = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i175, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i.i.i176 = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i176)
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #22
          to label %.noexc187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc187:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i174
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft
  store ptr %i.fq, ptr %i.gc, align 8, !tbaa !94
  %.not13.i.i.i.i.i.i.i177 = icmp eq ptr %.sroa.0.0.ph, %.sroa.25.0.ph
  br i1 %.not13.i.i.i.i.i.i.i177, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185, label %.lr.ph.i.i.i.i.i.i.i178.preheader

.lr.ph.i.i.i.i.i.i.i178.preheader:                ; preds = %.noexc187
  %i.gd = ptrtoaddr ptr %i.gb to i64
  %i.ge = add i64 %i.fr, -8
  %i.gf = sub i64 %i.ge, %i.fs                    ; 2 uses
  %i.gg = lshr i64 %i.gf, 3
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check679 = icmp ult i64 %i.gf, 24
  %i.gi = sub i64 %i.fs, %i.gd
  %diff.check681 = icmp ugt i64 %i.gi, -32
  %or.cond715.a = or i1 %min.iters.check679, %diff.check681
  br i1 %or.cond715.a, label %.lr.ph.i.i.i.i.i.i.i178.preheader718, label %vector.ph682

vector.ph682:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i178.preheader
  %n.vec683 = and i64 %i.gh, 4611686018427387900  ; 3 uses
  %i.gj = shl i64 %n.vec683, 3                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gb, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %.sroa.0.0.ph, i64 %i.gj
  br label %vector.body684

vector.body684:                                   ; preds = %vector.body684, %vector.ph682
  %index685 = phi i64 [ 0, %vector.ph682 ], [ %index.next690, %vector.body684 ] ; 2 uses
  %i.gm = shl i64 %index685, 3                    ; 2 uses
  %next.gep686.a = getelementptr i8, ptr %i.gb, i64 %i.gm ; 2 uses
  %next.gep687 = getelementptr i8, ptr %.sroa.0.0.ph, i64 %i.gm ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep687, i64 16
  %wide.load688.a = load <2 x ptr>, ptr %next.gep687, align 8, !tbaa !94
  %wide.load689 = load <2 x ptr>, ptr %i.gn, align 8, !tbaa !94
  %i.go = getelementptr i8, ptr %next.gep686.a, i64 16
  store <2 x ptr> %wide.load688.a, ptr %next.gep686.a, align 8, !tbaa !94
  store <2 x ptr> %wide.load689, ptr %i.go, align 8, !tbaa !94
  %index.next690 = add nuw i64 %index685, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next690, %n.vec683
  br i1 %i.gp, label %middle.block691, label %vector.body684, !llvm.loop !466

middle.block691:                                  ; preds = %vector.body684
  %cmp.n692 = icmp eq i64 %i.gh, %n.vec683
  br i1 %cmp.n692, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185, label %.lr.ph.i.i.i.i.i.i.i178.preheader718

.lr.ph.i.i.i.i.i.i.i178.preheader718:             ; preds = %.lr.ph.i.i.i.i.i.i.i178.preheader, %middle.block691
  %.015.i.i.i.i.i.i.i179.ph = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i178.preheader ], [ %i.gk, %middle.block691 ]
  %.01214.i.i.i.i.i.i.i180.ph = phi ptr [ %.sroa.0.0.ph, %.lr.ph.i.i.i.i.i.i.i178.preheader ], [ %i.gl, %middle.block691 ]
  br label %.lr.ph.i.i.i.i.i.i.i178

.lr.ph.i.i.i.i.i.i.i178:                          ; preds = %.lr.ph.i.i.i.i.i.i.i178.preheader718, %.lr.ph.i.i.i.i.i.i.i178
  %.015.i.i.i.i.i.i.i179 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i178 ], [ %.015.i.i.i.i.i.i.i179.ph, %.lr.ph.i.i.i.i.i.i.i178.preheader718 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i180 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i.i178 ], [ %.01214.i.i.i.i.i.i.i180.ph, %.lr.ph.i.i.i.i.i.i.i178.preheader718 ] ; 2 uses
  %i.gq = load ptr, ptr %.01214.i.i.i.i.i.i.i180, align 8, !tbaa !94
  store ptr %i.gq, ptr %.015.i.i.i.i.i.i.i179, align 8, !tbaa !94
  %i.gr = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i180, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i179, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i181 = icmp eq ptr %i.gr, %.sroa.25.0.ph
  br i1 %.not.i.i.i.i.i.i.i181, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185, label %.lr.ph.i.i.i.i.i.i.i178, !llvm.loop !467

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185: ; preds = %.lr.ph.i.i.i.i.i.i.i178, %middle.block691, %.noexc187
  %.0.lcssa.i.i.i.i.i.i.i183 = phi ptr [ %i.gb, %.noexc187 ], [ %i.gk, %middle.block691 ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i178 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i183, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.ft) #21
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.k, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, %_ZNKSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = and i64 %i.gw, 1023
  %i.gy = icmp eq i64 %i.gx, 319
  br i1 %i.gy, label %bb.ac, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.thread

bb.ac:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188
  %i.gz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 319)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit: ; preds = %bb.ac
  %i.ha = icmp eq i32 %i.gz, 2
  %13 = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 67108863
  %16 = sext i1 %i.ha to i32
  %17 = add nsw i32 %15, %16                      ; 2 uses
  %18 = zext i32 %17 to i64                       ; 2 uses
  %.not450 = icmp eq i32 %17, 0
  br i1 %.not450, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223, label %.lr.ph, !llvm.loop !468

.lr.ph:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit
  br label %bb.ad, !llvm.loop !468

bb.ad:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208
  %.0436 = phi i64 [ 0, %.lr.ph ], [ %i.jb, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208 ] ; 3 uses
  %i.hb = phi ptr [ %i.t, %.lr.ph ], [ %i.ja, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208 ] ; 8 uses
  %i.hc = phi ptr [ %.sroa.25.0.ph, %.lr.ph ], [ %i.iz, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208 ] ; 3 uses
  %i.hd = phi ptr [ %.sroa.0.0.ph, %.lr.ph ], [ %i.iy, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208 ] ; 9 uses
  %i.he = load ptr, ptr %10, align 8, !tbaa !94, !noalias !481 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !481
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = and i32 %i.hh, 1023                     ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 1023
  %i.hk = select i1 %i.hj, i32 -1, i32 %i.hi
  %i.hl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hk)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.hm = xor i64 %.0436, -1
  %i.hn = add nsw i64 %i.hm, %18
  %i.ho = select i1 %6, i64 %.0436, i64 %i.hn
  %i.hp = icmp eq i32 %i.hl, 2
  %i.hq = zext i1 %i.hp to i64
  %spec.select.i.i190 = add i64 %i.ho, %i.hq
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %sext = shl i64 %spec.select.i.i190, 32
  %i.hs = ashr exact i64 %sext, 29
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !24, !noalias !481 ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not.i.i193, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.hu, ptr %i.hb, align 8, !tbaa !94
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208

bb.ag:                                            ; preds = %bb.ae
  %i.hv = ptrtoint ptr %i.hb to i64               ; 2 uses
  %i.hw = ptrtoint ptr %i.hd to i64               ; 3 uses
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775800
  br i1 %i.hy, label %bb.ah, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i194

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i194: ; preds = %bb.ag
  %i.hz = ashr exact i64 %i.hx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i.i195, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 1152921504606846975)
  %i.id = select i1 %i.ib, i64 1152921504606846975, i64 %i.ic ; 3 uses
  %.not.i.i.i.i196 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i.i196)
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #22
          to label %.noexc207 unwind label %.loopexit ; 8 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i194
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx
  store ptr %i.hu, ptr %i.ig, align 8, !tbaa !94
  %.not13.i.i.i.i.i.i.i.i197 = icmp eq ptr %i.hd, %i.hb
  br i1 %.not13.i.i.i.i.i.i.i.i197, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205, label %.lr.ph.i.i.i.i.i.i.i.i198.preheader

.lr.ph.i.i.i.i.i.i.i.i198.preheader:              ; preds = %.noexc207
  %i.ih = ptrtoaddr ptr %i.if to i64
  %i.ii = add i64 %i.hv, -8
  %i.ij = sub i64 %i.ii, %i.hw                    ; 2 uses
  %i.ik = lshr i64 %i.ij, 3
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ij, 24
  %i.im = sub i64 %i.hw, %i.ih
  %diff.check = icmp ugt i64 %i.im, -32
  %or.cond716 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond716, label %.lr.ph.i.i.i.i.i.i.i.i198.preheader717, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i198.preheader
  %n.vec = and i64 %i.il, 4611686018427387900     ; 3 uses
  %i.in = shl i64 %n.vec, 3                       ; 2 uses
  %i.io = getelementptr i8, ptr %i.if, i64 %i.in  ; 2 uses
  %i.ip = getelementptr i8, ptr %i.hd, i64 %i.in
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.if, i64 %i.iq ; 2 uses
  %next.gep673 = getelementptr i8, ptr %i.hd, i64 %i.iq ; 2 uses
  %i.ir = getelementptr i8, ptr %next.gep673, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep673, align 8, !tbaa !94
  %wide.load674 = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !94
  %i.is = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !94
  store <2 x ptr> %wide.load674, ptr %i.is, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.il, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205, label %.lr.ph.i.i.i.i.i.i.i.i198.preheader717

.lr.ph.i.i.i.i.i.i.i.i198.preheader717:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i198.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.i199.ph = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i198.preheader ], [ %i.io, %middle.block ]
  %.01214.i.i.i.i.i.i.i.i200.ph = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i198.preheader ], [ %i.ip, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i198

.lr.ph.i.i.i.i.i.i.i.i198:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i198.preheader717, %.lr.ph.i.i.i.i.i.i.i.i198
  %.015.i.i.i.i.i.i.i.i199 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i198 ], [ %.015.i.i.i.i.i.i.i.i199.ph, %.lr.ph.i.i.i.i.i.i.i.i198.preheader717 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i200 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i.i198 ], [ %.01214.i.i.i.i.i.i.i.i200.ph, %.lr.ph.i.i.i.i.i.i.i.i198.preheader717 ] ; 2 uses
  %i.iu = load ptr, ptr %.01214.i.i.i.i.i.i.i.i200, align 8, !tbaa !94
  store ptr %i.iu, ptr %.015.i.i.i.i.i.i.i.i199, align 8, !tbaa !94
  %i.iv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i200, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i199, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i201 = icmp eq ptr %i.iv, %i.hb
  br i1 %.not.i.i.i.i.i.i.i.i201, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205, label %.lr.ph.i.i.i.i.i.i.i.i198, !llvm.loop !472

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205: ; preds = %.lr.ph.i.i.i.i.i.i.i.i198, %middle.block, %.noexc207
  %.0.lcssa.i.i.i.i.i.i.i.i203 = phi ptr [ %i.if, %.noexc207 ], [ %i.io, %middle.block ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i198 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hx) #21
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205, %bb.af
  %i.iy = phi ptr [ %i.if, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205 ], [ %i.hd, %bb.af ] ; 2 uses
  %i.iz = phi ptr [ %i.ix, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205 ], [ %i.hc, %bb.af ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i203.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i203, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i205 ], [ %i.hb, %bb.af ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i203.pn, i64 8 ; 2 uses
  %i.jb = add nuw nsw i64 %.0436, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.jb, %18
  br i1 %exitcond.not, label %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.loopexit_crit_edge, label %bb.ad, !llvm.loop !473

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i194, %bb.ad
  %.lcssa461 = phi ptr [ %i.hb, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i194 ], [ %i.hc, %bb.ad ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit134, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %bb.y, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i174, %bb.ac
  %lpad.loopexit.split-lp721 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.ah
  %.sroa.0.9 = phi ptr [ %i.hd, %bb.ah ], [ %.sroa.0.0.ph, %.invoke ]
  %.sroa.25.9 = phi ptr [ %i.hb, %bb.ah ], [ %.sroa.25.0.ph, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.thread: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit188
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.critedge

._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.loopexit_crit_edge: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit208
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223, !llvm.loop !468

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223: ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.loopexit_crit_edge, %bb.aa, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit ], [ %.sroa.0.0.ph, %bb.aa ], [ %i.gb, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185 ], [ %i.iy, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.loopexit_crit_edge ]
  %.sroa.14.1 = phi ptr [ %i.t, %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit ], [ %.sroa.14.0, %bb.aa ], [ %i.gt, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185 ], [ %i.ja, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.loopexit_crit_edge ]
  %.sroa.25.2 = phi ptr [ %.sroa.25.0.ph, %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit ], [ %.sroa.25.0.ph, %bb.aa ], [ %i.gu, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i185 ], [ %i.iz, %._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.loopexit_crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.outer

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit, %bb.f
  %.sroa.0.3 = phi ptr [ %.sroa.0.0.ph, %bb.f ], [ %i.hd, %.loopexit ], [ %.sroa.0.9, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0.0.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.25.3 = phi ptr [ %.sroa.25.0.ph, %bb.f ], [ %.lcssa461, %.loopexit ], [ %.sroa.25.9, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.25.0.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %.pn69.pn = phi { ptr, i32 } [ %i.aw, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp721, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.as

.critedge.thread:                                 ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.jc = load ptr, ptr %i.h, align 8, !tbaa !476
  %i.jd = load ptr, ptr %7, align 8, !tbaa !314
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !476
  %i.jj = load ptr, ptr %4, align 8, !tbaa !314
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = icmp ult i64 %i.jg, %i.jm
  br i1 %i.jn, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit238, label %.critedge

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit238: ; preds = %.critedge.thread
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jp = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit238
  invoke void @_ZN4cvc58internal11NodeManager5mkAndILb0EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.am, %bb.ai, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit238
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.critedge:                                        ; preds = %bb.a, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit223.thread, %.critedge.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.jr = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !26, !noalias !482 ; 5 uses
  store ptr %i.jr, ptr %0, align 8, !tbaa !26, !alias.scope !482
  %i.js = load i64, ptr %i.jr, align 8, !noalias !482 ; 3 uses
  %i.jt = lshr i64 %i.js, 40
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %i.jv = and i32 %i.ju, 1048575                  ; 3 uses
  %i.jw = icmp samesign ult i32 %i.jv, 1048574
  br i1 %i.jw, label %bb.ak, label %bb.al, !prof !28

bb.ak:                                            ; preds = %.critedge
  %i.jx = add nuw nsw i32 %i.jv, 1
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = shl nuw nsw i64 %i.jy, 40
end_hunk_1
