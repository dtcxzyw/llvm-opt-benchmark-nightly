Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_pushdown?download=true
inline.NumInlined: 3488
inline.NumDeleted: 1756
begin_hunk_0_@_ZN6duckdb14FilterPushdown17PushdownAggregateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %3 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 6 uses
  %4 = alloca %"class.std::function.475", align 8 ; 11 uses
  %5 = alloca %"class.std::function.471", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::FilterPushdown", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 11 uses
  %8 = alloca %"class.duckdb::unique_ptr.107", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::unique_ptr.107", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %12 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.b = tail call noundef nonnull align 8 dereferenceable(225) ptr @_ZN6duckdb15LogicalOperator4CastINS_16LogicalAggregateEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.a) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load i8, ptr %i.d, align 8, !tbaa !83, !range !84, !noundef !85
  %i.f = trunc nuw i8 %i.e to i1
  call void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull align 1 %i.c, i1 noundef zeroext %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !87
  %.not176.not = icmp eq ptr %i.i, %i.j
  br i1 %.not176.not, label %.critedge, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.r = ptrtoint ptr %i.b to i64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = ptrtoint ptr %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph180, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142
  %.052177 = phi i64 [ 0, %.lr.ph180 ], [ %i.eu, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142 ] ; 14 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.052177)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.d unwind label %bb.l       ; 8 uses

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !89
  %.not.not.i.i = icmp eq i64 %i.aa, 0            ; 2 uses
  br i1 %.not.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.06.0.i.i, %bb.g ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !90 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit153, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !91
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.d
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !91  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !93 ; 3 uses
  %i.aj = urem i64 %i.ag, %i.ai                   ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !94  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !91
  %i.aq = icmp eq i64 %i.ag, %i.ap
  br i1 %i.aq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.ar = icmp eq i64 %i.ag, %i.au
  br i1 %i.ar, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %.lr.ph.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.as, %bb.j ], [ %i.an, %bb.i ]
  %i.as = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not18.i.i.i.i, label %.loopexit153, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !91 ; 2 uses
  %i.av = urem i64 %i.au, %i.ai
  %.not19.i.i.i.i = icmp eq i64 %i.av, %i.aj
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %.loopexit153, !llvm.loop !1

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113

.loopexit153:                                     ; preds = %.lr.ph.i.i.i.i, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  br i1 %.not.not.i.i, label %bb.m, label %.loopexit153..thread_crit_edge

.loopexit153..thread_crit_edge:                   ; preds = %.loopexit153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  %.pre187 = load ptr, ptr %i.y, align 8, !tbaa !94
  br label %.thread

bb.m:                                             ; preds = %.loopexit153
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ay = load i64, ptr %i.l, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.06.0.in.i.i72 = phi ptr [ %i.ax, %bb.m ], [ %.sroa.06.0.i.i73, %bb.o ]
  %.sroa.06.0.i.i73 = load ptr, ptr %.sroa.06.0.in.i.i72, align 8, !tbaa !90 ; 3 uses
  %.not.i.i74 = icmp eq ptr %.sroa.06.0.i.i73, null
  br i1 %.not.i.i74, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i73, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !91
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %bb.n, !llvm.loop !0

.thread:                                          ; preds = %.loopexit153..thread_crit_edge, %bb.h
  %i.bc = phi ptr [ %.pre187, %.loopexit153..thread_crit_edge ], [ %i.ak, %bb.h ]
  %i.bd = phi i64 [ %.pre, %.loopexit153..thread_crit_edge ], [ %i.ai, %bb.h ] ; 2 uses
  %i.be = load i64, ptr %i.l, align 8, !tbaa !91  ; 3 uses
  %i.bf = urem i64 %i.be, %i.bd                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i65, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !90 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !91
  %i.bl = icmp eq i64 %i.be, %i.bk
  br i1 %i.bl, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %.lr.ph.i.i.i.i66

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp eq i64 %i.be, %i.bp
  br i1 %i.bm, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %.lr.ph.i.i.i.i66, !llvm.loop !1

.lr.ph.i.i.i.i66:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i67 = phi ptr [ %i.bn, %bb.q ], [ %i.bi, %bb.p ]
  %i.bn = load ptr, ptr %.020.i.i.i.i67, align 8, !tbaa !90 ; 3 uses
  %.not18.i.i.i.i68 = icmp eq ptr %i.bn, null
  br i1 %.not18.i.i.i.i68, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !91 ; 2 uses
  %i.bq = urem i64 %i.bp, %i.bd
  %.not19.i.i.i.i69 = icmp eq i64 %i.bq, %i.bf
  br i1 %.not19.i.i.i.i69, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i70, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i70:                 ; preds = %bb.r
  br label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i66, %bb.n, %..loopexit_crit_edge21.i.i.i.i70, %.thread
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, label %bb.s

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 7 uses
  %i.bv = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb14FilterPushdown21ExtractFilterBindingsERKNS_10ExpressionERNS_6vectorINS_13ColumnBindingELb1ESaIS5_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(88) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %7, align 8, !tbaa !98    ; 3 uses
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !98  ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.au, label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90

bb.w:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !342 ; 2 uses
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !342 ; 2 uses
  %.not146229 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not146229, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %.critedge149
  %.sroa.0124.0230 = phi ptr [ %i.cp, %.critedge149 ], [ %i.ca, %bb.w ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0124.0230, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !99 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0124.0230, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not10.i.i.i, label %thread-pre-split.jt0, label %.lr.ph.i.i.i

bb.x:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0120.0174, i64 16 ; 2 uses
  %.not147 = icmp eq ptr %i.cf, %i.bx
  br i1 %.not147, label %.critedge149, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %bb.x
  %.sroa.0120.0174 = phi ptr [ %i.cf, %bb.x ], [ %i.bw, %.lr.ph ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0120.0174, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !91 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.y ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.y ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !91
  %i.ck = icmp ult i64 %i.cj, %i.ch               ; 2 uses
  %.19.i.i.i = select i1 %i.ck, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ck, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, label %bb.y, !llvm.loop !335

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i: ; preds = %bb.y
  %i.cl = icmp eq ptr %.19.i.i.i, %i.ce
  br i1 %i.cl, label %thread-pre-split.jt0, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit

_ZNSt3setImSt4lessImESaImEE4findERKm.exit:        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !91
  %i.co = icmp ult i64 %i.ch, %i.cn
  br i1 %i.co, label %thread-pre-split.jt0, label %bb.x

.critedge149:                                     ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0124.0230, i64 48 ; 2 uses
  %.not146 = icmp eq ptr %i.cp, %i.cb
  br i1 %.not146, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge149, %bb.w
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !102
  store i64 %i.cq, ptr %8, align 8, !tbaa !102
  store ptr null, ptr %i.bu, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !343
  store i64 0, ptr %i.t, align 8, !noalias !343
  store i64 %i.r, ptr %5, align 8, !tbaa !104, !noalias !343
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L20ReplaceGroupBindingsERNS0_16LogicalAggregateES7_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L20ReplaceGroupBindingsERNS0_16LogicalAggregateES7_E3$_0E9_M_invokeERKSt9_Any_dataS2_S8_">, ptr %i.s, align 8, !tbaa !105, !noalias !343
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !343
  store i64 0, ptr %i.v, align 8, !noalias !343
  store i64 %i.w, ptr %4, align 8, !tbaa !107, !noalias !343
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E9_M_invokeERKSt9_Any_dataS6_>, ptr %i.u, align 8, !tbaa !105, !noalias !343
  invoke void @_ZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.z unwind label %bb.ac, !noalias !343

bb.z:                                             ; preds = %._crit_edge
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !39, !noalias !343 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i76, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = invoke noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.af unwind label %bb.ab, !noalias !343 ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #20, !noalias !343
  unreachable

bb.ac:                                            ; preds = %._crit_edge
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %i.u, align 8, !tbaa !39, !noalias !343 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i3.i.i, label %_ZNSt14_Function_baseD2Ev.exit4.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i.i unwind label %bb.ae, !noalias !343 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #20, !noalias !343
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i.i:              ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !343
  %i.da = load ptr, ptr %i.s, align 8, !tbaa !39, !noalias !343 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.da, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.ai

bb.af:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !343
  %i.db = load ptr, ptr %i.s, align 8, !tbaa !39, !noalias !343 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.db, null
  br i1 %.not.i.i77, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.ak unwind label %bb.ah, !noalias !343 ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #20, !noalias !343
  unreachable

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i.i
  %i.df = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.aj, !noalias !343 ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #20, !noalias !343
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.ai, %_ZNSt14_Function_baseD2Ev.exit4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !343
  %i.di = load ptr, ptr %8, align 8, !tbaa !102   ; 3 uses
  %.not.i88 = icmp eq ptr %i.di, null
  br i1 %.not.i88, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i89

bb.ak:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !343
  %i.dj = load i64, ptr %8, align 8, !tbaa !102, !noalias !343
  %i.dk = inttoptr i64 %i.dj to ptr
  store ptr null, ptr %8, align 8, !tbaa !102, !noalias !343
  %i.dl = load ptr, ptr %i.bu, align 8, !tbaa !102 ; 3 uses
  store ptr %i.dk, ptr %i.bu, align 8, !tbaa !102
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ak
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !109
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(88) %i.dl) #19, !inline_history !2
  %.pr = load ptr, ptr %8, align 8, !tbaa !102    ; 3 uses
  %.not.i78 = icmp eq ptr %.pr, null
  br i1 %.not.i78, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.dp = load ptr, ptr %.pr, align 8, !tbaa !109
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #19, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80: ; preds = %bb.ak, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79
  %i.ds = load i64, ptr %i.bu, align 8, !tbaa !102
  store i64 %i.ds, ptr %9, align 8, !tbaa !102
  store ptr null, ptr %i.bu, align 8, !tbaa !102
  %i.dt = invoke noundef i32 @_ZN6duckdb14FilterPushdown9AddFilterENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull %9)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = load ptr, ptr %9, align 8, !tbaa !102   ; 3 uses
  %.not.i81 = icmp eq ptr %i.dv, null
  br i1 %.not.i81, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit83, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i82

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i82: ; preds = %bb.al
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(88) %i.dv) #19, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit83

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit83: ; preds = %bb.al, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i82
  br i1 %i.du, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dz = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #21
          to label %.noexc unwind label %bb.aq    ; 3 uses

.noexc:                                           ; preds = %bb.am
  %i.ea = load i64, ptr %2, align 8, !tbaa !111, !noalias !344
  store i64 %i.ea, ptr %3, align 8, !tbaa !111, !noalias !344
  store ptr null, ptr %2, align 8, !tbaa !111, !noalias !344
  invoke void @_ZN6duckdb18LogicalEmptyResultC1ENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(152) %i.dz, ptr noundef nonnull %3)
          to label %bb.an unwind label %bb.ao, !noalias !344

bb.an:                                            ; preds = %.noexc
  %i.eb = load ptr, ptr %3, align 8, !tbaa !111, !noalias !344 ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i84, label %bb.at, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i: ; preds = %bb.an
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !109, !noalias !344
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !344
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eb) #19, !noalias !344, !inline_history !4
  br label %bb.at

bb.ao:                                            ; preds = %.noexc
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %3, align 8, !tbaa !111, !noalias !344 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.eg, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i: ; preds = %bb.ao
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !109, !noalias !344
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !344
  call void %i.ej(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eg) #19, !noalias !344, !inline_history !4
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i, %bb.ao
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #22, !noalias !344
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i89: ; preds = %_ZNSt14_Function_baseD2Ev.exit3.i
  %i.ek = load ptr, ptr %i.di, align 8, !tbaa !109
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(88) %i.di) #19, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %9, align 8, !tbaa !102   ; 3 uses
  %.not.i91 = icmp eq ptr %i.eo, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i92

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i92: ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !109
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(88) %i.eo) #19, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90

bb.aq:                                            ; preds = %bb.am
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit83
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.052177)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.et = add i64 %.052177, -1
  br label %thread-pre-split.jt0

thread-pre-split.jt0:                             ; preds = %.lr.ph, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, %bb.as
  %.254.ph.jt0 = phi i64 [ %i.et, %bb.as ], [ %.052177, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.052177, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i ], [ %.052177, %.lr.ph ]
  %.pr140.jt0 = load ptr, ptr %7, align 8, !tbaa !113
  br label %bb.au

bb.at:                                            ; preds = %bb.an, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.dz, ptr %0, align 8, !tbaa !115
  %.pr140.jt1 = load ptr, ptr %7, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i94.jt0 = icmp eq ptr %.pr140.jt1, null
  br i1 %.not.i.i.i94.jt0, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt0, label %bb.av

bb.au:                                            ; preds = %bb.u, %thread-pre-split.jt0
  %13 = phi ptr [ %.pr140.jt0, %thread-pre-split.jt0 ], [ %i.bw, %bb.u ] ; 2 uses
  %.254.jt4 = phi i64 [ %.254.ph.jt0, %thread-pre-split.jt0 ], [ %.052177, %bb.u ]
  %.not.i.i.i94.jt1 = icmp eq ptr %13, null
  br i1 %.not.i.i.i94.jt1, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt1, label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @_ZdlPv(ptr noundef nonnull %.pr140.jt1) #22
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt0

bb.aw:                                            ; preds = %bb.au
  call void @_ZdlPv(ptr noundef nonnull %13) #22
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt1

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt0: ; preds = %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit104

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt1: ; preds = %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142: ; preds = %bb.j, %bb.g, %bb.q, %bb.o, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt1, %bb.p, %bb.i, %.loopexit
  %.355145 = phi i64 [ %.052177, %bb.q ], [ %.052177, %bb.g ], [ %.052177, %.loopexit ], [ %.052177, %bb.p ], [ %.254.jt4, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt1 ], [ %.052177, %bb.i ], [ %.052177, %bb.o ], [ %.052177, %bb.j ]
  %i.eu = add i64 %.355145, 1                     ; 2 uses
  %i.ev = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 3
  %.not = icmp ult i64 %i.eu, %i.fa
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !340

bb.ax:                                            ; preds = %bb.ar
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90: ; preds = %bb.aq, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i92, %bb.ap, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i89, %_ZNSt14_Function_baseD2Ev.exit3.i, %bb.ax, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.v ], [ %i.en, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i92 ], [ %i.fb, %bb.ax ], [ %i.cv, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i89 ], [ %i.ef, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i ], [ %i.cv, %_ZNSt14_Function_baseD2Ev.exit3.i ], [ %i.en, %bb.ap ], [ %i.es, %bb.aq ]
  %i.fc = load ptr, ptr %7, align 8, !tbaa !113   ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit96, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90
  call void @_ZdlPv(ptr noundef nonnull %i.fc) #22
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit96

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit96: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit90, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113

.critedge:                                        ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.thread142, %bb.a
  invoke void @_ZN6duckdb14FilterPushdown15GenerateFiltersEv(ptr noundef nonnull align 8 dereferenceable(288) %6)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef 0)
          to label %bb.bb unwind label %bb.bh     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !111
  store i64 %i.fg, ptr %11, align 8, !tbaa !111
  store ptr null, ptr %i.ff, align 8, !tbaa !111
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %10, ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull %11)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.fh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bd unwind label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 noundef 0)
          to label %bb.be unwind label %bb.bj     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.fk = load ptr, ptr %10, align 8, !tbaa !111
  store ptr null, ptr %10, align 8, !tbaa !111
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !111 ; 3 uses
  store ptr %i.fk, ptr %i.fj, align 8, !tbaa !111
  %.not.i.i.i.i.i97 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i97, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.be
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !109
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fl) #19, !inline_history !5
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.be, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.fp = load ptr, ptr %10, align 8, !tbaa !111  ; 3 uses
  %.not.i98 = icmp eq ptr %i.fp, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !109
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fp) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.ft = load ptr, ptr %11, align 8, !tbaa !111  ; 3 uses
  %.not.i99 = icmp eq ptr %i.ft, null
  br i1 %.not.i99, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit101, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i100

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i100: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !109
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ft) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit101

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit101: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fx = load i64, ptr %2, align 8, !tbaa !111
  store i64 %i.fx, ptr %12, align 8, !tbaa !111
  store ptr null, ptr %2, align 8, !tbaa !111
  invoke void @_ZN6duckdb14FilterPushdown14FinishPushdownENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %12)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit101
  %i.fy = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i102 = icmp eq ptr %i.fy, null
  br i1 %.not.i102, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit104, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i103

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i103: ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !109
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fy) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit104

bb.bg:                                            ; preds = %.critedge
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113

bb.bh:                                            ; preds = %bb.ba, %bb.az
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit110

bb.bi:                                            ; preds = %bb.bb
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107

bb.bj:                                            ; preds = %bb.bd, %bb.bc
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %10, align 8, !tbaa !111  ; 3 uses
  %.not.i105 = icmp eq ptr %i.gg, null
  br i1 %.not.i105, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i106

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i106: ; preds = %bb.bj
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !109
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.gg) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i106, %bb.bj, %bb.bi
  %.pn59 = phi { ptr, i32 } [ %i.ge, %bb.bi ], [ %i.gf, %bb.bj ], [ %i.gf, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i106 ] ; 2 uses
  %i.gk = load ptr, ptr %11, align 8, !tbaa !111  ; 3 uses
  %.not.i108 = icmp eq ptr %i.gk, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit110, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i109

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i109: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !109
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.gk) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit110

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit110: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i109, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107, %bb.bh
  %.pn59.pn = phi { ptr, i32 } [ %i.gd, %bb.bh ], [ %.pn59, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107 ], [ %.pn59, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit101
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i111 = icmp eq ptr %i.gp, null
  br i1 %.not.i111, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i112

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i112: ; preds = %bb.bk
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !109
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.gp) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit104: ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit.jt0, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i103, %bb.bf
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.gt) #19
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.gu) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit113: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i112, %bb.bk, %bb.l, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit96, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit110, %bb.bg
  %.pn62 = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %.pn59.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit110 ], [ %i.gc, %bb.bg ], [ %.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit96 ], [ %i.go, %bb.bk ], [ %i.go, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i112 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.gv) #19
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.gw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn62
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(225) ptr @_ZN6duckdb15LogicalOperator4CastINS_16LogicalAggregateEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !135
  %.not = icmp eq i8 %i.b, 3
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 1, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !91
  store i64 %i.i, ptr %i.b, align 8, !tbaa !91
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE3getILb1EEERS6_m.exit, label %bb.b, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
end_hunk_0
