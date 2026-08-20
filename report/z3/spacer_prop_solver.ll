inline.NumInlined: 725
inline.NumDeleted: 377
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6spacer11prop_solver3mssER10ref_vectorI4expr11ast_managerES5_:bb.a
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp250

.critedge:                                        ; preds = %.lr.ph.preheader.i.i, %bb.cf, %bb.ce, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  call void @_ZN15model_evaluatorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit217

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit217: ; preds = %.lr.ph.preheader.i.i203, %bb.cl, %bb.ck, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i213, %.critedge
  %.290 = phi i32 [ 0, %.critedge ], [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i213 ], [ 1, %bb.ck ], [ 1, %bb.cl ], [ 1, %.lr.ph.preheader.i.i203 ]
  %i.ma = load ptr, ptr %4, align 8, !tbaa !224   ; 5 uses
  %.not.i.i219 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i219, label %_ZN3refI5modelED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit217
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !233
  %i.md = add i32 %i.mc, -1                       ; 2 uses
  store i32 %i.md, ptr %i.mb, align 8, !tbaa !233
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.cr, label %_ZN3refI5modelED2Ev.exit

bb.cr:                                            ; preds = %bb.cq
  %i.mf = load ptr, ptr %i.ma, align 8, !tbaa !79
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ma) #21, !inline_history !249
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.ma)
          to label %_ZN3refI5modelED2Ev.exit unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #22
  unreachable

_ZN3refI5modelED2Ev.exit:                         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit217, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pre347 = load ptr, ptr %3, align 8, !tbaa !250
  %.pre348 = load ptr, ptr %i.c, align 8, !tbaa !252
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread

.loopexit.split-lp250:                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit249, %.loopexit.split-lp250.loopexit.split-lp, %.loopexit.split-lp250.loopexit, %bb.ch, %bb.cp
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp255, %.loopexit.split-lp250.loopexit.split-lp ], [ %.pn.pn.pn.pn.pn, %bb.ch ], [ %i.lz, %bb.cp ], [ %lpad.loopexit251, %.loopexit249 ], [ %lpad.loopexit254, %.loopexit.split-lp250.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.cu

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, %_ZN3refI5modelED2Ev.exit
  %i.mj = phi ptr [ %.pre348, %_ZN3refI5modelED2Ev.exit ], [ %1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit ], [ %1, %bb.c ], [ %1, %bb.d ]
  %i.mk = phi ptr [ %.pre347, %_ZN3refI5modelED2Ev.exit ], [ %i.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit ], [ %i.b, %bb.c ], [ %i.b, %bb.d ]
  %.391 = phi i32 [ %.290, %_ZN3refI5modelED2Ev.exit ], [ 1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit ], [ %i.k, %bb.c ], [ 1, %bb.d ]
  invoke void @_ZN6spacer10iuc_solver12undo_proxiesER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(414) %i.mk, ptr noundef nonnull align 8 dereferenceable(16) %i.mj)
          to label %_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev.exit unwind label %bb.ct

bb.ct:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #22
  unreachable

_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 %.391

bb.cu:                                            ; preds = %bb.e, %.loopexit.split-lp250
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp250 ]
  call void @_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN6solver9check_satEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN15model_evaluatorC1ER10model_coreRK10params_ref(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef zeroext i1 @_ZN15model_evaluator8is_falseEP4expr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253, !nonnull !51, !align !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !125
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable
}

declare noundef ptr @_Z6mk_notR11ast_managerP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN15model_evaluatorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3refI5modelED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN3refI5modelE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !233
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !233
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN3refI5modelE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.a) #21, !inline_history !254
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_ZN3refI5modelE7dec_refEv.exit unwind label %bb.d

_ZN3refI5modelE7dec_refEv.exit:                   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250, !nonnull !51, !align !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252, !nonnull !51, !align !52
  invoke void @_ZN6spacer10iuc_solver12undo_proxiesER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(414) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6spacer11prop_solver6maxsmtER10ref_vectorI4expr11ast_managerES5_RK6vectorIS4_Lb1EjE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.spacer::iuc_solver::scoped_mk_proxy", align 8 ; 6 uses
  %5 = alloca %class.obj_ref.76, align 8          ; 8 uses
  %6 = alloca %class.ref_vector.28, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !222
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !223
  %i.d = tail call noundef zeroext i1 @_ZN6spacer10iuc_solver10mk_proxiesER10ref_vectorI4expr11ast_managerEj(ptr noundef nonnull align 8 dereferenceable(414) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !122
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.m = phi ptr [ %i.ad, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.f, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 4 uses
  %i.n = phi ptr [ %i.ae, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.k, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !122
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.i, %i.q
  br i1 %i.r, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !211  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !125
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.x = icmp eq ptr %i.m, null
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !122  ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !122
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !114
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc, %bb.e
  %i.ad = phi ptr [ %.pre.i.i.i, %.noexc ], [ %i.m, %bb.e ] ; 3 uses
  %i.ae = phi ptr [ %.pre.i, %.noexc ], [ %i.n, %bb.e ] ; 2 uses
  %i.af = phi i32 [ %.pre2.i.i.i, %.noexc ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !211
  %i.aj = add i32 %i.af, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !122
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ak = icmp eq ptr %i.ae, null
  br i1 %i.ak, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, !llvm.loop !229

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(414) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %.loopexit.split-lp185 ; 2 uses

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %.not = icmp eq i32 %i.ap, -1
  br i1 %.not, label %bb.h, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !114 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !122 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %.lr.ph.i.i.preheader

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit184:                                     ; preds = %bb.k
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp185:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph.i.i.preheader:                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.aw = zext i32 %i.at to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.aq, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !211 ; 3 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i.i77 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i77, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !125
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !125
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit184

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.ay
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !231

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i78 = load ptr, ptr %i.j, align 8, !tbaa !114 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i78, null
  br i1 %.not.i.i, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %i.bh = getelementptr inbounds i8, ptr %.pre.i78, i64 -4
  store i32 0, ptr %i.bh, align 4, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bi = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !51, !align !52 ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !242
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bk = ptrtoint ptr %i.bi to i64
  store i64 %i.bk, ptr %6, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !114
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(414) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117
  %i.bq = phi ptr [ %i.cc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117 ], [ null, %bb.l ] ; 3 uses
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !114 ; 7 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !122 ; 3 uses
  %i.bv = icmp ugt i32 %i.bu, %.0.i.i
  br i1 %i.bv, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !114 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.lr.ph.i.preheader.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !122 ; 2 uses
  %.not9.not.i = icmp eq i32 %i.bz, 0
  %wide.trip.count.i = zext i32 %i.bz to i64
  br i1 %.not9.not.i, label %.lr.ph.i.preheader.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86

.loopexit:                                        ; preds = %bb.ar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i134
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.l
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

bb.m:                                             ; preds = %bb.z, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86: ; preds = %.lr.ph.split, %.loopexit176
  %.047192 = phi i32 [ %8, %.loopexit176 ], [ %.0.i.i, %.lr.ph.split ] ; 2 uses
  %7 = zext i32 %.047192 to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %7
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !211 ; 5 uses
  br label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit176, label %.lr.ph.i, !llvm.loop !255

.lr.ph.i:                                         ; preds = %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86
  %indvars.iv.i87 = phi i64 [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86 ], [ %indvars.iv.next.i88, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i87
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !211
  %i.cf = icmp eq ptr %i.ce, %i.cc
  br i1 %i.cf, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit, label %bb.n

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit: ; preds = %.lr.ph.i
  %.not.i89 = icmp eq ptr %i.cc, null
  br i1 %.not.i89, label %bb.o, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !125
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !125
  br label %bb.o

bb.o:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8containsEPS0_.exit
  %.not.i4.i = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !125
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !125
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bi, ptr noundef nonnull %i.bq)
          to label %._crit_edge unwind label %bb.m

._crit_edge:                                      ; preds = %bb.q
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !114
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.o
  %i.cn = phi ptr [ %.pre, %._crit_edge ], [ %i.br, %bb.p ], [ %i.br, %bb.o ] ; 6 uses
  store ptr %i.cc, ptr %5, align 8, !tbaa !242
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !122
  %i.cr = add i32 %i.cq, -1
  %i.cs = zext i32 %i.cr to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i64 [ %i.cs, %bb.s ], [ 4294967295, %bb.r ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.0.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !211 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %7 ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i91 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i91, label %_ZN11ast_manager7inc_refEP3ast.exit.i92, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !125
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !125
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i92

_ZN11ast_manager7inc_refEP3ast.exit.i92:          ; preds = %bb.u, %bb.t
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !211 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.da, null
  br i1 %.not.i3.i, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i92
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !125
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !125
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.w, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cw, ptr noundef nonnull %i.da)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.pre206 = load ptr, ptr %i.e, align 8, !tbaa !114, !nonnull !51, !noundef !51
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN6vectorIP4exprLb0EjE4backEv.exit.i:            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i92, %bb.v, %bb.x
  %i.df = phi ptr [ %.pre206, %bb.x ], [ %i.cn, %bb.v ], [ %i.cn, %_ZN11ast_manager7inc_refEP3ast.exit.i92 ] ; 3 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !211
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !122
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !211 ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 -4
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !122
  %i.dn = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !125
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !125
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.z, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dn, ptr noundef nonnull %i.dl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit unwind label %bb.m

bb.aa:                                            ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit176:                                     ; preds = %bb.n
  %8 = add nuw i32 %.047192, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %8, %i.bu
  br i1 %exitcond.not, label %.lr.ph.i.preheader.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i86, !llvm.loop !256

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph, %.lr.ph.split, %.loopexit176
  %i.dt = zext i32 %i.bu to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.dt
  %9 = zext i32 %.0.i.i to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %9
  br label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102, %.lr.ph.i.preheader.i
  %.06.i.i100 = phi ptr [ %i.ec, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102 ], [ %i.dv, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dw = load ptr, ptr %.06.i.i100, align 8, !tbaa !211 ; 3 uses
  %i.dx = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i.i101 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i99
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !125
  %i.ea = add i32 %i.dz, -1                       ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !125
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ac, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dx, ptr noundef nonnull %i.dw)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102 unwind label %.loopexit171

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i99
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i100, i64 8 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.du
  br i1 %i.ed, label %.lr.ph.i.i99, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103, !llvm.loop !231

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i102
  %.pr.pre.i = load ptr, ptr %i.e, align 8, !tbaa !114 ; 3 uses
  %i.ee = icmp eq ptr %.pr.pre.i, null
  br i1 %i.ee, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103
  %.not.not.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, label %thread-pre-split.i.i.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i103
  %i.ef = getelementptr inbounds i8, ptr %.pr.pre.i, i64 -4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !122 ; 2 uses
  %.not15.i.i = icmp ugt i32 %.0.i.i, %i.eg
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %bb.ad

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph297 = phi ptr [ %.pr.pre.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.eg, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.ad:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  store i32 %.0.i.i, ptr %i.ef, align 4, !tbaa !122
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %.noexc105
  %i.eh = phi ptr [ %.pr.pre.i.i, %.noexc105 ], [ %.ph297, %thread-pre-split.i.i.preheader ] ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %thread-pre-split.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !122
  %i.el = icmp ugt i32 %.0.i.i, %i.ek
  br i1 %i.el, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %bb.ae

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc105 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !114
  br label %thread-pre-split.i.i, !llvm.loop !245

bb.ae:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.em = getelementptr inbounds i8, ptr %i.eh, i64 -4
  store i32 %.0.i.i, ptr %i.em, align 4, !tbaa !122
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.0.i.i
  br i1 %.not1218.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ae
  %10 = zext i32 %.0.i.i to i64
  %i.en = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.eh, i64 %i.en
  %i.ep = sub nsw i64 %10, %i.en
  %i.eq = shl nsw i64 %i.ep, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.eo, i8 0, i64 %i.eq, i1 false), !tbaa !211
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147

.loopexit171:                                     ; preds = %bb.ac
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp172.loopexit:                   ; preds = %bb.ai
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp172.loopexit.split-lp.loopexit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %bb.z, %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, %bb.y
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 216
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(414) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.af unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit ; 2 uses

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit
  switch i32 %i.ev, label %.thread [
    i32 -1, label %bb.ag
    i32 1, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ew = load ptr, ptr %i.bl, align 8, !tbaa !114 ; 5 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106:        ; preds = %bb.ag
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !122 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fb
  %.not.i107 = icmp eq i32 %i.ez, 0
  br i1 %.not.i107, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111
  %.06.i.i109 = phi ptr [ %i.fj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111 ], [ %i.ew, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106 ] ; 2 uses
  %i.fd = load ptr, ptr %.06.i.i109, align 8, !tbaa !211 ; 3 uses
  %i.fe = load ptr, ptr %6, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i.i110 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i110, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i108
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !125
  %i.fh = add i32 %i.fg, -1                       ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !125
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ai, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fe, ptr noundef nonnull %i.fd)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111 unwind label %.loopexit.split-lp172.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i108
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i.i109, i64 8 ; 2 uses
  %i.fk = icmp ult ptr %i.fj, %i.fc
  br i1 %i.fk, label %.lr.ph.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112, !llvm.loop !231

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i111
  %.pre.i113 = load ptr, ptr %i.bl, align 8, !tbaa !114 ; 2 uses
  %.not.i.i114 = icmp eq ptr %.pre.i113, null
  br i1 %.not.i.i114, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106
  %i.fl = phi ptr [ %.pre.i113, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112 ], [ %i.ew, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i106 ]
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 0, ptr %i.fm, align 4, !tbaa !122
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i115, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i112, %bb.ag
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !79
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(414) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit

bb.aj:                                            ; preds = %bb.af
  %i.fr = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !122
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120: ; preds = %bb.aj, %bb.ak
  %.0.i.i119 = phi i32 [ %i.fu, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.fv = icmp ult i32 %.0.i.i, %.0.i.i119
  br i1 %i.fv, label %.lr.ph195.preheader, label %.thread

.lr.ph195.preheader:                              ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120
  %11 = zext i32 %.0.i.i to i64
  br label %.lr.ph195

bb.al:                                            ; preds = %bb.ao
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp172

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.ap
  %indvars.iv.a = phi i64 [ %11, %.lr.ph195.preheader ], [ %indvars.iv.next.a, %bb.ap ] ; 2 uses
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.a
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !211 ; 3 uses
  %.not.i.i.i.i121 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i121, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph195
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !125
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.am, %.lr.ph195
  %i.gd = load ptr, ptr %i.j, align 8, !tbaa !114 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !122 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !122
  %i.gj = icmp eq i32 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc122 unwind label %bb.al

.noexc122:                                        ; preds = %bb.ao
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !114 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !122
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc122, %bb.an
  %i.gk = phi i32 [ %.pre2.i.i, %.noexc122 ], [ %i.gg, %bb.an ] ; 2 uses
  %i.gl = phi ptr [ %.pre.i.i, %.noexc122 ], [ %i.gd, %bb.an ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.gn = zext i32 %i.gk to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gn
  store ptr %i.fz, ptr %i.go, align 8, !tbaa !211
  %i.gp = add i32 %i.gk, 1
  store i32 %i.gp, ptr %i.gm, align 4, !tbaa !122
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.a to i32
  %exitcond204.not = icmp eq i32 %.0.i.i119, %lftr.wideiv
  br i1 %exitcond204.not, label %.thread, label %.lr.ph195, !llvm.loop !257

.thread:                                          ; preds = %bb.af, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82, %bb.ap, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120
  %.2166.ph = phi i32 [ 1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit120 ], [ 1, %bb.ap ], [ %i.ev, %bb.af ], [ -1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit82 ] ; 4 uses
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !114  ; 5 uses
  %i.gq = icmp eq ptr %.pr, null
  br i1 %i.gq, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i123

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i123:        ; preds = %.thread
  %i.gr = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !122 ; 3 uses
  %i.gt = icmp ult i32 %.0.i.i, %i.gs
  br i1 %i.gt, label %.lr.ph.i.preheader.i136, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124

.lr.ph.i.preheader.i136:                          ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i123
  %i.gu = zext i32 %i.gs to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.pr, i64 %i.gu
  %12 = zext i32 %.0.i.i to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.pr, i64 %12
  br label %.lr.ph.i.i137

.lr.ph.i.i137:                                    ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140, %.lr.ph.i.preheader.i136
  %.06.i.i138 = phi ptr [ %i.hd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140 ], [ %i.gw, %.lr.ph.i.preheader.i136 ] ; 2 uses
  %i.gx = load ptr, ptr %.06.i.i138, align 8, !tbaa !211 ; 3 uses
  %i.gy = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i.i139 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i139, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i137
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !125
  %i.hb = add i32 %i.ha, -1                       ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !125
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gy, ptr noundef nonnull %i.gx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140 unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i137
  %i.hd = getelementptr inbounds nuw i8, ptr %.06.i.i138, i64 8 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.gv
  br i1 %i.he, label %.lr.ph.i.i137, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141, !llvm.loop !231

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i140
  %.pr.pre.i142 = load ptr, ptr %i.e, align 8, !tbaa !114 ; 3 uses
  %i.hf = icmp eq ptr %.pr.pre.i142, null
  br i1 %i.hf, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124_crit_edge

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124_crit_edge: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pr.pre.i142, i64 -4
  %.pre207 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !122
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143:      ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141, %.thread
  %.2166170 = phi i32 [ %.2166.ph, %.thread ], [ %.2166.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141 ], [ -1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit ] ; 2 uses
  %.not.not.i.i144 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.not.i.i144, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, label %thread-pre-split.i.i127.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124_crit_edge, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i123
  %i.hg = phi i32 [ %.pre207, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124_crit_edge ], [ %i.gs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i123 ] ; 2 uses
  %.pr14.i125 = phi ptr [ %.pr.pre.i142, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i141._ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124_crit_edge ], [ %.pr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i123 ] ; 2 uses
  %.not15.i.i126 = icmp ugt i32 %.0.i.i, %i.hg
  br i1 %.not15.i.i126, label %thread-pre-split.i.i127.preheader, label %bb.as

thread-pre-split.i.i127.preheader:                ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124
  %.2166169.ph = phi i32 [ %.2166.ph, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124 ], [ %.2166170, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143 ] ; 2 uses
  %.ph = phi ptr [ %.pr14.i125, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124 ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143 ]
  %.0.i16.i.i130.ph = phi i32 [ %i.hg, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124 ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143 ] ; 2 uses
  br label %thread-pre-split.i.i127

bb.as:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i124
  %i.hh = getelementptr inbounds i8, ptr %.pr14.i125, i64 -4
  store i32 %.0.i.i, ptr %i.hh, align 4, !tbaa !122
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147

thread-pre-split.i.i127:                          ; preds = %thread-pre-split.i.i127.preheader, %.noexc146
  %i.hi = phi ptr [ %.pr.pre.i.i135, %.noexc146 ], [ %.ph, %thread-pre-split.i.i127.preheader ] ; 4 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i134, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i131

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i131:  ; preds = %thread-pre-split.i.i127
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -8
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !122
  %i.hm = icmp ugt i32 %.0.i.i, %i.hl
  br i1 %i.hm, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i134, label %bb.at

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i134: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i131, %thread-pre-split.i.i127
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit

.noexc146:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i134
  %.pr.pre.i.i135 = load ptr, ptr %i.e, align 8, !tbaa !114
  br label %thread-pre-split.i.i127, !llvm.loop !245

bb.at:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i131
  %i.hn = getelementptr inbounds i8, ptr %i.hi, i64 -4
  store i32 %.0.i.i, ptr %i.hn, align 4, !tbaa !122
  %.not1218.i.i132 = icmp eq i32 %.0.i16.i.i130.ph, %.0.i.i
  br i1 %.not1218.i.i132, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, label %.lr.ph.preheader.i.i133

.lr.ph.preheader.i.i133:                          ; preds = %bb.at
  %13 = zext i32 %.0.i.i to i64
  %i.ho = zext i32 %.0.i16.i.i130.ph to i64       ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.hi, i64 %i.ho
  %i.hq = sub nsw i64 %13, %i.ho
  %i.hr = shl nsw i64 %i.hq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 0, i64 %i.hr, i1 false), !tbaa !211
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147: ; preds = %.lr.ph.preheader.i.i, %bb.ae, %bb.ad, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %.lr.ph.preheader.i.i133, %bb.at, %bb.as, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143
  %.262 = phi i32 [ %.2166169.ph, %.lr.ph.preheader.i.i133 ], [ %.2166170, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i143 ], [ %.2166.ph, %bb.as ], [ %.2166169.ph, %bb.at ], [ -1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %.lr.ph.preheader.i.i ]
  %i.hs = load ptr, ptr %i.bl, align 8, !tbaa !114 ; 5 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i148

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i148:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !122 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hx
  %.not.i149 = icmp eq i32 %i.hv, 0
  br i1 %.not.i149, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i156, label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i148, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153
  %.06.i.i151 = phi ptr [ %i.if, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153 ], [ %i.hs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i148 ] ; 2 uses
  %i.hz = load ptr, ptr %.06.i.i151, align 8, !tbaa !211 ; 3 uses
  %i.ia = load ptr, ptr %6, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i.i152 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i152, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i150
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !125
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !125
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.av, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ia, ptr noundef nonnull %i.hz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153 unwind label %bb.ax

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153: ; preds = %bb.av, %bb.au, %.lr.ph.i.i150
  %i.if = getelementptr inbounds nuw i8, ptr %.06.i.i151, i64 8 ; 2 uses
  %i.ig = icmp ult ptr %i.if, %i.hy
  br i1 %i.ig, label %.lr.ph.i.i150, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i154, !llvm.loop !231

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i154: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i153
  %.pre.i155 = load ptr, ptr %i.bl, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i155, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i156

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i156: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i154, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i148
  %i.ih = phi ptr [ %.pre.i155, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i154 ], [ %i.hs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i148 ]
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ii)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i156
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #22
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #22
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit147, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i154, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.in = load ptr, ptr %5, align 8, !tbaa !242   ; 3 uses
  %.not.i.i157 = icmp eq ptr %i.in, null
  br i1 %.not.i.i157, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !125
  %i.iq = add i32 %i.ip, -1                       ; 2 uses
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !125
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.az, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bi, ptr noundef nonnull %i.in)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread

.loopexit.split-lp172:                            ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit171, %.loopexit.split-lp172.loopexit.split-lp.loopexit, %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp172.loopexit, %.loopexit, %bb.aa, %bb.m, %bb.al
  %.pn72 = phi { ptr, i32 } [ %i.fw, %bb.al ], [ %i.ds, %bb.aa ], [ %lpad.loopexit.split-lp182, %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp ], [ %i.ca, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit173, %.loopexit171 ], [ %lpad.loopexit177, %.loopexit.split-lp172.loopexit ], [ %lpad.loopexit181, %.loopexit.split-lp172.loopexit.split-lp.loopexit ], [ %lpad.loopexit294, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp295, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bc

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %bb.h, %bb.g, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.363 = phi i32 [ %.262, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ -1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit ], [ %i.ap, %bb.g ], [ -1, %bb.h ]
  invoke void @_ZN6spacer10iuc_solver12undo_proxiesER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(414) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #22
  unreachable

_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.363

bb.bc:                                            ; preds = %.loopexit184, %.loopexit.split-lp185, %.loopexit.split-lp172, %bb.i
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.i ], [ %.pn72, %.loopexit.split-lp172 ], [ %lpad.loopexit186, %.loopexit184 ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp185 ]
  call void @_ZN6spacer10iuc_solver15scoped_mk_proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn72.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !211 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !51, !align !52
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !125
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !125
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !231

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6spacer11prop_solver26internal_check_assumptionsER10ref_vectorI4expr11ast_managerES5_RK6vectorIS4_Lb1EjE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
