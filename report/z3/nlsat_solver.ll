Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_solver?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1516
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5nlsat6solver3imp5checkER7svectorIN3sat7literalEjE:bb.a
  %i.by = phi ptr [ %.pre.i49, %._crit_edge.i ], [ %i.br, %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i ]
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  store i32 0, ptr %i.bz, align 4, !tbaa !192
  br label %_ZN5nlsat6solver3imp11del_clausesER10ptr_vectorINS_6clauseEE.exit

.lr.ph.i:                                         ; preds = %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i, %.noexc51
  %.011.i = phi ptr [ %i.cb, %.noexc51 ], [ %i.br, %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i ] ; 2 uses
  %i.ca = load ptr, ptr %.011.i, align 8, !tbaa !42
  invoke void @_ZN5nlsat6solver3imp10del_clauseEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef %i.ca)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i48 = icmp eq ptr %i.cb, %i.bx
  br i1 %.not.i48, label %._crit_edge.i, label %.lr.ph.i

_ZN5nlsat6solver3imp11del_clausesER10ptr_vectorINS_6clauseEE.exit: ; preds = %._crit_edge.thread16.i, %._crit_edge.i, %bb.q
  %i.cc = load ptr, ptr %1, align 8, !tbaa !222   ; 3 uses
  %.not.i52 = icmp eq ptr %i.cc, null
  br i1 %.not.i52, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5nlsat6solver3imp11del_clausesER10ptr_vectorINS_6clauseEE.exit
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 0, ptr %i.cd, align 4, !tbaa !192
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %_ZN5nlsat6solver3imp11del_clausesER10ptr_vectorINS_6clauseEE.exit, %bb.r
  %i.ce = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.sink.split, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i
  %i.cg = phi ptr [ %i.ct, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ %i.cc, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ] ; 4 uses
  %i.ch = phi ptr [ %i.cu, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ %i.ce, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ 0, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ] ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !192
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.i, %i.ck
  br i1 %i.cl, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  %i.cn = icmp eq ptr %i.cg, null
  br i1 %i.cn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !192 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !192
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.u, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.u:                                             ; preds = %bb.t, %bb.s
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !222 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !192
  %.pre.i53 = load ptr, ptr %2, align 8, !tbaa !222
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %.noexc54, %bb.t
  %i.ct = phi ptr [ %.pre.i.i, %.noexc54 ], [ %i.cg, %bb.t ] ; 3 uses
  %i.cu = phi ptr [ %.pre.i53, %.noexc54 ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = phi i32 [ %.pre2.i.i, %.noexc54 ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cx
  %i.cz = load i32, ptr %i.cm, align 4, !tbaa !192
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !192
  %i.da = add i32 %i.cv, 1
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !192
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.db = icmp eq ptr %i.cu, null
  br i1 %i.db, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.sink.split, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, !llvm.loop !473

bb.v:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  store ptr %i.j, ptr %i.i, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dc = getelementptr inbounds i8, ptr %i.ch, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dc)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #30
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.sink.split: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  store ptr %i.j, ptr %i.i, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.sink.split, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %i.k

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp144, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store ptr %i.j, ptr %i.i, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.split

.split:                                           ; preds = %.split.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.pn37 = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn37
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5nlsat6solver5checkERKNS_10assignmentER7svectorIN3sat7literalEjE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = tail call noundef i32 @_ZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(1017) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nlsat::assignment", align 8 ; 10 uses
  %4 = alloca %"class.sat::literal", align 4      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @_ZN5nlsat10assignmentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5nlsat10assignment5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  store i32 0, ptr %i.d, align 4, !tbaa !192
  br label %_ZN5nlsat10assignment5resetEv.exit

_ZN5nlsat10assignment5resetEv.exit:               ; preds = %bb.b, %bb.a
  invoke void @_ZN5nlsat10assignment4copyERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5nlsat10assignment5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 -2, ptr %4, align 4, !tbaa !192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !236  ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge.thread, label %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit

_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit:     ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not141 = icmp eq i32 %i.i, 0
  br i1 %.not141, label %._crit_edge.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %.thread
  %.pre168 = load i32, ptr %4, align 4, !tbaa !224
  %i.p = icmp eq i32 %.pre168, -2
  br i1 %i.p, label %._crit_edge.thread, label %bb.t

bb.d:                                             ; preds = %_ZN5nlsat10assignment5resetEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.e:                                             ; preds = %.lr.ph145, %.thread
  %.038144 = phi ptr [ %i.f, %.lr.ph145 ], [ %i.dm, %.thread ] ; 2 uses
  %.039142 = phi i32 [ 1, %.lr.ph145 ], [ %.1, %.thread ] ; 5 uses
  %i.r = load ptr, ptr %.038144, align 8, !tbaa !42 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !238  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %.not17.i = icmp eq i32 %i.u, 0
  br i1 %.not17.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i
  %.01318.i = phi ptr [ %i.ar, %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.01318.i, align 4, !tbaa !192 ; 2 uses
  %i.x = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.y = trunc i32 %.sroa.0.0.copyload.i to i1    ; 2 uses
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !231
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !233 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.f, label %.noexc.a

bb.f:                                             ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !244
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !240 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !260 ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !183 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i:        ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !192
  %.not.i.i.i.i.i = icmp ult i32 %i.ai, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit

_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i: ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i
  %i.an = zext i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %.0.i.sroa.speculate.load..i.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !261
  %i.ap = trunc nuw i8 %.0.i.sroa.speculate.load..i.i.i.i to i1
  br i1 %i.ap, label %bb.h, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit

bb.h:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i
  %i.aq = invoke noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.af, i1 noundef zeroext %i.y)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.aq, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i

.noexc.a:                                         ; preds = %.lr.ph.i
  %5 = sub nsw i32 0, %i.ac
  %.0.i.i.i.i = select i1 %i.y, i32 %5, i32 %i.ac
  %6 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %6, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit

_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i: ; preds = %.noexc.a, %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %.01318.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.w
  br i1 %.not.i, label %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit, label %.lr.ph.i

_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit: ; preds = %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i, %.noexc.a, %.noexc, %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i, %bb.g, %bb.f
  %.not57110 = phi i1 [ true, %.noexc.a ], [ false, %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E_clES7_.exit.thread15.i ], [ true, %bb.f ], [ true, %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i ], [ true, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i ], [ true, %bb.g ], [ true, %.noexc ]
  %.pr = load i32, ptr %i.t, align 4, !tbaa !238  ; 2 uses
  %i.as = zext i32 %.pr to i64
  %.idx.i58 = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i58
  %.not18.not.i = icmp eq i32 %.pr, 0
  br i1 %.not18.not.i, label %.loopexit131, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit, %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i
  %.01319.i = phi ptr [ %i.bo, %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i ], [ %i.s, %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit ] ; 2 uses
  %.sroa.0.0.copyload.i60 = load i32, ptr %.01319.i, align 4, !tbaa !192 ; 2 uses
  %i.au = lshr i32 %.sroa.0.0.copyload.i60, 1
  %i.av = trunc i32 %.sroa.0.0.copyload.i60 to i1 ; 2 uses
  %i.aw = zext nneg i32 %i.au to i64              ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !231
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !233 ; 3 uses
  %.not.i.i.i61 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i61, label %bb.i, label %.noexc67

bb.i:                                             ; preds = %.lr.ph.i59
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !244
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !260 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !183 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i63

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i63:      ; preds = %bb.j
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !192
  %.not.i.i.i.i.i64 = icmp ult i32 %i.bf, %i.bj
  br i1 %.not.i.i.i.i.i64, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i65, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i

_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i65: ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i63
  %i.bk = zext i32 %i.bf to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %.0.i.sroa.speculate.load..i.i.i.i66 = load i8, ptr %i.bl, align 1, !tbaa !261
  %i.bm = trunc nuw i8 %.0.i.sroa.speculate.load..i.i.i.i66 to i1
  br i1 %i.bm, label %bb.k, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i

bb.k:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i65
  %i.bn = invoke noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.bc, i1 noundef zeroext %i.av)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.k
  br i1 %i.bn, label %.thread, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i

.noexc67:                                         ; preds = %.lr.ph.i59
  %7 = sub nsw i32 0, %i.az
  %.0.i.i.i.i62 = select i1 %i.av, i32 %7, i32 %i.az
  %8 = icmp eq i32 %.0.i.i.i.i62, 1
  br i1 %8, label %.thread, label %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i

_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i: ; preds = %.noexc67, %.noexc68, %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i65, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i63, %bb.j, %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.01319.i, i64 4 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bo, %i.at
  br i1 %.not.not.i, label %.loopexit131, label %.lr.ph.i59

.loopexit131:                                     ; preds = %_ZZN5nlsat6solver3imp5checkERKNS_10assignmentER7svectorIN3sat7literalEjEENKUlS7_E0_clES7_.exit.thread.i, %_Z6all_ofIN5nlsat6clauseEZNS0_6solver3imp5checkERKNS0_10assignmentER7svectorIN3sat7literalEjEEUlS9_E_EbRKT_RKT0_.exit
  br i1 %.not57110, label %.thread, label %.thread114

.thread114:                                       ; preds = %.loopexit131
  %.pre = load i32, ptr %i.t, align 4, !tbaa !238 ; 2 uses
  %i.bp = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.bp, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not51139 = icmp eq i32 %.pre, 0
  br i1 %.not51139, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.thread114, %bb.s
  %.036140 = phi ptr [ %i.dl, %bb.s ], [ %i.s, %.thread114 ] ; 2 uses
  %i.br = load i32, ptr %.036140, align 4, !tbaa !192 ; 2 uses
  %i.bs = load i32, ptr %4, align 4, !tbaa !224   ; 2 uses
  %i.bt = icmp eq i32 %i.bs, -2
  br i1 %i.bt, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bu = lshr i32 %i.bs, 1
  %i.bv = lshr i32 %i.br, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !244
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !240 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !243
  %i.cb = icmp slt i32 %i.ca, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !260 ; 2 uses
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !263 ; 2 uses
  %.not.i68 = icmp eq i32 %i.cf, 0
  br i1 %.not.i68, label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %wide.trip.count.i = zext i32 %i.cf to i64
  br label %bb.n

bb.n:                                             ; preds = %.noexc70, %.lr.ph.i69
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i69 ], [ %indvars.iv.next.i, %.noexc70 ] ; 2 uses
  %.01518.i = phi i32 [ 0, %.lr.ph.i69 ], [ %spec.select.i, %.noexc70 ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !265
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, -8
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = invoke noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.cl, i32 noundef %i.cd)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.n
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.cm, i32 %.01518.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit, label %bb.n, !llvm.loop !1

bb.o:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !267
  %i.cp = invoke noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.co, i32 noundef %i.cd)
          to label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit:    ; preds = %.noexc70, %bb.m, %bb.o
  %.016.i = phi i32 [ %i.cp, %bb.o ], [ 0, %bb.m ], [ %spec.select.i, %.noexc70 ]
  %i.cq = zext nneg i32 %i.bu to i64
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !244
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !240 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !243
  %i.cv = icmp slt i32 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !260 ; 2 uses
  br i1 %i.cv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !263 ; 2 uses
  %.not.i73 = icmp eq i32 %i.cz, 0
  br i1 %.not.i73, label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit83, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %wide.trip.count.i75 = zext i32 %i.cz to i64
  br label %bb.q

bb.q:                                             ; preds = %.noexc81, %.lr.ph.i74
  %indvars.iv.i76 = phi i64 [ 0, %.lr.ph.i74 ], [ %indvars.iv.next.i79, %.noexc81 ] ; 2 uses
  %.01518.i77 = phi i32 [ 0, %.lr.ph.i74 ], [ %spec.select.i78, %.noexc81 ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i76
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !265
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, -8
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = invoke noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.df, i32 noundef %i.cx)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.q
  %spec.select.i78 = call i32 @llvm.umax.i32(i32 %i.dg, i32 %.01518.i77) ; 2 uses
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i79, %wide.trip.count.i75
  br i1 %exitcond.not.i80, label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit83, label %bb.q, !llvm.loop !1

bb.r:                                             ; preds = %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !267
  %i.dj = invoke noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.di, i32 noundef %i.cx)
          to label %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit83:  ; preds = %.noexc81, %bb.p, %bb.r
  %.016.i72 = phi i32 [ %i.dj, %bb.r ], [ 0, %bb.p ], [ %spec.select.i78, %.noexc81 ]
  %i.dk = icmp ult i32 %.016.i, %.016.i72
  br i1 %i.dk, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit83, %.lr.ph
  store i32 %i.br, ptr %4, align 4, !tbaa !192
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE.exit83
  %i.dl = getelementptr inbounds nuw i8, ptr %.036140, i64 4 ; 2 uses
  %.not51 = icmp eq ptr %i.dl, %i.bq
  br i1 %.not51, label %.thread, label %.lr.ph

.thread:                                          ; preds = %.noexc68, %.noexc67, %bb.s, %bb.e, %.thread114, %.loopexit131
  %.1 = phi i32 [ 0, %.loopexit131 ], [ %.039142, %.thread114 ], [ %.039142, %bb.s ], [ %.039142, %bb.e ], [ %.039142, %.noexc67 ], [ %.039142, %.noexc68 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.038144, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dm, %i.l
  br i1 %.not, label %._crit_edge, label %bb.e

bb.t:                                             ; preds = %._crit_edge
  %i.dn = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %.not.i84 = icmp eq ptr %i.dn, null
  br i1 %.not.i84, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  store i32 0, ptr %i.do, align 4, !tbaa !192
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.t, %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !222 ; 5 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN5nlsat21scoped_literal_vector5resetEv.exit, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i:     ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !192 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dw
  %.not8.i = icmp eq i32 %i.du, 0
  br i1 %.not8.i, label %._crit_edge.thread17.i, label %.lr.ph.i85

._crit_edge.i:                                    ; preds = %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i
  %.pre.i = load ptr, ptr %i.dq, align 8, !tbaa !222 ; 2 uses
  %.not.i.i87 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i87, label %_ZN5nlsat21scoped_literal_vector5resetEv.exit, label %._crit_edge.thread17.i

._crit_edge.thread17.i:                           ; preds = %._crit_edge.i, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %i.dy = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dr, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i ]
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 0, ptr %i.dz, align 4, !tbaa !192
  br label %_ZN5nlsat21scoped_literal_vector5resetEv.exit

.lr.ph.i85:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i, %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i
  %.09.i = phi ptr [ %i.eq, %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i ], [ %i.dr, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.09.i, align 4, !tbaa !192
  %i.ea = load ptr, ptr %i.dp, align 8, !tbaa !268, !nonnull !73, !align !74
  %i.eb = lshr i32 %.sroa.01.0.copyload.i, 1      ; 2 uses
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !47 ; 3 uses
  %i.ed = icmp eq i32 %i.eb, 2147483647
  br i1 %i.ed, label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i85
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 392
  %i.ef = zext nneg i32 %i.eb to i64
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !244
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !240 ; 5 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !269
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !269
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.x, label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i

bb.x:                                             ; preds = %bb.w
  %i.eo = load i32, ptr %i.ei, align 4, !tbaa !243
  %i.ep = icmp slt i32 %i.eo, 3
  br i1 %i.ep, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5nlsat6solver3imp3delEPNS_9ineq_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %i.ec, ptr noundef nonnull %i.ei)
          to label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  invoke void @_ZN5nlsat6solver3imp3delEPNS_9root_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %i.ec, ptr noundef nonnull %i.ei)
          to label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i:   ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %.lr.ph.i85
  %i.eq = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i86 = icmp eq ptr %i.eq, %i.dx
  br i1 %.not.i86, label %._crit_edge.i, label %.lr.ph.i85

_ZN5nlsat21scoped_literal_vector5resetEv.exit:    ; preds = %._crit_edge.thread17.i, %._crit_edge.i, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 696
  invoke void @_ZN5nlsat7explain26compute_linear_explanationEjPKN3sat7literalERNS_21scoped_literal_vectorE(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %i.dp)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %_ZN5nlsat21scoped_literal_vector5resetEv.exit
  %i.es = load ptr, ptr %i.dq, align 8, !tbaa !222 ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZNK5nlsat21scoped_literal_vector3endEv.exit.thread, label %_ZNK5nlsat21scoped_literal_vector3endEv.exit

_ZNK5nlsat21scoped_literal_vector3endEv.exit.thread: ; preds = %bb.aa
  %.pre170208 = load ptr, ptr %2, align 8, !tbaa !222
  br label %._crit_edge149

_ZNK5nlsat21scoped_literal_vector3endEv.exit:     ; preds = %bb.aa
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !192 ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ex
  %.not48146 = icmp eq i32 %i.ev, 0
  %.pre170 = load ptr, ptr %2, align 8, !tbaa !222 ; 2 uses
  br i1 %.not48146, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %_ZNK5nlsat21scoped_literal_vector3endEv.exit.thread, %_ZNK5nlsat21scoped_literal_vector3endEv.exit
  %i.ez = phi ptr [ %.pre170208, %_ZNK5nlsat21scoped_literal_vector3endEv.exit.thread ], [ %.pre170, %_ZNK5nlsat21scoped_literal_vector3endEv.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !192
  %i.fa = xor i32 %.sroa.0.0.copyload, 1          ; 2 uses
  %i.fb = icmp eq ptr %i.ez, null
  br i1 %i.fb, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge149.thread, %._crit_edge149
  %i.fc = phi i32 [ %i.fz, %._crit_edge149.thread ], [ %i.fa, %._crit_edge149 ] ; 2 uses
  %i.fd = phi ptr [ %i.fs, %._crit_edge149.thread ], [ %i.ez, %._crit_edge149 ] ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !192 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !192
  %i.fi = icmp eq i32 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab, %._crit_edge149
  %i.fj = phi i32 [ %i.fc, %bb.ab ], [ %i.fa, %._crit_edge149 ]
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.ac
  %.pre.i90 = load ptr, ptr %2, align 8, !tbaa !222 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i90, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !192
  br label %bb.ag

.lr.ph148:                                        ; preds = %_ZNK5nlsat21scoped_literal_vector3endEv.exit, %bb.af
  %i.fk = phi ptr [ %i.fs, %bb.af ], [ %.pre170, %_ZNK5nlsat21scoped_literal_vector3endEv.exit ] ; 4 uses
  %.035147 = phi ptr [ %i.fy, %bb.af ], [ %i.es, %_ZNK5nlsat21scoped_literal_vector3endEv.exit ] ; 2 uses
  %i.fl = load i32, ptr %.035147, align 4, !tbaa !192
  %i.fm = icmp eq ptr %i.fk, null
  br i1 %i.fm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph148
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !192 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !192
  %i.fr = icmp eq i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph148
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ae
  %.pre.i92 = load ptr, ptr %2, align 8, !tbaa !222 ; 2 uses
  %.phi.trans.insert.i93 = getelementptr inbounds i8, ptr %.pre.i92, i64 -4
  %.pre2.i94 = load i32, ptr %.phi.trans.insert.i93, align 4, !tbaa !192
  br label %bb.af

bb.af:                                            ; preds = %.noexc95, %bb.ad
  %i.fs = phi ptr [ %.pre.i92, %.noexc95 ], [ %i.fk, %bb.ad ] ; 4 uses
  %i.ft = phi i32 [ %.pre2.i94, %.noexc95 ], [ %i.fo, %bb.ad ] ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = zext i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fv
  store i32 %i.fl, ptr %i.fw, align 4, !tbaa !192
  %i.fx = add i32 %i.ft, 1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !192
  %i.fy = getelementptr inbounds nuw i8, ptr %.035147, i64 4 ; 2 uses
  %.not48 = icmp eq ptr %i.fy, %i.ey
  br i1 %.not48, label %._crit_edge149.thread, label %.lr.ph148

._crit_edge149.thread:                            ; preds = %bb.af
  %.sroa.0.0.copyload209 = load i32, ptr %4, align 4, !tbaa !192
  %i.fz = xor i32 %.sroa.0.0.copyload209, 1
  br label %bb.ab

bb.ag:                                            ; preds = %.noexc91, %bb.ab
  %i.ga = phi i32 [ %i.fj, %.noexc91 ], [ %i.fc, %bb.ab ]
  %i.gb = phi i32 [ %.pre2.i, %.noexc91 ], [ %i.ff, %bb.ab ] ; 2 uses
  %i.gc = phi ptr [ %.pre.i90, %.noexc91 ], [ %i.fd, %bb.ab ] ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -4
  %i.ge = zext i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ge
  store i32 %i.ga, ptr %i.gf, align 4, !tbaa !192
  %i.gg = add i32 %i.gb, 1
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !192
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !183 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i96, label %_ZN5nlsat10assignment5resetEv.exit97, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4
  store i32 0, ptr %i.gi, align 4, !tbaa !192
  br label %_ZN5nlsat10assignment5resetEv.exit97

_ZN5nlsat10assignment5resetEv.exit97:             ; preds = %bb.ah, %bb.ag
end_hunk_0
begin_hunk_1_@_ZNK5nlsat6solver3imp12display_smt2ERSo:bb.a
  resume { ptr, i32 } %.pn51.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver12display_smt2ERSoRK7svectorIN3sat7literalEjE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !222    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5nlsat6solver12display_smt2ERSojPKN3sat7literalE.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK5nlsat6solver12display_smt2ERSojPKN3sat7literalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5nlsat6solver12display_smt2ERSoN3sat7literalE.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK5nlsat6solver12display_smt2ERSoN3sat7literalE.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 4, !tbaa !192 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 656 ; 2 uses
  %i.h = trunc i32 %.sroa.0.0.copyload.i to i1
  %i.i = lshr i32 %.sroa.0.0.copyload.i, 1        ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.81, i64 noundef 5) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 1) ; 0 uses
  br label %_ZNK5nlsat6solver12display_smt2ERSoN3sat7literalE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp17display_smt2_atomERSojRKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  br label %_ZNK5nlsat6solver12display_smt2ERSoN3sat7literalE.exit.i

_ZNK5nlsat6solver12display_smt2ERSoN3sat7literalE.exit.i: ; preds = %bb.c, %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5nlsat6solver12display_smt2ERSojPKN3sat7literalE.exit, label %.lr.ph.i, !llvm.loop !9

_ZNK5nlsat6solver12display_smt2ERSojPKN3sat7literalE.exit: ; preds = %_ZNK5nlsat6solver12display_smt2ERSoN3sat7literalE.exit.i, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver7displayERSoj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !311  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.f = zext i32 %2 to i64
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.f) ; 0 uses
  br label %_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !312, !nonnull !73, !align !74
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203
  %i.k = zext i32 %2 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !192
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.m), !inline_history !335 ; 0 uses
  br label %_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit

_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit: ; preds = %bb.b, %bb.c
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.e = zext i32 %2 to i64
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.e) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !312, !nonnull !73, !align !74
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !192
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.l) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver7displayERSoRKNS_4atomE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 656 ; 2 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !243
  %i.d = icmp slt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp12display_ineqERSoRKNS_9ineq_atomERKN10polynomial16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(1017) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br label %_ZNK5nlsat6solver3imp7displayERSoRKNS_4atomERKN10polynomial16display_var_procE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp12display_rootERSoRKNS_9root_atomERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK5nlsat6solver3imp7displayERSoRKNS_4atomERKN10polynomial16display_var_procE.exit

_ZNK5nlsat6solver3imp7displayERSoRKNS_4atomERKN10polynomial16display_var_procE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver12display_procEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver5valueEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !192
  %.not.i.i = icmp ult i32 %1, %i.f
  br i1 %.not.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

_ZNK5nlsat10assignment11is_assignedEj.exit:       ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %.0.i.sroa.speculate.load..i = load i8, ptr %i.h, align 1, !tbaa !261
  %i.i = trunc nuw i8 %.0.i.sroa.speculate.load..i to i1
  br i1 %i.i, label %bb.b, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread

bb.b:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  br label %bb.c

_ZNK5nlsat10assignment11is_assignedEj.exit.thread: ; preds = %bb.a, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, %_ZNK5nlsat10assignment11is_assignedEj.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.thread, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ %i.m, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK5nlsat6solver6bvalueEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.c = zext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !233
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK5nlsat6solver5valueEN3sat7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = lshr i32 %1, 1
  %i.c = trunc i32 %1 to i1                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.e = zext nneg i32 %i.b to i64                ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !233  ; 3 uses
  %i.i = sub nsw i32 0, %i.h
  %.0.i.i = select i1 %i.c, i32 %i.i, i32 %i.h
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !244
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !240  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !260  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !183  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !192
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

_ZNK5nlsat10assignment11is_assignedEj.exit.i:     ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.v = zext i32 %i.p to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %.0.i.sroa.speculate.load..i.i = load i8, ptr %i.w, align 1, !tbaa !261
  %i.x = trunc nuw i8 %.0.i.sroa.speculate.load..i.i to i1
  br i1 %i.x, label %bb.d, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

bb.d:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.z = tail call noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.m, i1 noundef zeroext %i.c)
  %i.aa = select i1 %i.z, i32 1, i32 -1
  br label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit:   ; preds = %bb.a, %bb.b, %bb.c, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i, %_ZNK5nlsat10assignment11is_assignedEj.exit.i, %bb.d
  %.2.i = phi i32 [ %.0.i.i, %bb.a ], [ 0, %bb.b ], [ %i.aa, %bb.d ], [ 0, %_ZNK5nlsat10assignment11is_assignedEj.exit.i ], [ 0, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i ], [ 0, %bb.c ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5nlsat6solver14is_interpretedEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.c = zext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !244
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240
  %i.g = icmp ne ptr %i.f, null
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5nlsat6solver16reset_statisticsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5nlsat6solver18collect_statisticsER10statistics(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  tail call void @_ZN5nlsat6solver3imp18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(1017) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.c = load i32, ptr %i.b, align 8, !tbaa !336
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.210, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.e = load i32, ptr %i.d, align 4, !tbaa !337
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.211, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.g = load i32, ptr %i.f, align 8, !tbaa !338
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.212, i32 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.i = load i32, ptr %i.h, align 4, !tbaa !339
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.213, i32 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.k = load i32, ptr %i.j, align 4, !tbaa !340
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.214, i32 noundef %i.k)
  %i.l = load i32, ptr %i.a, align 8, !tbaa !341
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.215, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.n = load i32, ptr %i.m, align 8, !tbaa !342
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.216, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.p = load i32, ptr %i.o, align 4, !tbaa !343
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.217, i32 noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.r = load i32, ptr %i.q, align 8, !tbaa !344
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.218, i32 noundef %i.r)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN5nlsat6solver9mk_clauseEjPKN3sat7literalEbPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = tail call noundef ptr @_ZN5nlsat6solver3imp9mk_clauseEjPKN3sat7literalEbPN18dependency_managerINS1_7dconfigEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(1017) %i.a, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5nlsat6solver3imp9mk_clauseEjPKN3sat7literalEbPN18dependency_managerINS1_7dconfigEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.select = select i1 %i.a, ptr @_ZN5nlsatL13false_literalE, ptr %2 ; 4 uses
  %spec.select8 = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i:             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i, %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !202  ; 2 uses
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !202
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i:               ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i
  %i.k = add i32 %i.g, -1                         ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !192
  store i32 %i.k, ptr %i.f, align 4, !tbaa !192
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6id_gen2mkEv.exit.i:                           ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i ], [ %i.n, %_ZN6vectorIjLb0EjE4backEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !177, !nonnull !73, !align !74
  %i.q = zext i32 %spec.select8 to i64            ; 3 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 32
  %i.t = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.p, i64 noundef %i.s) ; 7 uses
  tail call void @_ZN5nlsat6clauseC1EjjPKN3sat7literalEbPv(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %.0.i.i, i32 noundef %spec.select8, ptr noundef %spec.select, i1 noundef zeroext %3, ptr noundef %4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %xtraiter = and i64 %i.q, 1
  %i.v = icmp ult i32 %1, 2
  br i1 %i.v, label %.epil.preheader, label %_ZN6id_gen2mkEv.exit.i.new

_ZN6id_gen2mkEv.exit.i.new:                       ; preds = %_ZN6id_gen2mkEv.exit.i
  %unroll_iter = and i64 %i.q, 4294967294
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %_ZN5nlsat6solver3imp7inc_refEN3sat7literalE.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %_ZN6id_gen2mkEv.exit.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZN6id_gen2mkEv.exit.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %spec.select8 to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv.i.epil.init
  %.sroa.0.0.copyload.i.epil = load i32, ptr %i.w, align 4, !tbaa !192
  %i.x = lshr i32 %.sroa.0.0.copyload.i.epil, 1   ; 2 uses
  %i.y = icmp eq i32 %i.x, 2147483647
  br i1 %i.y, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !240 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !269
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !269
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.b, %bb.c, %._crit_edge.i.unr-lcssa
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %_ZN5nlsat6solver3imp14mk_clause_coreEjPKN3sat7literalEbPN18dependency_managerINS1_7dconfigEE10dependencyE.exit, label %_ZN18dependency_managerIN5nlsat6solver3imp7dconfigEE7inc_refEPNS4_10dependencyE.exit.i.i

_ZN18dependency_managerIN5nlsat6solver3imp7dconfigEE7inc_refEPNS4_10dependencyE.exit.i.i: ; preds = %._crit_edge.i
  %i.ah = load i32, ptr %4, align 4               ; 2 uses
  %i.ai = add i32 %i.ah, 1
  %i.aj = and i32 %i.ai, 1073741823
end_hunk_1
begin_hunk_2_@_ZN5nlsat6solver3imp6searchEv:bb.a
  %i.bx = and i64 %i.bw, %i.bv
  %.not.i7 = icmp eq i64 %i.bx, 0
  br i1 %.not.i7, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.br
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !240
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.br
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !233
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %bb.i, %bb.h
  %i.ce = add i32 %.pr, 1                         ; 3 uses
  store i32 %i.ce, ptr %i.a, align 8, !tbaa !389
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = icmp ugt i64 %i.bm, %i.cf
  br i1 %i.cg, label %bb.h, label %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread, !llvm.loop !557

_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread: ; preds = %.critedge.i, %bb.g
  store i32 2147483647, ptr %i.a, align 8, !tbaa !389
  br label %bb.k

_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit:  ; preds = %bb.j
  %i.ch = icmp eq i32 %.pr, 2147483647
  br i1 %i.ch, label %bb.k, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader

bb.k:                                             ; preds = %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread, %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit
  %i.ci = load i32, ptr %i.n, align 4, !tbaa !340
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.n, align 4, !tbaa !340
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !347 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !192 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !192
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %_ZN5nlsat6solver3imp9new_stageEv.exit

bb.m:                                             ; preds = %bb.f
  %i.cr = load i32, ptr %i.n, align 4, !tbaa !340
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.n, align 4, !tbaa !340
  %i.ct = load ptr, ptr %i.o, align 8, !tbaa !347 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !192 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !192
  %i.cz = icmp eq i32 %i.cw, %i.cy
  br i1 %i.cz, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %_ZN5nlsat6solver3imp9new_stageEv.exit

_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split: ; preds = %bb.m, %bb.n, %bb.k, %bb.l
  call void @_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %.pre.i.i.i8 = load ptr, ptr %i.o, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i.i.i9 = getelementptr inbounds i8, ptr %.pre.i.i.i8, i64 -4
  %.pre2.i.i.i10 = load i32, ptr %.phi.trans.insert.i.i.i9, align 4, !tbaa !192
  br label %_ZN5nlsat6solver3imp9new_stageEv.exit

_ZN5nlsat6solver3imp9new_stageEv.exit:            ; preds = %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, %bb.n, %bb.l
  %.sink113 = phi i32 [ %i.cn, %bb.l ], [ %i.cw, %bb.n ], [ %.pre2.i.i.i10, %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split ] ; 2 uses
  %.sink111 = phi ptr [ %i.ck, %bb.l ], [ %i.ct, %bb.n ], [ %.pre.i.i.i8, %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split ] ; 2 uses
  %i.da = zext i32 %.sink113 to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sink111, i64 %i.da
  store i32 3, ptr %i.db, align 8, !tbaa !395
  %i.dc = getelementptr inbounds i8, ptr %.sink111, i64 -4
  %i.dd = add i32 %.sink113, 1
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !192
  %storemerge.in = load i32, ptr %i.b, align 4, !tbaa !229
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !229
  %.pr41 = load i32, ptr %i.a, align 8, !tbaa !389
  %i.de = icmp eq i32 %.pr41, 2147483647
  br i1 %i.de, label %bb.o, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader

bb.o:                                             ; preds = %_ZN5nlsat6solver3imp9new_stageEv.exit
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !183 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.i

_ZNK5nlsat6solver3imp8num_varsEv.exit.i:          ; preds = %bb.o
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !192
  %.not.i12 = icmp ult i32 %storemerge, %i.di
  br i1 %.not.i12, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i

_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader: ; preds = %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit, %_ZN5nlsat6solver3imp9new_stageEv.exit, %_ZNK5nlsat6solver3imp8num_varsEv.exit.i
  br label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit

_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i:   ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.i, %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i, label %_ZN5nlsat10assignment5resetEv.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4
  store i32 0, ptr %i.dl, align 4, !tbaa !192
  br label %_ZN5nlsat10assignment5resetEv.exit.i.i

_ZN5nlsat10assignment5resetEv.exit.i.i:           ; preds = %bb.p, %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !183 ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i11.i.i, label %_ZN5nlsat10assignment5resetEv.exit12.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5nlsat10assignment5resetEv.exit.i.i
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  store i32 0, ptr %i.do, align 4, !tbaa !192
  br label %_ZN5nlsat10assignment5resetEv.exit12.i.i

_ZN5nlsat10assignment5resetEv.exit12.i.i:         ; preds = %bb.q, %_ZN5nlsat10assignment5resetEv.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !298 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread, label %_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i

_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i: ; preds = %_ZN5nlsat10assignment5resetEv.exit12.i.i
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !192 ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = mul nuw nsw i64 %i.du, 56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dv
  %.not13.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not13.i.i, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.lr.ph17.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !192
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZN5nlsat10assignment5resetEj.exit.i.i, %.lr.ph.split.i.i
  %.0914.i.i = phi ptr [ %i.dq, %.lr.ph.split.i.i ], [ %i.ef, %_ZN5nlsat10assignment5resetEj.exit.i.i ] ; 2 uses
  %i.eb = load i32, ptr %.0914.i.i, align 8, !tbaa !301 ; 2 uses
  %i.ec = icmp ult i32 %i.eb, %i.ea
  br i1 %i.ec, label %bb.r, label %_ZN5nlsat10assignment5resetEj.exit.i.i

bb.r:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.ed = zext i32 %i.eb to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !261
  br label %_ZN5nlsat10assignment5resetEj.exit.i.i

_ZN5nlsat10assignment5resetEj.exit.i.i:           ; preds = %bb.r, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ef, %i.dw
  br i1 %.not.i.i, label %.lr.ph17.i.i.preheader, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

.lr.ph17.i.i.preheader:                           ; preds = %_ZN5nlsat10assignment5resetEj.exit.i.i, %.lr.ph.i.i
  br label %.lr.ph17.i.i

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader, %.lr.ph17.i.i
  %indvars.iv.i.i = phi i64 [ %i.eg, %.lr.ph17.i.i ], [ %i.du, %.lr.ph17.i.i.preheader ]
  %i.eg = add nsw i64 %indvars.iv.i.i, -1         ; 3 uses
  %i.eh = load ptr, ptr %i.dp, align 8, !tbaa !298
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %i.eh, i64 %i.eg
  call void @_ZN5nlsat6solver3imp9fix_patchERNS_16bound_constraintE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ei)
  %.not10.wide.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not10.wide.i.i, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread, label %.lr.ph17.i.i, !llvm.loop !558

_ZN5nlsat6solver3imp12is_satisfiedEv.exit:        ; preds = %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader, %bb.ab
  call void @_ZN5nlsat6solver3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
  %i.ej = load i32, ptr %i.b, align 4, !tbaa !229 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_ZN5nlsat6solver3imp12is_satisfiedEv.exit
  %i.el = load i32, ptr %i.a, align 8, !tbaa !389
  %i.em = zext i32 %i.el to i64
  %i.en = load ptr, ptr %i.u, align 8, !tbaa !349
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !236 ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.loopexit, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i

_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i:  ; preds = %bb.s
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !192 ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eu
  %.not17.i = icmp eq i32 %i.es, 0
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i13

_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i, %bb.v, %.split, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ew, %i.ev
  br i1 %.not.i15, label %.loopexit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread
  %.01218.i = phi ptr [ %i.ew, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread ], [ %i.ep, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i ] ; 2 uses
  %i.ex = load ptr, ptr %.01218.i, align 8, !tbaa !42 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !238 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %.idx.i.i = shl nuw nsw i64 %i.fb, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx.i.i
  %.not21.not.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not21.not.i.i, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i13, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i
  %.01322.i.i = phi ptr [ %i.fx, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i ], [ %i.ey, %.lr.ph.i13 ] ; 2 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %.01322.i.i, align 4, !tbaa !192 ; 2 uses
  %i.fd = lshr i32 %.sroa.01.0.copyload.i.i, 1
  %i.fe = trunc i32 %.sroa.01.0.copyload.i.i to i1 ; 2 uses
  %i.ff = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.fg = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !233 ; 3 uses
  %.not.i.i.i24 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i24, label %bb.t, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i

bb.t:                                             ; preds = %.lr.ph.i.i23
  %i.fj = load ptr, ptr %i.p, align 8, !tbaa !244
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.ff
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !240 ; 3 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !260 ; 2 uses
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i:        ; preds = %bb.u
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !192
  %.not.i.i.i.i.i25 = icmp ult i32 %i.fo, %i.fs
  br i1 %.not.i.i.i.i.i25, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i

_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i: ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i
  %i.ft = zext i32 %i.fo to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ft
  %.0.i.sroa.speculate.load..i.i.i.i = load i8, ptr %i.fu, align 1, !tbaa !261
  %i.fv = trunc nuw i8 %.0.i.sroa.speculate.load..i.i.i.i to i1
  br i1 %i.fv, label %bb.v, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i

bb.v:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i
  %i.fw = call noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.fl, i1 noundef zeroext %i.fe)
  br i1 %i.fw, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i: ; preds = %.lr.ph.i.i23
  %2 = sub nsw i32 0, %i.fi
  %.0.i.i.i.i = select i1 %i.fe, i32 %2, i32 %i.fi
  %.not14.i.i = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %.not14.i.i, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i, %bb.v, %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i, %bb.u, %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %.01322.i.i, i64 4 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.fx, %i.fc
  br i1 %.not.not.i.i, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i, label %.lr.ph.i.i23

_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i, %.lr.ph.i13
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !229
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit, label %.split

.split:                                           ; preds = %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i
  %i.ga = call noundef zeroext i1 @_ZN5nlsat6solver3imp20process_arith_clauseERKNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i1 noundef zeroext false)
  br i1 %i.ga, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread, label %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit

_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit: ; preds = %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i
  %i.gb = call noundef zeroext i1 @_ZN5nlsat6solver3imp22process_boolean_clauseERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ex)
  br i1 %i.gb, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread, label %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit

bb.w:                                             ; preds = %_ZN5nlsat6solver3imp12is_satisfiedEv.exit
  %i.gc = load ptr, ptr %i.t, align 8, !tbaa !248
  %i.gd = zext i32 %i.ej to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !236 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %.loopexit, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i16

_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i16: ; preds = %bb.w
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !192 ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gk
  %.not17.i17 = icmp eq i32 %i.gi, 0
  br i1 %.not17.i17, label %.loopexit, label %.lr.ph.i18

_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i33, %bb.z, %.split45, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40
  %i.gm = getelementptr inbounds nuw i8, ptr %.01218.i19, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not.i21, label %.loopexit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i16, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread
  %.01218.i19 = phi ptr [ %i.gm, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread ], [ %i.gf, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i16 ] ; 2 uses
  %i.gn = load ptr, ptr %.01218.i19, align 8, !tbaa !42 ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !238 ; 2 uses
  %i.gr = zext i32 %i.gq to i64
  %.idx.i.i26 = shl nuw nsw i64 %i.gr, 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx.i.i26
  %.not21.not.i.i27 = icmp eq i32 %i.gq, 0
  br i1 %.not21.not.i.i27, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i37, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i18, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35
  %.01322.i.i29 = phi ptr [ %i.hn, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35 ], [ %i.go, %.lr.ph.i18 ] ; 2 uses
  %.sroa.01.0.copyload.i.i30 = load i32, ptr %.01322.i.i29, align 4, !tbaa !192 ; 2 uses
  %i.gt = lshr i32 %.sroa.01.0.copyload.i.i30, 1
  %i.gu = trunc i32 %.sroa.01.0.copyload.i.i30 to i1 ; 2 uses
  %i.gv = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gw = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !233 ; 3 uses
  %.not.i.i.i32 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i32, label %bb.x, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i33

bb.x:                                             ; preds = %.lr.ph.i.i28
  %i.gz = load ptr, ptr %i.p, align 8, !tbaa !244
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gv
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !240 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !260 ; 2 uses
  %i.hf = load ptr, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i33

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i33:      ; preds = %bb.y
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !192
  %.not.i.i.i.i.i34 = icmp ult i32 %i.he, %i.hi
  br i1 %.not.i.i.i.i.i34, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i38, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35

_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i38: ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i33
  %i.hj = zext i32 %i.he to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hj
  %.0.i.sroa.speculate.load..i.i.i.i39 = load i8, ptr %i.hk, align 1, !tbaa !261
  %i.hl = trunc nuw i8 %.0.i.sroa.speculate.load..i.i.i.i39 to i1
  br i1 %i.hl, label %bb.z, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35

bb.z:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i38
  %i.hm = call noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.hb, i1 noundef zeroext %i.gu)
  br i1 %i.hm, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i33: ; preds = %.lr.ph.i.i28
  %3 = sub nsw i32 0, %i.gy
  %.0.i.i.i.i34 = select i1 %i.gu, i32 %3, i32 %i.gy
  %.not14.i.i35 = icmp eq i32 %.0.i.i.i.i34, 1
  br i1 %.not14.i.i35, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i.i33, %bb.z, %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i.i38, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i.i33, %bb.y, %bb.x
  %i.hn = getelementptr inbounds nuw i8, ptr %.01322.i.i29, i64 4 ; 2 uses
  %.not.not.i.i36 = icmp eq ptr %i.hn, %i.gs
  br i1 %.not.not.i.i36, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i37, label %.lr.ph.i.i28

_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i37: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i.i35, %.lr.ph.i18
  %i.ho = load i32, ptr %i.b, align 4, !tbaa !229
  %i.hp = icmp eq i32 %i.ho, -1
  br i1 %i.hp, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40, label %.split45

.split45:                                         ; preds = %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i37
  %i.hq = call noundef zeroext i1 @_ZN5nlsat6solver3imp20process_arith_clauseERKNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gn, i1 noundef zeroext false)
  br i1 %i.hq, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread, label %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit

_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40: ; preds = %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.i37
  %i.hr = call noundef zeroext i1 @_ZN5nlsat6solver3imp22process_boolean_clauseERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gn)
  br i1 %i.hr, label %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread, label %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit

_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit: ; preds = %.split45, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40, %.split, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit
  %.04 = phi ptr [ %i.ex, %.split ], [ %i.ex, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit ], [ %i.gn, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40 ], [ %i.gn, %.split45 ]
  %i.hs = call noundef zeroext i1 @_ZN5nlsat6solver3imp7resolveERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %.04)
  br i1 %i.hs, label %bb.aa, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread

bb.aa:                                            ; preds = %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit
  %i.ht = load i32, ptr %i.c, align 8, !tbaa !336
  %i.hu = load i32, ptr %i.v, align 4, !tbaa !281
  %.not = icmp ult i32 %i.ht, %i.hu
  br i1 %.not, label %bb.ab, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5nlsat6solver3imp3logEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
  br label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit

.loopexit:                                        ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i, %bb.s, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i16, %bb.w, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit40.thread, %_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb.exit.thread
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !229
  %i.hw = icmp eq i32 %i.hv, -1
  br i1 %i.hw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.loopexit
  %i.hx = load i32, ptr %i.a, align 8, !tbaa !389 ; 2 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !233
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.ad, label %.backedge

.backedge:                                        ; preds = %bb.ac, %bb.ad, %bb.ae
  br label %bb.b, !llvm.loop !559

bb.ad:                                            ; preds = %bb.ac
  %i.id = shl i32 %i.hx, 1
  %i.ie = or disjoint i32 %i.id, 1
  call void @_ZN5nlsat6solver3imp14decide_literalEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %i.ie)
  %i.if = load i32, ptr %i.a, align 8, !tbaa !389
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.a, align 8, !tbaa !389
  br label %.backedge

bb.ae:                                            ; preds = %.loopexit
  call void @_ZN5nlsat6solver3imp14select_witnessEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
  br label %.backedge

_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread: ; preds = %bb.aa, %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit, %.lr.ph17.i.i, %_ZN5nlsat10assignment5resetEv.exit12.i.i, %_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i
  %.3 = phi i32 [ 1, %.lr.ph17.i.i ], [ 1, %_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i ], [ 1, %_ZN5nlsat10assignment5resetEv.exit12.i.i ], [ 0, %bb.aa ], [ -1, %_ZN5nlsat6solver3imp15process_clausesERK10ptr_vectorINS_6clauseEE.exit ]
  ret i32 %.3
}

declare noundef zeroext i1 @_ZN17algebraic_numbers7manager6is_intERKNS_4anumE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN17algebraic_numbers7manager6int_ltERKNS_4anumERS1_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN17algebraic_numbers7manager11to_rationalERKNS_4anumER8rational(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !359 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit:        ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable
}

declare noundef zeroext i1 @_ZN17algebraic_numbers7manager2gtERKNS_4anumERK3mpq(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rationalmmEi(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.mpq, align 8                 ; 10 uses
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !53
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !359 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !52
  store i32 %i.o, ptr %0, align 8, !tbaa !52
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.r = load i8, ptr %i.q, align 4               ; 2 uses
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !52
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %.pre = load i8, ptr %i.q, align 4
  %.pre5 = load i32, ptr %i.p, align 8
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = phi i32 [ %i.u, %bb.d ], [ %.pre5, %bb.e ]
  %i.y = phi i8 [ %i.r, %bb.d ], [ %.pre, %bb.e ]
  %i.z = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !359 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 1, ptr %3, align 8, !tbaa !52, !alias.scope !562
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !alias.scope !562
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4, !alias.scope !562
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !53, !alias.scope !562
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.ae, align 8, !tbaa !52, !alias.scope !562
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !alias.scope !562
  %i.ah = and i8 %i.ag, -4
  store i8 %i.ah, ptr %i.af, align 4, !alias.scope !562
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.ai, align 8, !tbaa !53, !alias.scope !562
  %i.aj = and i8 %i.y, 1
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = icmp eq i32 %i.x, 1
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %.noexc
  store i32 1, ptr %i.p, align 8, !tbaa !52
  %i.an = load i8, ptr %i.q, align 4
  %i.ao = and i8 %i.an, -2
  store i8 %i.ao, ptr %i.q, align 4
  br label %bb.i

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpq_managerILb1EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h
end_hunk_2
begin_hunk_3_@_ZN6vectorIN17algebraic_numbers4anumELb0EjE13expand_vectorEv:bb.a
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 3 uses
  %i.bd = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !357
  store ptr %i.bd, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !357
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !357
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bg = icmp eq ptr %i.be, %i.ar
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !595

_ZSt20uninitialized_move_nIPN17algebraic_numbers4anumEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIN17algebraic_numbers4anumELb0EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorIN17algebraic_numbers4anumELb0EjE4sizeEv.exit
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bj)
  br label %_ZN6vectorIN17algebraic_numbers4anumELb0EjE7destroyEv.exit

_ZN6vectorIN17algebraic_numbers4anumELb0EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN17algebraic_numbers4anumEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, %.loopexit
  %i.bk = phi ptr [ %i.bi, %_ZSt20uninitialized_move_nIPN17algebraic_numbers4anumEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit ], [ %i.ap, %.loopexit ]
  store ptr %i.bk, ptr %0, align 8, !tbaa !182
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !192
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIN17algebraic_numbers4anumELb0EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !183    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !192
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !183
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %narrow = add nuw i32 %i.j, 8                   ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.k = add i32 %i.g, 8
  %.not27 = icmp ugt i32 %narrow, %i.k
  %or.cond = select i1 %.not, i1 %.not27, i1 false
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !181
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !210
  %i.o = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !211  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !227
  %i.v = load i64, ptr %i.p, align 8, !tbaa !212
  store i64 %i.v, ptr %i.n, align 8, !tbaa !212
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !211
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !211
  store ptr %i.p, ptr %1, align 8, !tbaa !227
  store i64 0, ptr %i.x, align 8, !tbaa !211
  store i8 0, ptr %i.p, align 8, !tbaa !212
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !227   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !212
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @__cxa_free_exception(ptr %i.l) #28
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.af = zext i32 %narrow to i64
  %i.ag = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %0, align 8, !tbaa !183
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !192
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN17algebraic_numbers7manager3setERNS_4anumEi(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN17algebraic_numbers7manager3subERKNS_4anumES3_RS1_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK8reslimit14get_cancel_msgEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i64 @_ZN6memory19get_allocation_sizeEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5nlsat6solver3imp14process_clauseERKNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !238  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx.i = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not21.not.i = icmp eq i32 %i.c, 0
  br i1 %.not21.not.i, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i, %.lr.ph.i
  %.01322.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.ad, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.01322.i, align 4, !tbaa !192 ; 2 uses
  %i.j = lshr i32 %.sroa.01.0.copyload.i, 1
  %i.k = trunc i32 %.sroa.01.0.copyload.i to i1   ; 2 uses
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !233  ; 3 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !244
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !260  ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i:          ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !192
  %.not.i.i.i.i = icmp ult i32 %i.u, %i.y
  br i1 %.not.i.i.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i

_ZNK5nlsat10assignment11is_assignedEj.exit.i.i:   ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i
  %i.z = zext i32 %i.u to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %.0.i.sroa.speculate.load..i.i.i = load i8, ptr %i.aa, align 1, !tbaa !261
  %i.ab = trunc nuw i8 %.0.i.sroa.speculate.load..i.i.i to i1
  br i1 %i.ab, label %bb.e, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i

bb.e:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i
  %i.ac = tail call noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.r, i1 noundef zeroext %i.k)
  br i1 %i.ac, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.thread, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i: ; preds = %bb.b
  %3 = sub nsw i32 0, %i.o
  %.0.i.i.i = select i1 %i.k, i32 %3, i32 %i.o
  %.not14.i = icmp eq i32 %.0.i.i.i, 1
  br i1 %.not14.i, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.thread, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i, %bb.e, %_ZNK5nlsat10assignment11is_assignedEj.exit.i.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i.i, %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.01322.i, i64 4 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ad, %i.e
  br i1 %.not.not.i, label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit, label %bb.b

_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread.i, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !229
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit
  %i.ah = tail call noundef zeroext i1 @_ZN5nlsat6solver3imp22process_boolean_clauseERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.thread

bb.g:                                             ; preds = %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit
  %i.ai = tail call noundef zeroext i1 @_ZN5nlsat6solver3imp20process_arith_clauseERKNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2)
  br label %_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.thread

_ZN5nlsat6solver3imp12is_satisfiedERKNS_6clauseE.exit.thread: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i, %bb.e, %bb.g, %bb.f
  %.0 = phi i1 [ %i.ai, %bb.g ], [ %i.ah, %bb.f ], [ true, %bb.e ], [ true, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5nlsat6solver3imp22process_boolean_clauseERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !238  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit
  %i.h = zext i32 %.2 to i64                      ; 2 uses
  switch i32 %.1, label %bb.i [
    i32 0, label %._crit_edge.thread
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit ] ; 3 uses
  %.02127 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit ]
  %.02226 = phi i32 [ -1, %.lr.ph ], [ %.2, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %.sroa.04.0.copyload = load i32, ptr %i.i, align 4, !tbaa !192 ; 2 uses
  %i.j = lshr i32 %.sroa.04.0.copyload, 1
  %i.k = trunc i32 %.sroa.04.0.copyload to i1     ; 2 uses
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !233  ; 3 uses
  %i.p = sub nsw i32 0, %i.o
  %.0.i.i = select i1 %i.k, i32 %i.p, i32 %i.o
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !244
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !240  ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !260  ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !183  ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !192
  %.not.i.i.i = icmp ult i32 %i.v, %i.z
  br i1 %.not.i.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

_ZNK5nlsat10assignment11is_assignedEj.exit.i:     ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.aa = zext i32 %i.v to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %.0.i.sroa.speculate.load..i.i = load i8, ptr %i.ab, align 1, !tbaa !261
  %i.ac = trunc nuw i8 %.0.i.sroa.speculate.load..i.i to i1
  br i1 %i.ac, label %bb.e, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

bb.e:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i
  %i.ad = tail call noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.s, i1 noundef zeroext %i.k)
  %i.ae = select i1 %i.ad, i32 1, i32 -1
  br label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit:   ; preds = %bb.b, %bb.c, %bb.d, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i, %_ZNK5nlsat10assignment11is_assignedEj.exit.i, %bb.e
  %.2.i = phi i32 [ %.0.i.i, %bb.b ], [ 0, %bb.c ], [ %i.ae, %bb.e ], [ 0, %_ZNK5nlsat10assignment11is_assignedEj.exit.i ], [ 0, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i ], [ 0, %bb.d ]
  %i.af = icmp eq i32 %.2.i, -1                   ; 2 uses
  %i.ag = icmp ne i32 %.02226, -1
  %i.ah = select i1 %i.af, i1 true, i1 %i.ag
  %i.ai = trunc nuw i64 %indvars.iv to i32
  %.2 = select i1 %i.ah, i32 %.02226, i32 %i.ai   ; 2 uses
  %not. = xor i1 %i.af, true
  %i.aj = zext i1 %not. to i32
  %.1 = add i32 %.02127, %i.aj                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !596

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.h
  %.sroa.02.0.copyload = load i32, ptr %i.al, align 4, !tbaa !192 ; 2 uses
  %i.am = ptrtoint ptr %1 to i64
  %i.an = or disjoint i64 %i.am, 2                ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !337
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !337
  %i.as = lshr i32 %.sroa.02.0.copyload, 1        ; 3 uses
  %i.at = trunc i32 %.sroa.02.0.copyload to i1
  %i.au = select i1 %i.at, i32 -1, i32 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aw = zext nneg i32 %i.as to i64              ; 3 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !231
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !233
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !209
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !352
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aw
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !192
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !351
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.aw
  store i64 %i.an, ptr %i.bg, align 8, !tbaa !259
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !347 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !192 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !192
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.h, label %_ZN5nlsat6solver3imp19set_literal_to_trueEN3sat7literalENS_13justificationE.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
  %.pre.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !192
  br label %_ZN5nlsat6solver3imp19set_literal_to_trueEN3sat7literalENS_13justificationE.exit

_ZN5nlsat6solver3imp19set_literal_to_trueEN3sat7literalENS_13justificationE.exit: ; preds = %bb.g, %bb.h
  %i.bp = phi i32 [ %.pre2.i.i.i, %bb.h ], [ %i.bl, %bb.g ]
  %i.bq = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.bi, %bb.g ]
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !395
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.as, ptr %.sroa.41.0..sroa_idx.i.i, align 8
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !347
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !192
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !192
  tail call void @_ZN5nlsat6solver3imp7updt_eqEjNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %i.as, ptr nonnull %i.ao)
  br label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.h
  %.sroa.0.0.copyload = load i32, ptr %i.by, align 4, !tbaa !192
  tail call void @_ZN5nlsat6solver3imp14decide_literalEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %.sroa.0.0.copyload)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a, %_ZN5nlsat6solver3imp19set_literal_to_trueEN3sat7literalENS_13justificationE.exit, %bb.i
  %i.bz = phi i1 [ false, %._crit_edge ], [ true, %_ZN5nlsat6solver3imp19set_literal_to_trueEN3sat7literalENS_13justificationE.exit ], [ true, %bb.i ], [ false, %bb.a ]
  ret i1 %i.bz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5nlsat6solver3imp20process_arith_clauseERKNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.63, align 8          ; 10 uses
  %4 = alloca %class.obj_ref.63, align 8          ; 12 uses
  %5 = alloca %class.obj_ref.63, align 8          ; 5 uses
  %6 = alloca %class.obj_ref.63, align 8          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ult i32 %i.b, 2
  %or.cond.not = select i1 %2, i1 true, i1 %i.c
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 2147483648
  %.not128 = icmp eq i64 %i.f, 0
  br i1 %.not128, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !73, !align !74
  store ptr null, ptr %3, align 8, !tbaa !404
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.l = load i32, ptr %i.k, align 4, !tbaa !229
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !348
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !392  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !238
  %.not146.not = icmp eq i32 %i.r, 0
  br i1 %.not146.not, label %.thread124, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread117
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread117 ] ; 3 uses
  %.040151 = phi i32 [ 0, %.lr.ph ], [ %.343122, %.thread117 ] ; 5 uses
  %.045150 = phi i32 [ -1, %.lr.ph ], [ %.449121, %.thread117 ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !192 ; 5 uses
  invoke void @_ZN5nlsat6solver3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = trunc i32 %i.aa to i1                   ; 5 uses
  %i.ad = zext nneg i32 %i.ab to i64              ; 5 uses
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !231
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !233 ; 4 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.f, label %.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !244
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !240 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !260 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !183 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.g
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !192
  %.not.i.i.i = icmp ult i32 %i.am, %i.aq
  br i1 %.not.i.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i, label %bb.i

_ZNK5nlsat10assignment11is_assignedEj.exit.i:     ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.ar = zext i32 %i.am to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.0.i.sroa.speculate.load..i.i = load i8, ptr %i.as, align 1, !tbaa !261
  %i.at = trunc nuw i8 %.0.i.sroa.speculate.load..i.i to i1
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i
  %i.au = invoke noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.aj, i1 noundef zeroext %i.ac)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.au, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread, label %.thread117

.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge: ; preds = %bb.e
  %7 = sub nsw i32 0, %i.ag
  %.0.i.i = select i1 %i.ac, i32 %7, i32 %i.ag
  %8 = icmp eq i32 %.0.i.i, -1
  br i1 %8, label %.thread117, label %.noexc76.a

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread: ; preds = %.noexc
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !231
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ad
  %.pre155 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !233 ; 2 uses
  %.not.i70 = icmp eq i32 %.pre155, 0
  br i1 %.not.i70, label %bb.i, label %.noexc76.a

bb.i:                                             ; preds = %bb.f, %_ZNK5nlsat10assignment11is_assignedEj.exit.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i, %bb.g, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !244
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ad
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !240 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !260 ; 2 uses
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !183 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i72

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i72:          ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !192
  %.not.i.i.i73 = icmp ult i32 %i.ba, %i.be
  br i1 %.not.i.i.i73, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i74, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread

_ZNK5nlsat10assignment11is_assignedEj.exit.i74:   ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i72
  %i.bf = zext i32 %i.ba to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  %.0.i.sroa.speculate.load..i.i75 = load i8, ptr %i.bg, align 1, !tbaa !261
  %i.bh = trunc nuw i8 %.0.i.sroa.speculate.load..i.i75 to i1
  br i1 %i.bh, label %bb.k, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread

bb.k:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i74
  %i.bi = invoke noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.ax, i1 noundef zeroext %i.ac)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.k
  br i1 %i.bi, label %.thread124, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread

.noexc76.a:                                       ; preds = %.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread
  %9 = phi i32 [ %.pre155, %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread ], [ %i.ag, %.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge ] ; 2 uses
  %10 = sub nsw i32 0, %9
  %.0.i.i69 = select i1 %i.ac, i32 %10, i32 %9
  %11 = icmp eq i32 %.0.i.i69, 1
  br i1 %11, label %.thread124, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread: ; preds = %bb.j, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i72, %_ZNK5nlsat10assignment11is_assignedEj.exit.i74, %.noexc76, %bb.i, %.noexc76.a
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !244
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ad
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !73, !align !74
  store ptr null, ptr %4, align 8, !tbaa !404
  store ptr %i.bm, ptr %i.x, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN5nlsat9evaluator20infeasible_intervalsEPNS_4atomEbPKNS_6clauseE(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.63) align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.bl, i1 noundef zeroext %i.ac, ptr noundef nonnull %1)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit unwind label %bb.l

_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit: ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread
  %.pre157 = load ptr, ptr %5, align 8, !tbaa !404 ; 3 uses
  store ptr %.pre157, ptr %4, align 8, !tbaa !404
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bn = icmp eq ptr %.pre157, null
  br i1 %i.bn, label %.invoke, label %bb.m

.invoke:                                          ; preds = %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit, %bb.q
  %i.bo = phi ptr [ %i.p, %bb.q ], [ null, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit ]
  invoke void @_ZN5nlsat6solver3imp11R_propagateEN3sat7literalEPKNS_12interval_setEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %i.aa, ptr noundef %i.bo, i1 noundef zeroext true)
          to label %bb.ad unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit77.thread
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aj

.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o, %bb.m, %.invoke
  %lpad.loopexit.split-lp215 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !73, !align !74
  %i.br = invoke noundef zeroext i1 @_ZN5nlsat20interval_set_manager7is_fullEPKNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, ptr noundef nonnull %.pre157)
          to label %bb.n unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = xor i32 %i.aa, 1
  invoke void @_ZN5nlsat6solver3imp11R_propagateEN3sat7literalEPKNS_12interval_setEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %i.bs, ptr noundef null, i1 noundef zeroext true)
          to label %bb.ae unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !73, !align !74
  %i.bu = load ptr, ptr %4, align 8, !tbaa !404   ; 2 uses
  %i.bv = invoke noundef zeroext i1 @_ZN5nlsat20interval_set_manager6subsetEPKNS_12interval_setES3_(ptr noundef nonnull align 8 dereferenceable(28) %i.bt, ptr noundef %i.bu, ptr noundef %i.p)
          to label %bb.q unwind label %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.bv, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !289, !nonnull !73, !align !74 ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !404
  store ptr %i.bw, ptr %i.y, align 8, !tbaa !185
  %i.bx = invoke noundef ptr @_ZN5nlsat20interval_set_manager8mk_unionEPKNS_12interval_setES3_(ptr noundef nonnull align 8 dereferenceable(28) %i.bw, ptr noundef %i.bu, ptr noundef %i.p)
          to label %bb.s unwind label %bb.w       ; 4 uses

bb.s:                                             ; preds = %bb.r
  %.not.i80 = icmp eq ptr %i.bx, null
  br i1 %.not.i80, label %.noexc82._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5nlsat20interval_set_manager7inc_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.bw, ptr noundef nonnull %i.bx)
          to label %.noexc82._crit_edge unwind label %bb.w

.noexc82._crit_edge:                              ; preds = %bb.t, %bb.s
  %.pre159 = load ptr, ptr %i.g, align 8, !tbaa !289
  store ptr %i.bx, ptr %6, align 8, !tbaa !404
  %i.by = invoke noundef zeroext i1 @_ZN5nlsat20interval_set_manager7is_fullEPKNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %.pre159, ptr noundef %i.bx)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %.noexc82._crit_edge
  br i1 %i.by, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bz = xor i32 %i.aa, 1
  %i.ca = load ptr, ptr %6, align 8, !tbaa !404
  invoke void @_ZN5nlsat6solver3imp11R_propagateEN3sat7literalEPKNS_12interval_setEb(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %i.bz, ptr noundef %i.ca, i1 noundef zeroext false)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4 unwind label %bb.w

bb.w:                                             ; preds = %bb.ab, %bb.aa, %bb.t, %bb.v, %.noexc82._crit_edge, %bb.r
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aj

bb.x:                                             ; preds = %bb.u
  %i.cc = add i32 %.040151, 1                     ; 4 uses
  %i.cd = icmp eq i32 %.045150, -1
  br i1 %i.cd, label %bb.y, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %3, align 8, !tbaa !404   ; 3 uses
  %i.cf = load ptr, ptr %4, align 8, !tbaa !404   ; 4 uses
  %.not.i84 = icmp eq ptr %i.ce, %i.cf
  %i.cg = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  br i1 %.not.i84, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i85 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i85, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7dec_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.ch, ptr noundef nonnull %i.ce)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i unwind label %bb.w

_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i: ; preds = %bb.aa, %bb.z
  store ptr %i.cf, ptr %3, align 8, !tbaa !404
  %.not.i3.i = icmp eq ptr %i.cf, null
  br i1 %.not.i3.i, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4, label %bb.ab

bb.ab:                                            ; preds = %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7inc_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.ci, ptr noundef nonnull %i.cf)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4 unwind label %bb.w

_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4: ; preds = %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i, %bb.y, %bb.ab, %bb.x, %bb.v
  %.247.jt4 = phi i32 [ %.045150, %bb.v ], [ %.045150, %bb.x ], [ %i.cg, %bb.ab ], [ %i.cg, %bb.y ], [ %i.cg, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i ]
  %.141.jt4 = phi i32 [ %.040151, %bb.v ], [ %i.cc, %bb.x ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.y ], [ %i.cc, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit.i ]
  %i.cj = load ptr, ptr %6, align 8, !tbaa !404   ; 2 uses
  %.not.i.i88.jt4 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i88.jt4, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit90.jt4, label %bb.ac

bb.ac:                                            ; preds = %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7dec_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.ck, ptr noundef nonnull %i.cj)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit90.jt4 unwind label %.loopexit179

.loopexit179:                                     ; preds = %bb.ac
  %lpad.loopexit181 = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %lpad.loopexit181, 0
  call void @__clang_call_terminate(ptr %i.cl) #30
  unreachable

_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit90.jt4: ; preds = %bb.ac, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEEaSERKS3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ae

bb.ad:                                            ; preds = %.invoke
  %i.cm = load ptr, ptr %4, align 8, !tbaa !404   ; 2 uses
  %.not.i.i91.jt1 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i91.jt1, label %bb.ah, label %bb.af

bb.ae:                                            ; preds = %bb.o, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit90.jt4
  %.348.jt4 = phi i32 [ %.045150, %bb.o ], [ %.247.jt4, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit90.jt4 ]
  %.242.jt4 = phi i32 [ %.040151, %bb.o ], [ %.141.jt4, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit90.jt4 ]
  %i.cn = load ptr, ptr %4, align 8, !tbaa !404   ; 2 uses
  %.not.i.i91.jt4 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i91.jt4, label %bb.ai, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7dec_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.co, ptr noundef nonnull %i.cm)
          to label %bb.ah unwind label %.loopexit.split-lp185.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7dec_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.cp, ptr noundef nonnull %i.cn)
          to label %bb.ai unwind label %.loopexit.split-lp185.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp185.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %bb.af
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %lpad.loopexit.split-lp218, 0
  call void @__clang_call_terminate(ptr %i.cq) #30
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread124

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread117

.thread117:                                       ; preds = %bb.ai, %.noexc, %.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge
  %.343122 = phi i32 [ %.242.jt4, %bb.ai ], [ %.040151, %.noexc ], [ %.040151, %.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge ] ; 2 uses
  %.449121 = phi i32 [ %.348.jt4, %bb.ai ], [ %.045150, %.noexc ], [ %.045150, %.noexc._ZN5nlsat6solver3imp5valueEN3sat7literalE.exit.thread_crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.q, align 4, !tbaa !238
  %i.cs = zext i32 %i.cr to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !597

bb.aj:                                            ; preds = %bb.w, %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp215, %.loopexit.split-lp177.loopexit.split-lp.loopexit.split-lp ], [ %i.cb, %bb.w ], [ %i.bp, %bb.l ]
  call void @_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %.thread117
  %i.ct = zext i32 %.449121 to i64                ; 2 uses
  switch i32 %.343122, label %bb.an [
    i32 0, label %.thread124
    i32 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  %.sroa.02.0.copyload = load i32, ptr %i.cv, align 4, !tbaa !192 ; 2 uses
  %i.cw = ptrtoint ptr %1 to i64
  %i.cx = or disjoint i64 %i.cw, 2                ; 2 uses
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !337
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !337
  %i.dc = lshr i32 %.sroa.02.0.copyload, 1        ; 3 uses
  %i.dd = trunc i32 %.sroa.02.0.copyload to i1
  %i.de = select i1 %i.dd, i32 -1, i32 1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dg = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !231
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.de, ptr %i.di, align 4, !tbaa !233
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !209
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !352
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dg
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !192
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !351
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dg
  store i64 %i.cx, ptr %i.dq, align 8, !tbaa !259
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !347 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !192 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !192
  %i.dy = icmp eq i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.am, label %_ZN5nlsat6solver3imp17save_assign_trailEj.exit.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  invoke void @_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94:                                         ; preds = %bb.am
  %.pre.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !192
  br label %_ZN5nlsat6solver3imp17save_assign_trailEj.exit.i

_ZN5nlsat6solver3imp17save_assign_trailEj.exit.i: ; preds = %.noexc94, %bb.al
  %i.dz = phi i32 [ %.pre2.i.i.i, %.noexc94 ], [ %i.dv, %bb.al ]
  %i.ea = phi ptr [ %.pre.i.i.i, %.noexc94 ], [ %i.ds, %bb.al ]
  %i.eb = zext i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eb ; 2 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !395
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 %i.dc, ptr %.sroa.41.0..sroa_idx.i.i, align 8
  %i.ed = load ptr, ptr %i.dr, align 8, !tbaa !347
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !192
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !192
  invoke void @_ZN5nlsat6solver3imp7updt_eqEjNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %i.dc, ptr nonnull %i.cy)
          to label %.invoke198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.h, %bb.k, %.invoke198, %_ZN5nlsat6solver3imp17save_assign_trailEj.exit.i, %bb.am, %bb.aq
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %._crit_edge
  br i1 %2, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = and i64 %i.ei, 2147483648
  %.not129 = icmp eq i64 %i.ej, 0
  br i1 %.not129, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ek = load i32, ptr %i.a, align 8, !tbaa !278
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aq, label %.thread124

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ct
  %.sroa.0.0.copyload = load i32, ptr %i.en, align 4, !tbaa !192
  invoke void @_ZN5nlsat6solver3imp14decide_literalEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %.sroa.0.0.copyload)
          to label %.invoke198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke198:                                       ; preds = %bb.aq, %_ZN5nlsat6solver3imp17save_assign_trailEj.exit.i
  %i.eo = load ptr, ptr %3, align 8, !tbaa !404
  invoke void @_ZN5nlsat6solver3imp15updt_infeasibleEPKNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef %i.eo)
          to label %.thread124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread124:                                       ; preds = %.noexc76, %.noexc76.a, %.invoke198, %bb.c, %bb.ah, %bb.ap, %._crit_edge
  %.4 = phi i1 [ true, %bb.ah ], [ false, %._crit_edge ], [ true, %.invoke198 ], [ true, %bb.ap ], [ false, %bb.c ], [ true, %.noexc76.a ], [ true, %.noexc76 ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !404   ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i96, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit98, label %bb.ar

bb.ar:                                            ; preds = %.thread124
  %i.eq = load ptr, ptr %i.i, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7dec_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.eq, ptr noundef nonnull %i.ep)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit98 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #30
  unreachable

_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit98: ; preds = %.thread124, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.at

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.pn64 = phi { ptr, i32 } [ %.pn, %bb.aj ], [ %lpad.loopexit.split-lp213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn64

bb.at:                                            ; preds = %bb.b, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit98
  %.5 = phi i1 [ %.4, %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev.exit98 ], [ true, %bb.b ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp7updt_eqEjNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %1, ptr %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = load i8, ptr %i.a, align 4, !tbaa !279, !range !75, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !233
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240  ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !243
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !263
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !265
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 7
  %.not21 = icmp eq i64 %i.u, 0
  br i1 %.not21, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 7
  switch i32 %i.x, label %bb.k [
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.v, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !304
  %.not15 = icmp eq ptr %i.ab, null
  br i1 %.not15, label %bb.k, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ac = and i64 %i.v, -8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !388
  %.not13 = icmp eq i32 %i.af, 0
  br i1 %.not13, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !387
  %.not14 = icmp eq i32 %i.ag, 0
  br i1 %.not14, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !229
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.ak = zext i32 %i.ai to i64                   ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !244
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !240 ; 2 uses
  %.not16 = icmp eq ptr %i.an, null
  br i1 %.not16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call noundef i32 @_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull %i.an)
  %i.ap = tail call noundef i32 @_ZNK5nlsat6solver3imp6degreeEPKNS_4atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull %i.l)
  %.not17 = icmp ugt i32 %i.ao, %i.ap
  br i1 %.not17, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !244
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ak
  %.pre22 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !240
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.k
  %i.aq = phi ptr [ %.pre22, %._crit_edge ], [ null, %bb.k ]
  tail call void @_ZN5nlsat6solver3imp18save_updt_eq_trailEPNS_4atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef %i.aq)
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !244
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ak
  store ptr %i.l, ptr %i.as, align 8, !tbaa !240
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp18save_updt_eq_trailEPNS_4atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192  ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !192
  br label %_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE9push_backEOS3_.exit

_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE9push_backEOS3_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 2 uses
  store i32 4, ptr %i.l, align 8, !tbaa !395
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !212
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !192
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !192
  ret void
}

declare void @_ZN5nlsat9evaluator20infeasible_intervalsEPNS_4atomEbPKNS_6clauseE(ptr dead_on_unwind writable sret(%class.obj_ref.63) align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !404    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !405, !nonnull !73, !align !74
  invoke void @_ZN5nlsat20interval_set_manager7dec_refEPNS_12interval_setE(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit unwind label %bb.c

_ZN7obj_refIN5nlsat12interval_setENS0_20interval_set_managerEE7dec_refEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
end_hunk_3
begin_hunk_4_@_ZN5nlsat6solver3imp24remove_literals_from_lvlERNS_21scoped_literal_vectorEj:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !192  ; 3 uses
  %i.m = icmp eq i32 %.0.lcssa.ph, %i.l
  br i1 %i.m, label %_ZN5nlsat21scoped_literal_vector6shrinkEj.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.n = icmp ult i32 %.0.lcssa.ph, %i.l
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.o = zext i32 %.0.lcssa.ph to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !222 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN5nlsat21scoped_literal_vector6shrinkEj.exit, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.preheader.i, %._crit_edge.i
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.ph, %.preheader.i ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %.0.lcssa.ph, ptr %i.q, align 4, !tbaa !192
  br label %_ZN5nlsat21scoped_literal_vector6shrinkEj.exit

.lr.ph.i:                                         ; preds = %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.o, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !268, !nonnull !73, !align !74
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 4, !tbaa !192
  %i.u = lshr i32 %.sroa.0.0.copyload.i, 1        ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !47   ; 3 uses
  %i.w = icmp eq i32 %i.u, 2147483647
  br i1 %i.w, label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 392
  %i.y = zext nneg i32 %i.u to i64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !244
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !269
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !269
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !243
  %i.ai = icmp slt i32 %i.ah, 3
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5nlsat6solver3imp3delEPNS_9ineq_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5nlsat6solver3imp3delEPNS_9root_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i

_ZN5nlsat6solver7dec_refEN3sat7literalE.exit.i:   ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond27 = icmp eq i32 %i.l, %lftr.wideiv
  br i1 %exitcond27, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !601

_ZN5nlsat21scoped_literal_vector6shrinkEj.exit:   ; preds = %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %._crit_edge.i, %._crit_edge.i.thread
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %i.aj = phi ptr [ %i.b, %.lr.ph ], [ %i.cj, %bb.t ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.025 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.ak, align 4, !tbaa !192 ; 3 uses
  %i.al = lshr i32 %.sroa.0.0.copyload.i17, 1     ; 2 uses
  %i.am = trunc i32 %.sroa.0.0.copyload.i17 to i1
  %i.an = zext nneg i32 %i.al to i64              ; 4 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !231
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !233 ; 2 uses
  %i.ar = sub nsw i32 0, %i.aq
  %.0.i = select i1 %i.am, i32 %i.ar, i32 %i.aq
  %i.as = icmp eq i32 %.0.i, -1
  br i1 %i.as, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !352
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %i.av = load i32, ptr %i.au, align 4, !tbaa !192
  %i.aw = icmp eq i32 %i.av, %2
  br i1 %i.aw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !244
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.an
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !240 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZNK5nlsat6solver3imp7max_varEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !260
  br label %_ZNK5nlsat6solver3imp7max_varEj.exit

_ZNK5nlsat6solver3imp7max_varEj.exit:             ; preds = %bb.i, %bb.j
  %.0.i18 = phi i32 [ %i.bb, %bb.j ], [ -1, %bb.i ]
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !229
  %i.bd = icmp eq i32 %.0.i18, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varEj.exit
  %i.be = load i32, ptr %i.j, align 8, !tbaa !397
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !397
  br label %bb.t

bb.l:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varEj.exit, %bb.h, %bb.g
  %i.bg = load ptr, ptr %1, align 8, !tbaa !268, !nonnull !73, !align !74
  %i.bh = icmp eq i32 %i.al, 2147483647
  %.pre.i19 = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 4 uses
  br i1 %i.bh, label %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i19, i64 392
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !244
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !240 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !269
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !269
  br label %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i

_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i:   ; preds = %bb.n, %bb.m, %bb.l
  %i.bq = zext i32 %.025 to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bq
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.br, align 4, !tbaa !192
  %i.bs = lshr i32 %.sroa.0.0.copyload.i20, 1     ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 2147483647
  br i1 %i.bt, label %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i19, i64 392
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !244
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !240 ; 5 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !269
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !269
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.q, label %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !243
  %i.cf = icmp slt i32 %i.ce, 3
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5nlsat6solver3imp3delEPNS_9ineq_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %.pre.i19, ptr noundef nonnull %i.by)
  br label %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit

bb.s:                                             ; preds = %bb.q
  tail call void @_ZN5nlsat6solver3imp3delEPNS_9root_atomE(ptr noundef nonnull align 8 dereferenceable(1017) %.pre.i19, ptr noundef nonnull %i.by)
  br label %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit

_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit: ; preds = %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i, %bb.o, %bb.p, %bb.r, %bb.s
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !222 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bq
  store i32 %.sroa.0.0.copyload.i17, ptr %i.ch, align 4, !tbaa !192
  %i.ci = add i32 %.025, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit, %bb.k
  %i.cj = phi ptr [ %i.aj, %bb.k ], [ %i.cg, %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit ] ; 2 uses
  %.1 = phi i32 [ %.025, %bb.k ], [ %i.ci, %_ZN5nlsat21scoped_literal_vector3setEjN3sat7literalE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %bb.g, !llvm.loop !602
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp18process_antecedentEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5nlsat6solver3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
  %i.a = lshr i32 %1, 1                           ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = zext nneg i32 %i.a to i64                ; 9 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !233
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5nlsat6solver3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !221  ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %thread-pre-split.i.i.i.preheader, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !192  ; 2 uses
  %.not.i.i = icmp ult i32 %i.a, %i.l
  br i1 %.not.i.i, label %_ZNK5nlsat6solver3imp9is_markedEj.exit, label %thread-pre-split.i.i.i.preheader

_ZNK5nlsat6solver3imp9is_markedEj.exit:           ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %.0.i.sroa.speculate.load..i = load i8, ptr %i.m, align 1, !tbaa !212
  %i.n = icmp eq i8 %.0.i.sroa.speculate.load..i, 1
  br i1 %i.n, label %bb.r, label %_ZN5nlsat6solver3imp4markEj.exit

thread-pre-split.i.i.i.preheader:                 ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, %bb.b
  %.ph = phi ptr [ null, %bb.b ], [ %i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i ]
  %.0.i17.i.i.i.ph = phi i32 [ 0, %bb.b ], [ %i.l, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %.ph62 = add nuw i32 %i.a, 1                    ; 3 uses
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %thread-pre-split.i.i.i.preheader, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i
  %i.o = phi ptr [ %.pr.pre.i.i.i, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i ], [ %.ph, %thread-pre-split.i.i.i.preheader ] ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i:        ; preds = %thread-pre-split.i.i.i
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !192
  %.not66 = icmp ult i32 %i.a, %i.r
  br i1 %.not66, label %bb.c, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i, %thread-pre-split.i.i.i
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pr.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !221
  br label %thread-pre-split.i.i.i, !llvm.loop !603

bb.c:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -4
  store i32 %.ph62, ptr %i.s, align 4, !tbaa !192
  %.not1319.i.i.i = icmp eq i32 %.0.i17.i.i.i.ph, %.ph62
  br i1 %.not1319.i.i.i, label %_ZN5nlsat6solver3imp4markEj.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.t = zext i32 %.ph62 to i64
  %i.u = zext nneg i32 %.0.i17.i.i.i.ph to i64    ; 2 uses
  %i.v = getelementptr i8, ptr %i.o, i64 %i.u
  %i.w = sub nsw i64 %i.t, %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !212
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !221
  br label %_ZN5nlsat6solver3imp4markEj.exit

_ZN5nlsat6solver3imp4markEj.exit:                 ; preds = %_ZNK5nlsat6solver3imp9is_markedEj.exit, %bb.c, %.lr.ph.preheader.i.i.i
  %i.x = phi ptr [ %.pre.i.i, %.lr.ph.preheader.i.i.i ], [ %i.o, %bb.c ], [ %i.i, %_ZNK5nlsat6solver3imp9is_markedEj.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.c
  store i8 1, ptr %i.y, align 1, !tbaa !212
  %i.z = icmp eq i32 %i.a, 2147483647
  br i1 %i.z, label %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5nlsat6solver3imp4markEj.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !268, !nonnull !73, !align !74
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 392
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !244
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.c
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !269
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !269
  br label %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i

_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i:   ; preds = %bb.e, %bb.d, %_ZN5nlsat6solver3imp4markEj.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !222 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !192 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !192
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit

bb.g:                                             ; preds = %bb.f, %_ZN5nlsat6solver7inc_refEN3sat7literalE.exit.i
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  %.pre.i.i11 = load ptr, ptr %i.al, align 8, !tbaa !222 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i11, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !192
  br label %_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit

_ZN5nlsat21scoped_literal_vector9push_backEN3sat7literalE.exit: ; preds = %bb.f, %bb.g
  %i.at = phi i32 [ %.pre2.i.i, %bb.g ], [ %i.ap, %bb.f ] ; 2 uses
  %i.au = phi ptr [ %.pre.i.i11, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = zext i32 %i.at to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %1, ptr %i.ax, align 4, !tbaa !192
  %i.ay = add i32 %i.at, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !192
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.c
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !192
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !221 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %thread-pre-split.i.i.i21.preheader, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i12

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i12:            ; preds = %bb.h
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !192 ; 2 uses
  %.not.i.i13 = icmp ult i32 %i.a, %i.bh
  br i1 %.not.i.i13, label %_ZNK5nlsat6solver3imp9is_markedEj.exit16, label %thread-pre-split.i.i.i21.preheader

_ZNK5nlsat6solver3imp9is_markedEj.exit16:         ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.c
  %.0.i.sroa.speculate.load..i15 = load i8, ptr %i.bi, align 1, !tbaa !212
  %i.bj = icmp eq i8 %.0.i.sroa.speculate.load..i15, 1
  br i1 %i.bj, label %bb.r, label %_ZN5nlsat6solver3imp4markEj.exit32

thread-pre-split.i.i.i21.preheader:               ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i12, %bb.h
  %.ph63 = phi ptr [ null, %bb.h ], [ %i.be, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i12 ]
  %.0.i17.i.i.i24.ph = phi i32 [ 0, %bb.h ], [ %i.bh, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i12 ] ; 2 uses
  %.ph64 = add nuw i32 %i.a, 1                    ; 3 uses
  br label %thread-pre-split.i.i.i21

thread-pre-split.i.i.i21:                         ; preds = %thread-pre-split.i.i.i21.preheader, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i29
  %i.bk = phi ptr [ %.pr.pre.i.i.i30, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i29 ], [ %.ph63, %thread-pre-split.i.i.i21.preheader ] ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i29, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i25

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i25:      ; preds = %thread-pre-split.i.i.i21
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !192
  %.not = icmp ult i32 %i.a, %i.bn
  br i1 %.not, label %bb.i, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i29

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i29: ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i25, %thread-pre-split.i.i.i21
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  %.pr.pre.i.i.i30 = load ptr, ptr %i.bd, align 8, !tbaa !221
  br label %thread-pre-split.i.i.i21, !llvm.loop !603

bb.i:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i25
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4
  store i32 %.ph64, ptr %i.bo, align 4, !tbaa !192
  %.not1319.i.i.i26 = icmp eq i32 %.0.i17.i.i.i24.ph, %.ph64
  br i1 %.not1319.i.i.i26, label %_ZN5nlsat6solver3imp4markEj.exit32, label %.lr.ph.preheader.i.i.i27

.lr.ph.preheader.i.i.i27:                         ; preds = %bb.i
  %i.bp = zext i32 %.ph64 to i64
  %i.bq = zext nneg i32 %.0.i17.i.i.i24.ph to i64 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bk, i64 %i.bq
  %i.bs = sub nsw i64 %i.bp, %i.bq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.br, i8 0, i64 %i.bs, i1 false), !tbaa !212
  %.pre.i.i28 = load ptr, ptr %i.bd, align 8, !tbaa !221
  br label %_ZN5nlsat6solver3imp4markEj.exit32

_ZN5nlsat6solver3imp4markEj.exit32:               ; preds = %_ZNK5nlsat6solver3imp9is_markedEj.exit16, %bb.i, %.lr.ph.preheader.i.i.i27
  %i.bt = phi ptr [ %.pre.i.i28, %.lr.ph.preheader.i.i.i27 ], [ %i.bk, %bb.i ], [ %i.be, %_ZNK5nlsat6solver3imp9is_markedEj.exit16 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.c
  store i8 1, ptr %i.bu, align 1, !tbaa !212
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !209
  %i.bx = icmp eq i32 %i.bc, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN5nlsat6solver3imp4markEj.exit32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !244
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.c
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !240 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZNK5nlsat6solver3imp7max_varEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !260
  br label %_ZNK5nlsat6solver3imp7max_varEj.exit

_ZNK5nlsat6solver3imp7max_varEj.exit:             ; preds = %bb.j, %bb.k
  %.0.i33 = phi i32 [ %i.cd, %bb.k ], [ -1, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !229
end_hunk_4
begin_hunk_5_@_ZN5nlsat6solver3imp21display_unsound_lemmaERS1_RNS1_16scoped_bool_varsEjPKN3sat7literalEPKNS_18lazy_justificationE:bb.a
_ZNK5nlsat10assignment11is_assignedEj.exit.us.i:  ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.us.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv53.i
  %.0.i.sroa.speculate.load..i.us.i = load i8, ptr %i.ba, align 1, !tbaa !261
  %i.bb = trunc nuw i8 %.0.i.sroa.speculate.load..i.us.i to i1
  br i1 %i.bb, label %bb.f, label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread.us.i

bb.f:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.us.i
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !181
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = trunc nuw i64 %indvars.iv53.i to i32
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef %i.be), !inline_history !313 ; 0 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.65, i64 noundef 4) ; 0 uses
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !292, !nonnull !73, !align !74
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !182
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv53.i
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK17algebraic_numbers7manager15display_decimalERSoRKNS_4anumEj(ptr noundef nonnull align 8 dereferenceable(17) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef 10) ; 0 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %.pre56.i = load ptr, ptr %i.ak, align 8, !tbaa !183
  br label %_ZNK5nlsat10assignment11is_assignedEj.exit.thread.us.i

_ZNK5nlsat10assignment11is_assignedEj.exit.thread.us.i: ; preds = %bb.f, %_ZNK5nlsat10assignment11is_assignedEj.exit.us.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.us.i, %bb.e
  %i.bm = phi ptr [ %.pre56.i, %bb.f ], [ %i.aq, %_ZNK5nlsat10assignment11is_assignedEj.exit.us.i ], [ %i.aq, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.us.i ], [ %i.aq, %bb.e ] ; 2 uses
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNK5nlsat6solver3imp22display_num_assignmentERSoRKN10polynomial16display_var_procEPK7svectorIbjE.exit, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.us.i, !llvm.loop !7

_ZNK5nlsat6solver3imp22display_num_assignmentERSoRKN10polynomial16display_var_procEPK7svectorIbjE.exit: ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.us.i, %_ZNK5nlsat10assignment11is_assignedEj.exit.thread.us.i, %_ZNK5nlsat6solver3imp7displayERSojPKN3sat7literalE.exit
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.126, i64 noundef 36) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN5nlsat6solver3imp22collect_vars_on_clauseEjPKN3sat7literalE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.72") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %3, ptr noundef %4)
  %i.bq = load ptr, ptr %6, align 8, !tbaa !295   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !295 ; 2 uses
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5nlsat6solver3imp22display_num_assignmentERSoRKN10polynomial16display_var_procEPK7svectorIbjE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !183 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %.lr.ph, %_ZNK5nlsat6solver3imp22display_num_assignmentERSoRKN10polynomial16display_var_procEPK7svectorIbjE.exit
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.splitthread-pre-split:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %.pr = load ptr, ptr %i.bu, align 8, !tbaa !183
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.cc = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bz, %.lr.ph ] ; 3 uses
  %.sroa.0105.0117 = phi ptr [ %i.dh, %.lr.ph.splitthread-pre-split ], [ %i.bq, %.lr.ph ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.0105.0117, align 4, !tbaa !192 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, null
  br i1 %i.ce, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i:              ; preds = %.lr.ph.split
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !192
  %.not.i.i = icmp ult i32 %i.cd, %i.cg
  br i1 %.not.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49

_ZNK5nlsat10assignment11is_assignedEj.exit:       ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i
  %i.ch = zext i32 %i.cd to i64                   ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ch
  %.0.i.sroa.speculate.load..i = load i8, ptr %i.ci, align 1, !tbaa !261
  %i.cj = trunc nuw i8 %.0.i.sroa.speculate.load..i to i1
  br i1 %i.cj, label %bb.g, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49

bb.g:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !311 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.j
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef %i.ch)
          to label %_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.cr = load ptr, ptr %i.bw, align 8, !tbaa !312, !nonnull !73, !align !74
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !203
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ch
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !192
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !181
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i32 noundef %i.cu)
          to label %_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !335 ; 0 uses

_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit: ; preds = %.noexc, %bb.k
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZNK5nlsat6solver3imp21perm_display_var_procclERSoj.exit
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.127, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.l
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !292, !nonnull !73, !align !74
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.dc = load ptr, ptr %i.by, align 8, !tbaa !182
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ch
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK17algebraic_numbers7manager15display_decimalERSoRKNS_4anumEj(ptr noundef nonnull align 8 dereferenceable(17) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i32 noundef 10)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %.lr.ph.split, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, %bb.o, %_ZNK5nlsat10assignment11is_assignedEj.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0105.0117, i64 4 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bs
  br i1 %i.di, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !656

bb.p:                                             ; preds = %._crit_edge
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.128, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.preheader: ; preds = %bb.p
  br i1 %.not11.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51._crit_edge, label %.lr.ph119

.lr.ph119:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 192
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.q

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.preheader
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph119, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %indvars.iv = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !192 ; 3 uses
  %i.ds = lshr i32 %i.dr, 1
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !203
  %i.du = zext nneg i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !192
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.r
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp7displayERSoN3sat7literalERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i32 %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNK5nlsat6solver3imp7displayERSoN3sat7literalE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNK5nlsat6solver3imp7displayERSoN3sat7literalE.exit: ; preds = %bb.s
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %_ZNK5nlsat6solver3imp7displayERSoN3sat7literalE.exit
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull @.str.127, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %bb.t
  %i.ed = and i32 %i.dw, 2147483647
  %i.ee = trunc i32 %i.dr to i1                   ; 2 uses
  %i.ef = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.eg = load ptr, ptr %i.dl, align 8, !tbaa !231
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !233 ; 3 uses
  %i.ej = sub nsw i32 0, %i.ei
  %.0.i.i = select i1 %i.ee, i32 %i.ej, i32 %i.ei
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %bb.u, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.ek = load ptr, ptr %i.dm, align 8, !tbaa !244
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ef
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !240 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !260 ; 2 uses
  %i.eq = load ptr, ptr %i.dn, align 8, !tbaa !183 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.v
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !192
  %.not.i.i.i = icmp ult i32 %i.ep, %i.et
  br i1 %.not.i.i.i, label %_ZNK5nlsat10assignment11is_assignedEj.exit.i, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

_ZNK5nlsat10assignment11is_assignedEj.exit.i:     ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.eu = zext i32 %i.ep to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu
  %.0.i.sroa.speculate.load..i.i = load i8, ptr %i.ev, align 1, !tbaa !261
  %i.ew = trunc nuw i8 %.0.i.sroa.speculate.load..i.i to i1
  br i1 %i.ew, label %bb.w, label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

bb.w:                                             ; preds = %_ZNK5nlsat10assignment11is_assignedEj.exit.i
  %i.ex = invoke noundef zeroext i1 @_ZN5nlsat9evaluator4evalEPNS_4atomEb(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull %i.em, i1 noundef zeroext %i.ee)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.w
  %i.ey = select i1 %i.ex, i32 1, i32 -1
  br label %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit

_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit:   ; preds = %.noexc57, %_ZNK5nlsat10assignment11is_assignedEj.exit.i, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i, %bb.v, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %.2.i = phi i32 [ %.0.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 ], [ 0, %bb.u ], [ %i.ey, %.noexc57 ], [ 0, %_ZNK5nlsat10assignment11is_assignedEj.exit.i ], [ 0, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i ], [ 0, %bb.v ]
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSo5lbool(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i32 noundef %.2.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZN5nlsat6solver3imp5valueEN3sat7literalE.exit
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51._crit_edge, label %bb.q, !llvm.loop !657

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51._crit_edge
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.129, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.y
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, label %bb.z

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.130, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %bb.aa
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.131, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.ab
  %i.fg = load i32, ptr %5, align 4, !tbaa !387
  %i.fh = zext i32 %i.fg to i64
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i64 noundef %i.fh)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.preheader: ; preds = %_ZNSolsEj.exit
  %i.fk = load i32, ptr %5, align 4, !tbaa !387
  %.not125 = icmp eq i32 %i.fk, 0
  br i1 %.not125, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.ac

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.preheader
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %.lr.ph121, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %indvars.iv137 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next138, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 ] ; 3 uses
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull @.str.132, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %bb.ad
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, i64 noundef %indvars.iv137)
          to label %_ZNSolsEj.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit72:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.133, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZNSolsEj.exit72
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.ft = load i32, ptr %i.fm, align 4, !tbaa !388
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv137
  %.sroa.0.0.copyload.i = load i32, ptr %i.fx, align 4, !tbaa !192
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp7displayERSoN3sat7literalERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNK5nlsat6solver3imp7displayERSoN3sat7literalE.exit76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNK5nlsat6solver3imp7displayERSoN3sat7literalE.exit76: ; preds = %bb.ae
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_ZNK5nlsat6solver3imp7displayERSoN3sat7literalE.exit76
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.af
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.gb = load i32, ptr %5, align 4, !tbaa !387
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next138, %i.gc
  br i1 %i.gd, label %bb.ac, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68._crit_edge, !llvm.loop !658

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68._crit_edge
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull @.str.134, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %bb.ag
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !388
  %i.gh = zext i32 %i.gg to i64
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, i64 noundef %i.gh)
          to label %_ZNSolsEj.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit82:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84.preheader: ; preds = %_ZNSolsEj.exit82
  %i.gk = load i32, ptr %i.gf, align 4, !tbaa !388
  %.not126 = icmp eq i32 %i.gk, 0
  br i1 %.not126, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84._crit_edge, label %.lr.ph123

.lr.ph123:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.ah

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84.preheader
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %.lr.ph123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %indvars.iv140 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next141, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 ] ; 3 uses
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.135, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %bb.ai
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, i64 noundef %indvars.iv140)
          to label %_ZNSolsEj.exit88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit88:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.133, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %_ZNSolsEj.exit88
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv140
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !42
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5nlsat6solver3imp7displayERSoRKNS_6clauseERKN10polynomial16display_var_procE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNK5nlsat6solver3imp7displayERSoRKNS_6clauseE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

end_hunk_5
