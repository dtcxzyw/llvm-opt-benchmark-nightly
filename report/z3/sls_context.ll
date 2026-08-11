inline.NumInlined: 1329
inline.NumDeleted: 507
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK3sls7context7get_fidEP4expr:bb.a
  %i.be = icmp eq i32 %i.bd, 3
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.l, label %_ZNK4decl13get_family_idEv.exit26

bb.l:                                             ; preds = %_ZNK11ast_manager11is_distinctEPK4expr.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !140 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNK4decl13get_family_idEv.exit26.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !143
  br label %_ZNK4decl13get_family_idEv.exit26

_ZNK4decl13get_family_idEv.exit26:                ; preds = %bb.k, %_ZNK4decl13get_family_idEv.exit, %bb.m, %_ZNK11ast_manager11is_distinctEPK4expr.exit
  %.1 = phi i32 [ %i.bm, %bb.m ], [ %.0, %_ZNK11ast_manager11is_distinctEPK4expr.exit ], [ %.0, %_ZNK4decl13get_family_idEv.exit ], [ %.0, %bb.k ] ; 2 uses
  switch i32 %.1, label %bb.o [
    i32 -1, label %_ZNK4decl13get_family_idEv.exit26.thread
    i32 3, label %bb.n
  ]

_ZNK4decl13get_family_idEv.exit26.thread:         ; preds = %bb.l, %_ZNK4decl13get_family_idEv.exit26
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !152
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4decl13get_family_idEv.exit26, %_ZNK4decl13get_family_idEv.exit26.thread
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4decl13get_family_idEv.exit26, %_ZNK4decl13get_family_idEv.exit26.thread, %bb.n
  %.2 = phi i32 [ 4, %bb.n ], [ -1, %_ZNK4decl13get_family_idEv.exit26.thread ], [ %.1, %_ZNK4decl13get_family_idEv.exit26 ]
  ret i32 %.2

bb.p:                                             ; preds = %.thread31, %bb.g
  %.pn.pn29 = phi { ptr, i32 } [ %i.u, %.thread31 ], [ %.pn.pn30, %bb.g ]
  resume { ptr, i32 } %.pn.pn29

bb.q:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls7context13register_atomEjP4expr(ptr noundef nonnull align 8 dereferenceable(321) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = add i32 %1, 1                            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.a
  %.not.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62   ; 2 uses
  %.not3.i.i = icmp ugt i32 %i.b, %i.g
  br i1 %.not3.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.preheader: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph16 = phi ptr [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.i.ph = phi i32 [ %i.g, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i:       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.preheader, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i
  %i.h = phi ptr [ %.pr.pre.i.i.i, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i ], [ %.ph16, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.preheader ] ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i:   ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62
  %i.l = icmp ugt i32 %i.b, %i.k
  br i1 %i.l, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i, label %bb.b

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pr.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i, !llvm.loop !153

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !62
  %.not1218.i.i.i = icmp eq i32 %.0.i16.i.i.i.ph, %i.b
  br i1 %.not1218.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.n = zext i32 %i.b to i64
  %i.o = zext i32 %.0.i16.i.i.i.ph to i64         ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %i.o
  %i.q = sub nsw i64 %i.n, %i.o
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !65
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.s = phi ptr [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ %i.h, %bb.b ], [ %i.h, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !68
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !68
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7reserveEj.exit.i
  %i.w = zext i32 %1 to i64                       ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !49, !align !50
  %.not.i.i.i4.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i4.i.i, label %_ZN10ref_vectorI4expr11ast_managerE4setxEjPS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !68
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !68
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %_ZN10ref_vectorI4expr11ast_managerE4setxEjPS0_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.z, ptr noundef nonnull %i.y)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %_ZN10ref_vectorI4expr11ast_managerE4setxEjPS0_.exit

_ZN10ref_vectorI4expr11ast_managerE4setxEjPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, %bb.d, %bb.e
  %i.ae = phi ptr [ %i.s, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %i.s, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.w
  store ptr %2, ptr %i.af, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ah = load i32, ptr %2, align 4, !tbaa !154   ; 4 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZN10ref_vectorI4expr11ast_managerE4setxEjPS0_.exit
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !62 ; 3 uses
  %.not.i = icmp ult i32 %i.ah, %i.al
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZN10ref_vectorI4expr11ast_managerE4setxEjPS0_.exit
  %i.am = add i32 %i.ah, 1                        ; 2 uses
  %.not.not.i.i3 = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %.not.not.i.i3)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.an = add i32 %i.ah, 1                        ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.an, %i.al
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.f

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.ai, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %.ph15 = phi i32 [ %i.an, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ %i.am, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.al, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !62
  br label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.ao = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i.preheader ] ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !62
  %i.as = icmp ugt i32 %.ph15, %i.ar
  br i1 %i.as, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.g

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %.pr.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %thread-pre-split.i.i, !llvm.loop !155

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 -4
  store i32 %.ph15, ptr %i.at, align 4, !tbaa !62
  %i.au = zext i32 %.ph15 to i64                  ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.au
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph15
  br i1 %.not1319.i.i, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.aw = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aw ; 3 uses
  %3 = sub nsw i64 %i.au, %i.aw
  %i.ay = add nsw i64 %3, 4611686018427387903
  %4 = and i64 %i.ay, 4611686018427387903         ; 2 uses
  %i.az = add nuw nsw i64 %4, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.ax, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !62
  store <4 x i32> splat (i32 2147483647), ptr %i.bd, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.020.i.i.ph = phi ptr [ %i.ax, %.lr.ph.preheader.i.i ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 2147483647, ptr %.020.i.i, align 4, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 4 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.bf, %i.av
  br i1 %.not13.i.i, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %.lr.ph.i.i, !llvm.loop !159

_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit:             ; preds = %.lr.ph.i.i, %middle.block, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.f, %bb.g
  %i.bg = phi ptr [ %i.ai, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ %i.ao, %bb.g ], [ %i.ai, %bb.f ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i.i ]
  %i.bh = zext i32 %i.ah to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  store i32 %1, ptr %i.bi, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls7context10on_restartEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(321) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK17scoped_ptr_vectorIN3sls6pluginEE3endEv.exit

_ZNK17scoped_ptr_vectorIN3sls6pluginEE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a, %_ZNK17scoped_ptr_vectorIN3sls6pluginEE3endEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZNK17scoped_ptr_vectorIN3sls6pluginEE3endEv.exit, %bb.c
  %.012 = phi ptr [ %i.m, %bb.c ], [ %i.b, %_ZNK17scoped_ptr_vectorIN3sls6pluginEE3endEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.012, align 8, !tbaa !74  ; 3 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(28) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sls7context11is_externalEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(321) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN3sls7context4atomEj.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i:       ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62
  %.not.i.i.i = icmp ult i32 %1, %i.e
  br i1 %.not.i.i.i, label %_ZN3sls7context4atomEj.exit, label %_ZN3sls7context4atomEj.exit.thread

_ZN3sls7context4atomEj.exit:                      ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.g, align 8, !tbaa !65 ; 2 uses
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i.i, null
  br i1 %.not, label %_ZN3sls7context4atomEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3sls7context4atomEj.exit
  %i.h = tail call noundef i32 @_ZNK3sls7context7get_fidEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %0, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i) ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN3sls7context4atomEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN3sls7context4atomEj.exit.thread, label %_ZNK6vectorIPN3sls6pluginELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN3sls6pluginELb0EjE4sizeEv.exit.i:   ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !62
  %i.o = icmp ult i32 %i.h, %i.n
  br i1 %i.o, label %bb.d, label %_ZN3sls7context4atomEj.exit.thread

bb.d:                                             ; preds = %_ZNK6vectorIPN3sls6pluginELb0EjE4sizeEv.exit.i
  %i.p = zext i32 %i.h to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = icmp ne ptr %i.r, null
  br label %_ZN3sls7context4atomEj.exit.thread

_ZN3sls7context4atomEj.exit.thread:               ; preds = %bb.d, %_ZNK6vectorIPN3sls6pluginELb0EjE4sizeEv.exit.i, %bb.c, %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i, %bb.b, %_ZN3sls7context4atomEj.exit
  %.1 = phi i1 [ false, %_ZN3sls7context4atomEj.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i ], [ %i.s, %bb.d ], [ false, %_ZNK6vectorIPN3sls6pluginELb0EjE4sizeEv.exit.i ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN3sls7context5checkEv(ptr noundef nonnull align 8 dereferenceable(321) initializes((157, 158)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN3sls7context4initEv(ptr noundef nonnull align 8 dereferenceable(321) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160, !nonnull !49, !align !50 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !161
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 157 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_Z6all_ofI17scoped_ptr_vectorIN3sls6pluginEEZNS1_7context5checkEvE3$_1EbRKT_RKT0_.exit.backedge"
  %i.l = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !49, !align !50
  %i.m = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.l)
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3sls7context28propagate_boolean_assignmentEv(ptr noundef nonnull align 8 dereferenceable(321) %0)
  %i.n = load i8, ptr %i.i, align 1, !tbaa !162, !range !163, !noundef !49
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !160, !nonnull !49, !align !50 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !161
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.j, align 8, !tbaa !71  ; 4 uses
  %i.w = icmp eq ptr %.val, null
  br i1 %i.w, label %"_Z6any_ofI7svectorIN3sat7literalEjEZN3sls7context5checkEvE3$_0EbRKT_RKT0_.exit.thread", label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i:    ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !62   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aa
  %.not4.not.i = icmp eq i32 %i.y, 0
  br i1 %.not4.not.i, label %"_Z6any_ofI7svectorIN3sat7literalEjEZN3sls7context5checkEvE3$_0EbRKT_RKT0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i, %.lr.ph.i
  %.0115.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.val, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.0115.i, align 4, !tbaa !62
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !160 ; 2 uses
  %i.ac = load ptr, ptr %.val.val.i, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %.val.val.i, i32 %.sroa.0.0.copyload.i), !inline_history !164 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0115.i, i64 4 ; 2 uses
  %.not.not.i = icmp ne ptr %i.ag, %i.ab
  %or.cond.not.i = select i1 %i.af, i1 %.not.not.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i, label %"_Z6any_ofI7svectorIN3sat7literalEjEZN3sls7context5checkEvE3$_0EbRKT_RKT0_.exit"

"_Z6any_ofI7svectorIN3sat7literalEjEZN3sls7context5checkEvE3$_0EbRKT_RKT0_.exit": ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@"_ZSt22__merge_without_bufferIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3sls7context8subtermsEvE3$_0EEEvT_SA_SA_T0_SB_T1_":bb.a
  %i.x = getelementptr inbounds [8 x i8], ptr %.tr80, i64 %i.w ; 2 uses
  %i.y = sub i64 %i.c, %i.v
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit"

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit
  %.val40 = load ptr, ptr %i.x, align 8           ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val40, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %trunc.i2.i.i.i = trunc i32 %i.ac to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %.val40, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %.val40, i64 28
  br label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i", %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.05.i = phi ptr [ %.tr7381, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i" ] ; 2 uses
  %.0114.i = phi i64 [ %i.z, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i" ] ; 2 uses
  %i.af = lshr i64 %.0114.i, 1                    ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.05.i, i64 %i.af ; 2 uses
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %trunc.i.i.i.i = trunc i32 %i.ai to i16
  switch i16 %trunc.i.i.i.i, label %_Z9get_depthPK4expr.exit.i.i.i [
    i16 0, label %bb.j
    i16 2, label %bb.k
  ]

bb.j:                                             ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 28
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = zext i16 %i.ak to i32
  br label %_Z9get_depthPK4expr.exit.i.i.i

bb.k:                                             ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !281
  br label %_Z9get_depthPK4expr.exit.i.i.i

_Z9get_depthPK4expr.exit.i.i.i:                   ; preds = %bb.k, %bb.j, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i
  %.0.i.i.i.i = phi i32 [ %i.al, %bb.j ], [ %i.an, %bb.k ], [ 1, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i ]
  switch i16 %trunc.i2.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i" [
    i16 0, label %bb.l
    i16 2, label %bb.m
  ]

bb.l:                                             ; preds = %_Z9get_depthPK4expr.exit.i.i.i
  %i.ao = load i16, ptr %i.ae, align 4
  %i.ap = zext i16 %i.ao to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i"

bb.m:                                             ; preds = %_Z9get_depthPK4expr.exit.i.i.i
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !281
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i": ; preds = %bb.m, %bb.l, %_Z9get_depthPK4expr.exit.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ap, %bb.l ], [ %i.aq, %bb.m ], [ 1, %_Z9get_depthPK4expr.exit.i.i.i ]
  %i.ar = icmp ult i32 %.0.i.i.i.i, %.0.i3.i.i.i  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.at = xor i64 %i.af, -1
  %i.au = add nsw i64 %.0114.i, %i.at
  %.112.i = select i1 %i.ar, i64 %i.au, i64 %i.af ; 2 uses
  %.1.i = select i1 %i.ar, ptr %i.as, ptr %.05.i  ; 3 uses
  %i.av = icmp sgt i64 %.112.i, 0
  br i1 %i.av, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit", !llvm.loop !337

"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EclIPP4exprKS8_EEbT_RT0_.exit.i"
  %.pre = ptrtoint ptr %.1.i to i64
  br label %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit"

"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit" ], [ %i.v, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit" ], [ %.tr7381, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aw = sub i64 %.pre-phi, %i.v
  %i.ax = ashr exact i64 %i.aw, 3
  br label %tailrecurse

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit45: ; preds = %bb.i
  %i.ay = sdiv i64 %.tr7684, 2                    ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.tr7381, i64 %i.ay ; 2 uses
  %i.ba = ptrtoint ptr %.tr80 to i64              ; 3 uses
  %i.bb = sub i64 %i.v, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i47, label %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit"

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i47: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit45
  %.val41 = load ptr, ptr %i.az, align 8          ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val41, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %trunc.i.i.i.i48 = trunc i32 %i.bf to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.val41, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %.val41, i64 28
  br label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i", %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i47
  %.05.i50 = phi ptr [ %.tr80, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i47 ], [ %.1.i59, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i" ] ; 2 uses
  %.0114.i51 = phi i64 [ %i.bc, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i47 ], [ %.112.i58, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i" ] ; 2 uses
  %i.bi = lshr i64 %.0114.i51, 1                  ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.05.i50, i64 %i.bi ; 2 uses
  %.val13.i = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 3 uses
  switch i16 %trunc.i.i.i.i48, label %_Z9get_depthPK4expr.exit.i.i.i54 [
    i16 0, label %bb.n
    i16 2, label %bb.o
  ]

bb.n:                                             ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49
  %i.bk = load i16, ptr %i.bh, align 4
  %i.bl = zext i16 %i.bk to i32
  br label %_Z9get_depthPK4expr.exit.i.i.i54

bb.o:                                             ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !281
  br label %_Z9get_depthPK4expr.exit.i.i.i54

_Z9get_depthPK4expr.exit.i.i.i54:                 ; preds = %bb.o, %bb.n, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49
  %.0.i.i.i.i55 = phi i32 [ %i.bl, %bb.n ], [ %i.bm, %bb.o ], [ 1, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val13.i, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %trunc.i2.i.i.i56 = trunc i32 %i.bo to i16
  switch i16 %trunc.i2.i.i.i56, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i" [
    i16 0, label %bb.p
    i16 2, label %bb.q
  ]

bb.p:                                             ; preds = %_Z9get_depthPK4expr.exit.i.i.i54
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13.i, i64 28
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = zext i16 %i.bq to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i"

bb.q:                                             ; preds = %_Z9get_depthPK4expr.exit.i.i.i54
  %i.bs = getelementptr inbounds nuw i8, ptr %.val13.i, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !281
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i": ; preds = %bb.q, %bb.p, %_Z9get_depthPK4expr.exit.i.i.i54
  %.0.i3.i.i.i57 = phi i32 [ %i.br, %bb.p ], [ %i.bt, %bb.q ], [ 1, %_Z9get_depthPK4expr.exit.i.i.i54 ]
  %i.bu = icmp ult i32 %.0.i.i.i.i55, %.0.i3.i.i.i57 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bw = xor i64 %i.bi, -1
  %i.bx = add nsw i64 %.0114.i51, %i.bw
  %.112.i58 = select i1 %i.bu, i64 %i.bi, i64 %i.bx ; 2 uses
  %.1.i59 = select i1 %i.bu, ptr %.05.i50, ptr %i.bv ; 3 uses
  %i.by = icmp sgt i64 %.112.i58, 0
  br i1 %i.by, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i49, label %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit", !llvm.loop !338

"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EclIKP4exprPS8_EEbRT_T0_.exit.i"
  %.pre87 = ptrtoint ptr %.1.i59 to i64
  br label %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit"

"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit45
  %.pre-phi88 = phi i64 [ %.pre87, %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit" ], [ %i.ba, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit45 ]
  %.0.lcssa.i46 = phi ptr [ %.1.i59, %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit.loopexit" ], [ %.tr80, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit45 ]
  %i.bz = sub i64 %.pre-phi88, %i.ba
  %i.ca = ashr exact i64 %i.bz, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit", %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit"
  %.070 = phi ptr [ %i.x, %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ], [ %.0.lcssa.i46, %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ] ; 2 uses
  %.069 = phi ptr [ %.0.lcssa.i, %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ], [ %i.az, %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ] ; 2 uses
  %.036 = phi i64 [ %i.ax, %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ], [ %i.ay, %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.w, %"_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_comp_valIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ], [ %i.ca, %"_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_comp_iterIZN3sls7context8subtermsEvE3$_0EEET_SA_SA_RKT0_T1_.exit" ] ; 2 uses
  %i.cb = tail call noundef ptr @_ZNSt3_V28__rotateIPP4exprEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.070, ptr noundef %.tr7381, ptr noundef %.069) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIZN3sls7context8subtermsEvE3$_0EEEvT_SA_SA_T0_SB_T1_"(ptr noundef %.tr80, ptr noundef %.070, ptr noundef %i.cb, i64 noundef %.0, i64 noundef %.036)
  %i.cc = sub nsw i64 %.tr7583, %.0               ; 2 uses
  %i.cd = sub nsw i64 %.tr7684, %.036             ; 2 uses
  %i.ce = icmp eq i64 %i.cc, 0
  %i.cf = icmp eq i64 %i.cd, 0
  %or.cond = or i1 %i.ce, %i.cf
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3sls7context8subtermsEvE3$_0EclIPP4exprS9_EEbT_T0_.exit", %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPP4exprEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %i.g, %i.d
  %4 = add i64 %3, -8                             ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %4, 104
  br i1 %min.iters.check174, label %.lr.ph.i.preheader190, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep169 = getelementptr i8, ptr %1, i64 %i.q
  %bound0170 = icmp ult ptr %0, %scevgep169
  %bound1171 = icmp ult ptr %1, %scevgep168
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader190, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck167
  %n.vec176 = and i64 %i.m, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec176, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.u = shl i64 %index178, 3                     ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep180 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load181 = load <2 x ptr>, ptr %next.gep180, align 8, !tbaa !65, !alias.scope !339, !noalias !342
  %wide.load182 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !65, !alias.scope !339, !noalias !342
  %i.w = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load183 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !65, !alias.scope !342
  %wide.load184 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !65, !alias.scope !342
  store <2 x ptr> %wide.load183, ptr %next.gep180, align 8, !tbaa !65, !alias.scope !339, !noalias !342
  store <2 x ptr> %wide.load184, ptr %i.v, align 8, !tbaa !65, !alias.scope !339, !noalias !342
  store <2 x ptr> %wide.load181, ptr %next.gep179, align 8, !tbaa !65, !alias.scope !342
  store <2 x ptr> %wide.load182, ptr %i.w, align 8, !tbaa !65, !alias.scope !342
  %index.next185 = add nuw i64 %index178, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.x, label %middle.block186, label %vector.body177, !llvm.loop !344

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.m, %n.vec176
  br i1 %cmp.n187, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader190

.lr.ph.i.preheader190:                            ; preds = %vector.memcheck167, %.lr.ph.i.preheader, %middle.block186
  %.010.i.ph = phi ptr [ %1, %vector.memcheck167 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block186 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck167 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block186 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader190, %.lr.ph.i
  %.010.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %.079.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %i.y = load ptr, ptr %.079.i, align 8, !tbaa !65
  %i.z = load ptr, ptr %.010.i, align 8, !tbaa !65
  store ptr %i.z, ptr %.079.i, align 8, !tbaa !65
  store ptr %i.y, ptr %.010.i, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !345

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ae = sub nsw i64 %.086, %.082                ; 10 uses
  %i.af = icmp slt i64 %.082, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.082, 1
  br i1 %i.ag, label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.g

_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit:            ; preds = %bb.f
  %i.ah = load ptr, ptr %.058, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nsw i64 %.086, 3                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !65
  br label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.an = shl i64 %.086, 3
  %i.ao = sub i64 %.086, %.082
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ap
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.an
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.058, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !tbaa !65, !alias.scope !346, !noalias !349
  %wide.load139 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !65, !alias.scope !346, !noalias !349
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !65, !alias.scope !349
  %wide.load141 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !65, !alias.scope !349
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !tbaa !65, !alias.scope !346, !noalias !349
  store <2 x ptr> %wide.load141, ptr %i.au, align 8, !tbaa !65, !alias.scope !346, !noalias !349
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !349
  store <2 x ptr> %wide.load139, ptr %i.av, align 8, !tbaa !65, !alias.scope !349
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader191

.lr.ph110.preheader191:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph110.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.086, %.082
  %xtraiter199 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader191, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bc, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader191 ]
  %.055107.prol = phi ptr [ %i.bb, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.ba, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader191 ]
  %i.ay = load ptr, ptr %.159106.prol, align 8, !tbaa !65
  %i.az = load ptr, ptr %.055107.prol, align 8, !tbaa !65
  store ptr %i.az, ptr %.159106.prol, align 8, !tbaa !65
  store ptr %i.ay, ptr %.055107.prol, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bc = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !352

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader191
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader191 ], [ %i.ba, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader191 ], [ %i.bb, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader191 ], [ %i.ba, %.lr.ph110.prol ]
  %i.bd = sub i64 %.054108.ph, %.086
  %i.be = add i64 %i.bd, %.082
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bv, %.lr.ph110 ]
  %i.bg = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bg, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bx, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.bw, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bv, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bh = load ptr, ptr %.159106, align 8, !tbaa !65
  %i.bi = load ptr, ptr %.055107, align 8, !tbaa !65
  store ptr %i.bi, ptr %.159106, align 8, !tbaa !65
  store ptr %i.bh, ptr %.055107, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !65
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !65
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !65
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.055107, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !65
end_hunk_1
