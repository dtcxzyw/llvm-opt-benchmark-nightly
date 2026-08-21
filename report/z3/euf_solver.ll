inline.NumInlined: 2266
inline.NumDeleted: 1105
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3euf6solver4pushEv:bb.a
  %.not8 = icmp eq i32 %i.aw, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11trail_stack10push_scopeEv.exit, %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !728 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN3euf6egraph4pushEv.exit, label %_ZNK3euf6egraph13can_propagateEv.exit.i

_ZNK3euf6egraph13can_propagateEv.exit.i:          ; preds = %._crit_edge
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %_ZN3euf6egraph4pushEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK3euf6egraph13can_propagateEv.exit.i
  %i.bg = tail call noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %i.ba) ; 0 uses
  br label %_ZN3euf6egraph4pushEv.exit

_ZN3euf6egraph4pushEv.exit:                       ; preds = %._crit_edge, %_ZNK3euf6egraph13can_propagateEv.exit.i, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !764
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !764
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !417, !range !433, !noundef !13
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %_ZN3euf9relevancy4pushEv.exit

bb.i:                                             ; preds = %_ZN3euf6egraph4pushEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !765
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !765
  br label %_ZN3euf9relevancy4pushEv.exit

_ZN3euf9relevancy4pushEv.exit:                    ; preds = %_ZN3euf6egraph4pushEv.exit, %bb.i
  ret void

.lr.ph:                                           ; preds = %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit, %.lr.ph
  %.09 = phi ptr [ %i.bu, %.lr.ph ], [ %i.at, %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit ] ; 2 uses
  %i.bq = load ptr, ptr %.09, align 8, !tbaa !556 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !413
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
  %i.bu = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.az
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6solver3popEj(ptr noundef nonnull align 8 dereferenceable(8528) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3euf6solver12start_reinitEj(ptr noundef nonnull align 8 dereferenceable(8528) %0, i32 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 2 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZN11trail_stack9pop_scopeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !553  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  %i.h = sub i32 %.0.i.i, %1                      ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !568  ; 5 uses
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = zext i32 %i.q to i64
  br label %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i

_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i:          ; preds = %bb.d, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %.0.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.not8.i.i = icmp samesign eq i64 %.0.i.i.i.i, %i.m
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0.i.i.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.s, %.lr.ph.preheader.i.i ]
  %i.t = getelementptr inbounds i8, ptr %.09.i.i, i64 -8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !616  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !413
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u), !inline_history !766
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !767

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !568
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i
  %i.y = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  store i32 %i.k, ptr %i.z, align 4, !tbaa !18
  br label %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i

_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i: ; preds = %bb.e, %._crit_edge.i.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !553 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i, label %_ZN6vectorIjLb0EjE6shrinkEj.exit.i, label %bb.f

bb.f:                                             ; preds = %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store i32 %i.h, ptr %i.ab, align 4, !tbaa !18
  br label %_ZN6vectorIjLb0EjE6shrinkEj.exit.i

_ZN6vectorIjLb0EjE6shrinkEj.exit.i:               ; preds = %bb.f, %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2200
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %_ZN6vectorIjLb0EjE6shrinkEj.exit.i
  %.03.i.i = phi i32 [ %i.ad, %.lr.ph.i9.i ], [ 0, %_ZN6vectorIjLb0EjE6shrinkEj.exit.i ]
  tail call void @_ZN6region9pop_scopeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
  %i.ad = add nuw i32 %.03.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ad, %1
  br i1 %exitcond.not.i.i, label %_ZN11trail_stack9pop_scopeEj.exit, label %.lr.ph.i9.i, !llvm.loop !768

_ZN11trail_stack9pop_scopeEj.exit:                ; preds = %.lr.ph.i9.i, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !555 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %._crit_edge, label %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit

_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit: ; preds = %_ZN11trail_stack9pop_scopeEj.exit
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !18 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %.not28 = icmp eq i32 %i.ai, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11trail_stack9pop_scopeEj.exit, %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !708, !nonnull !13, !align !14 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !413
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %1)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1648
  tail call void @_ZN3euf6egraph3popEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ar, i32 noundef %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN3euf9relevancy3popEj(ptr noundef nonnull align 8 dereferenceable(672) %i.as, i32 noundef %1)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !559 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK6vectorIN3euf6solver5scopeELb0EjE4sizeEv.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  br label %_ZNK6vectorIN3euf6solver5scopeELb0EjE4sizeEv.exit

_ZNK6vectorIN3euf6solver5scopeELb0EjE4sizeEv.exit: ; preds = %._crit_edge, %bb.g
  %.0.i = phi i32 [ %i.ax, %bb.g ], [ 0, %._crit_edge ]
  %i.ay = sub i32 %.0.i, %1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !553 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN6vectorIjLb0EjE6shrinkEj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %_ZNK6vectorIN3euf6solver5scopeELb0EjE4sizeEv.exit
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !769 ; 2 uses
  %i.bh = icmp ugt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph31, label %._crit_edge32.thread50

.lr.ph31:                                         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.lr.ph:                                           ; preds = %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit, %.lr.ph
  %.02129 = phi ptr [ %i.bo, %.lr.ph ], [ %i.af, %_ZNK17scoped_ptr_vectorIN3euf9th_solverEE3endEv.exit ] ; 2 uses
  %i.bk = load ptr, ptr %.02129, align 8, !tbaa !556 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !413
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i32 noundef %1)
  %i.bo = getelementptr inbounds nuw i8, ptr %.02129, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.al
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge32:                                    ; preds = %bb.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !553 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE6shrinkEj.exit, label %._crit_edge32.thread50

._crit_edge32.thread50:                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %._crit_edge32
  %.lcssa53 = phi i32 [ %i.cd, %._crit_edge32 ], [ %i.bg, %_ZNK6vectorIjLb0EjE4sizeEv.exit ]
  %i.bp = phi ptr [ %.pre, %._crit_edge32 ], [ %i.bc, %_ZNK6vectorIjLb0EjE4sizeEv.exit ]
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4
  store i32 %.lcssa53, ptr %i.bq, align 4, !tbaa !18
  br label %_ZN6vectorIjLb0EjE6shrinkEj.exit

_ZN6vectorIjLb0EjE6shrinkEj.exit:                 ; preds = %_ZNK6vectorIN3euf6solver5scopeELb0EjE4sizeEv.exit, %._crit_edge32, %._crit_edge32.thread50
  %i.br = load ptr, ptr %i.at, align 8, !tbaa !559 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN6vectorIN3euf6solver5scopeELb0EjE6shrinkEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIjLb0EjE6shrinkEj.exit
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !18
  %i.bv = sub i32 %i.bu, %1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !18
  br label %_ZN6vectorIN3euf6solver5scopeELb0EjE6shrinkEj.exit

_ZN6vectorIN3euf6solver5scopeELb0EjE6shrinkEj.exit: ; preds = %_ZN6vectorIjLb0EjE6shrinkEj.exit, %bb.h
  ret void

bb.i:                                             ; preds = %.lr.ph31, %bb.i
  %.030 = phi i32 [ %i.bf, %.lr.ph31 ], [ %2, %bb.i ]
  %2 = add i32 %.030, -1                          ; 3 uses
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !553
  %3 = zext i32 %2 to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %3
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18 ; 2 uses
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  store ptr null, ptr %i.cb, align 8, !tbaa !27
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !412
  tail call void @_ZN3sat6solver16set_non_externalEj(ptr noundef nonnull align 8 dereferenceable(4264) %i.cc, i32 noundef %i.by)
  %i.cd = load i32, ptr %i.ba, align 4, !tbaa !769 ; 2 uses
  %i.ce = icmp ugt i32 %2, %i.cd
  br i1 %i.ce, label %bb.i, label %._crit_edge32, !llvm.loop !771
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6solver12start_reinitEj(ptr noundef nonnull align 8 dereferenceable(8528) %0, i32 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 8 uses
  %3 = alloca %class.obj_ref, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8464 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !538  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE5resetEv.exit, label %_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i

_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.p, %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i ], [ %i.b, %_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408, !nonnull !13, !align !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !406
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !406
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.h, ptr noundef nonnull %i.f)
          to label %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 24
  %i.p = add i32 %.08.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !539

_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyISt5tupleIJ7obj_refI4expr11ast_managerEjjEEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !538
  br label %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i
  %i.q = phi ptr [ %.pre.i, %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.b, %_ZNK6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 0, ptr %i.r, align 4, !tbaa !18
  br label %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE5resetEv.exit

_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE5resetEv.exit: ; preds = %bb.a, %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.i
  %i.s = phi ptr [ null, %bb.a ], [ %i.q, %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE16destroy_elementsEv.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !412
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !553  ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %._crit_edge, label %_ZNK6vectorIjLb0EjE3endEv.exit

_ZNK6vectorIjLb0EjE3endEv.exit:                   ; preds = %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE5resetEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ab
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK3euf6solver13bool_var2exprEj.exit.thread, %_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE5resetEv.exit, %.lr.ph, %_ZNK6vectorIjLb0EjE3endEv.exit
  ret void

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK3euf6solver13bool_var2exprEj.exit.thread
  %.pr = load ptr, ptr %i.ad, align 8, !tbaa !23
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.am = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.ak, %.lr.ph ] ; 3 uses
  %i.an = phi ptr [ %i.by, %.lr.ph.splitthread-pre-split ], [ %i.s, %.lr.ph ] ; 7 uses
  %.01332 = phi ptr [ %i.bz, %.lr.ph.splitthread-pre-split ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.ao = load i32, ptr %.01332, align 4, !tbaa !18 ; 4 uses
  %i.ap = icmp eq ptr %i.am, null
  br i1 %i.ap, label %_ZNK3euf6solver13bool_var2exprEj.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %.lr.ph.split
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18
  %.not.i.i = icmp ult i32 %i.ao, %i.ar
  br i1 %.not.i.i, label %_ZNK3euf6solver13bool_var2exprEj.exit, label %_ZNK3euf6solver13bool_var2exprEj.exit.thread

_ZNK3euf6solver13bool_var2exprEj.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.at, align 8, !tbaa !27 ; 5 uses
  %.not15 = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not15, label %_ZNK3euf6solver13bool_var2exprEj.exit.thread, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZNK3euf6solver13bool_var2exprEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !29, !nonnull !13, !align !14 ; 3 uses
  store ptr %i.au, ptr %i.af, align 8, !tbaa !405
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !406
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !406
  %i.ay = load i32, ptr %.0.i.sroa.speculate.load..i, align 4, !tbaa !622 ; 2 uses
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !571 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK3euf6solver9get_enodeEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %.not.i.i.i = icmp ult i32 %i.ay, %i.bc
  br i1 %.not.i.i.i, label %_ZNK3euf6solver9get_enodeEP4expr.exit, label %_ZNK3euf6solver9get_enodeEP4expr.exit.thread

_ZNK3euf6solver9get_enodeEP4expr.exit:            ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bd
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.be, align 8, !tbaa !623 ; 2 uses
  %.not16 = icmp eq ptr %.0.i.sroa.speculate.load..i.i, null
  br i1 %.not16, label %_ZNK3euf6solver9get_enodeEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i19

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i19: ; preds = %_ZNK3euf6solver9get_enodeEP4expr.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i.i, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !772
  br label %_ZNK3euf6solver9get_enodeEP4expr.exit.thread

_ZNK3euf6solver9get_enodeEP4expr.exit.thread:     ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i, %_ZNK3euf6solver9get_enodeEP4expr.exit, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i19
  %i.bh = phi i32 [ %i.bg, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i19 ], [ 0, %_ZNK3euf6solver9get_enodeEP4expr.exit ], [ 0, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i.i ], [ 0, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit ] ; 2 uses
  store i32 %i.ao, ptr %2, align 8, !tbaa !773
  store i32 %i.bh, ptr %i.ah, align 4, !tbaa !775
  store ptr %.0.i.sroa.speculate.load..i, ptr %i.ai, align 8, !tbaa !403
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !405
  store ptr null, ptr %3, align 8, !tbaa !403
  %i.bi = icmp eq ptr %i.an, null
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK3euf6solver9get_enodeEP4expr.exit.thread
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.f, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.f:                                             ; preds = %bb.e, %_ZNK3euf6solver9get_enodeEP4expr.exit.thread
  invoke void @_ZN6vectorISt5tupleIJ7obj_refI4expr11ast_managerEjjEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  %.pre.i24 = load ptr, ptr %i.a, align 8, !tbaa !538 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i24, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !18
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %.noexc, %bb.e
  %i.bo = phi ptr [ %.pre.i24, %.noexc ], [ %i.an, %bb.e ] ; 3 uses
  %i.bp = phi i32 [ %.pre2.i, %.noexc ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.br ; 4 uses
  store i32 %i.ao, ptr %i.bs, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.bh, ptr %i.bt, align 4, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.0.i.sroa.speculate.load..i, ptr %i.bu, align 8, !tbaa !403
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.au, ptr %i.bv, align 8, !tbaa !405
  %i.bw = add i32 %i.bp, 1
  store i32 %i.bw, ptr %i.bq, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNK3euf6solver13bool_var2exprEj.exit.thread
end_hunk_0
