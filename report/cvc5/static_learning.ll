Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/static_learning?download=true
inline.NumInlined: 702
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes14StaticLearning13applyInternalEPNS1_17AssertionPipelineE:bb.a
  %i.bp = and i64 %i.bo, 1152920405095219200      ; 2 uses
  %i.bq = and i64 %i.bm, -1152920405095219201
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bl, align 8
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %bb.n, label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bv, %i.bi
  br i1 %.not.i.i.i32, label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge66
  %i.bw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bj, %._crit_edge66 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #21
  br label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit: ; preds = %bb.i, %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i.i.i33 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.ce) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34: ; preds = %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit

.lr.ph65:                                         ; preds = %._crit_edge, %_ZN4cvc58internal9TrustNodeD2Ev.exit
  %.sroa.041.063 = phi ptr [ %i.dg, %_ZN4cvc58internal9TrustNodeD2Ev.exit ], [ %.pre74, %._crit_edge ] ; 4 uses
  %i.cf = load i32, ptr %.sroa.041.063, align 8, !tbaa !107
  store i32 %i.cf, ptr %6, align 8, !tbaa !107
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.041.063, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !41 ; 5 uses
  store ptr %i.ch, ptr %i.n, align 8, !tbaa !41
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = lshr i64 %i.ci, 40
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 1048575                  ; 3 uses
  %i.cm = icmp samesign ult i32 %i.cl, 1048574
  br i1 %i.cm, label %bb.r, label %bb.s, !prof !59

bb.r:                                             ; preds = %.lr.ph65
  %i.cn = add nuw nsw i32 %i.cl, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 40
  %i.cq = and i64 %i.ci, -1152920405095219201
  %i.cr = or i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.ch, align 8
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph65
  %i.cs = icmp eq i32 %i.cl, 1048574
  br i1 %i.cs, label %bb.t, label %bb.u, !prof !56

bb.t:                                             ; preds = %bb.s
  %i.ct = or i64 %i.ci, 1152920405095219200
  store i64 %i.ct, ptr %i.ch, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.041.063, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108
  store ptr %i.cv, ptr %i.o, align 8, !tbaa !108
  invoke void @_ZN4cvc58internal13preprocessing17AssertionPipeline15pushBackTrustedENS0_9TrustNodeENS0_7TrustIdEb(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %6, i32 noundef 22, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !41  ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.cy = and i64 %i.cx, 1152920405095219200
  %.not.i.i.i36 = icmp eq i64 %i.cy, 1152920405095219200
  br i1 %.not.i.i.i36, label %_ZN4cvc58internal9TrustNodeD2Ev.exit, label %bb.w, !prof !56

bb.w:                                             ; preds = %bb.v
  %i.cz = add i64 %i.cx, 1152920405095219200
  %i.da = and i64 %i.cz, 1152920405095219200      ; 2 uses
  %i.db = and i64 %i.cx, -1152920405095219201
  %i.dc = or disjoint i64 %i.da, %i.db
  store i64 %i.dc, ptr %i.cw, align 8
  %i.dd = icmp eq i64 %i.da, 0
  br i1 %i.dd, label %bb.x, label %_ZN4cvc58internal9TrustNodeD2Ev.exit, !prof !56

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_ZN4cvc58internal9TrustNodeD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #23
  unreachable

_ZN4cvc58internal9TrustNodeD2Ev.exit:             ; preds = %bb.v, %bb.w, %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.041.063, i64 24 ; 2 uses
  %.not56 = icmp eq ptr %i.dg, %.pre75
  br i1 %.not56, label %._crit_edge66.loopexit, label %.lr.ph65

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.lr.ph, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  br label %.loopexit.split-lp

_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit: ; preds = %bb.g, %bb.e, %bb.f, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34
  %i.di = add nuw i64 %.02267, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.j
  br i1 %exitcond.not, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.b, !llvm.loop !92

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %.pn26.pn = phi { ptr, i32 } [ %i.dh, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %bb.j
  %i.dj = phi ptr [ %i.bb, %.loopexit.split-lp ], [ %.pre76, %bb.j ] ; 3 uses
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %.loopexit.split-lp ], [ %i.bd, %bb.j ]
  %.not.i.i.i37 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit38, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit38

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit38: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn26.pn.pn
}

declare void @_ZN4cvc58internal13preprocessing24PreprocessingPassContext13spendResourceENS0_8ResourceE(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal13preprocessing6passes14StaticLearning10flattenAndENS0_12NodeTemplateILb0EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = load ptr, ptr %1, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !58
  %i.g = ptrtoint ptr %i.b to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %bb.a
  %i.m = phi ptr [ %i.et, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ], [ %i.e, %bb.a ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 16 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.o, ptr %4, align 8, !tbaa !41
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = lshr i64 %i.p, 40
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 1048575                    ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, 1048574
  br i1 %i.t, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw nsw i32 %i.s, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = and i64 %i.p, -1152920405095219201
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.o, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %i.s, 1048574
  br i1 %i.z, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.aa = or i64 %i.p, 1152920405095219200
  store i64 %i.aa, ptr %i.o, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.p

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !34  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37
  %.not.not.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.af = load ptr, ptr %4, align 8               ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %.sroa.06.0.i.i.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !38 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.g, !llvm.loop !0

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 80 ; 2 uses
  %i.ak = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc18 unwind label %bb.q   ; 3 uses

.noexc18:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  %i.an = urem i64 %i.ak, %i.am                   ; 2 uses
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  %.pre = load ptr, ptr %4, align 8               ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc18
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !45
  %i.av = icmp eq i64 %i.ak, %i.au
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = icmp eq ptr %.pre, %i.aw
  %i.ay = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %i.ay, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ba = icmp eq i64 %i.ak, %i.bg
  %i.bb = load ptr, ptr %i.az, align 8
  %i.bc = icmp eq ptr %.pre, %i.bb
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %i.bd, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %bb.k
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.be, %bb.k ], [ %i.ar, %bb.j ]
  %i.be = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !38 ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !45 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.am
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.an
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.l
  br label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, !llvm.loop !1

_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i, %bb.g, %bb.h, %.noexc18, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %.pre, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ %i.af, %bb.g ], [ %.pre, %bb.j ], [ %.pre, %.noexc18 ], [ %i.af, %bb.h ], [ %.pre, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre, %bb.k ] ; 3 uses
  %.sroa.06.1.i.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ null, %bb.g ], [ %i.ar, %bb.j ], [ null, %.noexc18 ], [ %.sroa.06.0.i.i.i.i.i, %bb.h ], [ %i.be, %bb.k ], [ null, %.lr.ph.i.i.i.i.i.i.i ]
  %.not = icmp eq ptr %.sroa.06.1.i.i.i.i.i, null
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bk = and i64 %i.bj, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bk, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.m, !prof !56

bb.m:                                             ; preds = %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit
  %i.bl = add i64 %i.bj, 1152920405095219200
  %i.bm = and i64 %i.bl, 1152920405095219200      ; 2 uses
  %i.bn = and i64 %i.bj, -1152920405095219201
  %i.bo = or disjoint i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.bi, align 8
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.not, label %bb.s, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.bs, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.o, ptr %5, align 8, !tbaa !41
  %i.bu = load i64, ptr %i.o, align 8             ; 3 uses
  %i.bv = lshr i64 %i.bu, 40
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 1048575                  ; 3 uses
  %i.by = icmp samesign ult i32 %i.bx, 1048574
  br i1 %i.by, label %bb.t, label %bb.u, !prof !59

bb.t:                                             ; preds = %bb.s
  %i.bz = add nuw nsw i32 %i.bx, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 40
  %i.cc = and i64 %i.bu, -1152920405095219201
  %i.cd = or i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.o, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit20

bb.u:                                             ; preds = %bb.s
  %i.ce = icmp eq i32 %i.bx, 1048574
  br i1 %i.ce, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit20, !prof !56

bb.v:                                             ; preds = %bb.u
  %i.cf = or i64 %i.bu, 1152920405095219200
  store i64 %i.cf, ptr %i.o, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit20 unwind label %bb.ad

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit20: ; preds = %bb.u, %bb.t, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 1, ptr %i.a, align 1, !tbaa !62
  %i.cg = invoke noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.w unwind label %bb.ae      ; 0 uses

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ch = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i22 = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i22, label %bb.aa, label %bb.x, !prof !56

bb.x:                                             ; preds = %bb.w
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.ch, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.y, label %bb.aa, !prof !56

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #23
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = and i64 %i.cs, 1023
  %i.cu = icmp eq i64 %i.ct, 21
  br i1 %i.cu, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.cw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 21)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.cx = icmp eq i32 %i.cw, 2
  %spec.select.v.i.i = select i1 %i.cx, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select.v.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 67108863
  %9 = zext nneg i32 %8 to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %9
  %i.da = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.db = ptrtoint ptr %i.cv to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.de, ptr nonnull %spec.select.i.i, ptr nonnull %i.cz)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit20
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn13 = phi { ptr, i32 } [ %i.dg, %bb.ae ], [ %i.df, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.ac, %bb.ab, %bb.aj
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.aa
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !60  ; 6 uses
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.o, ptr %i.dh, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dj, ptr %i.k, align 8, !tbaa !60
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %2, align 8, !tbaa !52    ; 7 uses
  %i.dl = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64               ; 4 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 3 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.aj, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #22
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  store ptr %i.o, ptr %i.dw, align 8, !tbaa !47
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.dh
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i26.preheader:                 ; preds = %.noexc29
  %i.dx = ptrtoaddr ptr %i.dv to i64
  %i.dy = add i64 %i.dl, -8
  %i.dz = sub i64 %i.dy, %i.dm                    ; 2 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 24
  %i.ec = sub i64 %i.dm, %i.dx
  %diff.check = icmp ugt i64 %i.ec, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i26.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.eb, 4611686018427387900     ; 3 uses
  %i.ed = shl i64 %n.vec, 3                       ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dv, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dk, i64 %i.ed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.dk, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep70, align 8, !tbaa !47
  %wide.load71 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !47
  %i.ei = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !47
  store <2 x ptr> %wide.load71, ptr %i.ei, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i26.preheader73

.lr.ph.i.i.i.i.i.i.i26.preheader73:               ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i26.preheader ], [ %i.ee, %middle.block ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i26.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader73, %.lr.ph.i.i.i.i.i.i.i26
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i26.preheader73 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i26.preheader73 ] ; 2 uses
  %i.ek = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !47
  store ptr %i.ek, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !47
  %i.el = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i27 = icmp eq ptr %i.el, %i.dh
  br i1 %.not.i.i.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !110

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.noexc29 ], [ %i.ee, %middle.block ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i26 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.eq) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.dv, ptr %2, align 8, !tbaa !52
  store ptr %i.en, ptr %i.k, align 8, !tbaa !60
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.er, ptr %i.l, align 8, !tbaa !58
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ah, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ac
  %i.es = load ptr, ptr %3, align 8, !tbaa !49    ; 4 uses
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !49  ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.al, label %bb.b, !llvm.loop !111

bb.al:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %.not.i.i.i30 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.es to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ey) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.r
  %.pn15 = phi { ptr, i32 } [ %.pn13, %bb.af ], [ %.pn.pn, %bb.r ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ez = load ptr, ptr %3, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34, label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp
  %i.fa = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fd) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit34: ; preds = %bb.an, %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn15
}

declare noundef ptr @_ZNK4cvc58internal13preprocessing24PreprocessingPassContext15getTheoryEngineEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN4cvc58internal12TheoryEngine13ppStaticLearnENS0_12NodeTemplateILb0EEERSt6vectorINS0_9TrustNodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1480), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4cvc58internal13preprocessing17AssertionPipeline15pushBackTrustedENS0_9TrustNodeENS0_7TrustIdEb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef align 8, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
end_hunk_0
