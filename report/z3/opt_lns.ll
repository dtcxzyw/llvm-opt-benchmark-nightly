inline.NumInlined: 562
inline.NumDeleted: 284
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3opt3lns14improve_linearER3refI5modelE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79, !nonnull !70, !align !71 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(112) %i.u, i32 noundef 1)
          to label %_ZN3opt3lns15scoped_boundingD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #16
  unreachable

_ZN3opt3lns15scoped_boundingD2Ev.exit:            ; preds = %.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.011

bb.k:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  call void @_ZN3opt3lns15scoped_boundingD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3opt3lns15scoped_boundingC2ERS0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.symbol, align 8              ; 4 uses
  %3 = alloca %class.pb_util, align 8             ; 14 uses
  %4 = alloca %class.obj_ref.50, align 8          ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.c = load i8, ptr %i.b, align 1, !tbaa !46, !range !99, !noundef !70
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond.not = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !45, !range !99, !noundef !70
  store i8 %i.i, ptr %i.a, align 8, !tbaa !111
  store i8 0, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79, !nonnull !70, !align !71 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(112) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.o = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !70, !align !71
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94, !nonnull !70, !align !71 ; 2 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.21)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 560
  %i.s = call noundef i32 @_ZN14family_manager12mk_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  store i32 %i.s, ptr %i.q, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -4
  store i8 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 1, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -4
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ac, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ad = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !70, !align !71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84, !nonnull !70, !align !71 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !70, !align !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47
  %i.an = add i32 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !66
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.as, %bb.d ], [ 0, %bb.c ]
  %i.at = invoke noundef ptr @_ZN7pb_util12mk_at_most_kEjPKP4exprj(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.0.i.i.i, ptr noundef %i.ap, i32 noundef %i.an)
          to label %_ZN7pb_util12mk_at_most_kERK10ref_vectorI4expr11ast_managerEj.exit unwind label %bb.j ; 6 uses

_ZN7pb_util12mk_at_most_kERK10ref_vectorI4expr11ast_managerEj.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.au = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !70, !align !71 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !94, !nonnull !70, !align !71 ; 2 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !95
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.at, null             ; 2 uses
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZN7pb_util12mk_at_most_kERK10ref_vectorI4expr11ast_managerEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !72
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !72
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZN7pb_util12mk_at_most_kERK10ref_vectorI4expr11ast_managerEj.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79, !nonnull !70, !align !71
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef %i.at)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !72
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !72
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.av, ptr noundef nonnull %i.at)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #16
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN7pb_utilD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.j:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.k ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN7pb_utilD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3opt3lns12improve_stepER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94, !nonnull !70, !align !71
  %i.d = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.c)
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %.03184 = phi i32 [ 0, %.lr.ph ], [ %i.fi, %bb.ae ] ; 5 uses
  %.03383 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ae ] ; 6 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66
  %i.l = icmp ult i32 %.03184, %i.k
  br i1 %i.l, label %bb.c, label %.critedge

.critedge:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.ae, %bb.b, %bb.a
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %.03383, %bb.b ], [ %.3, %bb.ae ], [ %.03383, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  ret i32 %.033.lcssa

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.m = zext i32 %.03184 to i64                  ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = tail call noundef i32 @_ZN3opt3lns12improve_stepER3refI5modelEP4expr(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.o)
  switch i32 %i.p, label %bb.ae [
    i32 1, label %.preheader
    i32 -1, label %bb.d
  ]

.preheader:                                       ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit43.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !94, !nonnull !70, !align !71
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.s, i32 noundef 0, i32 noundef 8, ptr noundef %i.v) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !72
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !19  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !66 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !66
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !66
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.f, %bb.g
  %i.ah = phi i32 [ %.pre2.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %.pre.i.i, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  store ptr %i.w, ptr %i.al, align 8, !tbaa !67
  %i.am = add i32 %i.ah, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !66
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !19, !nonnull !70, !noundef !70 ; 3 uses
  %indvars.iv.next147 = add nuw nsw i64 %i.m, 1   ; 2 uses
  %indvars148 = trunc i64 %indvars.iv.next147 to i32
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !66 ; 2 uses
  %2 = icmp ugt i32 %i.ap, %indvars148
  br i1 %2, label %.lr.ph146, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN6vectorIP4exprLb0EjE4backEv.exit.i:            ; preds = %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.sink.lcssa = phi ptr [ %i.an, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.bn, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit ] ; 2 uses
  %.lcssa = phi i32 [ %i.ap, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.bp, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit ]
  %i.aq = add i32 %.lcssa, -1                     ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sink.lcssa, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.sink.lcssa, i64 -4
  store i32 %i.aq, ptr %i.au, align 4, !tbaa !66
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i.i.i.i40 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i40, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !72
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.av, ptr noundef nonnull %i.at)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, %bb.h, %bb.i
  %i.ba = add i32 %.03184, -1
  br label %bb.ae

.lr.ph146:                                        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit
  %indvars.iv.next151 = phi i64 [ %indvars.iv.next, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit ], [ %indvars.iv.next147, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 3 uses
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit ], [ %i.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %.sink144 = phi ptr [ %i.bn, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit ], [ %i.an, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 4 uses
  %3 = and i64 %indvars.iv.next151, 4294967295
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sink144, i64 %3
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sink144, i64 %indvars.iv150 ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph146
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !72
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.j, %.lr.ph146
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.bi, null
  br i1 %.not.i3.i, label %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !72
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.be, ptr noundef nonnull %i.bi)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit

_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.k, %bb.l
  %i.bn = phi ptr [ %.sink144, %_ZN11ast_manager7inc_refEP3ast.exit.i ], [ %.sink144, %bb.k ], [ %.pre, %bb.l ] ; 4 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next151, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !66 ; 2 uses
  %4 = icmp ugt i32 %i.bp, %indvars
  br i1 %4, label %.lr.ph146, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit43.thread: ; preds = %.preheader, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.x ], [ 0, %.preheader ] ; 6 uses
  %i.bq = phi ptr [ %i.eb, %bb.x ], [ %i.q, %.preheader ] ; 5 uses
  %.02779 = phi i32 [ %.2, %bb.x ], [ 0, %.preheader ] ; 4 uses
  %.02878 = phi i32 [ %.129, %bb.x ], [ 0, %.preheader ] ; 6 uses
  %.13477 = phi i32 [ %.235, %bb.x ], [ %.03383, %.preheader ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !66 ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit43.thread
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bt
  %i.bw = icmp ugt i32 %i.bs, %.02878
  br i1 %i.bw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bx = zext i32 %.02878 to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.cf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bz = load ptr, ptr %.06.i.i, align 8, !tbaa !67 ; 3 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !72
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !72
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef nonnull %i.bz)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.bv
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !74

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i44 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pre.i44, null
  br i1 %.not.i.i45, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ch = phi ptr [ %.pre.i44, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  store i32 %.02878, ptr %i.ci, align 4, !tbaa !66
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %bb.x, %.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %.13475 = phi i32 [ %.13477, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ %.13477, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.03383, %.preheader ], [ %.235, %bb.x ]
  %.02772 = phi i32 [ %.02779, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ %.02779, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ 0, %.preheader ], [ %.2, %bb.x ]
  %i.cj = sub i32 %.03184, %.02772
  %i.ck = tail call noundef i32 @_Z19get_verbosity_levelv()
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.ad, label %bb.y

bb.o:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit43.thread
  %i.cl = load ptr, ptr %1, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !67
  %i.co = tail call noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160) %i.cl, ptr noundef %i.cn)
  br i1 %i.co, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not37 = icmp samesign ule i64 %indvars.iv, %i.m
  %i.cp = zext i1 %.not37 to i32
  %spec.select = add i32 %.02779, %i.cp
  %i.cq = load i32, ptr %i.f, align 4, !tbaa !44
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.f, align 4, !tbaa !44
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i46, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i47, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !72
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i47: ; preds = %bb.q, %bb.p
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !19  ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i47
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !66 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !66
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.s, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51

bb.s:                                             ; preds = %bb.r, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i47
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i48 = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert.i.i49 = getelementptr inbounds i8, ptr %.pre.i.i48, i64 -4
  %.pre2.i.i50 = load i32, ptr %.phi.trans.insert.i.i49, align 4, !tbaa !66
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51: ; preds = %bb.r, %bb.s
  %i.df = phi i32 [ %.pre2.i.i50, %bb.s ], [ %i.db, %bb.r ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i48, %bb.s ], [ %i.cy, %bb.r ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  store ptr %i.cu, ptr %i.dj, align 8, !tbaa !67
  %i.dk = add i32 %i.df, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !66
  %i.dl = add i32 %.13477, 1
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !67 ; 3 uses
  %i.dp = add i32 %.02878, 1
  %i.dq = zext i32 %.02878 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dq ; 2 uses
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !69, !nonnull !70, !align !71
  %.not.i.i54 = icmp eq ptr %i.do, null
  br i1 %.not.i.i54, label %_ZN11ast_manager7inc_refEP3ast.exit.i55, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !72
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !72
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i55

_ZN11ast_manager7inc_refEP3ast.exit.i55:          ; preds = %bb.u, %bb.t
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !67 ; 3 uses
  %.not.i3.i56 = icmp eq ptr %i.dw, null
  br i1 %.not.i3.i56, label %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58, label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !72
  %i.dz = add i32 %i.dy, -1                       ; 2 uses
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !72
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.w, label %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ds, ptr noundef nonnull %i.dw)
  br label %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58

_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i55, %bb.v, %bb.w
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58
  %.235 = phi i32 [ %i.dl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51 ], [ %.13477, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58 ] ; 2 uses
  %.129 = phi i32 [ %.02878, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51 ], [ %i.dp, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58 ]
  %.2 = phi i32 [ %spec.select, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit51 ], [ %.02779, %_ZN10ref_vectorI4expr11ast_managerE11element_refaSEPS0_.exit58 ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit43.thread, !llvm.loop !119

bb.y:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.ed = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  tail call void @_Z12verbose_lockv()
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.12, i64 noundef 23) ; 0 uses
  %i.eg = load i32, ptr %i.f, align 4, !tbaa !44
  %i.eh = zext i32 %i.eg to i64
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i64 noundef %i.eh) ; 2 uses
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.16, i64 noundef 17) ; 0 uses
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit60, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !66
  %i.eo = zext i32 %i.en to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit60

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit60: ; preds = %bb.z, %bb.aa
  %.0.i.i59 = phi i64 [ %i.eo, %bb.aa ], [ 0, %bb.z ]
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i64 noundef %.0.i.i59)
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.11, i64 noundef 2) ; 0 uses
  tail call void @_Z14verbose_unlockv()
end_hunk_0
