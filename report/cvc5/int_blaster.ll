Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/int_blaster?download=true
inline.NumInlined: 3281
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !475

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !474
  br label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #26
  br label %_ZNSt12_Vector_baseIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal10IntBlaster20childrenTypesChangedENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %3 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %spec.select.v.i.i = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = and i64 %i.n, 67108863
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.not42 = icmp eq ptr %spec.select.i.i, %i.p
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %.lr.ph
  %.01744 = phi i1 [ false, %.lr.ph ], [ %.320, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 6 uses
  %.sroa.031.043 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.cx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.v = load ptr, ptr %.sroa.031.043, align 8, !tbaa !39, !noalias !476 ; 5 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !41, !alias.scope !476
  %i.w = load i64, ptr %i.v, align 8, !noalias !476 ; 3 uses
  %i.x = lshr i64 %i.w, 40
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 1048575                    ; 3 uses
  %i.aa = icmp samesign ult i32 %i.z, 1048574
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.ab = add nuw nsw i32 %i.z, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 40
  %i.ae = and i64 %i.w, -1152920405095219201
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.v, align 8, !noalias !476
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp eq i32 %i.z, 1048574
  br i1 %i.ag, label %bb.e, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !63

bb.e:                                             ; preds = %bb.d
  %i.ah = or i64 %i.w, 1152920405095219200
  store i64 %i.ah, ptr %i.v, align 8, !noalias !476
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !476
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !148
  %.not.not.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.aj = load ptr, ptr %2, align 8               ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.u, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !89 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, label %bb.g, !llvm.loop !149

bb.i:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.an = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.w     ; 3 uses

.noexc:                                           ; preds = %bb.i
  %i.ao = load i64, ptr %i.t, align 8, !tbaa !20  ; 2 uses
  %i.ap = urem i64 %i.an, %i.ao                   ; 2 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  %.pre52 = load ptr, ptr %2, align 8             ; 7 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !89 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !92
  %i.ax = icmp eq i64 %i.an, %i.aw
  %i.ay = load ptr, ptr %i.au, align 8
  %i.az = icmp eq ptr %.pre52, %i.ay
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bc = icmp eq i64 %i.an, %i.bi
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = icmp eq ptr %.pre52, %i.bd
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %i.bf, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !150

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %.020.i.i.i.i.i = phi ptr [ %i.bg, %bb.k ], [ %i.at, %bb.j ]
  %i.bg = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !89 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !92 ; 2 uses
  %i.bj = urem i64 %i.bi, %i.ao
  %.not19.i.i.i.i.i = icmp eq i64 %i.bj, %i.ap
  br i1 %.not19.i.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !150

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.l
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread, !llvm.loop !150

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit: ; preds = %bb.k, %bb.h, %bb.j
  %i.bk = phi ptr [ %i.aj, %bb.h ], [ %.pre52, %bb.j ], [ %.pre52, %bb.k ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.h ], [ %i.at, %bb.j ], [ %i.bg, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !151
  %.not35 = icmp eq ptr %i.bm, null
  br i1 %.not35, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bn = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEixERKS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %4, align 8, !tbaa !122   ; 4 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !122
  %.not36.a = icmp ne ptr %i.bp, %i.bq            ; 2 uses
  %..017 = select i1 %.not36.a, i1 true, i1 %.01744
  %i.br = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.bs = and i64 %i.br, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bs, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.q, !prof !63

bb.q:                                             ; preds = %bb.p
  %i.bt = add i64 %i.br, 1152920405095219200
  %i.bu = and i64 %i.bt, 1152920405095219200      ; 2 uses
  %i.bv = and i64 %i.br, -1152920405095219201
  %i.bw = or disjoint i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.bp, align 8
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %bb.r, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !63

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #28
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ca = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.cc = and i64 %i.cb, 1152920405095219200
  %.not.i.i26 = icmp eq i64 %i.cc, 1152920405095219200
  br i1 %.not.i.i26, label %_ZN4cvc58internal8TypeNodeD2Ev.exit27, label %bb.t, !prof !63

bb.t:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.cd = add i64 %i.cb, 1152920405095219200
  %i.ce = and i64 %i.cd, 1152920405095219200      ; 2 uses
  %i.cf = and i64 %i.cb, -1152920405095219201
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.ca, align 8
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %bb.u, label %_ZN4cvc58internal8TypeNodeD2Ev.exit27, !prof !63

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit27 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #28
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit27:            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre = load ptr, ptr %2, align 8, !tbaa !41
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread

bb.w:                                             ; preds = %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.o, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn22.pn = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.ad

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %.noexc, %..loopexit_crit_edge21.i.i.i.i.i, %_ZN4cvc58internal8TypeNodeD2Ev.exit27, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit
  %i.cn = phi ptr [ %.pre, %_ZN4cvc58internal8TypeNodeD2Ev.exit27 ], [ %i.bk, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit ], [ %.pre52, %..loopexit_crit_edge21.i.i.i.i.i ], [ %i.aj, %bb.g ], [ %.pre52, %.noexc ], [ %.pre52, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.320 = phi i1 [ %..017, %_ZN4cvc58internal8TypeNodeD2Ev.exit27 ], [ %.01744, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit ], [ %.01744, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.01744, %bb.g ], [ %.01744, %.noexc ], [ %.01744, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.116 = phi i1 [ %.not36.a, %_ZN4cvc58internal8TypeNodeD2Ev.exit27 ], [ false, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit ], [ false, %..loopexit_crit_edge21.i.i.i.i.i ], [ false, %bb.g ], [ false, %.noexc ], [ false, %.lr.ph.i.i.i.i.i ]
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = and i64 %i.co, 1152920405095219200
  %.not.i.i28 = icmp eq i64 %i.cp, 1152920405095219200
  br i1 %.not.i.i28, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.aa, !prof !63

bb.aa:                                            ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread
  %i.cq = add i64 %i.co, 1152920405095219200
  %i.cr = and i64 %i.cq, 1152920405095219200      ; 2 uses
  %i.cs = and i64 %i.co, -1152920405095219201
  %i.ct = or disjoint i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.cn, align 8
  %i.cu = icmp eq i64 %i.cr, 0
  br i1 %i.cu, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !63

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE4findERKS4_.exit.thread, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.p
  %or.cond = select i1 %.116, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.ad:                                            ; preds = %bb.w, %bb.z
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.z ], [ %i.ck, %bb.w ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn22.pn.pn

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ %.320, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ]
  ret i1 %.4
}

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZNK4cvc58internal6EnvObj9logicInfoEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal9LogicInfo13isHigherOrderEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal14LogicExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal9ExceptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !71
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #29
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !479
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3.i unwind label %bb.f  ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !77
  %i.h = load i64, ptr %i.a, align 8, !tbaa !479
  store i64 %i.h, ptr %i.c, align 8, !tbaa !76
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc3.i, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc3.i ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4cvc58internal9ExceptionC2EPKc.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !76
  store i8 %i.j, ptr %i.i, align 1, !tbaa !76
  br label %_ZN4cvc58internal9ExceptionC2EPKc.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %_ZN4cvc58internal9ExceptionC2EPKc.exit

bb.f:                                             ; preds = %.noexc.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #27
  resume { ptr, i32 } %i.k

_ZN4cvc58internal9ExceptionC2EPKc.exit:           ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !479  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !74
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal14LogicExceptionE, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal9ExceptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal10IntBlaster15createBVAddNodeENS0_12NodeTemplateILb1EEES3_j(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(484) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.133", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.133", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %9 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.133", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.133", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.a = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !480
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109, !noalias !480
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef %i.d, i32 noundef 40)
  store ptr %i.a, ptr %10, align 8, !tbaa !111, !noalias !480
  %i.e = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull align 8 %10)
          to label %bb.a unwind label %bb.d, !noalias !480

bb.a:                                             ; preds = %.noexc
  store ptr %i.b, ptr %11, align 8, !tbaa !111, !noalias !480
  %i.f = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 %11)
          to label %bb.b unwind label %bb.e, !noalias !480 ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %12, ptr noundef nonnull align 8 dereferenceable(124) %9)
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pn5.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !480
  br label %.body
end_hunk_0
