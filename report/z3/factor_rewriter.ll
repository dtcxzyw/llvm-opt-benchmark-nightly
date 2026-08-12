inline.NumInlined: 1699
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN15factor_rewriter7mk_mulsEv:bb.a

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge: ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %.pre22 = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.bs = add nuw i32 %.020, 1
  br label %bb.l

_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i: ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit14, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.bt = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !40
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bz)
          to label %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i unwind label %bb.j

._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i:    ; preds = %bb.i
  %.pre.i15 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre.i15, i64 -4
  %.pre21 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %.pre23 = add i32 %.pre21, -1
  br label %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #17
  unreachable

_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit: ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i, %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i
  %.pre-phi = phi i32 [ %i.bv, %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i ], [ %.pre23, %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i ]
  %i.cc = phi ptr [ %i.bg, %_ZN6vectorI10ptr_vectorI4exprELb1EjE4backEv.exit.i ], [ %.pre.i15, %._ZN6vectorIP4exprLb0EjED2Ev.exit_crit_edge.i ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %.pre-phi, ptr %i.cd, align 4, !tbaa !40
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !133 ; 6 uses
  %.idx = shl nuw nsw i64 %i.am, 4                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 2 uses
  %i.cg = icmp eq ptr %i.ce, null
  br i1 %i.cg, label %.lr.ph.i.preheader, label %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i

_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i:   ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !40
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 4                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ck
  %i.cm = add nuw nsw i64 %.idx, 16
  %.not11.i = icmp samesign eq i64 %i.cm, %i.ck
  br i1 %.not11.i, label %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit, %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i
  %i.cn = phi ptr [ %i.cl, %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i ], [ null, %_ZN6vectorI10ptr_vectorI4exprELb1EjE8pop_backEv.exit ]
  %.010.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi ptr [ %.0.i17, %.lr.ph.i ], [ %.010.i, %.lr.ph.i.preheader ] ; 2 uses
  %.0912.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %i.cf, %.lr.ph.i.preheader ] ; 4 uses
  %i.co = load ptr, ptr %.014.i, align 8, !tbaa !36
  store ptr %i.co, ptr %.0912.i, align 8, !tbaa !137
  %i.cp = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !150, !range !136, !noundef !52
  %i.cr = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  store i8 %i.cq, ptr %i.cr, align 8, !tbaa !134
  %i.cs = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %.0.i17 = getelementptr inbounds nuw i8, ptr %.014.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %.0.i17, %i.cn
  br i1 %.not.i18, label %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit, label %.lr.ph.i, !llvm.loop !151

_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit: ; preds = %.lr.ph.i, %_ZN6vectorISt4pairIP4exprbELb1EjE3endEv.exit.i
  %i.ct = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !40
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !40
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.cw

bb.l:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit
  %i.cx = phi ptr [ %i.ce, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit ], [ %.pre22, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge ] ; 2 uses
  %i.cy = phi ptr [ %i.cc, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit ], [ %i.bg, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge ]
  %.1 = phi i32 [ %.020, %_ZN6vectorISt4pairIP4exprbELb1EjE5eraseEPS3_.exit ], [ %i.bs, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit._crit_edge ]
  %i.cz = icmp eq ptr %i.cx, null
  br i1 %i.cz, label %.critedge, label %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit, !llvm.loop !152
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !114
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !115    ; 3 uses
  %.not.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i4, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117, !nonnull !52, !align !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !114
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull %i.d)
  br label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !115
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN15factor_rewriter15extract_factorsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %3 = alloca %class.svector.21, align 8          ; 11 uses
  %4 = alloca %class.rational, align 8            ; 14 uses
  %5 = alloca %class.rational, align 8            ; 16 uses
  %6 = alloca %class.rational, align 8            ; 12 uses
  %7 = alloca %class.ref_vector, align 8          ; 7 uses
  %8 = alloca %class.rational, align 8            ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 19 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i, align 8, !tbaa !36 ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !129, !nonnull !52, !align !53
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !114
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !114
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.k)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.j
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !130

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.s = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.d, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 0, ptr %i.t, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.u = phi ptr [ null, %bb.a ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.s, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit

_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread

bb.d:                                             ; preds = %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !20  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.i.i91.preheader, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread

.lr.ph.i.i91.preheader:                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ag = zext i32 %i.ae to i64
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ai = phi ptr [ %i.at, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.u, %.lr.ph.i.i91.preheader ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.az, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.ab, %.lr.ph.i.i91.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !114
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !114
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i91
  %i.an = icmp eq ptr %i.ai, null
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.g
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !40
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc, %bb.f
  %i.at = phi ptr [ %.pre.i.i.i.i, %.noexc ], [ %i.ai, %bb.f ] ; 3 uses
  %i.au = phi i32 [ %.pre2.i.i.i.i, %.noexc ], [ %i.ap, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !36
  %i.ay = add i32 %i.au, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ah
  br i1 %i.ba, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %.lr.ph.i.i91

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !133
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !134, !range !136, !noundef !52
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.at, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !20
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36
  %i.bj = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bi)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 0, ptr %4, align 8, !tbaa !125
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, -4
  store i8 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.bo, align 8, !tbaa !125
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = and i8 %i.bq, -4
  store i8 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.bs, align 8, !tbaa !122
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.i, %bb.af
  %i.cd = phi ptr [ %i.eg, %bb.af ], [ %i.cb, %bb.i ] ; 2 uses
  %indvars.iv397 = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %bb.i ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv397, %i.cg
  br i1 %i.ch, label %bb.k, label %.critedge

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.j:                                             ; preds = %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.k:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv397
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cl = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.cl, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  store i32 0, ptr %5, align 8, !tbaa !125, !alias.scope !154
  %i.cm = load i8, ptr %i.bu, align 4, !alias.scope !154
  %i.cn = and i8 %i.cm, -4                        ; 2 uses
  store i8 %i.cn, ptr %i.bu, align 4, !alias.scope !154
  store ptr null, ptr %i.bv, align 8, !tbaa !122, !alias.scope !154
  store i32 1, ptr %i.bw, align 8, !tbaa !125, !alias.scope !154
  %i.co = load i8, ptr %i.bx, align 4, !alias.scope !154
  %i.cp = and i8 %i.co, -4
  store i8 %i.cp, ptr %i.bx, align 4, !alias.scope !154
  store ptr null, ptr %i.by, align 8, !tbaa !122, !alias.scope !154
  %i.cq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !126, !noalias !154 ; 2 uses
  %i.cr = load i8, ptr %i.bk, align 4, !noalias !154
  %i.cs = and i8 %i.cr, 1
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = load i32, ptr %4, align 8, !tbaa !125, !noalias !154
  store i32 %i.cu, ptr %5, align 8, !tbaa !125, !alias.scope !154
  store i8 %i.cn, ptr %i.bu, align 4, !alias.scope !154
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.ab

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.cv = load i8, ptr %i.bp, align 4, !noalias !154
  %i.cw = and i8 %i.cv, 1
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.cy = load i32, ptr %i.bo, align 8, !tbaa !125, !noalias !154
  store i32 %i.cy, ptr %i.bw, align 8, !tbaa !125, !alias.scope !154
  %i.cz = load i8, ptr %i.bx, align 4, !alias.scope !154
  %i.da = and i8 %i.cz, -2
  store i8 %i.da, ptr %i.bx, align 4, !alias.scope !154
  br label %_ZN8rationalC2ERKS_.exit.i

bb.q:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
end_hunk_0
begin_hunk_1_@_ZN15factor_rewriter15extract_factorsEv:bb.a
  %i.ex = icmp eq i32 %i.ew, 5
  br i1 %i.ex, label %bb.ah, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105

bb.ah:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !35
  %i.fa = icmp eq i32 %i.ez, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105

_ZNK17arith_recognizers6is_intEPK4sort.exit.i105: ; preds = %bb.ah, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104, %bb.ag
  %i.fb = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i104 ], [ %i.fa, %bb.ah ], [ false, %bb.ag ]
  %i.fc = load ptr, ptr %i.ca, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i106, label %bb.ai, label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107

bb.ai:                                            ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc109 unwind label %bb.ap

.noexc109:                                        ; preds = %bb.ai
  %.pre.i.i.i108 = load ptr, ptr %i.ca, align 8, !tbaa !128
  br label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107

_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107: ; preds = %.noexc109, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105
  %i.fd = phi ptr [ %.pre.i.i.i108, %.noexc109 ], [ %i.fc, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i105 ]
  %i.fe = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.fb)
          to label %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111 unwind label %bb.ap ; 3 uses

_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111: ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107
  %.not.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !114
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !114
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.aj, %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit111
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 -4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !40 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !40
  %i.fo = icmp eq i32 %i.fl, %i.fn
  br i1 %i.fo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc112 unwind label %bb.ap

.noexc112:                                        ; preds = %bb.al
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %.noexc112, %bb.ak
  %i.fp = phi i32 [ %.pre2.i.i, %.noexc112 ], [ %i.fl, %bb.ak ] ; 2 uses
  %i.fq = phi ptr [ %.pre.i.i, %.noexc112 ], [ %i.fi, %bb.ak ] ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -4
  %i.fs = zext i32 %i.fp to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fs
  store ptr %i.fe, ptr %i.ft, align 8, !tbaa !36
  %i.fu = add i32 %i.fp, 1
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !40
  %i.fv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !126 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i113 unwind label %bb.an

.noexc.i113:                                      ; preds = %bb.am
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.em)
          to label %_ZN8rationalD2Ev.exit114 unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i113, %bb.am
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #17
  unreachable

_ZN8rationalD2Ev.exit114:                         ; preds = %.noexc.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.critedge86

bb.ao:                                            ; preds = %.critedge
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al, %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i107, %bb.ai
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn80 = phi { ptr, i32 } [ %i.fz, %bb.ap ], [ %i.fy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.as

.critedge86.loopexit:                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.critedge86

.critedge86:                                      ; preds = %.critedge86.loopexit, %_ZN8rationalD2Ev.exit114
  %i.ga = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !126 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i115 unwind label %bb.ar

.noexc.i115:                                      ; preds = %.critedge86
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %_ZN8rationalD2Ev.exit116 unwind label %bb.ar

bb.ar:                                            ; preds = %.noexc.i115, %.critedge86
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #17
  unreachable

_ZN8rationalD2Ev.exit116:                         ; preds = %.noexc.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.at

bb.as:                                            ; preds = %bb.aa, %.body, %bb.aq
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.aq ], [ %.pn76.pn, %.body ], [ %i.ec, %bb.aa ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body204

bb.at:                                            ; preds = %_ZN8rationalD2Ev.exit116, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit
  invoke void @_ZN15factor_rewriter14collect_powersEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread unwind label %.loopexit.split-lp

_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit
  %i.gd = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.critedge223, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118:          ; preds = %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread, %.critedge87
  %i.gf = phi ptr [ %i.lo, %.critedge87 ], [ null, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ]
  %i.gg = phi ptr [ %i.lp, %.critedge87 ], [ null, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 4 uses
  %i.gh = phi ptr [ %i.lr, %.critedge87 ], [ %i.gd, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 2 uses
  %storemerge239 = phi i32 [ %.0216, %.critedge87 ], [ 0, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 7 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !40
  %i.gk = icmp ult i32 %storemerge239, %i.gj
  br i1 %i.gk, label %bb.av, label %.critedge223.loopexit

.critedge223.loopexit:                            ; preds = %.critedge87, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118
  %.pre260 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %.critedge223

.critedge223:                                     ; preds = %.critedge223.loopexit, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread
  %i.gl = phi ptr [ %.pre260, %.critedge223.loopexit ], [ %i.u, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit.thread ] ; 3 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %.critedge223
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !40
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %bb.bp

bb.au:                                            ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.thread
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.av:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118
  %.not.i119 = icmp eq ptr %i.gg, null
  br i1 %.not.i119, label %_ZN6vectorIjLb0EjE5resetEv.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gr = getelementptr inbounds i8, ptr %i.gg, i64 -4
  store i32 0, ptr %i.gr, align 4, !tbaa !40
  %i.gs = getelementptr inbounds i8, ptr %i.gg, i64 -8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !40
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN6vectorIjLb0EjE5resetEv.exit.thread, label %bb.ax

_ZN6vectorIjLb0EjE5resetEv.exit.thread:           ; preds = %bb.av, %bb.aw
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc121 unwind label %bb.au

.noexc121:                                        ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.thread
  %.pre.i120 = load ptr, ptr %3, align 8, !tbaa !153 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i120, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !40
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !37
  %.pre257 = load ptr, ptr %.pre, align 8, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc121, %bb.aw
  %i.gv = phi ptr [ %.pre.i120, %.noexc121 ], [ %i.gf, %bb.aw ] ; 2 uses
  %i.gw = phi ptr [ %.pre.i120, %.noexc121 ], [ %i.gg, %bb.aw ] ; 3 uses
  %i.gx = phi ptr [ %.pre257, %.noexc121 ], [ %i.gh, %bb.aw ]
  %i.gy = phi i32 [ %.pre2.i, %.noexc121 ], [ 0, %bb.aw ] ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.ha = zext i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ha
  store i32 %storemerge239, ptr %i.hb, align 4, !tbaa !40
  %i.hc = add i32 %i.gy, 1                        ; 2 uses
  store i32 %i.hc, ptr %i.gz, align 4, !tbaa !40
  %i.hd = zext i32 %storemerge239 to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hd
  %9 = load ptr, ptr %i.he, align 8, !tbaa !36    ; 4 uses
  %i.hf = load ptr, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %10 = icmp eq ptr %i.hf, null
  br i1 %10, label %.critedge2, label %.outer

.outer:                                           ; preds = %bb.ax, %.outer.backedge
  %.ph337 = phi ptr [ %12, %.outer.backedge ], [ %i.hf, %bb.ax ] ; 2 uses
  %indvars.iv248.ph405 = phi i64 [ %indvars.iv248.ph.be, %.outer.backedge ], [ 1, %bb.ax ]
  %.ph338404 = phi ptr [ %.ph337.be, %.outer.backedge ], [ %i.gw, %bb.ax ] ; 6 uses
  %.ph337403 = phi ptr [ %.ph337.be, %.outer.backedge ], [ %i.gv, %bb.ax ] ; 2 uses
  %.ph402 = phi i32 [ %.ph.be, %.outer.backedge ], [ %i.hc, %bb.ax ]
  %i.hg = getelementptr inbounds i8, ptr %.ph337, i64 -4
  %i.hh = icmp eq ptr %.ph338404, null
  %i.hi = getelementptr inbounds i8, ptr %.ph338404, i64 -8
  %i.hj = getelementptr inbounds i8, ptr %.ph338404, i64 -4
  br label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit123

_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit123: ; preds = %.outer, %bb.bi
  %11 = phi i32 [ %i.jo, %bb.bi ], [ %.ph402, %.outer ] ; 6 uses
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.bi ], [ %indvars.iv248.ph405, %.outer ] ; 4 uses
  %i.hk = load i32, ptr %i.hg, align 4, !tbaa !40
  %i.hl = zext i32 %i.hk to i64
  %i.hm = icmp samesign ult i64 %indvars.iv248, %i.hl
  br i1 %i.hm, label %.preheader226, label %.critedge2

.preheader226:                                    ; preds = %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit123
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.ph337, i64 %indvars.iv248
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !20 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.critedge4.thread, label %.preheader226.split

.preheader226.split:                              ; preds = %.preheader226
  %i.hq = getelementptr inbounds i8, ptr %i.ho, i64 -4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !40 ; 3 uses
  %.not = icmp eq i32 %i.hr, 0
  br i1 %.not, label %.critedge4.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader226.split
  %i.hs = add i32 %i.hr, -1
  %wide.trip.count = zext i32 %i.hr to i64
  br label %.lr.ph

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit125:          ; preds = %.lr.ph
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph, !llvm.loop !157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit125
  %indvars.iv245 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next246, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit125 ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv245
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !36
  %i.hv = icmp eq ptr %i.hu, %9                   ; 3 uses
  br i1 %i.hv, label %..critedge4.split_crit_edge, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit125, !llvm.loop !157

..critedge4.split_crit_edge:                      ; preds = %.lr.ph
  %i.hw = trunc nuw i64 %indvars.iv245 to i32
  br label %.critedge4, !llvm.loop !157

.critedge4:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit125, %..critedge4.split_crit_edge
  %.us-phi230 = phi i32 [ %i.hw, %..critedge4.split_crit_edge ], [ %i.hs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit125 ] ; 2 uses
  br i1 %i.hh, label %bb.ay, label %.critedge4.thread

.critedge4.thread:                                ; preds = %.preheader226, %.preheader226.split, %.critedge4
  %.us-phi230326 = phi i32 [ %.us-phi230, %.critedge4 ], [ -1, %.preheader226.split ], [ -1, %.preheader226 ] ; 2 uses
  %.us-phi.shrunk323 = phi i1 [ %i.hv, %.critedge4 ], [ false, %.preheader226.split ], [ false, %.preheader226 ] ; 2 uses
  %i.hx = load i32, ptr %i.hi, align 4, !tbaa !40
  %i.hy = icmp eq i32 %11, %i.hx
  br i1 %i.hy, label %bb.az, label %bb.bi

bb.ay:                                            ; preds = %.critedge4
  %i.hz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc129 unwind label %bb.bj ; 4 uses

bb.az:                                            ; preds = %.critedge4.thread
  %i.ia = getelementptr inbounds i8, ptr %.ph338404, i64 -8
  %i.ib = mul i32 %11, 3
  %i.ic = add i32 %i.ib, 1
  %i.id = lshr i32 %i.ic, 1                       ; 3 uses
  %i.ie = shl i32 %i.id, 2
  %i.if = add i32 %i.ie, 8                        ; 2 uses
  %.not.i200 = icmp ugt i32 %i.id, %11
  br i1 %.not.i200, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ig = shl i32 %11, 2
  %i.ih = add i32 %i.ig, 8
  %.not27.i = icmp ugt i32 %i.if, %i.ih
  br i1 %.not27.i, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ii = call ptr @__cxa_allocate_exception(i64 40) #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ii, align 8, !tbaa !158
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 3 uses
  store ptr %i.ik, ptr %i.ij, align 8, !tbaa !160
  %i.il = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !164 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add nuw nsw i64 %i.ip, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ik, ptr noundef nonnull align 8 dereferenceable(1) %i.im, i64 %i.ir, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bc
  store ptr %i.il, ptr %i.ij, align 8, !tbaa !162
  %i.is = load i64, ptr %i.im, align 8, !tbaa !165
  store i64 %i.is, ptr %i.ik, align 8, !tbaa !165
  %.phi.trans.insert.i201 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i202 = load i64, ptr %.phi.trans.insert.i201, align 8, !tbaa !164
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bd
  %i.it = phi i64 [ %i.ip, %bb.bd ], [ %.pre.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i64 %i.it, ptr %i.iv, align 8, !tbaa !164
  store ptr %i.im, ptr %1, align 8, !tbaa !162
  store i64 0, ptr %i.iu, align 8, !tbaa !164
  store i8 0, ptr %i.im, align 8, !tbaa !165
  invoke void @__cxa_throw(ptr nonnull %i.ii, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #18
          to label %bb.bh unwind label %bb.be

bb.be:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.im
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.be
  %i.iz = load i64, ptr %i.im, align 8, !tbaa !165
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %.body204

bb.bf:                                            ; preds = %bb.bb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @__cxa_free_exception(ptr %i.ii) #16
  br label %.body204

bb.bg:                                            ; preds = %bb.ba
  %i.jc = zext i32 %i.if to i64
  %i.jd = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ia, i64 noundef %i.jc)
          to label %.noexc206 unwind label %bb.bj ; 4 uses

.noexc206:                                        ; preds = %bb.bg
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 5 uses
  store ptr %i.je, ptr %3, align 8, !tbaa !153
  store i32 %i.id, ptr %i.jd, align 4, !tbaa !40
  %.phi.trans.insert.i127333 = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %.pre2.i128334 = load i32, ptr %.phi.trans.insert.i127333, align 4, !tbaa !40 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jg = zext i32 %.pre2.i128334 to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jg
  store i32 %.us-phi230326, ptr %i.jh, align 4, !tbaa !40
  %i.ji = add i32 %.pre2.i128334, 1               ; 2 uses
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !40
  br i1 %.us-phi.shrunk323, label %.outer.backedge, label %.critedge87.loopexit

bb.bh:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc129:                                        ; preds = %bb.ay
  store i32 2, ptr %i.hz, align 4, !tbaa !40
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i32 0, ptr %i.jj, align 4, !tbaa !40
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 5 uses
  store ptr %i.jk, ptr %3, align 8, !tbaa !153
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i32 %.us-phi230, ptr %i.jk, align 4, !tbaa !40
  store i32 1, ptr %i.jl, align 4, !tbaa !40
  br i1 %i.hv, label %.outer.backedge, label %.critedge87.loopexit

.outer.backedge:                                  ; preds = %.noexc129, %.noexc206
  %.ph.be = phi i32 [ %i.ji, %.noexc206 ], [ 1, %.noexc129 ]
  %.ph337.be = phi ptr [ %i.je, %.noexc206 ], [ %i.jk, %.noexc129 ] ; 3 uses
  %indvars.iv248.ph.be = add nuw nsw i64 %indvars.iv248, 1
  %12 = load ptr, ptr %i.v, align 8, !tbaa !37    ; 2 uses
  %13 = icmp eq ptr %12, null
  br i1 %13, label %.critedge2, label %.outer, !llvm.loop !166

bb.bi:                                            ; preds = %.critedge4.thread
  %i.jm = zext i32 %11 to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.ph338404, i64 %i.jm
  store i32 %.us-phi230326, ptr %i.jn, align 4, !tbaa !40
  %i.jo = add i32 %11, 1                          ; 2 uses
  store i32 %i.jo, ptr %i.hj, align 4, !tbaa !40
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  br i1 %.us-phi.shrunk323, label %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit123, label %.critedge87.loopexit, !llvm.loop !166

bb.bj:                                            ; preds = %bb.bg, %bb.ay
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.critedge2:                                       ; preds = %.outer.backedge, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit123, %bb.ax
  %.ph337398 = phi ptr [ %.ph337403, %_ZNK6vectorI10ptr_vectorI4exprELb1EjE4sizeEv.exit123 ], [ %i.gv, %bb.ax ], [ %.ph337.be, %.outer.backedge ]
  %.not.i.i.i.i130 = icmp eq ptr %9, null
  br i1 %.not.i.i.i.i130, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131, label %bb.bk

bb.bk:                                            ; preds = %.critedge2
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !114
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !114
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131: ; preds = %bb.bk, %.critedge2
  %i.jt = load ptr, ptr %i.c, align 8, !tbaa !20  ; 4 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !40 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !40
  %i.jz = icmp eq i32 %i.jw, %i.jy
  br i1 %i.jz, label %bb.bm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136

bb.bm:                                            ; preds = %bb.bl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i131
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc135 unwind label %bb.bn

.noexc135:                                        ; preds = %bb.bm
  %.pre.i.i132 = load ptr, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert.i.i133 = getelementptr inbounds i8, ptr %.pre.i.i132, i64 -4
  %.pre2.i.i134 = load i32, ptr %.phi.trans.insert.i.i133, align 4, !tbaa !40
  %.pre259 = load ptr, ptr %3, align 8, !tbaa !153
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136: ; preds = %bb.bl, %.noexc135
  %i.ka = phi ptr [ %.pre259, %.noexc135 ], [ %.ph337398, %bb.bl ] ; 7 uses
  %i.kb = phi i32 [ %.pre2.i.i134, %.noexc135 ], [ %i.jw, %bb.bl ] ; 2 uses
  %i.kc = phi ptr [ %.pre.i.i132, %.noexc135 ], [ %i.jt, %bb.bl ] ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %i.ke = zext i32 %i.kb to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ke
  store ptr %9, ptr %i.kf, align 8, !tbaa !36
  %i.kg = add i32 %i.kb, 1
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !40
  %i.kh = icmp eq ptr %i.ka, null
  br i1 %i.kh, label %.critedge87, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph:            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136
  %i.ki = getelementptr inbounds i8, ptr %i.ka, i64 -4 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !40
  %.not241 = icmp eq i32 %i.kj, 0
  br i1 %.not241, label %.critedge87, label %.lr.ph238

.lr.ph238:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !37
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.bo:                                            ; preds = %.lr.ph238, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %indvars.iv251 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next252, %_ZNK6vectorIjLb0EjE4sizeEv.exit ] ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv251
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !20 ; 5 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv251
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !40
  %i.kq = zext i32 %i.kp to i64
  %.idx = shl nuw nsw i64 %i.kq, 3                ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx ; 3 uses
  %i.ks = ptrtoaddr ptr %i.kr to i64
  %i.kt = ptrtoaddr ptr %i.kn to i64
  %i.ku = icmp eq ptr %i.kn, null
  br i1 %i.ku, label %.lr.ph.preheader.i, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.bo
  %i.kv = getelementptr inbounds i8, ptr %i.kn, i64 -4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !40
  %i.kx = zext i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 3                ; 2 uses
  %i.kz = add nuw nsw i64 %.idx, 8
  %.not11.i = icmp samesign eq i64 %i.kz, %i.ky
  br i1 %.not11.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bo, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %.0.i.i.i332 = phi i64 [ %i.ky, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ], [ 0, %bb.bo ]
  %.010.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.la = add i64 %i.kt, -16
  %i.lb = sub i64 %i.la, %i.ks
  %i.lc = add i64 %i.lb, %.0.i.i.i332
  %i.ld = and i64 %i.lc, -8
  %i.le = add i64 %i.ld, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kr, ptr nonnull align 8 %.010.i, i64 %i.le, i1 false), !tbaa !36
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %.lr.ph.preheader.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.lf = getelementptr inbounds i8, ptr %i.kn, i64 -4 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !40
  %i.lh = add i32 %i.lg, -1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !40
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.li = load i32, ptr %i.ki, align 4, !tbaa !40
  %i.lj = zext i32 %i.li to i64
  %i.lk = icmp samesign ult i64 %indvars.iv.next252, %i.lj
  br i1 %i.lk, label %bb.bo, label %.critedge87

.critedge87.loopexit:                             ; preds = %.noexc206, %.noexc129, %bb.bi
  %i.ll = phi ptr [ %.ph338404, %bb.bi ], [ %i.je, %.noexc206 ], [ %i.jk, %.noexc129 ]
  %i.lm = phi ptr [ %.ph337403, %bb.bi ], [ %i.je, %.noexc206 ], [ %i.jk, %.noexc129 ]
  %i.ln = add i32 %storemerge239, 1
  br label %.critedge87

.critedge87:                                      ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, %.critedge87.loopexit
  %i.lo = phi ptr [ %i.lm, %.critedge87.loopexit ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136 ], [ %i.ka, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %i.ka, %_ZNK6vectorIjLb0EjE4sizeEv.exit ]
  %i.lp = phi ptr [ %i.ll, %.critedge87.loopexit ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136 ], [ %i.ka, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %i.ka, %_ZNK6vectorIjLb0EjE4sizeEv.exit ]
  %.0216 = phi i32 [ %i.ln, %.critedge87.loopexit ], [ %storemerge239, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit136 ], [ %storemerge239, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %storemerge239, %_ZNK6vectorIjLb0EjE4sizeEv.exit ]
  %i.lq = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !20 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %.critedge223.loopexit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit118, !llvm.loop !167

bb.bp:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.lt = load ptr, ptr %0, align 8, !tbaa !41, !nonnull !52, !align !53
  %i.lu = ptrtoint ptr %i.lt to i64
  store i64 %i.lu, ptr %7, align 8, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store ptr null, ptr %i.lv, align 8, !tbaa !20
  %i.lw = load ptr, ptr %i.gl, align 8, !tbaa !36
  %i.lx = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.lw)
          to label %.preheader unwind label %bb.bq

.preheader:                                       ; preds = %bb.bp
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !133 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %.critedge225, label %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit.lr.ph: ; preds = %.preheader
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit

_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit:   ; preds = %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit.lr.ph, %bb.cf
  %indvars.iv254 = phi i64 [ 0, %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next255, %bb.cf ] ; 4 uses
  %i.mj = phi ptr [ %i.lz, %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit.lr.ph ], [ %i.ov, %bb.cf ]
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !40
  %i.mm = zext i32 %i.ml to i64
  %i.mn = icmp samesign ult i64 %indvars.iv254, %i.mm
  br i1 %i.mn, label %bb.bs, label %.critedge225

.critedge225:                                     ; preds = %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit, %bb.cf, %.preheader
  %i.mo = load ptr, ptr %i.lv, align 8, !tbaa !20 ; 4 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit143.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit143

bb.bq:                                            ; preds = %bb.bp
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.br:                                            ; preds = %bb.ce, %bb.cb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit159
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bs:                                            ; preds = %_ZNK6vectorISt4pairIP4exprbELb1EjE4sizeEv.exit
  %i.ms = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv254
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !20 ; 4 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145:          ; preds = %bb.bs
  %i.mw = getelementptr inbounds i8, ptr %i.mu, i64 -4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !40 ; 2 uses
  switch i32 %i.mx, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit159 [
    i32 0, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145.thread
    i32 1, label %bb.ca
  ]

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145.thread:   ; preds = %bb.bs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.my = load i8, ptr %i.mc, align 4
  %i.mz = and i8 %i.my, -4
  store ptr null, ptr %i.md, align 8, !tbaa !122
  store i32 1, ptr %i.me, align 8, !tbaa !125
  %i.na = load i8, ptr %i.mf, align 4
  %i.nb = and i8 %i.na, -4
  store i8 %i.nb, ptr %i.mf, align 4
  store ptr null, ptr %i.mg, align 8, !tbaa !122
  %i.nc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !126
  store i32 1, ptr %8, align 8, !tbaa !125
  store i8 %i.mz, ptr %i.mc, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.nc, ptr noundef nonnull align 8 dereferenceable(16) %i.me)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145.thread
  store i32 1, ptr %i.me, align 8, !tbaa !125
  %i.nd = load i8, ptr %i.mf, align 4
  %i.ne = and i8 %i.nd, -2
  store i8 %i.ne, ptr %i.mf, align 4
  %i.nf = load ptr, ptr %i.mh, align 8, !tbaa !24 ; 3 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i149, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i148

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i148: ; preds = %bb.bt
  %i.nh = load i32, ptr %i.nf, align 8, !tbaa !30
  %i.ni = icmp eq i32 %i.nh, 5
  br i1 %i.ni, label %bb.bu, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i149

bb.bu:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i148
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !35
  %i.nl = icmp eq i32 %i.nk, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i149

_ZNK17arith_recognizers6is_intEPK4sort.exit.i149: ; preds = %bb.bu, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i148, %bb.bt
  %i.nm = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i148 ], [ %i.nl, %bb.bu ], [ false, %bb.bt ]
  %i.nn = load ptr, ptr %i.mi, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i150, label %bb.bv, label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i151

bb.bv:                                            ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i149
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mb)
          to label %.noexc153 unwind label %bb.by

.noexc153:                                        ; preds = %bb.bv
  %.pre.i.i.i152 = load ptr, ptr %i.mi, align 8, !tbaa !128
  br label %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i151

_ZNK10arith_util10mk_numeralERK8rationalb.exit.i151: ; preds = %.noexc153, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i149
  %i.no = phi ptr [ %.pre.i.i.i152, %.noexc153 ], [ %i.nn, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i149 ]
  %i.np = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %i.nm)
          to label %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit155 unwind label %bb.by

_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit155: ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i151
  %i.nq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !126 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.nq, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i156 unwind label %bb.bw

.noexc.i156:                                      ; preds = %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit155
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.nq, ptr noundef nonnull align 8 dereferenceable(16) %i.me)
          to label %_ZN8rationalD2Ev.exit157 unwind label %bb.bw

bb.bw:                                            ; preds = %.noexc.i156, %_ZNK10arith_util10mk_numeralERK8rationalPK4sort.exit155
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #17
  unreachable

_ZN8rationalD2Ev.exit157:                         ; preds = %.noexc.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZNK10arith_util6mk_mulEjPKP4expr.exit

bb.bx:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145.thread
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit.i151, %bb.bv
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn = phi { ptr, i32 } [ %i.nu, %bb.by ], [ %i.nt, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.cu

bb.ca:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145
  %i.nv = load ptr, ptr %i.mu, align 8, !tbaa !36
  br label %_ZNK10arith_util6mk_mulEjPKP4expr.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit159:          ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit145
  %i.nw = load ptr, ptr %i.mb, align 8, !tbaa !168, !nonnull !52, !align !53
  %i.nx = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.nw, i32 noundef 5, i32 noundef 9, i32 noundef %i.mx, ptr noundef nonnull %i.mu)
          to label %_ZNK10arith_util6mk_mulEjPKP4expr.exit unwind label %bb.br

_ZNK10arith_util6mk_mulEjPKP4expr.exit:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit159, %bb.ca, %_ZN8rationalD2Ev.exit157
  %.049 = phi ptr [ %i.nv, %bb.ca ], [ %i.np, %_ZN8rationalD2Ev.exit157 ], [ %i.nx, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit159 ] ; 2 uses
  %i.ny = load ptr, ptr %i.ly, align 8, !tbaa !133
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %indvars.iv254
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i8, ptr %i.oa, align 8, !tbaa !134, !range !136, !noundef !52
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %_ZNK10arith_util9mk_uminusEP4expr.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNK10arith_util6mk_mulEjPKP4expr.exit
  %i.od = load ptr, ptr %i.mb, align 8, !tbaa !168, !nonnull !52, !align !53
  %i.oe = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.od, i32 noundef 5, i32 noundef 8, ptr noundef %.049)
          to label %_ZNK10arith_util9mk_uminusEP4expr.exit unwind label %bb.br

_ZNK10arith_util9mk_uminusEP4expr.exit:           ; preds = %bb.cb, %_ZNK10arith_util6mk_mulEjPKP4expr.exit
  %.150 = phi ptr [ %.049, %_ZNK10arith_util6mk_mulEjPKP4expr.exit ], [ %i.oe, %bb.cb ] ; 3 uses
  %.not.i.i.i.i162 = icmp eq ptr %.150, null
  br i1 %.not.i.i.i.i162, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i163, label %bb.cc

bb.cc:                                            ; preds = %_ZNK10arith_util9mk_uminusEP4expr.exit
  %i.of = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
end_hunk_1
