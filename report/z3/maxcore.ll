Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/maxcore?download=true
inline.NumInlined: 1975
inline.NumDeleted: 740
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK7maxcore11display_vecERSojPKP4expr:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #21
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !345

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNK7maxcore10get_weightEP4expr.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #20
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bd, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.bc, %bb.j ]
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7maxcore11bin_resolveERK10ptr_vectorI4exprE8rationalR10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ref_vector, align 8          ; 10 uses
  %5 = alloca %class.ref_vector, align 8          ; 7 uses
  %6 = alloca %class.obj_ref.71, align 8          ; 10 uses
  %7 = alloca %class.obj_ref.71, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !57     ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread:      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  store i64 %i.e, ptr %4, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !57
  br label %.loopexit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !155  ; 2 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  store i64 %i.i, ptr %4, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr null, ptr %i.j, align 8, !tbaa !57
  %i.k = zext i32 %i.h to i64
  %.idx.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  %i.m = icmp eq i32 %i.h, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.n = phi ptr [ %i.y, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.ae, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !159
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.s = icmp eq ptr %i.n, null
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !155  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !155
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  %.pre.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !155
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.c
  %i.y = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.z = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !156
  %i.ad = add i32 %i.z, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !155
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.l
  br i1 %i.af, label %.loopexit.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %bb.bl, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %.pn.pn.pn, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  br label %common.resume

.loopexit.loopexit:                               ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %.pre98.a = ptrtoint ptr %.pre to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread
  %.pre-phi = phi i64 [ %.pre98.a, %.loopexit.loopexit ], [ %i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ], [ %i.e, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ]
  %i.ah = phi ptr [ %i.y, %.loopexit.loopexit ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ] ; 3 uses
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ] ; 5 uses
  %i.aj = phi ptr [ %i.j, %.loopexit.loopexit ], [ %i.j, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ], [ %i.f, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 %.pre-phi, ptr %5, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %6, align 8, !tbaa !236
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !236
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !56
  %i.an = icmp eq ptr %i.ah, null
  br i1 %i.an, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph: ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %.pre97.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !155
  %i.aq = icmp ugt i32 %.pre97.a, 1
  br i1 %i.aq, label %.lr.ph, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph, %.loopexit
  %i.ar = phi ptr [ null, %.loopexit ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %i.cz, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 2 uses
  %i.as = phi ptr [ null, %.loopexit ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %i.cq, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 3 uses
  %i.at = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.as unwind label %bb.bk

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.094146 = phi i32 [ %13, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ] ; 3 uses
  %8 = phi ptr [ %i.fe, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.ah, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ] ; 2 uses
  %i.au = phi ptr [ %i.cq, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ null, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ] ; 3 uses
  %9 = or disjoint i32 %.094146, 1
  %10 = zext i32 %.094146 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %10
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !156 ; 2 uses
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %11
  %i.ax = load ptr, ptr %12, align 8, !tbaa !156  ; 2 uses
  %i.ay = invoke noundef ptr @_ZN3opt18maxsmt_solver_base13mk_fresh_boolEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @.str.30)
          to label %bb.f unwind label %bb.aq      ; 5 uses

bb.f:                                             ; preds = %.lr.ph
  %i.az = invoke noundef ptr @_ZN3opt18maxsmt_solver_base13mk_fresh_boolEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @.str.31)
          to label %bb.g unwind label %bb.ar      ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.bb = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, i32 noundef 0, i32 noundef 6, ptr noundef %i.aw, ptr noundef %i.ax)
          to label %_ZN11ast_manager5mk_orEP4exprS1_.exit unwind label %bb.ar ; 7 uses

_ZN11ast_manager5mk_orEP4exprS1_.exit:            ; preds = %bb.g
  %.not.i = icmp eq ptr %i.bb, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !159
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !159
  br label %bb.h

bb.h:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager5mk_orEP4exprS1_.exit
  %.not.i4.i = icmp eq ptr %i.au, null
  br i1 %.not.i4.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !159
  %i.bh = add i32 %i.bg, -1                       ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !159
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ai, ptr noundef nonnull %i.au)
          to label %bb.k unwind label %bb.ar

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  store ptr %i.bb, ptr %7, align 8, !tbaa !236
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.bk = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bj, i32 noundef 0, i32 noundef 9, ptr noundef %i.ay, ptr noundef %i.bb)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit unwind label %bb.ar ; 9 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit:      ; preds = %bb.k
  %.not.i30 = icmp eq ptr %i.bk, null             ; 3 uses
  br i1 %.not.i30, label %bb.l, label %_ZN11ast_manager7inc_refEP3ast.exit.i31

_ZN11ast_manager7inc_refEP3ast.exit.i31:          ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !159
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !159
  br label %bb.l

bb.l:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i31, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.bo = load ptr, ptr %6, align 8, !tbaa !236   ; 3 uses
  %.not.i4.i32 = icmp eq ptr %i.bo, null
  br i1 %.not.i4.i32, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !244, !nonnull !54, !align !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !159
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !159
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bp, ptr noundef nonnull %i.bo)
          to label %bb.o unwind label %bb.ar

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  store ptr %i.bk, ptr %6, align 8, !tbaa !236
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 832
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !233
  %i.bx = icmp eq ptr %i.bk, %i.bw
  br i1 %i.bx, label %_ZN7maxcore3addEP4expr.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc35 unwind label %bb.ar

.noexc35:                                         ; preds = %bb.p
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.by, ptr noundef %i.bk)
          to label %_ZN7maxcore3addEP4expr.exit unwind label %bb.ar

_ZN7maxcore3addEP4expr.exit:                      ; preds = %bb.o, %.noexc35
  invoke void @_ZN7maxcore12update_modelEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef %i.ay, ptr noundef %i.bb)
          to label %bb.q unwind label %bb.ar

bb.q:                                             ; preds = %_ZN7maxcore3addEP4expr.exit
  br i1 %.not.i30, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !159
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.r, %bb.q
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !155 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !155
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc37 unwind label %bb.ar

.noexc37:                                         ; preds = %bb.t
  %.pre.i.i = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !155
  br label %bb.u

bb.u:                                             ; preds = %.noexc37, %bb.s
  %i.cj = phi i32 [ %.pre2.i.i, %.noexc37 ], [ %i.cf, %bb.s ] ; 2 uses
  %i.ck = phi ptr [ %.pre.i.i, %.noexc37 ], [ %i.cc, %bb.s ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cm = zext i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cm
  store ptr %i.bk, ptr %i.cn, align 8, !tbaa !156
  %i.co = add i32 %i.cj, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !155
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.cq = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cp, i32 noundef 0, i32 noundef 5, ptr noundef %i.aw, ptr noundef %i.ax)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %bb.ar ; 7 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %bb.u
  %.not.i39 = icmp eq ptr %i.cq, null
  br i1 %.not.i39, label %bb.v, label %_ZN11ast_manager7inc_refEP3ast.exit.i40

_ZN11ast_manager7inc_refEP3ast.exit.i40:          ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !159
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !159
  br label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i40, %_ZN11ast_manager6mk_andEP4exprS1_.exit
  br i1 %.not.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !159
  %i.cw = add i32 %i.cv, -1                       ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !159
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ai, ptr noundef nonnull %i.bb)
          to label %bb.y unwind label %bb.ar

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.x
  store ptr %i.cq, ptr %7, align 8, !tbaa !236
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.cz = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cy, i32 noundef 0, i32 noundef 9, ptr noundef %i.az, ptr noundef %i.cq)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit45 unwind label %bb.ar ; 8 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit45:    ; preds = %bb.y
  %.not.i46 = icmp eq ptr %i.cz, null             ; 2 uses
  br i1 %.not.i46, label %bb.z, label %_ZN11ast_manager7inc_refEP3ast.exit.i47

_ZN11ast_manager7inc_refEP3ast.exit.i47:          ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit45
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !159
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !159
  br label %bb.z

bb.z:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i47, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit45
  br i1 %.not.i30, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.al, align 8, !tbaa !244, !nonnull !54, !align !55
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !159
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !159
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dd, ptr noundef nonnull %i.bk)
          to label %bb.ac unwind label %bb.ar

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.ab
  store ptr %i.cz, ptr %6, align 8, !tbaa !236
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 832
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !233
  %i.dl = icmp eq ptr %i.cz, %i.dk
  br i1 %i.dl, label %_ZN7maxcore3addEP4expr.exit53, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc51 unwind label %bb.ar

.noexc51:                                         ; preds = %bb.ad
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.dm, ptr noundef %i.cz)
          to label %_ZN7maxcore3addEP4expr.exit53 unwind label %bb.ar

_ZN7maxcore3addEP4expr.exit53:                    ; preds = %bb.ac, %.noexc51
  invoke void @_ZN7maxcore12update_modelEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef %i.az, ptr noundef %i.cq)
          to label %bb.ae unwind label %bb.ar

bb.ae:                                            ; preds = %_ZN7maxcore3addEP4expr.exit53
  br i1 %.not.i46, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i55, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !159
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i55

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i55: ; preds = %bb.af, %bb.ae
  %i.dq = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i55
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !155 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !155
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i55
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc59 unwind label %bb.ar

.noexc59:                                         ; preds = %bb.ah
  %.pre.i.i56 = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i57 = getelementptr inbounds i8, ptr %.pre.i.i56, i64 -4
  %.pre2.i.i58 = load i32, ptr %.phi.trans.insert.i.i57, align 4, !tbaa !155
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc59, %bb.ag
  %i.dx = phi i32 [ %.pre2.i.i58, %.noexc59 ], [ %i.dt, %bb.ag ] ; 2 uses
  %i.dy = phi ptr [ %.pre.i.i56, %.noexc59 ], [ %i.dq, %bb.ag ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ea = zext i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  store ptr %i.cz, ptr %i.eb, align 8, !tbaa !156
  %i.ec = add i32 %i.dx, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !155
  %.not.i.i.i.i61 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i61, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i62, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !159
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i62: ; preds = %bb.aj, %bb.ai
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i62
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !155 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !155
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i62
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %.noexc66 unwind label %bb.ar

.noexc66:                                         ; preds = %bb.al
  %.pre.i.i63 = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i64 = getelementptr inbounds i8, ptr %.pre.i.i63, i64 -4
  %.pre2.i.i65 = load i32, ptr %.phi.trans.insert.i.i64, align 4, !tbaa !155
  br label %bb.am

bb.am:                                            ; preds = %.noexc66, %bb.ak
  %i.en = phi i32 [ %.pre2.i.i65, %.noexc66 ], [ %i.ej, %bb.ak ] ; 2 uses
  %i.eo = phi ptr [ %.pre.i.i63, %.noexc66 ], [ %i.eg, %bb.ak ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -4
  %i.eq = zext i32 %i.en to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.eq
  store ptr %i.ay, ptr %i.er, align 8, !tbaa !156
  %i.es = add i32 %i.en, 1
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !155
  %.not.i.i.i.i68 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i68, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i69, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !159
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !159
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i69

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i69: ; preds = %bb.an, %bb.am
  %i.ew = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 4 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i69
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !155 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ew, i64 -8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !155
  %i.fc = icmp eq i32 %i.ez, %i.fb
  br i1 %i.fc, label %bb.ap, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

bb.ap:                                            ; preds = %bb.ao, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i69
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %.noexc73 unwind label %bb.ar

.noexc73:                                         ; preds = %bb.ap
  %.pre.i.i70 = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i.i71 = getelementptr inbounds i8, ptr %.pre.i.i70, i64 -4
  %.pre2.i.i72 = load i32, ptr %.phi.trans.insert.i.i71, align 4, !tbaa !155
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %.noexc73, %bb.ao
  %i.fd = phi i32 [ %.pre2.i.i72, %.noexc73 ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fe = phi ptr [ %.pre.i.i70, %.noexc73 ], [ %i.ew, %bb.ao ] ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fg = zext i32 %i.fd to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fg
  store ptr %i.az, ptr %i.fh, align 8, !tbaa !156
  %i.fi = add i32 %i.fd, 1                        ; 2 uses
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !155
  %13 = add i32 %.094146, 2                       ; 2 uses
  %14 = or disjoint i32 %13, 1
  %i.fj = icmp ult i32 %14, %i.fi
  br i1 %i.fj, label %.lr.ph, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, !llvm.loop !347

bb.aq:                                            ; preds = %.lr.ph
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ar:                                            ; preds = %bb.ap, %bb.al, %bb.ah, %.noexc51, %bb.ad, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.t, %.noexc35, %bb.p, %bb.n, %bb.k, %bb.j, %bb.g, %_ZN7maxcore3addEP4expr.exit53, %_ZN7maxcore3addEP4expr.exit, %bb.f
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.as:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.fn = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !155
  %i.fr = add i32 %i.fq, -1
  %i.fs = zext i32 %i.fr to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.i.i.i = phi i64 [ %i.fs, %bb.at ], [ 4294967295, %bb.as ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.0.i.i.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !156
  %i.fv = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fm, i32 noundef 0, i32 noundef 8, ptr noundef %i.fu)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.bk

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %bb.au
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.at, ptr noundef %i.fv)
          to label %bb.av unwind label %bb.bk

bb.av:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !159
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !159
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ax, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ai, ptr noundef nonnull %i.as)
          to label %._ZN7obj_refI4expr11ast_managerED2Ev.exit_crit_edge unwind label %bb.ay

._ZN7obj_refI4expr11ast_managerED2Ev.exit_crit_edge: ; preds = %bb.ax
  %.pre95 = load ptr, ptr %6, align 8, !tbaa !236
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %._ZN7obj_refI4expr11ast_managerED2Ev.exit_crit_edge, %bb.av, %bb.aw
  %i.gc = phi ptr [ %.pre95, %._ZN7obj_refI4expr11ast_managerED2Ev.exit_crit_edge ], [ %i.ar, %bb.av ], [ %i.ar, %bb.aw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.not.i.i76 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i76, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit77, label %bb.az

bb.az:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.gd = load ptr, ptr %i.al, align 8, !tbaa !244, !nonnull !54, !align !55
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !159
  %i.gg = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !159
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.ba, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit77

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gd, ptr noundef nonnull %i.gc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit77 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit77:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.gk = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 5 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit77
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !155 ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gp
  %.not.i78 = icmp eq i32 %i.gn, 0
  br i1 %.not.i78, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i79.preheader

.lr.ph.i.i79.preheader:                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %.pre96 = load ptr, ptr %5, align 8, !tbaa !157
  br label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %.lr.ph.i.i79.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.gw, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.gk, %.lr.ph.i.i79.preheader ] ; 2 uses
  %i.gr = load ptr, ptr %.06.i.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i79
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !159
  %i.gu = add i32 %i.gt, -1                       ; 2 uses
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !159
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.bd, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %.pre96, ptr noundef nonnull %i.gr)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bf

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i79
  %i.gw = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.gx = icmp ult ptr %i.gw, %i.gq
  br i1 %i.gx, label %.lr.ph.i.i79, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.gy = getelementptr inbounds i8, ptr %i.gk, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gy)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #21
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit77, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.hd = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 5 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit90, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i80

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i80:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !155 ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = shl nuw nsw i64 %i.hh, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi
  %.not.i81 = icmp eq i32 %i.hg, 0
  br i1 %.not.i81, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89, label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i80, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85
  %.06.i.i83 = phi ptr [ %i.hq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85 ], [ %i.hd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i80 ] ; 2 uses
  %i.hk = load ptr, ptr %.06.i.i83, align 8, !tbaa !156 ; 3 uses
  %i.hl = load ptr, ptr %4, align 8, !tbaa !157, !nonnull !54, !align !55
  %.not.i.i.i.i.i84 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i84, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i82
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !159
  %i.ho = add i32 %i.hn, -1                       ; 2 uses
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !159
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bh, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hl, ptr noundef nonnull %i.hk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85 unwind label %bb.bj

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85: ; preds = %bb.bh, %bb.bg, %.lr.ph.i.i82
  %i.hq = getelementptr inbounds nuw i8, ptr %.06.i.i83, i64 8 ; 2 uses
  %i.hr = icmp ult ptr %i.hq, %i.hj
  br i1 %i.hr, label %.lr.ph.i.i82, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85
  %.pre.i87 = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %.pre.i87, null
  br i1 %.not.i.i.i88, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit90, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i80
  %i.hs = phi ptr [ %.pre.i87, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86 ], [ %i.hd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i80 ]
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ht)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit90 unwind label %bb.bi

end_hunk_0
