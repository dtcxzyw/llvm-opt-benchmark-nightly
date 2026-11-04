Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_seq?download=true
inline.NumInlined: 5630
inline.NumDeleted: 2057
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3smt10theory_seq14add_dependencyERPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEPNS_5enodeESB_:bb.a

_ZN18dependency_managerIN25scoped_dependency_managerIN3smt10theory_seq10assumptionEE6configEE7inc_refEPNS6_10dependencyE.exit17.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !95, !nonnull !62, !align !63
  %i.i = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef 24) ; 4 uses
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %i.k = add i32 %i.j, 1
  %i.l = and i32 %i.k, 1073741823
  %i.m = and i32 %i.j, -1073741824
  %i.n = or disjoint i32 %i.l, %i.m
  store i32 %i.n, ptr %i.a, align 4
  %i.o = load i32, ptr %i.d, align 8              ; 2 uses
  %i.p = add i32 %i.o, 1
  %i.q = and i32 %i.p, 1073741823
  %i.r = and i32 %i.o, -1073741824
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %i.d, align 8
  store i32 0, ptr %i.i, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.a, ptr %i.t, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.d, ptr %i.u, align 8, !tbaa !71
  br label %_ZN25scoped_dependency_managerIN3smt10theory_seq10assumptionEE7mk_joinEPN18dependency_managerINS3_6configEE10dependencyES8_.exit

_ZN25scoped_dependency_managerIN3smt10theory_seq10assumptionEE7mk_joinEPN18dependency_managerINS3_6configEE10dependencyES8_.exit: ; preds = %bb.b, %bb.c, %_ZN18dependency_managerIN25scoped_dependency_managerIN3smt10theory_seq10assumptionEE6configEE7inc_refEPNS6_10dependencyE.exit17.i.i
  %.0.i.i = phi ptr [ %i.i, %_ZN18dependency_managerIN25scoped_dependency_managerIN3smt10theory_seq10assumptionEE6configEE7inc_refEPNS6_10dependencyE.exit17.i.i ], [ %i.d, %bb.b ], [ %i.a, %bb.c ]
  store ptr %.0.i.i, ptr %1, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %_ZN25scoped_dependency_managerIN3smt10theory_seq10assumptionEE7mk_joinEPN18dependency_managerINS3_6configEE10dependencyES8_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt10theory_seq9propagateEv(ptr noundef nonnull align 8 dereferenceable(5688) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.obj_ref.69, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.h = phi ptr [ %i.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %i.aj, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ] ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !737  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !795, !nonnull !62, !align !63 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9080
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !798
  %i.p = icmp ne ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2472
  %i.r = load i8, ptr %i.q, align 8, !range !770
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %i.p, i1 true, i1 %i.s
  br i1 %i.t, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !617, !nonnull !62, !align !63 ; 2 uses
  store ptr %i.u, ptr %i.g, align 8, !tbaa !618
  %i.v = zext i32 %i.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58   ; 6 uses
  %.not.i = icmp eq ptr %i.x, null                ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.c
  store ptr %i.x, ptr %1, align 8, !tbaa !787
  invoke void @_ZN3smt10theory_seq11deque_axiomEP4expr(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.x)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !737
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !737
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !65
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !65
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.u, ptr noundef nonnull %i.x)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !1312

bb.i:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.al

.critedge:                                        ; preds = %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !782 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.critedge2, label %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.lr.ph

_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.lr.ph: ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.an, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !52 ; 2 uses
  %i.aq = icmp eq i32 %.pre, 0
  br i1 %i.aq, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.lr.ph, %_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit
  %i.ar = phi ptr [ %i.bu, %_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit ], [ %i.an, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.lr.ph ]
  %i.as = phi i32 [ %i.bx, %_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit ], [ %.pre, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.lr.ph ]
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !795, !nonnull !62, !align !63 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 9080
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !798
  %i.aw = icmp ne ptr %i.av, null
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 2472
  %i.ay = load i8, ptr %i.ax, align 8, !range !770
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = select i1 %i.aw, i1 true, i1 %i.az
  br i1 %i.ba, label %.critedge2, label %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit

_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit: ; preds = %.lr.ph
  %i.bb = add i32 %i.as, -1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !784 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(5688) %0)
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !782 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !52
  %i.bm = add i32 %i.bl, -1
  %i.bn = zext i32 %i.bm to i64
  br label %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit.i

_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit.i: ; preds = %bb.j, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit
  %.0.i.i.i = phi i64 [ %i.bn, %bb.j ], [ 4294967295, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !784 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit.i
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #26, !inline_history !1313
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bp)
  %.pre.i.i = load ptr, ptr %i.am, align 8, !tbaa !782 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.0.i.i.i
  store ptr null, ptr %i.bt, align 8, !tbaa !784
  br label %_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit

_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit: ; preds = %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit.i, %bb.k
  %i.bu = phi ptr [ %i.bi, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE4sizeEv.exit.i ], [ %.pre.i.i, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !52
  %i.bx = add i32 %i.bw, -1                       ; 3 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !52
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.critedge2, label %.lr.ph, !llvm.loop !1314

.critedge2:                                       ; preds = %_ZN17scoped_ptr_vectorIN3smt10theory_seq5applyEE8pop_backEv.exit, %.lr.ph, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.lr.ph, %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5561 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !772, !range !770, !noundef !62
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.critedge2
  store i8 1, ptr %i.bz, align 1, !tbaa !772
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !795, !nonnull !62, !align !63 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 9080
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !798
  %i.cg = icmp ne ptr %i.cf, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2472
  %i.ci = load i8, ptr %i.ch, align 8, !range !770
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = select i1 %i.cg, i1 true, i1 %i.cj
  br i1 %i.ck, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.bz, align 1, !tbaa !772
  %i.cl = tail call noundef zeroext i1 @_ZN3smt10theory_seq9solve_eqsEj(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef 0) ; 0 uses
  %i.cm = load i8, ptr %i.bz, align 1, !tbaa !772, !range !770, !noundef !62
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.m, label %.critedge.i, !llvm.loop !15

.critedge.i:                                      ; preds = %bb.n, %bb.m
  store i8 0, ptr %i.bz, align 1, !tbaa !772
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.critedge2
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt10theory_seq11deque_axiomEP4expr(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref.69, align 8          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !758
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 65535
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !813
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !816  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit

_ZNK8seq_util3str9is_lengthEPK4expr.exit:         ; preds = %bb.b
  %i.l = load i32, ptr %i.k, align 8, !tbaa !820
  %i.m = icmp eq i32 %i.l, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 12
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit
  tail call void @_ZN3smt10theory_seq10add_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef nonnull %1)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4064
  tail call void @_ZN3seq6axioms12length_axiomEP4expr(ptr noundef nonnull align 8 dereferenceable(672) %i.r, ptr noundef nonnull %1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !795, !nonnull !62, !align !63 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 9608
  %i.v = load i32, ptr %i.u, align 8, !tbaa !859
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 9612
  %i.x = load i32, ptr %i.w, align 4, !tbaa !860
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %_ZNK8seq_util3str10is_to_codeEPK4expr.exit.thread, label %_ZN3smt10theory_seq12replay_axiomC2ER11ast_managerP4expr.exit

_ZN3smt10theory_seq12replay_axiomC2ER11ast_managerP4expr.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5336 ; 3 uses
  %i.aa = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !617, !nonnull !62, !align !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3smt10theory_seq12replay_axiomE, i64 16), ptr %i.aa, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %1, ptr %i.ad, align 8, !tbaa !787
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !618
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !65
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5352
  %i.aj = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3smt10theory_seq11push_replayE, i64 16), ptr %i.aj, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %0, ptr %i.ak, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.aa, ptr %.sroa.6.8..sroa_idx, align 8
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !780 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.noexc43, label %bb.d

bb.d:                                             ; preds = %_ZN3smt10theory_seq12replay_axiomC2ER11ast_managerP4expr.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %.noexc43, label %bb.e

.noexc43:                                         ; preds = %bb.d, %_ZN3smt10theory_seq12replay_axiomC2ER11ast_managerP4expr.exit
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.z)
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !780 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %.noexc43, %bb.d
  %i.as = phi i32 [ %.pre2.i.i, %.noexc43 ], [ %i.ao, %bb.d ] ; 2 uses
  %i.at = phi ptr [ %.pre.i.i, %.noexc43 ], [ %i.al, %bb.d ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  store ptr %i.aj, ptr %i.aw, align 8, !tbaa !793
  %i.ax = add i32 %i.as, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !52
  br label %_ZNK8seq_util3str10is_to_codeEPK4expr.exit.thread

_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread:  ; preds = %bb.b, %bb.a, %_ZNK8seq_util3str9is_lengthEPK4expr.exit
  %i.ay = tail call noundef zeroext i1 @_ZNK8seq_util3str8is_emptyEPK4expr(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull %1)
  br i1 %i.ay, label %bb.f, label %_ZNK3smt10theory_seq10has_lengthEP4expr.exit

bb.f:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !116 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !731 ; 3 uses
  %i.be = add i32 %i.bd, -1
  %i.bf = and i32 %i.be, %i.bb                    ; 3 uses
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !736 ; 3 uses
  %i.bh = zext i32 %i.bf to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i ; 3 uses
  %i.bj = zext i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bj
  %.not34.i.i.i = icmp eq i32 %i.bf, %i.bd
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %bb.f
  %.not2736.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not2736.i.i.i, label %.loopexit, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.i
  %.035.i.i.i = phi ptr [ %i.br, %bb.i ], [ %i.bi, %bb.f ] ; 2 uses
  %i.bl = load ptr, ptr %.035.i.i.i, align 8, !tbaa !735 ; 4 uses
  %.not.i.not.i = icmp ult ptr %i.bl, inttoptr (i64 2 to ptr)
  br i1 %.not.i.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !116
  %i.bo = icmp eq i32 %i.bn, %i.bb
  %i.bp = icmp eq ptr %i.bl, %1
  %or.cond.i.i.i = and i1 %i.bp, %i.bo
  br i1 %or.cond.i.i.i, label %_ZNK3smt10theory_seq10has_lengthEP4expr.exit, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = icmp eq ptr %i.bl, null
  br i1 %i.bq, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.br, %i.bk
  br i1 %.not.i.i.i44, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !18

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.bg, %.preheader.i.i.i ] ; 3 uses
  %i.bs = load ptr, ptr %.137.i.i.i, align 8, !tbaa !735 ; 4 uses
  %i.bt = icmp ult ptr %i.bs, inttoptr (i64 2 to ptr)
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph38.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !116
  %i.bw = icmp eq i32 %i.bv, %i.bb
  %i.bx = icmp eq ptr %i.bs, %1
  %or.cond31.i.i.i = and i1 %i.bx, %i.bw
  br i1 %or.cond31.i.i.i, label %_ZNK3smt10theory_seq10has_lengthEP4expr.exit, label %bb.l

bb.k:                                             ; preds = %.lr.ph38.i.i.i
  %i.by = icmp eq ptr %i.bs, null
  %i.bz = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 8 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.bz, %i.bi
  %or.cond43.i.i.i = select i1 %i.by, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %.loopexit, label %.lr.ph38.i.i.i.backedge

bb.l:                                             ; preds = %bb.j
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 8 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.bi
  br i1 %.not27.old.i.i.i, label %.loopexit, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.l, %bb.k
  %.137.i.i.i.be = phi ptr [ %i.bz, %bb.k ], [ %.old.i.i.i, %bb.l ]
  br label %.lr.ph38.i.i.i, !llvm.loop !19
end_hunk_0
