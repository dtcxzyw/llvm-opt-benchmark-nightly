Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/maxcore?download=true
inline.NumInlined: 1975
inline.NumDeleted: 740
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7maxcore16sort_assumptionsER10ref_vectorI4expr11ast_managerE:bb.a
  br i1 %i.ce, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef nonnull %i.bz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i14
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.by
  br i1 %i.cg, label %.lr.ph.i.i14, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.not.i.i15 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i15, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ch = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.bs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  store i32 0, ptr %i.ci, align 4, !tbaa !155
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZSt4sortIPP4exprN7maxcore11compare_asmEEvT_S5_T0_.exit.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZSt4sortIPP4exprN7maxcore11compare_asmEEvT_S5_T0_.exit
  %i.cj = phi ptr [ %i.br, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ %i.br, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.br, %_ZSt4sortIPP4exprN7maxcore11compare_asmEEvT_S5_T0_.exit ], [ %i.f, %_ZSt4sortIPP4exprN7maxcore11compare_asmEEvT_S5_T0_.exit.thread ] ; 2 uses
  %i.ck = phi ptr [ %i.ch, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %_ZSt4sortIPP4exprN7maxcore11compare_asmEEvT_S5_T0_.exit ], [ null, %_ZSt4sortIPP4exprN7maxcore11compare_asmEEvT_S5_T0_.exit.thread ]
  %i.cl = load ptr, ptr %2, align 8, !tbaa !57    ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !155 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.idx.i.i = shl nuw nsw i64 %i.cp, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i
  %i.cr = icmp eq i32 %i.co, 0
  br i1 %i.cr, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20
  %i.cs = phi ptr [ %i.dd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20 ], [ %i.ck, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20 ], [ %i.cl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.ct = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i18, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i19, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !159
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i19

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i19: ; preds = %bb.k, %.lr.ph.i.i17
  %i.cx = icmp eq ptr %i.cs, null
  br i1 %i.cx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i19
  %i.cy = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !155 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !155
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i19
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.m
  %.pre.i.i.i.i21 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i.i.i22 = getelementptr inbounds i8, ptr %.pre.i.i.i.i21, i64 -4
  %.pre2.i.i.i.i23 = load i32, ptr %.phi.trans.insert.i.i.i.i22, align 4, !tbaa !155
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20: ; preds = %.noexc24, %bb.l
  %i.dd = phi ptr [ %.pre.i.i.i.i21, %.noexc24 ], [ %i.cs, %bb.l ] ; 3 uses
  %i.de = phi i32 [ %.pre2.i.i.i.i23, %.noexc24 ], [ %i.cz, %bb.l ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dg
  store ptr %i.ct, ptr %i.dh, align 8, !tbaa !156
  %i.di = add i32 %i.de, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !155
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cq
  br i1 %i.dk, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, label %.lr.ph.i.i17

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i20, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.dl = load ptr, ptr %i.cj, align 8, !tbaa !57 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i25

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i25:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !155 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %.not.i26 = icmp eq i32 %i.do, 0
  br i1 %.not.i26, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i33, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i25, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30
  %.06.i.i28 = phi ptr [ %i.dy, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30 ], [ %i.dl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i25 ] ; 2 uses
  %i.ds = load ptr, ptr %.06.i.i28, align 8, !tbaa !156 ; 3 uses
  %i.dt = load ptr, ptr %3, align 8, !tbaa !157, !nonnull !54, !align !55
  %.not.i.i.i.i.i29 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i29, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i27
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !159
  %i.dw = add i32 %i.dv, -1                       ; 2 uses
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !159
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dt, ptr noundef nonnull %i.ds)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30 unwind label %bb.q

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30: ; preds = %bb.o, %bb.n, %.lr.ph.i.i27
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i28, i64 8 ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.dr
  br i1 %i.dz, label %.lr.ph.i.i27, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i31, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i31: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i30
  %.pre.i32 = load ptr, ptr %i.cj, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i32, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i33

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i33: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i31, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i25
  %i.ea = phi ptr [ %.pre.i32, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i31 ], [ %i.dl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i25 ]
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.eb)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i33
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #21
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendEjPKPS0_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i31, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.eg = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i34, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.eh)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #21
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.m, %bb.g, %.noexc, %bb.h
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp84
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7maxcore10next_indexERK10ref_vectorI4expr11ast_managerEj(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 15 uses
  %4 = alloca %class.rational, align 8            ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155
  %i.f = icmp ult i32 %2, %i.e
  br i1 %i.f, label %bb.b, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.k = tail call noundef ptr @_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.i), !noalias !399 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 0, ptr %3, align 8, !tbaa !66, !alias.scope !399
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.n = load i8, ptr %i.m, align 4, !alias.scope !399
  %i.o = and i8 %i.n, -4                          ; 2 uses
  store i8 %i.o, ptr %i.m, align 4, !alias.scope !399
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !67, !alias.scope !399
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !66, !alias.scope !399
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.s = load i8, ptr %i.r, align 4, !alias.scope !399
  %i.t = and i8 %i.s, -4
  store i8 %i.t, ptr %i.r, align 4, !alias.scope !399
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !67, !alias.scope !399
  %i.v = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141, !noalias !399 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.x = load i8, ptr %i.w, align 4, !noalias !399
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !66, !noalias !399
  store i32 %i.aa, ptr %3, align 8, !tbaa !66, !alias.scope !399
  store i8 %i.o, ptr %i.m, align 4, !alias.scope !399
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, 1
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !66
  store i32 %i.ag, ptr %i.q, align 8, !tbaa !66, !alias.scope !399
  %i.ah = load i8, ptr %i.r, align 4, !alias.scope !399
  %i.ai = and i8 %i.ah, -2
  store i8 %i.ai, ptr %i.r, align 4, !alias.scope !399
  br label %_ZNK7maxcore10get_weightEP4expr.exit

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
  br label %_ZNK7maxcore10get_weightEP4expr.exit

_ZNK7maxcore10get_weightEP4expr.exit:             ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %_ZNK7maxcore10get_weightEP4expr.exit
  %.021.in = phi i32 [ %2, %_ZNK7maxcore10get_weightEP4expr.exit ], [ %.021, %.critedge ]
  %.021 = add nuw i32 %.021.in, 1                 ; 4 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.critedge.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28: ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !155
  %i.as = icmp ult i32 %.021, %i.ar
  br i1 %i.as, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %5 = zext i32 %.021 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %5
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !156
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.av = invoke noundef ptr @_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.au)
          to label %.noexc unwind label %bb.t     ; 4 uses

.noexc:                                           ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store i32 0, ptr %4, align 8, !tbaa !66, !alias.scope !400
  %i.ax = load i8, ptr %i.aj, align 4, !alias.scope !400
  %i.ay = and i8 %i.ax, -4                        ; 2 uses
  store i8 %i.ay, ptr %i.aj, align 4, !alias.scope !400
  store ptr null, ptr %i.ak, align 8, !tbaa !67, !alias.scope !400
  store i32 1, ptr %i.al, align 8, !tbaa !66, !alias.scope !400
  %i.az = load i8, ptr %i.am, align 4, !alias.scope !400
  %i.ba = and i8 %i.az, -4
  store i8 %i.ba, ptr %i.am, align 4, !alias.scope !400
  store ptr null, ptr %i.an, align 8, !tbaa !67, !alias.scope !400
  %i.bb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141, !noalias !400 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bd = load i8, ptr %i.bc, align 4, !noalias !400
  %i.be = and i8 %i.bd, 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.bg = load i32, ptr %i.aw, align 8, !tbaa !66, !noalias !400
  store i32 %i.bg, ptr %4, align 8, !tbaa !66, !alias.scope !400
  store i8 %i.ay, ptr %i.aj, align 4, !alias.scope !400
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i29

bb.j:                                             ; preds = %.noexc
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i29 unwind label %bb.t

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i29: ; preds = %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i29
  %i.bm = load i32, ptr %i.bh, align 8, !tbaa !66
  store i32 %i.bm, ptr %i.al, align 8, !tbaa !66, !alias.scope !400
  %i.bn = load i8, ptr %i.am, align 4, !alias.scope !400
  %i.bo = and i8 %i.bn, -2
  store i8 %i.bo, ptr %i.am, align 4, !alias.scope !400
  br label %_ZNK7maxcore10get_weightEP4expr.exit32

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i29
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNK7maxcore10get_weightEP4expr.exit32 unwind label %bb.t

_ZNK7maxcore10get_weightEP4expr.exit32:           ; preds = %bb.k, %bb.l
  %i.bp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  %i.bq = load i8, ptr %i.m, align 4
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.m, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

bb.m:                                             ; preds = %_ZNK7maxcore10get_weightEP4expr.exit32
  %i.bt = load i8, ptr %i.aj, align 4
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.split.i.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i

.split.i.i:                                       ; preds = %bb.m
  %i.bw = load i32, ptr %3, align 8, !tbaa !66
  %i.bx = load i32, ptr %4, align 8, !tbaa !66
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %bb.r

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i:     ; preds = %bb.m, %_ZNK7maxcore10get_weightEP4expr.exit32
  %i.bz = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc33 unwind label %bb.u

.noexc33:                                         ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.noexc33, %.split.i.i
  %i.cb = load i8, ptr %i.r, align 4
  %i.cc = and i8 %i.cb, 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ce = load i8, ptr %i.am, align 4
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = load i32, ptr %i.q, align 8, !tbaa !66
  %i.ci = load i32, ptr %i.al, align 8, !tbaa !66
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ck = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %.noexc34 unwind label %bb.u

.noexc34:                                         ; preds = %bb.q
  %i.cl = icmp eq i32 %i.ck, 0
  br label %bb.r

bb.r:                                             ; preds = %.split.i.i, %.noexc33, %bb.p, %.noexc34
  %.ph = phi i1 [ %i.cl, %.noexc34 ], [ %i.cj, %bb.p ], [ false, %.split.i.i ], [ false, %.noexc33 ]
  %i.cm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %.critedge unwind label %bb.s

bb.s:                                             ; preds = %.noexc.i, %bb.r
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #21
  unreachable

.critedge:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.ph, label %bb.g, label %.critedge.thread, !llvm.loop !398

bb.t:                                             ; preds = %bb.l, %bb.j, %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %i.cp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn

.critedge.thread:                                 ; preds = %bb.g, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28, %.critedge
  %i.cr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i35 unwind label %bb.w

.noexc.i35:                                       ; preds = %.critedge.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN8rationalD2Ev.exit36 unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i35, %.critedge.thread
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #21
  unreachable

_ZN8rationalD2Ev.exit36:                          ; preds = %.noexc.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %bb.a, %_ZN8rationalD2Ev.exit36, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.122 = phi i32 [ %.021, %_ZN8rationalD2Ev.exit36 ], [ %2, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %2, %bb.a ]
  ret i32 %.122
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7maxcore9check_satEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(696) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref, align 8                 ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.b = tail call noundef i32 @_ZN6solver9check_satEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i32 noundef %1, ptr noundef %2) ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !143
  %i.d = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.f, !inline_history !12

.noexc:                                           ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8, !tbaa !143
  %.not4.i = icmp eq ptr %i.h, null
  br i1 %.not4.i, label %_ZN3refI5modelED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !285  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(25) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN16check_sat_result9get_modelER3refI5modelE.exit unwind label %bb.f, !inline_history !12

_ZN16check_sat_result9get_modelER3refI5modelE.exit: ; preds = %bb.e
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !143
  %i.n = icmp eq ptr %.pr.pre, null
  br i1 %i.n, label %_ZN3refI5modelED2Ev.exit, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread

_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread: ; preds = %bb.d, %_ZN16check_sat_result9get_modelER3refI5modelE.exit
  invoke void @_ZN7maxcore17update_assignmentER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %_ZN16check_sat_result9get_modelER3refI5modelE.exit.thread
  %.pr8 = load ptr, ptr %3, align 8, !tbaa !143   ; 5 uses
  %.not.i.i = icmp eq ptr %.pr8, null
  br i1 %.not.i.i, label %_ZN3refI5modelED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.pr8, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !154
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !154
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %_ZN3refI5modelED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pr8, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.pr8) #20, !inline_history !0
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %.pr8)
          to label %_ZN3refI5modelED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

_ZN3refI5modelED2Ev.exit:                         ; preds = %.noexc, %_ZN16check_sat_result9get_modelER3refI5modelE.exit, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZN3refI5modelED2Ev.exit, %bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.108", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.108", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.108", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph25

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.v, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph25, !llvm.loop !401

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
  %.0151724 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %.01823 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.h = phi i64 [ %i.x, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = lshr i64 %i.h, 4
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %.01823, i64 -8
  call void @_ZSt22__move_median_to_firstIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEEvT_S9_S9_S9_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.j, ptr noundef nonnull %i.k, ptr %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph25
  %.013.i.i = phi ptr [ %.01823, %.lr.ph25 ], [ %.114.i.i, %bb.f ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph25 ], [ %i.o, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %i.o, %bb.d ] ; 9 uses
  %i.l = load ptr, ptr %.1.i.i, align 8, !tbaa !156
  %i.m = load ptr, ptr %0, align 8, !tbaa !156
  %i.n = call noundef zeroext i1 @_ZNK7maxcore11compare_asmclEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.l, ptr noundef %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.n, label %bb.d, label %.preheader.i.i, !llvm.loop !402

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.d ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !156
  %i.q = load ptr, ptr %.114.i.i, align 8, !tbaa !156
  %i.r = call noundef zeroext i1 @_ZNK7maxcore11compare_asmclEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.p, ptr noundef %i.q)
  br i1 %i.r, label %.preheader.i.i, label %bb.e, !llvm.loop !403

bb.e:                                             ; preds = %.preheader.i.i
  %i.s = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.s, label %bb.f, label %_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEET_S9_S9_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %.1.i.i, align 8, !tbaa !156
  %i.u = load ptr, ptr %.114.i.i, align 8, !tbaa !156
  store ptr %i.u, ptr %.1.i.i, align 8, !tbaa !156
  store ptr %i.t, ptr %.114.i.i, align 8, !tbaa !156
  br label %bb.c, !llvm.loop !404

_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEET_S9_S9_T0_.exit: ; preds = %bb.e
  %i.v = add nsw i64 %.0151724, -1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt16__introsort_loopIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEEvT_S9_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.01823, i64 noundef %i.v, ptr %3)
  %i.w = ptrtoint ptr %.1.i.i to i64
  %i.x = sub i64 %i.w, %i.a                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 128
  br i1 %i.y, label %bb.b, label %.loopexit, !llvm.loop !401

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEET_S9_S9_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7maxcore11compare_asmEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.110", align 8 ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.110", align 8 ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.108", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %scevgep = getelementptr i8, ptr %0, i64 8
end_hunk_0
