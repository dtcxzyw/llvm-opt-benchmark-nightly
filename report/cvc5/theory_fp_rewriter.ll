Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_fp_rewriter?download=true
inline.NumInlined: 1891
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4cvc58internal6theory2fp7rewrite28convertSubtractionToAdditionEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEb:.noexc
  %i.br = and i32 %i.bq, 1048575                  ; 3 uses
  %i.bs = icmp samesign ult i32 %i.br, 1048574
  br i1 %i.bs, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bt = add nuw nsw i32 %i.br, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 40
  %i.bw = and i64 %i.bn, -1152920405095219201
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  store i64 %i.bx, ptr %i.ba, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.by = icmp eq i32 %i.br, 1048574
  br i1 %i.by, label %bb.v, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.bz = or i64 %i.bn, 1152920405095219200
  store i64 %i.bz, ptr %i.ba, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge unwind label %bb.aj

._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge: ; preds = %bb.v
  %.pre29 = load i64, ptr %i.ba, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit: ; preds = %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge, %bb.u, %bb.t
  %i.ca = phi i64 [ %.pre29, %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit_crit_edge ], [ %i.bn, %bb.u ], [ %i.bx, %bb.t ] ; 3 uses
  %i.cb = and i64 %i.ca, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cb, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.w, !prof !17

bb.w:                                             ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit
  %i.cc = add i64 %i.ca, 1152920405095219200
  %i.cd = and i64 %i.cc, 1152920405095219200      ; 2 uses
  %i.ce = and i64 %i.ca, -1152920405095219201
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.ba, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !17

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit, %bb.w, %bb.x
  %i.cj = load ptr, ptr %11, align 8, !tbaa !15   ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = and i64 %i.ck, 1152920405095219200
  %.not.i.i20 = icmp eq i64 %i.cl, 1152920405095219200
  br i1 %.not.i.i20, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21, label %bb.z, !prof !17

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cm = add i64 %i.ck, 1152920405095219200
  %i.cn = and i64 %i.cm, 1152920405095219200      ; 2 uses
  %i.co = and i64 %i.ck, -1152920405095219201
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.cj, align 8
  %i.cq = icmp eq i64 %i.cn, 0
  br i1 %i.cq, label %bb.aa, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21, !prof !17

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ct = load ptr, ptr %10, align 8, !tbaa !15   ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = and i64 %i.cu, 1152920405095219200
  %.not.i.i22 = icmp eq i64 %i.cv, 1152920405095219200
  br i1 %.not.i.i22, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21
  %i.cw = add i64 %i.cu, 1152920405095219200
  %i.cx = and i64 %i.cw, 1152920405095219200      ; 2 uses
  %i.cy = and i64 %i.cu, -1152920405095219201
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.ct, align 8
  %i.da = icmp eq i64 %i.cx, 0
  br i1 %i.da, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23, !prof !17

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  ret void

bb.af:                                            ; preds = %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.ag:                                            ; preds = %bb.f
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.ah:                                            ; preds = %bb.g
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.ai:                                            ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn6 = phi { ptr, i32 } [ %i.dh, %bb.aj ], [ %i.dg, %bb.ai ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %.body16

.body16:                                          ; preds = %bb.ag, %bb.o, %bb.ah, %bb.ak, %bb.af
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %bb.ak ], [ %i.dd, %bb.af ], [ %i.de, %bb.ag ], [ %i.df, %bb.ah ], [ %.pn7.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %.body

.body:                                            ; preds = %bb.d, %.body16
  %.pn6.pn.pn = phi { ptr, i32 } [ %.pn6.pn, %.body16 ], [ %.pn.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  resume { ptr, i32 } %.pn6.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2fp7rewrite10breakChainEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cvc5::internal::theory::RewriteResponse") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, i1 zeroext %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 3 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %i.j = load i64, ptr %i.b, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = and i64 %i.k, 67108863
  %i.m = sext i1 %i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295                 ; 3 uses
  %i.p = icmp samesign ugt i64 %i.o, 2
  br i1 %i.p, label %.lr.ph40.preheader, label %bb.ac

.lr.ph40.preheader:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %1, i32 noundef 21)
  %i.q = add nsw i64 %i.o, -2
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %exitcond41.not = icmp eq i64 %.01939, %i.q
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !139

._crit_edge:                                      ; preds = %.loopexit
  invoke void @_ZN4cvc58internal11NodeBuildercvNS0_12NodeTemplateILb1EEEEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %bb.s unwind label %bb.z

.lr.ph.preheader:                                 ; preds = %.loopexit, %.lr.ph40.preheader
  %.01939 = phi i64 [ %i.r, %.loopexit ], [ 0, %.lr.ph40.preheader ] ; 3 uses
  %i.r = add nuw nsw i64 %.01939, 1               ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.01838 = phi i64 [ %i.bn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.s = load ptr, ptr %2, align 8, !tbaa !13, !noalias !147 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !147
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 1023                       ; 2 uses
  %i.x = icmp eq i32 %i.w, 1023
  %i.y = select i1 %i.x, i32 -1, i32 %i.w
  %i.z = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.y)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i32 %i.z, 2
  %i.ab = zext i1 %i.aa to i64
  %spec.select.i.i = add nuw i64 %.01939, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.ad = ashr exact i64 %sext, 29
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21, !noalias !147 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !13, !noalias !148 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !148
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 1023                     ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1023
  %i.am = select i1 %i.al, i32 -1, i32 %i.ak
  %i.an = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.am)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp eq i32 %i.an, 2
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i.i26 = add nuw i64 %.01838, %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %sext37 = shl i64 %spec.select.i.i26, 32
  %i.ar = ashr exact i64 %sext37, 29
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25, !noalias !149
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %i.av, i32 noundef %i.e)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.c
  store ptr %i.af, ptr %5, align 8, !tbaa !13, !noalias !149
  %i.aw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %5)
          to label %bb.d unwind label %bb.g, !noalias !149

bb.d:                                             ; preds = %.noexc
  store ptr %i.at, ptr %6, align 8, !tbaa !13, !noalias !149
  %i.ax = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.aw, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.h, !noalias !149 ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pn5.i = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.ba, %bb.h ], [ %i.az, %bb.g ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !149
  br label %.body

bb.j:                                             ; preds = %bb.e
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bb = load ptr, ptr %9, align 8, !tbaa !15
  store ptr %i.bb, ptr %8, align 8, !tbaa !13
  %i.bc = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.k unwind label %bb.r       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = and i64 %i.be, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bf, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.bg = add i64 %i.be, 1152920405095219200
  %i.bh = and i64 %i.bg, 1152920405095219200      ; 2 uses
  %i.bi = and i64 %i.be, -1152920405095219201
  %i.bj = or disjoint i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %i.bd, align 8
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !17

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bn = add nuw nsw i64 %.01838, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.o
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !146

bb.o:                                             ; preds = %.lr.ph
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.i, %bb.r, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.bp, %bb.p ], [ %i.br, %bb.r ], [ %i.bq, %bb.q ], [ %.pn5.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ab

bb.s:                                             ; preds = %._crit_edge
  store i32 2, ptr %0, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %10, align 8, !tbaa !15   ; 5 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !15
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = lshr i64 %i.bu, 40
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 1048575                  ; 3 uses
  %i.by = icmp samesign ult i32 %i.bx, 1048574
  br i1 %i.by, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.bz = add nuw nsw i32 %i.bx, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 40
  %i.cc = and i64 %i.bu, -1152920405095219201
  %i.cd = or i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.bt, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit

bb.u:                                             ; preds = %bb.s
  %i.ce = icmp eq i32 %i.bx, 1048574
  br i1 %i.ce, label %bb.v, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.cf = or i64 %i.bu, 1152920405095219200
  store i64 %i.cf, ptr %i.bt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit unwind label %bb.aa

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit: ; preds = %bb.u, %bb.t, %bb.v
  %i.cg = load ptr, ptr %10, align 8, !tbaa !15   ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = and i64 %i.ch, 1152920405095219200
  %.not.i.i29 = icmp eq i64 %i.ci, 1152920405095219200
  br i1 %.not.i.i29, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30, label %bb.w, !prof !17

bb.w:                                             ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit
  %i.cj = add i64 %i.ch, 1152920405095219200
  %i.ck = and i64 %i.cj, 1152920405095219200      ; 2 uses
  %i.cl = and i64 %i.ch, -1152920405095219201
  %i.cm = or disjoint i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.cg, align 8
  %i.cn = icmp eq i64 %i.ck, 0
  br i1 %i.cn, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30, !prof !17

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30: ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit, %bb.w, %bb.x
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34

bb.z:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cr, %bb.aa ], [ %i.cq, %bb.z ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.an

bb.ac:                                            ; preds = %bb.a
  %i.cs = load ptr, ptr %2, align 8, !tbaa !13    ; 13 uses
  store ptr %i.cs, ptr %11, align 8, !tbaa !15
  %i.ct = load i64, ptr %i.cs, align 8            ; 4 uses
  %i.cu = lshr i64 %i.ct, 40
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 1048575                  ; 3 uses
  %i.cx = icmp samesign ult i32 %i.cw, 1048574
  br i1 %i.cx, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.cy = add nuw nsw i32 %i.cw, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 40
  %i.db = and i64 %i.ct, -1152920405095219201
  %i.dc = or i64 %i.da, %i.db                     ; 2 uses
  store i64 %i.dc, ptr %i.cs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dd = icmp eq i32 %i.cw, 1048574
  br i1 %i.dd, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !17

bb.af:                                            ; preds = %bb.ae
  %i.de = or i64 %i.ct, 1152920405095219200
  store i64 %i.de, ptr %i.cs, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
  %.pre = load i64, ptr %i.cs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  %i.df = phi i64 [ %i.dc, %bb.ad ], [ %i.ct, %bb.ae ], [ %.pre, %bb.af ] ; 4 uses
  store i32 0, ptr %0, align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.dg, align 8, !tbaa !15
  %i.dh = lshr i64 %i.df, 40
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = and i32 %i.di, 1048575                  ; 3 uses
  %i.dk = icmp samesign ult i32 %i.dj, 1048574
  br i1 %i.dk, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.dl = add nuw nsw i32 %i.dj, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 40
  %i.do = and i64 %i.df, -1152920405095219201
  %i.dp = or i64 %i.dn, %i.do                     ; 2 uses
  store i64 %i.dp, ptr %i.cs, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32

bb.ah:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.dq = icmp eq i32 %i.dj, 1048574
  br i1 %i.dq, label %bb.ai, label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32, !prof !17

bb.ai:                                            ; preds = %bb.ah
  %i.dr = or i64 %i.df, 1152920405095219200
  store i64 %i.dr, ptr %i.cs, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge unwind label %bb.am

._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge: ; preds = %bb.ai
  %.pre42 = load i64, ptr %i.cs, align 8
  br label %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32

_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32: ; preds = %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge, %bb.ah, %bb.ag
  %i.ds = phi i64 [ %.pre42, %._ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32_crit_edge ], [ %i.df, %bb.ah ], [ %i.dp, %bb.ag ] ; 3 uses
  %i.dt = and i64 %i.ds, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.dt, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34, label %bb.aj, !prof !17

bb.aj:                                            ; preds = %_ZN4cvc58internal6theory15RewriteResponseC2ENS1_13RewriteStatusENS0_12NodeTemplateILb1EEE.exit32
  %i.du = add i64 %i.ds, 1152920405095219200
  %i.dv = and i64 %i.du, 1152920405095219200      ; 2 uses
  %i.dw = and i64 %i.ds, -1152920405095219201
  %i.dx = or disjoint i64 %i.dv, %i.dw
  store i64 %i.dx, ptr %i.cs, align 8
  %i.dy = icmp eq i64 %i.dv, 0
  br i1 %i.dy, label %bb.ak, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34, !prof !17

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit34 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  tail call void @__clang_call_terminate(ptr %i.ea) #22
  unreachable

bb.am:                                            ; preds = %bb.ai
end_hunk_0
