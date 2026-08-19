inline.NumInlined: 2900
inline.NumDeleted: 1172
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3smt24theory_special_relations13ensure_strictERNS0_5graphE:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !740
  %i.aa = zext i32 %i.t to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !668
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !740
  %i.af = icmp eq ptr %i.z, %i.ae
  br i1 %i.af, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 -1, ptr %2, align 4, !tbaa !120
  %i.ag = invoke noundef i32 @_ZN8dl_graphIN3smt24theory_special_relations7int_extEE8add_edgeEiiRK9s_integerRK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(368) %1, i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.m     ; 4 uses

.noexc:                                           ; preds = %bb.e
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !99, !range !121, !noundef !71
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i

_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i: ; preds = %.noexc
  %i.an = load i32, ptr %i.g, align 8, !tbaa !85  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !122
  store i8 1, ptr %i.ak, align 8, !tbaa !99
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !123
  %i.ap = add i32 %i.an, 1
  store i32 %i.ap, ptr %i.g, align 8, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !109
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.aj, align 8, !tbaa !108
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i32, ptr %i.au, align 4, !tbaa !77
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !120
  %i.ba = sub nsw i32 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !120
  %.not.i.i = icmp slt i32 %i.bc, %i.ba
  br i1 %.not.i.i, label %bb.f, label %.noexc20

bb.f:                                             ; preds = %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i
  %i.bd = invoke noundef zeroext i1 @_ZN8dl_graphIN3smt24theory_special_relations7int_extEE13make_feasibleEi(ptr noundef nonnull align 8 dereferenceable(368) %1, i32 noundef %i.ag)
          to label %.noexc20 unwind label %bb.m

.noexc20:                                         ; preds = %bb.f, %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i
  %.0.i.i19 = phi i1 [ true, %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i ], [ %i.bd, %bb.f ]
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !84  ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc20
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !77 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !77
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i

bb.h:                                             ; preds = %bb.g, %.noexc20
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %bb.h
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !84 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !77
  br label %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i

_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i:        ; preds = %.noexc21, %bb.g
  %i.bl = phi i32 [ %.pre2.i.i.i, %.noexc21 ], [ %i.bh, %bb.g ] ; 2 uses
  %i.bm = phi ptr [ %.pre.i.i.i, %.noexc21 ], [ %i.be, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  store i32 %i.ag, ptr %i.bp, align 4, !tbaa !77
  %i.bq = add i32 %i.bl, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i, %.noexc
  %.1.i.i = phi i1 [ true, %.noexc ], [ %.0.i.i19, %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.br = load ptr, ptr %3, align 8, !tbaa !111   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.br, null
  br i1 %.not.i.i22, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #24
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.1.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 723, ptr noundef nonnull @.str.15)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bv

bb.n:                                             ; preds = %bb.d, %bb.l, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !815
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt24theory_special_relations11ensure_treeERNS0_5graphE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.330", align 1 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator.330", align 1 ; 4 uses
  %6 = alloca %class.s_integer, align 4           ; 4 uses
  %7 = alloca %class.svector.9, align 8           ; 9 uses
  %8 = alloca %class.svector.16, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE13get_num_nodesEv.exit

_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE13get_num_nodesEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77   ; 2 uses
  %.not90 = icmp eq i32 %i.e, 0
  br i1 %.not90, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE13get_num_nodesEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a, %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE13get_num_nodesEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv103 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next104, %.critedge ] ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv103 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.preheader

_ZNK6vectorIiLb0EjE4sizeEv.exit.preheader:        ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %.not179 = icmp eq i32 %i.r, 0
  br i1 %.not179, label %.critedge, label %.lr.ph178

.critedge:                                        ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread, %bb.as, %_ZNK6vectorIiLb0EjE4sizeEv.exit.preheader, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !816

.lr.ph178:                                        ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.preheader, %_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread
  %indvars.iv177 = phi i64 [ %indvars.iv.next, %_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread ], [ 0, %_ZNK6vectorIiLb0EjE4sizeEv.exit.preheader ] ; 3 uses
  %i.s = phi ptr [ %i.ii, %_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread ], [ %i.o, %_ZNK6vectorIiLb0EjE4sizeEv.exit.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv177
  %i.u = load i32, ptr %i.t, align 4, !tbaa !77
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !99, !range !121, !noundef !71
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNK6vectorIiLb0EjE4sizeEv.exit38.lr.ph, label %_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread

_ZNK6vectorIiLb0EjE4sizeEv.exit38.lr.ph:          ; preds = %.lr.ph178
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !108 ; 5 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit38

_ZNK6vectorIiLb0EjE4sizeEv.exit38:                ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit38.lr.ph, %bb.as
  %indvars.iv99 = phi i64 [ %indvars.iv177, %_ZNK6vectorIiLb0EjE4sizeEv.exit38.lr.ph ], [ %indvars.iv.next100, %bb.as ]
  %9 = phi ptr [ %i.s, %_ZNK6vectorIiLb0EjE4sizeEv.exit38.lr.ph ], [ %i.ig, %bb.as ] ; 3 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %9, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !77
  %10 = zext i32 %i.ae to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next100, %10
  br i1 %i.af, label %bb.c, label %_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread

bb.c:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit38
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next100
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !77
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !99, !range !121, !noundef !71
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.d, label %bb.as

bb.d:                                             ; preds = %bb.c
  %i.ao = load i32, ptr %i.ak, align 8, !tbaa !108 ; 5 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !186 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ac
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !668
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !740
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !668
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !740
  %.not = icmp eq ptr %i.at, %i.ay
  br i1 %.not, label %bb.as, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ac
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ba, align 4, !tbaa !77 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.au
  %.sroa.0.0.copyload.i26.i = load i32, ptr %i.bb, align 4, !tbaa !77 ; 3 uses
  %i.bc = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i26.i
  br i1 %i.bc, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %.not77 = icmp eq i32 %i.ab, %i.ao
  br i1 %.not77, label %bb.as, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.bd = icmp slt i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i26.i ; 2 uses
  %.051.i = select i1 %i.bd, i32 %i.ab, i32 %i.ao
  %.sroa.034.0.i = call i32 @llvm.smin.i32(i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i26.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr null, ptr %7, align 8, !tbaa !84
  %i.be = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph.i unwind label %.body57 ; 3 uses

_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph.i:         ; preds = %bb.f
  store i32 2, ptr %i.be, align 4, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  store ptr %i.bg, ptr %7, align 8, !tbaa !84
  %.052.i = select i1 %i.bd, i32 %i.ao, i32 %i.ab
  store i32 %.052.i, ptr %i.bg, align 4, !tbaa !77
  store i32 1, ptr %i.bf, align 4, !tbaa !77
  br label %_ZNK6vectorIiLb0EjE5emptyEv.exit.i

..loopexit_crit_edge.i:                           ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i
  br label %.backedge.i, !llvm.loop !817

_ZNK6vectorIiLb0EjE5emptyEv.exit.i:               ; preds = %.backedge.i, %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph.i
  %i.bh = phi ptr [ %i.bg, %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph.i ], [ %i.bv, %.backedge.i ] ; 4 uses
  %i.bi = phi ptr [ %i.bg, %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph.i ], [ %i.bw, %.backedge.i ] ; 8 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !77 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0                    ; 2 uses
  br i1 %i.bl, label %bb.y, label %_ZN6vectorIiLb0EjE4backEv.exit.i

_ZN6vectorIiLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIiLb0EjE5emptyEv.exit.i
  %i.bm = add i32 %i.bk, -1                       ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !77 ; 2 uses
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !77
  %i.bq = icmp eq i32 %i.bp, %.051.i
  br i1 %i.bq, label %bb.y, label %bb.g

.body57:                                          ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZN6vectorIiLb0EjE4backEv.exit.i
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.bt = zext i32 %i.bp to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %.sroa.0.0.copyload.i28.i = load i32, ptr %i.bu, align 4, !tbaa !77
  %.not53.i = icmp slt i32 %.sroa.034.0.i, %.sroa.0.0.copyload.i28.i
  br i1 %.not53.i, label %bb.h, label %.backedge.i

.backedge.i:                                      ; preds = %_ZNK6vectorIiLb0EjE3endEv.exit.i, %bb.h, %bb.g, %..loopexit_crit_edge.i
  %i.bv = phi ptr [ %i.bh, %_ZNK6vectorIiLb0EjE3endEv.exit.i ], [ %i.fc, %..loopexit_crit_edge.i ], [ %i.bh, %bb.g ], [ %i.bh, %bb.h ]
  %i.bw = phi ptr [ %i.bi, %_ZNK6vectorIiLb0EjE3endEv.exit.i ], [ %i.fd, %..loopexit_crit_edge.i ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZNK3smt24theory_special_relations12disconnectedERKNS0_5graphEii.exit.thread, label %_ZNK6vectorIiLb0EjE5emptyEv.exit.i, !llvm.loop !817

_ZNK3smt24theory_special_relations12disconnectedERKNS0_5graphEii.exit.thread: ; preds = %.backedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bt
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.backedge.i, label %_ZNK6vectorIiLb0EjE3endEv.exit.i

_ZNK6vectorIiLb0EjE3endEv.exit.i:                 ; preds = %bb.h
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !77 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %.not59.i = icmp eq i32 %i.cd, 0
  br i1 %.not59.i, label %.backedge.i, label %.lr.ph.i, !llvm.loop !817

.lr.ph.i:                                         ; preds = %_ZNK6vectorIiLb0EjE3endEv.exit.i
  br label %bb.i, !llvm.loop !817

bb.i:                                             ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i, %.lr.ph.i
  %i.ch = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.fc, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i ] ; 6 uses
  %i.ci = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.fd, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i ] ; 4 uses
  %i.cj = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.fe, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i ] ; 7 uses
  %.060.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.ff, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i ] ; 2 uses
  %i.ck = load i32, ptr %.060.i, align 4, !tbaa !77
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cm ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !99, !range !121, !noundef !71
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i.i, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i

_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i.i: ; preds = %bb.i
  %i.cr = load i32, ptr %i.cn, align 8, !tbaa !108
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cu, align 4, !tbaa !77
  %i.cv = add nsw i32 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !109 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cy
  %.sroa.0.0.copyload.i7.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !77
  %i.da = icmp eq i32 %i.cv, %.sroa.0.0.copyload.i7.i.i.i
  br i1 %i.da, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.i, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i

_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.i: ; preds = %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !120
  %.not54.i = icmp eq i32 %i.dc, 0
  br i1 %.not54.i, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.i
  %i.dd = icmp eq ptr %i.cj, null
  br i1 %i.dd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !77 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !77
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dj = icmp eq ptr %i.ch, null
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc44 unwind label %bb.x   ; 3 uses

.noexc44:                                         ; preds = %bb.m
  store i32 2, ptr %i.dk, align 4, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 0, ptr %i.dl, align 4, !tbaa !77
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  store ptr %i.dm, ptr %7, align 8, !tbaa !84
  br label %.noexc33.i

bb.n:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !77 ; 3 uses
  %i.dp = mul i32 %i.do, 3
  %i.dq = add i32 %i.dp, 1
  %i.dr = lshr i32 %i.dq, 1                       ; 3 uses
  %i.ds = shl i32 %i.dr, 2
  %i.dt = add i32 %i.ds, 8                        ; 2 uses
  %.not.i43 = icmp ugt i32 %i.dr, %i.do
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.du = shl i32 %i.do, 2
  %i.dv = add i32 %i.du, 8
  %.not27.i = icmp ugt i32 %i.dt, %i.dv
  br i1 %.not27.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dw = call ptr @__cxa_allocate_exception(i64 40) #23 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN3smt24theory_special_relations11ensure_treeERNS0_5graphE:bb.a
  %i.gb = load i32, ptr %i.fx, align 4, !tbaa !77
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !120
  %i.gd = sub nsw i32 %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !120
  %.not.i.i = icmp slt i32 %i.gf, %i.gd
  br i1 %.not.i.i, label %bb.ab, label %.noexc40

bb.ab:                                            ; preds = %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i
  %i.gg = invoke noundef zeroext i1 @_ZN8dl_graphIN3smt24theory_special_relations7int_extEE13make_feasibleEi(ptr noundef nonnull align 8 dereferenceable(368) %1, i32 noundef %i.fj)
          to label %.noexc40 unwind label %bb.ar

.noexc40:                                         ; preds = %bb.ab, %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i
  %.0.i.i39 = phi i1 [ true, %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE11is_feasibleERK7dl_edgeIS2_E.exit.i.i ], [ %i.gg, %bb.ab ]
  %i.gh = load ptr, ptr %i.l, align 8, !tbaa !84  ; 4 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc40
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !77 ; 5 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gh, i64 -8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !77
  %i.gn = icmp eq i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.ae, label %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i

bb.ad:                                            ; preds = %.noexc40
  %i.go = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc71 unwind label %bb.ar  ; 3 uses

.noexc71:                                         ; preds = %bb.ad
  store i32 2, ptr %i.go, align 4, !tbaa !77
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 0, ptr %i.gp, align 4, !tbaa !77
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  store ptr %i.gq, ptr %i.l, align 8, !tbaa !84
  br label %.noexc41

bb.ae:                                            ; preds = %bb.ac
  %i.gr = mul i32 %i.gk, 3
  %i.gs = add i32 %i.gr, 1
  %i.gt = lshr i32 %i.gs, 1                       ; 3 uses
  %i.gu = shl i32 %i.gt, 2
  %i.gv = add i32 %i.gu, 8                        ; 2 uses
  %.not.i61 = icmp ugt i32 %i.gt, %i.gk
  br i1 %.not.i61, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gw = shl i32 %i.gk, 2
  %i.gx = add i32 %i.gw, 8
  %.not27.i70 = icmp ugt i32 %i.gv, %i.gx
  br i1 %.not27.i70, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gy = call ptr @__cxa_allocate_exception(i64 40) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gy, align 8, !tbaa !91
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 3 uses
  store ptr %i.ha, ptr %i.gz, align 8, !tbaa !693
  %i.hb = load ptr, ptr %2, align 8, !tbaa !703   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !696 ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 16
  call void @llvm.assume(i1 %i.hg)
  %i.hh = add nuw nsw i64 %i.hf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull align 8 dereferenceable(1) %i.hc, i64 %i.hh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.ah
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !703
  %i.hi = load i64, ptr %i.hc, align 8, !tbaa !117
  store i64 %i.hi, ptr %i.ha, align 8, !tbaa !117
  %.phi.trans.insert.i64 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i65 = load i64, ptr %.phi.trans.insert.i64, align 8, !tbaa !696
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63, %bb.ai
  %i.hj = phi i64 [ %i.hf, %bb.ai ], [ %.pre.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %i.hj, ptr %i.hl, align 8, !tbaa !696
  store ptr %i.hc, ptr %2, align 8, !tbaa !703
  store i64 0, ptr %i.hk, align 8, !tbaa !696
  store i8 0, ptr %i.hc, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.gy, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #26
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %2, align 8, !tbaa !703   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.hc
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67: ; preds = %bb.aj
  %i.hp = load i64, ptr %i.hc, align 8, !tbaa !117
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i68: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body72

bb.ak:                                            ; preds = %bb.ag
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @__cxa_free_exception(ptr %i.gy) #23
  br label %.body72

bb.al:                                            ; preds = %bb.af
  %i.hs = zext i32 %i.gv to i64
  %i.ht = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.gl, i64 noundef %i.hs)
          to label %.noexc74 unwind label %bb.ar  ; 2 uses

.noexc74:                                         ; preds = %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  store ptr %i.hu, ptr %i.l, align 8, !tbaa !84
  store i32 %i.gt, ptr %i.ht, align 4, !tbaa !77
  br label %.noexc41

bb.am:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i66
  unreachable

.noexc41:                                         ; preds = %.noexc74, %.noexc71
  %.pre.i.i.i = phi ptr [ %i.hu, %.noexc74 ], [ %i.gq, %.noexc71 ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !77
  br label %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i

_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i:        ; preds = %.noexc41, %bb.ac
  %i.hv = phi i32 [ %.pre2.i.i.i, %.noexc41 ], [ %i.gk, %bb.ac ] ; 2 uses
  %i.hw = phi ptr [ %.pre.i.i.i, %.noexc41 ], [ %i.gh, %bb.ac ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -4
  %i.hy = zext i32 %i.hv to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hy
  store i32 %i.fj, ptr %i.hz, align 4, !tbaa !77
  %i.ia = add i32 %i.hv, 1
  store i32 %i.ia, ptr %i.hx, align 4, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i, %.noexc
  %.1.i.i = phi i1 [ true, %.noexc ], [ %.0.i.i39, %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ib = load ptr, ptr %8, align 8, !tbaa !111   ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i42, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ic)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #24
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.1.i.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 747, ptr noundef nonnull @.str.16)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.as

bb.ar:                                            ; preds = %bb.al, %bb.ad, %bb.ab, %bb.aa
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i68, %bb.ak, %bb.ar
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.if, %bb.ar ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i68 ], [ %i.hr, %bb.ak ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.as:                                            ; preds = %.split, %bb.d, %_ZNK3smt24theory_special_relations12disconnectedERKNS0_5graphEii.exit, %bb.aq, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.c
  %i.ig = load ptr, ptr %i.n, align 8, !tbaa !84  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.critedge, label %_ZNK6vectorIiLb0EjE4sizeEv.exit38, !llvm.loop !818

_ZNK6vectorIiLb0EjE4sizeEv.exit38.thread:         ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit38, %.lr.ph178
  %i.ii = phi ptr [ %i.s, %.lr.ph178 ], [ %9, %_ZNK6vectorIiLb0EjE4sizeEv.exit38 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !77
  %i.il = zext i32 %i.ik to i64
  %i.im = icmp samesign ult i64 %indvars.iv.next, %i.il
  br i1 %i.im, label %.lr.ph178, label %.critedge, !llvm.loop !819
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3smt24theory_special_relations12disconnectedERKNS0_5graphEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(145) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.9, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 4, !tbaa !77 ; 3 uses
  %i.e = zext i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.f, align 4, !tbaa !77 ; 3 uses
  %i.g = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i26
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i32 %2, %3
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i26 ; 2 uses
  %.051 = select i1 %i.i, i32 %2, i32 %3
  %.sroa.034.0 = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i26)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !84
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph unwind label %bb.d

_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph:           ; preds = %bb.c
  %.052 = select i1 %i.i, i32 %3, i32 %2
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !84  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !77 ; 2 uses
  %i.j = zext i32 %.pre2.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.j
  store i32 %.052, ptr %i.k, align 4, !tbaa !77
  %i.l = add i32 %.pre2.i, 1
  store i32 %i.l, ptr %.phi.trans.insert.i, align 4, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_ZNK6vectorIiLb0EjE5emptyEv.exit

..loopexit_crit_edge:                             ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread
  br label %.backedge, !llvm.loop !817

_ZNK6vectorIiLb0EjE5emptyEv.exit:                 ; preds = %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph, %.backedge
  %i.o = phi ptr [ %.pre.i, %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph ], [ %i.ab, %.backedge ] ; 8 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !77   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  br i1 %i.r, label %bb.m, label %_ZN6vectorIiLb0EjE4backEv.exit

_ZN6vectorIiLb0EjE4backEv.exit:                   ; preds = %_ZNK6vectorIiLb0EjE5emptyEv.exit
  %i.s = add i32 %i.q, -1                         ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !77   ; 2 uses
  store i32 %i.s, ptr %i.p, align 4, !tbaa !77
  %i.w = icmp eq i32 %i.v, %.051
  br i1 %i.w, label %bb.m, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %_ZN6vectorIiLb0EjE4backEv.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.aa, align 4, !tbaa !77
  %.not53 = icmp slt i32 %.sroa.034.0, %.sroa.0.0.copyload.i28
  br i1 %.not53, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.f, %_ZNK6vectorIiLb0EjE3endEv.exit, %..loopexit_crit_edge, %bb.e
  %i.ab = phi ptr [ %i.o, %_ZNK6vectorIiLb0EjE3endEv.exit ], [ %i.bv, %..loopexit_crit_edge ], [ %i.o, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6vectorIiLb0EjED2Ev.exit, label %_ZNK6vectorIiLb0EjE5emptyEv.exit, !llvm.loop !817

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.backedge, label %_ZNK6vectorIiLb0EjE3endEv.exit

_ZNK6vectorIiLb0EjE3endEv.exit:                   ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !77 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %.not59 = icmp eq i32 %i.ai, 0
  br i1 %.not59, label %.backedge, label %.lr.ph, !llvm.loop !817

.lr.ph:                                           ; preds = %_ZNK6vectorIiLb0EjE3endEv.exit
  br label %bb.g, !llvm.loop !817

bb.g:                                             ; preds = %.lr.ph, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread
  %i.am = phi ptr [ %i.o, %.lr.ph ], [ %i.bv, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ] ; 4 uses
  %i.an = phi ptr [ %i.o, %.lr.ph ], [ %i.bw, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ] ; 7 uses
  %.060 = phi ptr [ %i.af, %.lr.ph ], [ %i.bx, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ] ; 2 uses
  %i.ao = load i32, ptr %.060, align 4, !tbaa !77
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !99, !range !121, !noundef !71
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread

_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i: ; preds = %bb.g
  %i.av = load i32, ptr %i.ar, align 8, !tbaa !108
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !77
  %i.az = add nsw i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !109 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bc
  %.sroa.0.0.copyload.i7.i.i = load i32, ptr %i.bd, align 4, !tbaa !77
  %i.be = icmp eq i32 %i.az, %.sroa.0.0.copyload.i7.i.i
  br i1 %i.be, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread

_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit: ; preds = %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !120
  %.not54 = icmp eq i32 %i.bg, 0
  br i1 %.not54, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit
  %i.bh = icmp eq ptr %i.an, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !77 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !77
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc33 unwind label %bb.l

.noexc33:                                         ; preds = %bb.j
  %.pre.i30 = load ptr, ptr %4, align 8, !tbaa !84 ; 3 uses
  %.phi.trans.insert.i31 = getelementptr inbounds i8, ptr %.pre.i30, i64 -4
  %.pre2.i32 = load i32, ptr %.phi.trans.insert.i31, align 4, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %.noexc33, %bb.i
  %i.bn = phi ptr [ %.pre.i30, %.noexc33 ], [ %i.am, %bb.i ]
  %i.bo = phi ptr [ %.pre.i30, %.noexc33 ], [ %i.an, %bb.i ] ; 3 uses
  %i.bp = phi i32 [ %.pre2.i32, %.noexc33 ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  store i32 %i.bb, ptr %i.bs, align 4, !tbaa !77
  %i.bt = add i32 %i.bp, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !77
  br label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread: ; preds = %bb.g, %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i, %bb.k, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit
  %i.bv = phi ptr [ %i.am, %bb.g ], [ %i.am, %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i ], [ %i.bn, %bb.k ], [ %i.am, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit ] ; 2 uses
  %i.bw = phi ptr [ %i.an, %bb.g ], [ %i.an, %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i ], [ %i.bo, %bb.k ], [ %i.an, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.060, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.al
  br i1 %.not, label %..loopexit_crit_edge, label %bb.g, !llvm.loop !817

bb.m:                                             ; preds = %_ZNK6vectorIiLb0EjE5emptyEv.exit, %_ZN6vectorIiLb0EjE4backEv.exit
  %i.by = getelementptr inbounds i8, ptr %i.o, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.by)
          to label %_ZN6vectorIiLb0EjED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #24
  unreachable

_ZN6vectorIiLb0EjED2Ev.exit:                      ; preds = %.backedge, %bb.m
  %i.cb = phi i1 [ %i.r, %bb.m ], [ true, %.backedge ]
end_hunk_1
