Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_inference_manager?download=true
inline.NumInlined: 1808
inline.NumDeleted: 802
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal6theory22TheoryInferenceManager19processInternalFactENS0_12NodeTemplateILb0EEEbNS1_11InferenceIdENS_9ProofRuleERKSt6vectorINS3_ILb1EEESaIS8_EESC_PNS0_14ProofGeneratorE:bb.a
  %i.ay = phi ptr [ %i.ar, %bb.k ], [ %.pre380, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc168_crit_edge ]
  %i.az = phi ptr [ %i.as, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc168_crit_edge ]
  %i.ba = phi ptr [ null, %bb.k ], [ %i.ax, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc168_crit_edge ] ; 4 uses
  store ptr %i.ba, ptr %13, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !145
  %i.be = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.az, ptr %i.ay, ptr noundef %i.ba)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit unwind label %bb.m ; 3 uses

bb.m:                                             ; preds = %.noexc168
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %.body169, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !145
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #27
  br label %.body169

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit: ; preds = %.noexc168
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !144
  %i.bl = load ptr, ptr %13, align 8, !tbaa !143  ; 3 uses
  %.not376 = icmp eq ptr %i.be, %i.bl
  br i1 %.not376, label %._crit_edge, label %.lr.ph374

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit
  %.lcssa362 = phi ptr [ %i.be, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ], [ %i.gn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214 ] ; 2 uses
  %.lcssa = phi ptr [ %i.bl, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ], [ %i.go, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa362
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !104 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = and i64 %i.bn, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bo, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.o, !prof !105

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = add i64 %i.bn, 1152920405095219200
  %i.bq = and i64 %i.bp, 1152920405095219200      ; 2 uses
  %i.br = and i64 %i.bn, -1152920405095219201
  %i.bs = or disjoint i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.bm, align 8
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %bb.p, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !105

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #30
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.bw, %.lcssa362
  br i1 %.not.i.i.i171, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.by = load ptr, ptr %i.bd, align 8, !tbaa !145
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ba

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.lr.ph374:                                        ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214
  %i.cd = phi ptr [ %i.go, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214 ], [ %i.bl, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ]
  %.0373 = phi i64 [ %i.gm, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214 ], [ 0, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.0373
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104 ; 17 uses
  store ptr %i.cf, ptr %14, align 8, !tbaa !104
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = lshr i64 %i.cg, 40
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 1048575                  ; 3 uses
  %i.ck = icmp samesign ult i32 %i.cj, 1048574
  br i1 %i.ck, label %bb.t, label %bb.u, !prof !118

bb.t:                                             ; preds = %.lr.ph374
  %i.cl = add nuw nsw i32 %i.cj, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 40
  %i.co = and i64 %i.cg, -1152920405095219201
  %i.cp = or i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.cf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.u:                                             ; preds = %.lr.ph374
  %i.cq = icmp eq i32 %i.cj, 1048574
  br i1 %i.cq, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !105

bb.v:                                             ; preds = %bb.u
  %i.cr = or i64 %i.cg, 1152920405095219200
  store i64 %i.cr, ptr %i.cf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.ae

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.u, %bb.t, %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = and i64 %i.ct, 1023
  %.not351 = icmp eq i64 %i.cu, 20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  br i1 %.not351, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.cf, ptr %15, align 8, !tbaa !104
  %i.cv = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.cw = lshr i64 %i.cv, 40
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 1048575                  ; 3 uses
  %i.cz = icmp samesign ult i32 %i.cy, 1048574
  br i1 %i.cz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175.sink.split, label %bb.x, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.da = icmp eq i32 %i.cy, 1048574
  br i1 %i.da, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175, !prof !105

bb.y:                                             ; preds = %bb.x
  %i.db = or i64 %i.cv, 1152920405095219200
  store i64 %i.db, ptr %i.cf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175 unwind label %bb.af

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.dc = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20)
          to label %.noexc176 unwind label %bb.af

.noexc176:                                        ; preds = %bb.z
  %i.dd = icmp eq i32 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !157, !noalias !258 ; 7 uses
  store ptr %i.dh, ptr %15, align 8, !tbaa !104, !alias.scope !258
  %i.di = load i64, ptr %i.dh, align 8, !noalias !258 ; 3 uses
  %i.dj = lshr i64 %i.di, 40
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 1048575                  ; 3 uses
  %i.dm = icmp samesign ult i32 %i.dl, 1048574
  br i1 %i.dm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175.sink.split, label %bb.aa, !prof !118

bb.aa:                                            ; preds = %.noexc176
  %i.dn = icmp eq i32 %i.dl, 1048574
  br i1 %i.dn, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175, !prof !105

bb.ab:                                            ; preds = %bb.aa
  %i.do = or i64 %i.di, 1152920405095219200
  store i64 %i.do, ptr %i.dh, align 8, !noalias !258
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175 unwind label %bb.af

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175.sink.split: ; preds = %.noexc176, %bb.w
  %.sink433 = phi i32 [ %i.cy, %bb.w ], [ %i.dl, %.noexc176 ]
  %.sink = phi i64 [ %i.cv, %bb.w ], [ %i.di, %.noexc176 ]
  %.sink428 = phi ptr [ %i.cf, %bb.w ], [ %i.dh, %.noexc176 ] ; 2 uses
  %i.dp = add nuw nsw i32 %.sink433, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 40
  %i.ds = and i64 %.sink, -1152920405095219201
  %i.dt = or i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %.sink428, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175.sink.split, %bb.aa, %bb.ab, %bb.x, %bb.y
  %i.du = phi ptr [ %i.dh, %bb.aa ], [ %i.cf, %bb.y ], [ %i.dh, %bb.ab ], [ %i.cf, %bb.x ], [ %.sink428, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175.sink.split ] ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, 1023
  %i.dy = icmp eq i64 %i.dx, 21
  br i1 %i.dy, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175
  %i.dz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 21)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.ea = icmp eq i32 %i.dz, 2
  %spec.select.v.i.i = select i1 %i.ea, i64 32, i64 24 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 3
  %32 = and i32 %31, 536870904
  %narrow = add nuw nsw i32 %32, 24
  %33 = zext nneg i32 %narrow to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %33
  %.not352371 = icmp samesign eq i64 %spec.select.v.i.i, %33
  br i1 %.not352371, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ad
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 %spec.select.v.i.i
  br label %.lr.ph

bb.ae:                                            ; preds = %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.af:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210
  %.sroa.0335.0372 = phi ptr [ %i.fs, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210 ], [ %spec.select.i.i, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.ee = load ptr, ptr %.sroa.0335.0372, align 8, !tbaa !157, !noalias !259 ; 5 uses
  store ptr %i.ee, ptr %16, align 8, !tbaa !104, !alias.scope !259
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !259 ; 3 uses
  %i.eg = lshr i64 %i.ef, 40
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 1048575                  ; 3 uses
  %i.ej = icmp samesign ult i32 %i.ei, 1048574
  br i1 %i.ej, label %bb.ag, label %bb.ah, !prof !118

bb.ag:                                            ; preds = %.lr.ph
  %i.ek = add nuw nsw i32 %i.ei, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 40
  %i.en = and i64 %i.ef, -1152920405095219201
  %i.eo = or i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.ee, align 8, !noalias !259
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.ep = icmp eq i32 %i.ei, 1048574
  br i1 %i.ep, label %bb.ai, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !105

bb.ai:                                            ; preds = %bb.ah
  %i.eq = or i64 %i.ef, 1152920405095219200
  store i64 %i.eq, ptr %i.ee, align 8, !noalias !259
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.ah, %bb.ag, %bb.ai
  %i.er = load ptr, ptr %i.bb, align 8, !tbaa !144 ; 3 uses
  %i.es = load ptr, ptr %i.bd, align 8, !tbaa !145
  %.not.i206 = icmp eq ptr %i.er, %i.es
  br i1 %.not.i206, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.et = load ptr, ptr %16, align 8, !tbaa !104  ; 5 uses
  store ptr %i.et, ptr %i.er, align 8, !tbaa !104
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %i.ev = lshr i64 %i.eu, 40
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 1048575                  ; 3 uses
  %i.ey = icmp samesign ult i32 %i.ex, 1048574
  br i1 %i.ey, label %bb.ak, label %bb.al, !prof !118

bb.ak:                                            ; preds = %bb.aj
  %i.ez = add nuw nsw i32 %i.ex, 1
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 40
  %i.fc = and i64 %i.eu, -1152920405095219201
  %i.fd = or i64 %i.fb, %i.fc
  store i64 %i.fd, ptr %i.et, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fe = icmp eq i32 %i.ex, 1048574
  br i1 %i.fe, label %bb.am, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !105

bb.am:                                            ; preds = %bb.al
  %i.ff = or i64 %i.eu, 1152920405095219200
  store i64 %i.ff, ptr %i.et, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.ar

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.fg = load ptr, ptr %i.bb, align 8, !tbaa !144
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fh, ptr %i.bb, align 8, !tbaa !144
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.an:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.er, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ar

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.an
  %i.fi = load ptr, ptr %16, align 8, !tbaa !104  ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fk = and i64 %i.fj, 1152920405095219200
  %.not.i.i209 = icmp eq i64 %i.fk, 1152920405095219200
  br i1 %.not.i.i209, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210, label %bb.ao, !prof !105

bb.ao:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.fl = add i64 %i.fj, 1152920405095219200
  %i.fm = and i64 %i.fl, 1152920405095219200      ; 2 uses
  %i.fn = and i64 %i.fj, -1152920405095219201
  %i.fo = or disjoint i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.fi, align 8
  %i.fp = icmp eq i64 %i.fm, 0
  br i1 %i.fp, label %bb.ap, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210, !prof !105

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #30
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0335.0372, i64 8 ; 2 uses
  %.not352 = icmp eq ptr %i.fs, %i.eb
  br i1 %.not352, label %.loopexit, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.ac
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.an, %bb.am
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit210, %bb.ad, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit175
  %i.fu = load i64, ptr %i.du, align 8            ; 3 uses
  %i.fv = and i64 %i.fu, 1152920405095219200
  %.not.i.i211 = icmp eq i64 %i.fv, 1152920405095219200
  br i1 %.not.i.i211, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, label %bb.as, !prof !105

bb.as:                                            ; preds = %.loopexit
  %i.fw = add i64 %i.fu, 1152920405095219200
  %i.fx = and i64 %i.fw, 1152920405095219200      ; 2 uses
  %i.fy = and i64 %i.fu, -1152920405095219201
  %i.fz = or disjoint i64 %i.fx, %i.fy
  store i64 %i.fz, ptr %i.du, align 8
  %i.ga = icmp eq i64 %i.fx, 0
  br i1 %i.ga, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, !prof !105

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #30
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212: ; preds = %.loopexit, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.gd = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ge = and i64 %i.gd, 1152920405095219200
  %.not.i.i213 = icmp eq i64 %i.ge, 1152920405095219200
  br i1 %.not.i.i213, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214, label %bb.av, !prof !105

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212
  %i.gf = add i64 %i.gd, 1152920405095219200
  %i.gg = and i64 %i.gf, 1152920405095219200      ; 2 uses
  %i.gh = and i64 %i.gd, -1152920405095219201
  %i.gi = or disjoint i64 %i.gg, %i.gh
  store i64 %i.gi, ptr %i.cf, align 8
  %i.gj = icmp eq i64 %i.gg, 0
  br i1 %i.gj, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214, !prof !105

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #30
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.gm = add nuw i64 %.0373, 1                   ; 2 uses
  %i.gn = load ptr, ptr %i.bb, align 8, !tbaa !144 ; 2 uses
  %i.go = load ptr, ptr %13, align 8, !tbaa !143  ; 3 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 3
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory22TheoryInferenceManager18assertInternalFactENS0_12NodeTemplateILb0EEEbNS1_11InferenceIdERKSt6vectorINS3_ILb1EEESaIS7_EEPNS0_14ProofGeneratorE:bb.a
  %i.b = invoke noundef zeroext i1 @_ZN4cvc58internal6theory22TheoryInferenceManager19processInternalFactENS0_12NodeTemplateILb0EEEbNS1_11InferenceIdENS_9ProofRuleERKSt6vectorINS3_ILb1EEESaIS8_EESC_PNS0_14ProofGeneratorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 %6, i1 noundef zeroext %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %7, align 8, !tbaa !143    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i, align 8, !tbaa !104 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = and i64 %i.g, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.c, !prof !105

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = add i64 %i.g, 1152920405095219200
  %i.j = and i64 %i.i, 1152920405095219200        ; 2 uses
  %i.k = and i64 %i.g, -1152920405095219201
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.d, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !105

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #30
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !145
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i1 %i.b

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal11NodeManager5mkAndILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.560", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !135    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1, !tbaa !97
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 8
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !104  ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !104
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !105

bb.g:                                             ; preds = %bb.f
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !265
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef 21), !noalias !265
  %i.w = load ptr, ptr %2, align 8, !tbaa !135, !noalias !265 ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !135, !noalias !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !265
  %.not6.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.aa, %.noexc.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !104, !noalias !265
  store ptr %i.y, ptr %3, align 8, !tbaa !113, !noalias !265
  %i.z = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %3)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !265 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !264

.loopexit4.i:                                     ; preds = %.noexc.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !265
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.loopexit4.i
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !265
  resume { ptr, i32 } %lpad.loopexit.split-lp11

_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit: ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !265
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.g, %bb.f, %bb.e, %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN4cvc58internal13Configuration16isAssertionBuildEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory2eq14EqualityEngine14assertEqualityENS0_12NodeTemplateILb0EEEbS5_j(ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef align 8, i1 noundef zeroext, ptr noundef align 8, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory2eq14EqualityEngine15assertPredicateENS0_12NodeTemplateILb0EEEbS5_j(ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef align 8, i1 noundef zeroext, ptr noundef align 8, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory2eq13ProofEqEngine10assertFactENS0_12NodeTemplateILb1EEES5_PNS0_14ProofGeneratorE(ptr noundef nonnull align 8 dereferenceable(976), ptr noundef align 8, ptr noundef align 8, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory2eq13ProofEqEngine10assertFactENS0_12NodeTemplateILb1EEENS_9ProofRuleES5_RKSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(976), ptr noundef align 8, i32 noundef, ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory22TheoryInferenceManager7explainENS0_12NodeTemplateILb0EEERSt6vectorIS4_SaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.560", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.560", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !113    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 21
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 21)
  %i.g = icmp eq i32 %i.f, 2
  %spec.select.v.i.i = select i1 %i.g, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %6 = load i32, ptr %i.j, align 4
  %7 = and i32 %6, 67108863
  %8 = zext nneg i32 %7 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %8 ; 2 uses
  %.not15 = icmp eq ptr %spec.select.i.i, %i.k
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.sroa.012.016 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = load ptr, ptr %.sroa.012.016, align 8, !tbaa !157, !noalias !268 ; 9 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !104
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.d, label %bb.e, !prof !118

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.e:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !105

bb.f:                                             ; preds = %bb.e
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !108
  store ptr %i.m, ptr %4, align 8, !tbaa !113
  invoke void @_ZNK4cvc58internal6theory2eq14EqualityEngine10explainLitENS0_12NodeTemplateILb0EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1784) %i.z, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.aa = load i64, ptr %i.m, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ab, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.h, !prof !105

bb.h:                                             ; preds = %bb.g
  %i.ac = add i64 %i.aa, 1152920405095219200
  %i.ad = and i64 %i.ac, 1152920405095219200      ; 2 uses
  %i.ae = and i64 %i.aa, -1152920405095219201
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.m, align 8
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !105

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #30
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.k
  br i1 %.not, label %.loopexit, label %bb.c

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.ak

bb.l:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !108
  store ptr %i.a, ptr %5, align 8, !tbaa !113
  call void @_ZNK4cvc58internal6theory2eq14EqualityEngine10explainLitENS0_12NodeTemplateILb0EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1784) %i.am, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.b, %bb.l
  ret void
}

declare void @_ZNK4cvc58internal6theory2eq14EqualityEngine10explainLitENS0_12NodeTemplateILb0EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory22TheoryInferenceManager9mkExplainENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.305", align 8   ; 10 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.560", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !113
  store ptr %i.a, ptr %4, align 8, !tbaa !113
  invoke void @_ZN4cvc58internal6theory22TheoryInferenceManager7explainENS0_12NodeTemplateILb0EEERSt6vectorIS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal11NodeManager5mkAndILb0EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %3, align 8, !tbaa !141    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !141    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit5

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal11NodeManager5mkAndILb0EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.560", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !138    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1, !tbaa !97
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 8
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !113  ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !104
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
end_hunk_1
