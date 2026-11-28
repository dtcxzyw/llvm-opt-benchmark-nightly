Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bags_rewriter?download=true
inline.NumInlined: 1989
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4cvc58internal6theory4bags12BagsRewriter20postRewritePartitionERKNS0_12NodeTemplateILb0EEE:bb.a
bb.ah:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  br label %bb.ai

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21: ; preds = %bb.af, %bb.ae, %bb.ad, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit17
  ret void

bb.ai:                                            ; preds = %bb.ah, %bb.v
  %.pn13 = phi { ptr, i32 } [ %i.cv, %bb.ah ], [ %.pn.pn, %bb.v ]
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory4bags12BagsRewriter18postRewriteProductERKNS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cvc5::internal::theory::bags::BagsRewriteResponse") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::EmptyBag", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN4cvc58internal8EmptyBagC1ERKNS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_8EmptyBagEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %4, ptr noundef nonnull align 8 dereferenceable(3592) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @_ZN4cvc58internal8EmptyBagD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.c = load ptr, ptr %2, align 8, !tbaa !47, !noalias !896 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !896
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 1023                       ; 2 uses
  %i.h = icmp eq i32 %i.g, 1023
  %i.i = select i1 %i.h, i32 -1, i32 %i.g
  %i.j = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.i)
          to label %bb.d unwind label %bb.s, !noalias !896

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = zext i1 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40, !noalias !896
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1023
  %.not = icmp eq i64 %i.r, 290
  br i1 %.not, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %2, align 8, !tbaa !47, !noalias !897 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !897
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 1023                       ; 2 uses
  %i.x = icmp eq i32 %i.w, 1023
  %i.y = select i1 %i.x, i32 -1, i32 %i.w
  %i.z = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.y)
          to label %.critedge unwind label %bb.s, !noalias !897

.critedge:                                        ; preds = %bb.e
  %i.aa = icmp eq i32 %i.z, 2
  %spec.select.i.i = select i1 %i.aa, i64 2, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %spec.select.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40, !noalias !897
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, 1023
  %i.ah = icmp eq i64 %i.ag, 290
  br i1 %i.ah, label %.critedge.thread, label %bb.u

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %i.ai = load ptr, ptr %4, align 8, !tbaa !11    ; 13 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !11
  %i.aj = load i64, ptr %i.ai, align 8            ; 4 uses
  %i.ak = lshr i64 %i.aj, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 1048574
  br i1 %i.an, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %.critedge.thread
  %i.ao = add nuw nsw i32 %i.am, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 40
  %i.ar = and i64 %i.aj, -1152920405095219201
  %i.as = or i64 %i.aq, %i.ar                     ; 2 uses
  store i64 %i.as, ptr %i.ai, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.g:                                             ; preds = %.critedge.thread
  %i.at = icmp eq i32 %i.am, 1048574
  br i1 %i.at, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.au = or i64 %i.aj, 1152920405095219200
  store i64 %i.au, ptr %i.ai, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge unwind label %bb.s

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge: ; preds = %bb.h
  %.pre33 = load i64, ptr %i.ai, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge, %bb.g, %bb.f
  %i.av = phi i64 [ %.pre33, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge ], [ %i.aj, %bb.g ], [ %i.as, %bb.f ] ; 4 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !11
  %i.aw = lshr i64 %i.av, 40
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1048575                  ; 3 uses
  %i.az = icmp samesign ult i32 %i.ay, 1048574
  br i1 %i.az, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ba = add nuw nsw i32 %i.ay, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 40
  %i.bd = and i64 %i.av, -1152920405095219201
  %i.be = or i64 %i.bc, %i.bd                     ; 2 uses
  store i64 %i.be, ptr %i.ai, align 8
  br label %bb.l

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bf = icmp eq i32 %i.ay, 1048574
  br i1 %i.bf, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.bg = or i64 %i.av, 1152920405095219200
  store i64 %i.bg, ptr %i.ai, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %._crit_edge34 unwind label %bb.t

._crit_edge34:                                    ; preds = %bb.k
  %.pre35 = load i64, ptr %i.ai, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge34, %bb.j, %bb.i
  %i.bh = phi i64 [ %.pre35, %._crit_edge34 ], [ %i.av, %bb.j ], [ %i.be, %bb.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.bi, align 8, !tbaa !16
  %i.bj = and i64 %i.bh, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bj, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.bk = add i64 %i.bh, 1152920405095219200
  %i.bl = and i64 %i.bk, 1152920405095219200      ; 2 uses
  %i.bm = and i64 %i.bh, -1152920405095219201
  %i.bn = or disjoint i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.ai, align 8
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !13

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #22
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8EmptyBagD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %i.br, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.an

bb.s:                                             ; preds = %bb.e, %bb.c, %bb.x, %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.t:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.u:                                             ; preds = %.critedge
  %i.bv = load ptr, ptr %2, align 8, !tbaa !47    ; 13 uses
  store ptr %i.bv, ptr %7, align 8, !tbaa !11
  %i.bw = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.bx = lshr i64 %i.bw, 40
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = and i32 %i.by, 1048575                  ; 3 uses
  %i.ca = icmp samesign ult i32 %i.bz, 1048574
  br i1 %i.ca, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.cb = add nuw nsw i32 %i.bz, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 40
  %i.ce = and i64 %i.bw, -1152920405095219201
  %i.cf = or i64 %i.cd, %i.ce                     ; 2 uses
  store i64 %i.cf, ptr %i.bv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.w:                                             ; preds = %bb.u
  %i.cg = icmp eq i32 %i.bz, 1048574
  br i1 %i.cg, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.ch = or i64 %i.bw, 1152920405095219200
  store i64 %i.ch, ptr %i.bv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge unwind label %bb.s

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge: ; preds = %bb.x
  %.pre = load i64, ptr %i.bv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge, %bb.w, %bb.v
  %i.ci = phi i64 [ %.pre, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge ], [ %i.bw, %bb.w ], [ %i.cf, %bb.v ] ; 4 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !11
  %i.cj = lshr i64 %i.ci, 40
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 1048575                  ; 3 uses
  %i.cm = icmp samesign ult i32 %i.cl, 1048574
  br i1 %i.cm, label %bb.y, label %bb.z, !prof !12

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.cn = add nuw nsw i32 %i.cl, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 40
  %i.cq = and i64 %i.ci, -1152920405095219201
  %i.cr = or i64 %i.cp, %i.cq                     ; 2 uses
  store i64 %i.cr, ptr %i.bv, align 8
  br label %bb.ab

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.cs = icmp eq i32 %i.cl, 1048574
  br i1 %i.cs, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.ct = or i64 %i.ci, 1152920405095219200
  store i64 %i.ct, ptr %i.bv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %._crit_edge unwind label %bb.af

._crit_edge:                                      ; preds = %bb.aa
  %.pre32 = load i64, ptr %i.bv, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.z, %bb.y
  %i.cu = phi i64 [ %.pre32, %._crit_edge ], [ %i.ci, %bb.z ], [ %i.cr, %bb.y ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cv, align 8, !tbaa !16
  %i.cw = and i64 %i.cu, 1152920405095219200
  %.not.i.i26 = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i26, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.cx = add i64 %i.cu, 1152920405095219200
  %i.cy = and i64 %i.cx, 1152920405095219200      ; 2 uses
  %i.cz = and i64 %i.cu, -1152920405095219201
  %i.da = or disjoint i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.bv, align 8
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !13

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #22
  unreachable

bb.af:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.n, %bb.m, %bb.l
  %i.df = load ptr, ptr %4, align 8, !tbaa !11    ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 3 uses
  %i.dh = and i64 %i.dg, 1152920405095219200
  %.not.i.i28 = icmp eq i64 %i.dh, 1152920405095219200
  br i1 %.not.i.i28, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.di = add i64 %i.dg, 1152920405095219200
  %i.dj = and i64 %i.di, 1152920405095219200      ; 2 uses
  %i.dk = and i64 %i.dg, -1152920405095219201
  %i.dl = or disjoint i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.df, align 8
  %i.dm = icmp eq i64 %i.dj, 0
  br i1 %i.dm, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, !prof !13

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dp = load ptr, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.dr = and i64 %i.dq, 1152920405095219200
  %.not.i.i30 = icmp eq i64 %i.dr, 1152920405095219200
  br i1 %.not.i.i30, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.aj, !prof !13

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29
  %i.ds = add i64 %i.dq, 1152920405095219200
  %i.dt = and i64 %i.ds, 1152920405095219200      ; 2 uses
  %i.du = and i64 %i.dq, -1152920405095219201
  %i.dv = or disjoint i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.dp, align 8
  %i.dw = icmp eq i64 %i.dt, 0
  br i1 %i.dw, label %bb.ak, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !13

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.sink.split:                                      ; preds = %bb.t, %bb.af
  %.sink = phi ptr [ %7, %bb.af ], [ %6, %bb.t ]
  %.pn18.ph = phi { ptr, i32 } [ %i.de, %bb.af ], [ %i.bu, %bb.t ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #20
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.s
  %.pn18 = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %.pn18.ph, %.sink.split ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.r
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.am ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory4bags12BagsRewriter20postRewriteAggregateERKNS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cvc5::internal::theory::bags::BagsRewriteResponse") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.73", align 8 ; 6 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.73", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.73", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.a = load ptr, ptr %2, align 8, !tbaa !47, !noalias !902 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !902
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !902
  %i.i = icmp eq i32 %i.h, 2
  %spec.select.i.i = select i1 %i.i, i64 2, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %spec.select.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40, !noalias !902
  store ptr %i.l, ptr %3, align 8, !tbaa !47, !alias.scope !902
  %i.m = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.c, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ac

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.n = load ptr, ptr %2, align 8, !tbaa !47, !noalias !903 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !903
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 1023                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 1023
  %i.t = select i1 %i.s, i32 -1, i32 %i.r
  %i.u = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.t)
          to label %bb.d unwind label %bb.s, !noalias !903

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.u, 2
  %spec.select.i.i26 = select i1 %i.v, i64 3, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %spec.select.i.i26
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40, !noalias !903
  store ptr %i.y, ptr %4, align 8, !tbaa !47, !alias.scope !903
  %i.z = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.critedge unwind label %bb.s

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.z, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aa = load ptr, ptr %2, align 8, !tbaa !47
  store ptr %i.aa, ptr %6, align 8, !tbaa !47
  invoke void @_ZN4cvc58internal6theory4bags9BagsUtils22evaluateTableAggregateENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %5, ptr noundef nonnull align 8 %6)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %5, align 8, !tbaa !11    ; 14 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !47
  %.not = icmp eq ptr %i.ab, %i.ac                ; 2 uses
  br i1 %.not, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %7, align 8, !tbaa !11
  %i.ad = load i64, ptr %i.ab, align 8            ; 4 uses
  %i.ae = lshr i64 %i.ad, 40
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1048575                  ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 1048574
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw nsw i32 %i.ag, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 40
  %i.al = and i64 %i.ad, -1152920405095219201
  %i.am = or i64 %i.ak, %i.al                     ; 2 uses
  store i64 %i.am, ptr %i.ab, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.an = icmp eq i32 %i.ag, 1048574
  br i1 %i.an, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.ao = or i64 %i.ad, 1152920405095219200
  store i64 %i.ao, ptr %i.ab, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge unwind label %bb.v

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge: ; preds = %bb.j
  %.pre = load i64, ptr %i.ab, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge, %bb.i, %bb.h
  %i.ap = phi i64 [ %.pre, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit_crit_edge ], [ %i.ad, %bb.i ], [ %i.am, %bb.h ] ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !11
  %i.aq = lshr i64 %i.ap, 40
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1048575                  ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 1048574
  br i1 %i.at, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.au = add nuw nsw i32 %i.as, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = and i64 %i.ap, -1152920405095219201
  %i.ay = or i64 %i.aw, %i.ax                     ; 2 uses
  store i64 %i.ay, ptr %i.ab, align 8
  br label %bb.n

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.az = icmp eq i32 %i.as, 1048574
  br i1 %i.az, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.ba = or i64 %i.ap, 1152920405095219200
  store i64 %i.ba, ptr %i.ab, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %._crit_edge unwind label %bb.w

._crit_edge:                                      ; preds = %bb.m
  %.pre34 = load i64, ptr %i.ab, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %bb.k
  %i.bb = phi i64 [ %.pre34, %._crit_edge ], [ %i.ap, %bb.l ], [ %i.ay, %bb.k ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bc, align 8, !tbaa !16
  %i.bd = and i64 %i.bb, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bd, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.be = add i64 %i.bb, 1152920405095219200
  %i.bf = and i64 %i.be, 1152920405095219200      ; 2 uses
  %i.bg = and i64 %i.bb, -1152920405095219201
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.ab, align 8
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !13

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #22
  unreachable

bb.r:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.c, %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.bl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ao

bb.u:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

end_hunk_0
