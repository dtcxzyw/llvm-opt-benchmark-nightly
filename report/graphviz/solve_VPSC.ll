Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/solve_VPSC?download=true
inline.NumInlined: 914
inline.NumDeleted: 473
begin_hunk_0_@_ZN4VPSC23constraintGraphIsCyclicEjPP8Variable:bb.a
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %i.v, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader383, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep356 = getelementptr i8, ptr %i.v, i64 %i.at ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.au = getelementptr i8, ptr %next.gep356, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep356, align 8, !tbaa !83, !alias.scope !130
  %wide.load357 = load <2 x i64>, ptr %i.au, align 8, !tbaa !83, !alias.scope !130
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !83, !alias.scope !131, !noalias !132
  store <2 x i64> %wide.load357, ptr %i.av, align 8, !tbaa !83, !alias.scope !131, !noalias !132
  store <2 x ptr> splat (ptr null), ptr %next.gep356, align 8, !tbaa !83, !alias.scope !130
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !83, !alias.scope !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader383

.lr.ph.i.i.i.i.i.preheader383:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader383, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader383 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader383 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !129
  store i64 %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !128
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !129
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !123

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc49
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc49 ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bd) #19
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ag, ptr %4, align 8, !tbaa !84
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.be, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.d
  %i.bf = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.s, %bb.d ]
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph222.preheader, label %bb.b, !llvm.loop !124

.preheader180:                                    ; preds = %._crit_edge220, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 2 uses
  %.not231 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not231, label %.critedge, label %.preheader

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %._crit_edge220
  %indvars.iv259 = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvars.iv.next260, %._crit_edge220 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv259 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 2 uses
  %.not177213 = icmp eq ptr %i.bp, %i.br
  br i1 %.not177213, label %._crit_edge, label %.lr.ph215

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph222
  %i.bs = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bn, %.lr.ph222 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37 ; 2 uses
  %.not178216 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not178216, label %._crit_edge220, label %.lr.ph219

.lr.ph215:                                        ; preds = %.lr.ph222, %bb.z
  %.sroa.0171.0214 = phi ptr [ %i.ev, %bb.z ], [ %i.bp, %.lr.ph222 ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.0171.0214, align 8, !tbaa !43
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !66 ; 3 uses
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph215
  %i.ca = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !48
  %i.cd = icmp ult ptr %i.cc, %i.ca               ; 3 uses
  %.19.i.i.i.i = select i1 %i.cd, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cd, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, label %bb.i, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.i
  %i.ce = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.ce, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cd, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cf = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
  %i.cg = icmp ult ptr %i.ca, %i.cf
  br i1 %i.cg, label %.critedge.i, label %bb.o

.critedge.i:                                      ; preds = %bb.j, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %.lr.ph215
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.a, %.lr.ph215 ]
  %i.ch = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc50:                                         ; preds = %.critedge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 3 uses
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !48
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !89
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr null, ptr %i.ck, align 8, !tbaa !90
  %i.cl = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %bb.k unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.k:                                             ; preds = %.noexc50
  %i.cm = extractvalue { ptr, ptr } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.cl, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i4.i = icmp ne ptr %i.cm, null
  %i.co = icmp eq ptr %i.cn, %i.a
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.co
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !48
  %i.cs = icmp ult ptr %i.cp, %i.cr
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.m, %bb.l
  %i.ct = phi i1 [ %i.cs, %bb.m ], [ true, %bb.l ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ct, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.cu = load i64, ptr %i.e, align 8, !tbaa !73
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.e, align 8, !tbaa !73
  br label %bb.o

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc50
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 48) #19
  br label %.body

bb.n:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 48) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i.i, %bb.j
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %i.ch, %.thread.i.i ], [ %i.cm, %bb.n ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !83 ; 4 uses
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i51 = icmp eq ptr %i.cz, null
  br i1 %.not10.i.i.i.i51, label %.critedge.i62, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i52
  %.012.i.i.i.i53 = phi ptr [ %.1.i.i.i.i58, %.lr.ph.i.i.i.i52 ], [ %i.cz, %bb.o ] ; 4 uses
  %.0811.i.i.i.i54 = phi ptr [ %.19.i.i.i.i55, %.lr.ph.i.i.i.i52 ], [ %i.a, %bb.o ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i53, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !48
  %i.dc = icmp ult ptr %i.db, %i.by               ; 3 uses
  %.19.i.i.i.i55 = select i1 %i.dc, ptr %.0811.i.i.i.i54, ptr %.012.i.i.i.i53 ; 5 uses
  %.1.in.v.i.i.i.i56 = select i1 %i.dc, i64 24, i64 16
  %.1.in.i.i.i.i57 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i53, i64 %.1.in.v.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %.1.in.i.i.i.i57, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60, label %.lr.ph.i.i.i.i52, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60: ; preds = %.lr.ph.i.i.i.i52
  %i.dd = icmp eq ptr %.19.i.i.i.i55, %i.a
  br i1 %i.dd, label %.critedge.i62, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60
  %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dc, ptr %.0811.i.i.i.i54, ptr %.012.i.i.i.i53
  %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.de = load ptr, ptr %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
  %i.df = icmp ult ptr %i.by, %i.de
  br i1 %i.df, label %.critedge.i62, label %bb.u

.critedge.i62:                                    ; preds = %bb.p, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60, %bb.o
  %.08.lcssa.i.i.i14.i63 = phi ptr [ %.19.i.i.i.i55, %bb.p ], [ %.19.i.i.i.i55, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60 ], [ %i.a, %bb.o ]
  %i.dg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc69:                                         ; preds = %.critedge.i62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  store ptr %i.by, ptr %i.dh, align 8, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr null, ptr %i.di, align 8, !tbaa !90
  %i.dj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i63, ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %bb.q unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64 ; 2 uses

bb.q:                                             ; preds = %.noexc69
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0      ; 2 uses
  %i.dl = extractvalue { ptr, ptr } %i.dj, 1      ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i65, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i4.i66 = icmp ne ptr %i.dk, null
  %i.dm = icmp eq ptr %i.dl, %i.a
  %or.cond.i.i.i.i67 = or i1 %.not.i.i.i4.i66, %i.dm
  br i1 %or.cond.i.i.i.i67, label %.thread.i.i68, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !48
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !48
  %i.dq = icmp ult ptr %i.dn, %i.dp
  br label %.thread.i.i68

.thread.i.i68:                                    ; preds = %bb.s, %bb.r
  %i.dr = phi i1 [ %i.dq, %bb.s ], [ true, %bb.r ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dr, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.ds = load i64, ptr %i.e, align 8, !tbaa !73
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.e, align 8, !tbaa !73
  br label %bb.u

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64: ; preds = %.noexc69
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 48) #19
  br label %.body

bb.t:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 48) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i.i68, %bb.p
  %.sroa.09.0.i61 = phi ptr [ %.19.i.i.i.i55, %bb.p ], [ %i.dg, %.thread.i.i68 ], [ %i.dk, %bb.t ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i61, i64 40 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !72 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !83 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.v ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !83 ; 2 uses
  %i.eb = icmp ult ptr %i.dy, %i.ea               ; 2 uses
  %.in.v.i.i.i = select i1 %i.eb, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i73, label %._crit_edge.i.i.i, label %bb.v, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %bb.v
  br i1 %i.eb, label %._crit_edge.thread.i.i.i, label %bb.x

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.u
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.dx, %bb.u ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67
  %i.ee = icmp eq ptr %.019.lcssa29.i.i.i, %i.ed
  br i1 %i.ee, label %select.unfold.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ef = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #22
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !83
  %.pre18.i.i = load ptr, ptr %i.dv, align 8, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i
  %i.eg = phi ptr [ %.pre18.i.i, %bb.w ], [ %i.dy, %._crit_edge.i.i.i ]
  %i.eh = phi ptr [ %.pre.i.i, %bb.w ], [ %i.ea, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.w ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ei = icmp ult ptr %i.eh, %i.eg
  br i1 %i.ei, label %select.unfold.i.i, label %bb.z

select.unfold.i.i:                                ; preds = %bb.x, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.x ] ; 3 uses
  %i.ej = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.dx
  br i1 %i.ej, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %select.unfold.i.i
  %i.ek = load ptr, ptr %i.dv, align 8, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !83
  %i.en = icmp ult ptr %i.ek, %i.em
  br label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.y, %select.unfold.i.i
  %i.eo = phi i1 [ %i.en, %bb.y ], [ true, %select.unfold.i.i ]
  %i.ep = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc74:                                         ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load ptr, ptr %i.dv, align 8, !tbaa !83
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !83
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.eo, ptr noundef nonnull %i.ep, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dx) #20
  %i.es = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !73
  %i.eu = add i64 %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !73
  br label %bb.z

bb.z:                                             ; preds = %.noexc74, %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0171.0214, i64 8 ; 2 uses
  %.not177 = icmp eq ptr %i.ev, %i.br
  br i1 %.not177, label %._crit_edge.loopexit, label %.lr.ph215

._crit_edge220:                                   ; preds = %bb.ar, %._crit_edge
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.preheader180, label %.lr.ph222, !llvm.loop !125

.lr.ph219:                                        ; preds = %._crit_edge, %bb.ar
  %.sroa.0165.0217 = phi ptr [ %i.hv, %bb.ar ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.ew = load ptr, ptr %.sroa.0165.0217, align 8, !tbaa !43
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !62 ; 3 uses
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i75 = icmp eq ptr %i.ez, null
  br i1 %.not10.i.i.i.i75, label %.critedge.i86, label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph219
  %i.fa = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i76
  %.012.i.i.i.i77 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i76 ], [ %.1.i.i.i.i82, %bb.aa ] ; 4 uses
  %.0811.i.i.i.i78 = phi ptr [ %i.a, %.lr.ph.i.i.i.i76 ], [ %.19.i.i.i.i79, %bb.aa ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i77, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !48
  %i.fd = icmp ult ptr %i.fc, %i.fa               ; 3 uses
  %.19.i.i.i.i79 = select i1 %i.fd, ptr %.0811.i.i.i.i78, ptr %.012.i.i.i.i77 ; 5 uses
  %.1.in.v.i.i.i.i80 = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i81 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i77, i64 %.1.in.v.i.i.i.i80
  %.1.i.i.i.i82 = load ptr, ptr %.1.in.i.i.i.i81, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %.1.i.i.i.i82, null
  br i1 %.not.i.i.i.i83, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i84, label %bb.aa, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i84: ; preds = %bb.aa
  %i.fe = icmp eq ptr %.19.i.i.i.i79, %i.a
  br i1 %i.fe, label %.critedge.i86, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i84
  %.19.i.i.i.i79.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fd, ptr %.0811.i.i.i.i78, ptr %.012.i.i.i.i77
  %.19.i.i.i.i79.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i79.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ff = load ptr, ptr %.19.i.i.i.i79.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
  %i.fg = icmp ult ptr %i.fa, %i.ff
  br i1 %i.fg, label %.critedge.i86, label %bb.ag

.critedge.i86:                                    ; preds = %bb.ab, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i84, %.lr.ph219
  %.08.lcssa.i.i.i14.i87 = phi ptr [ %.19.i.i.i.i79, %bb.ab ], [ %.19.i.i.i.i79, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i84 ], [ %i.a, %.lr.ph219 ]
  %i.fh = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc93:                                         ; preds = %.critedge.i86
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 3 uses
  %i.fj = load ptr, ptr %i.bm, align 8, !tbaa !48
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !89
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store ptr null, ptr %i.fk, align 8, !tbaa !90
  %i.fl = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i87, ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %bb.ac unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88 ; 2 uses

bb.ac:                                            ; preds = %.noexc93
  %i.fm = extractvalue { ptr, ptr } %i.fl, 0      ; 2 uses
  %i.fn = extractvalue { ptr, ptr } %i.fl, 1      ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i89, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i4.i90 = icmp ne ptr %i.fm, null
  %i.fo = icmp eq ptr %i.fn, %i.a
  %or.cond.i.i.i.i91 = or i1 %.not.i.i.i4.i90, %i.fo
  br i1 %or.cond.i.i.i.i91, label %.thread.i.i92, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fp = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !48
  %i.fs = icmp ult ptr %i.fp, %i.fr
  br label %.thread.i.i92

.thread.i.i92:                                    ; preds = %bb.ae, %bb.ad
  %i.ft = phi i1 [ %i.fs, %bb.ae ], [ true, %bb.ad ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ft, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.fu = load i64, ptr %i.e, align 8, !tbaa !73
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.e, align 8, !tbaa !73
  br label %bb.ag

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88: ; preds = %.noexc93
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 48) #19
  br label %.body

bb.af:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 48) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.i.i92, %bb.ab
  %.sroa.09.0.i85 = phi ptr [ %.19.i.i.i.i79, %bb.ab ], [ %i.fh, %.thread.i.i92 ], [ %i.fm, %bb.af ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i85, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83 ; 4 uses
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i97 = icmp eq ptr %i.fz, null
  br i1 %.not10.i.i.i.i97, label %.critedge.i108, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %bb.ag, %.lr.ph.i.i.i.i98
  %.012.i.i.i.i99 = phi ptr [ %.1.i.i.i.i104, %.lr.ph.i.i.i.i98 ], [ %i.fz, %bb.ag ] ; 4 uses
  %.0811.i.i.i.i100 = phi ptr [ %.19.i.i.i.i101, %.lr.ph.i.i.i.i98 ], [ %i.a, %bb.ag ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !48
  %i.gc = icmp ult ptr %i.gb, %i.ey               ; 3 uses
  %.19.i.i.i.i101 = select i1 %i.gc, ptr %.0811.i.i.i.i100, ptr %.012.i.i.i.i99 ; 5 uses
  %.1.in.v.i.i.i.i102 = select i1 %i.gc, i64 24, i64 16
  %.1.in.i.i.i.i103 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 %.1.in.v.i.i.i.i102
  %.1.i.i.i.i104 = load ptr, ptr %.1.in.i.i.i.i103, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %.1.i.i.i.i104, null
  br i1 %.not.i.i.i.i105, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106, label %.lr.ph.i.i.i.i98, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106: ; preds = %.lr.ph.i.i.i.i98
  %i.gd = icmp eq ptr %.19.i.i.i.i101, %i.a
  br i1 %i.gd, label %.critedge.i108, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106
  %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gc, ptr %.0811.i.i.i.i100, ptr %.012.i.i.i.i99
  %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ge = load ptr, ptr %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
  %i.gf = icmp ult ptr %i.ey, %i.ge
  br i1 %i.gf, label %.critedge.i108, label %bb.am

.critedge.i108:                                   ; preds = %bb.ah, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106, %bb.ag
  %.08.lcssa.i.i.i14.i109 = phi ptr [ %.19.i.i.i.i101, %bb.ah ], [ %.19.i.i.i.i101, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106 ], [ %i.a, %bb.ag ]
  %i.gg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc115:                                        ; preds = %.critedge.i108
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 3 uses
  store ptr %i.ey, ptr %i.gh, align 8, !tbaa !89
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store ptr null, ptr %i.gi, align 8, !tbaa !90
  %i.gj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i109, ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %bb.ai unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110 ; 2 uses

bb.ai:                                            ; preds = %.noexc115
  %i.gk = extractvalue { ptr, ptr } %i.gj, 0      ; 2 uses
  %i.gl = extractvalue { ptr, ptr } %i.gj, 1      ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i111, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i4.i112 = icmp ne ptr %i.gk, null
  %i.gm = icmp eq ptr %i.gl, %i.a
  %or.cond.i.i.i.i113 = or i1 %.not.i.i.i4.i112, %i.gm
  br i1 %or.cond.i.i.i.i113, label %.thread.i.i114, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !48
  %i.gq = icmp ult ptr %i.gn, %i.gp
  br label %.thread.i.i114

.thread.i.i114:                                   ; preds = %bb.ak, %bb.aj
  %i.gr = phi i1 [ %i.gq, %bb.ak ], [ true, %bb.aj ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gr, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.gs = load i64, ptr %i.e, align 8, !tbaa !73
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %i.e, align 8, !tbaa !73
  br label %bb.am

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110: ; preds = %.noexc115
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 48) #19
  br label %.body

bb.al:                                            ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 48) #19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i.i114, %bb.ah
  %.sroa.09.0.i107 = phi ptr [ %.19.i.i.i.i101, %bb.ah ], [ %i.gg, %.thread.i.i114 ], [ %i.gk, %bb.al ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i107, i64 40 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 56 ; 3 uses
  %.02022.i.i.i119 = load ptr, ptr %i.gw, align 8, !tbaa !72 ; 2 uses
  %.not23.i.i.i120 = icmp eq ptr %.02022.i.i.i119, null
  br i1 %.not23.i.i.i120, label %._crit_edge.thread.i.i.i137, label %.lr.ph.i.i.i121

.lr.ph.i.i.i121:                                  ; preds = %bb.am
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !83 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i.i.i121
  %.02024.i.i.i122 = phi ptr [ %.02022.i.i.i119, %.lr.ph.i.i.i121 ], [ %.020.i.i.i125, %bb.an ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i122, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !83 ; 2 uses
  %i.hb = icmp ult ptr %i.gy, %i.ha               ; 2 uses
  %.in.v.i.i.i123 = select i1 %i.hb, i64 16, i64 24
  %.in.i.i.i124 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i122, i64 %.in.v.i.i.i123
  %.020.i.i.i125 = load ptr, ptr %.in.i.i.i124, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %.020.i.i.i125, null
  br i1 %.not.i.i.i126, label %._crit_edge.i.i.i127, label %bb.an, !llvm.loop !3

._crit_edge.i.i.i127:                             ; preds = %bb.an
  br i1 %i.hb, label %._crit_edge.thread.i.i.i137, label %bb.ap

._crit_edge.thread.i.i.i137:                      ; preds = %._crit_edge.i.i.i127, %bb.am
  %.019.lcssa29.i.i.i138 = phi ptr [ %.02024.i.i.i122, %._crit_edge.i.i.i127 ], [ %i.gx, %bb.am ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !67
  %i.he = icmp eq ptr %.019.lcssa29.i.i.i138, %i.hd
  br i1 %i.he, label %select.unfold.i.i134, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i.i.i137
  %i.hf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i138) #22
  %.phi.trans.insert.i.i139 = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.pre.i.i140 = load ptr, ptr %.phi.trans.insert.i.i139, align 8, !tbaa !83
  %.pre18.i.i141 = load ptr, ptr %i.gv, align 8, !tbaa !83
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge.i.i.i127
  %i.hg = phi ptr [ %.pre18.i.i141, %bb.ao ], [ %i.gy, %._crit_edge.i.i.i127 ]
  %i.hh = phi ptr [ %.pre.i.i140, %bb.ao ], [ %i.ha, %._crit_edge.i.i.i127 ]
  %.019.lcssa28.i.i.i128 = phi ptr [ %.019.lcssa29.i.i.i138, %bb.ao ], [ %.02024.i.i.i122, %._crit_edge.i.i.i127 ]
  %i.hi = icmp ult ptr %i.hh, %i.hg
  br i1 %i.hi, label %select.unfold.i.i134, label %bb.ar

select.unfold.i.i134:                             ; preds = %bb.ap, %._crit_edge.thread.i.i.i137
  %.sroa.4.0.i.ph.i.i135 = phi ptr [ %.019.lcssa29.i.i.i138, %._crit_edge.thread.i.i.i137 ], [ %.019.lcssa28.i.i.i128, %bb.ap ] ; 3 uses
  %i.hj = icmp eq ptr %.sroa.4.0.i.ph.i.i135, %i.gx
  br i1 %i.hj, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136, label %bb.aq

bb.aq:                                            ; preds = %select.unfold.i.i134
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !83
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i135, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !83
  %i.hn = icmp ult ptr %i.hk, %i.hm
  br label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136: ; preds = %bb.aq, %select.unfold.i.i134
  %i.ho = phi i1 [ %i.hn, %bb.aq ], [ true, %select.unfold.i.i134 ]
  %i.hp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142:                                        ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.gv, align 8, !tbaa !83
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !83
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ho, ptr noundef nonnull %i.hp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i135, ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fy, i64 88 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !73
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !73
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc142, %bb.ap
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0165.0217, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.hv, %i.bw
  br i1 %.not178, label %._crit_edge220, label %.lr.ph219

.loopexit:                                        ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.hw = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.hx = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 2 uses
  %.not232 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not232, label %.critedge, label %.preheader, !llvm.loop !126

.preheader:                                       ; preds = %.preheader180, %.loopexit
  %i.hy = phi ptr [ %i.hx, %.loopexit ], [ %i.bl, %.preheader180 ] ; 2 uses
  %i.hz = phi ptr [ %i.hw, %.loopexit ], [ %i.bk, %.preheader180 ] ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.at
  %.sroa.0156.0223 = phi ptr [ %i.hz, %.preheader ], [ %i.ie, %bb.at ] ; 4 uses
  %i.ia = load ptr, ptr %.sroa.0156.0223, align 8, !tbaa !83 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !73
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0156.0223, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ie, %i.hy
  br i1 %.not, label %.critedge, label %bb.as, !llvm.loop !127

bb.au:                                            ; preds = %bb.as
  %i.if = icmp eq ptr %.sroa.0156.0223, %i.hy     ; 3 uses
  br i1 %i.if, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = ptrtoint ptr %.sroa.0156.0223 to i64
  %i.ih = ptrtoint ptr %i.hz to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.hz, i64 %i.ii
  %i.ik = invoke ptr @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ij)
          to label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.av
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !67 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 56 ; 2 uses
  %.not176224 = icmp eq ptr %i.im, %i.in
  br i1 %.not176224, label %.loopexit, label %.lr.ph226

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %.critedge.i62, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.av, %.critedge.i86, %.critedge.i108, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit, %bb.b, %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp385 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph226:                                        ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit
  %.sroa.0150.0225 = phi ptr [ %i.jt, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit ], [ %i.im, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0150.0225, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !83 ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 7 uses
  %.041.i.i = load ptr, ptr %i.iq, align 8, !tbaa !72 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph226, %bb.ay
  %.044.i.i = phi ptr [ %.0.i.i, %bb.ay ], [ %.041.i.i, %.lr.ph226 ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.ay ], [ %i.ir, %.lr.ph226 ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !83 ; 2 uses
  %i.iu = icmp ult ptr %i.it, %i.ia
  br i1 %i.iu, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i
  %i.iv = icmp ult ptr %i.ia, %i.it
  br i1 %i.iv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iw = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !91 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !92 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i146

.lr.ph.i.i.i146:                                  ; preds = %bb.ax, %.lr.ph.i.i.i146
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i146 ], [ %i.ix, %bb.ax ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i146 ], [ %.044.i.i, %bb.ax ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !83
  %i.jc = icmp ult ptr %i.jb, %i.ia               ; 2 uses
  %.19.i.i.i = select i1 %i.jc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.jc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i147, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i146, !llvm.loop !4

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i146, %bb.ax
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.ax ], [ %.19.i.i.i, %.lr.ph.i.i.i146 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.iz, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.iz, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !83
  %i.jf = icmp ult ptr %i.ia, %i.je               ; 2 uses
  %.19.i28.i.i = select i1 %i.jf, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.jf, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !5

bb.ay:                                            ; preds = %bb.aw, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.aw ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.aw ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.jg, align 8, !tbaa !72 ; 2 uses
  %.not.i.i149 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i149, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i: ; preds = %bb.ay, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph226
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.ir, %.lr.ph226 ], [ %.123.i.i, %bb.ay ] ; 3 uses
  %.sroa.3.0.i.i148 = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.ir, %.lr.ph226 ], [ %.123.i.i, %bb.ay ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ip, i64 40 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !67
  %i.jk = icmp eq ptr %.sroa.037.0.i.i, %i.jj
  %i.jl = icmp eq ptr %.sroa.3.0.i.i148, %i.ir
  %or.cond.i = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond.i, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #24
  unreachable

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i: ; preds = %bb.az
  store ptr null, ptr %i.iq, align 8, !tbaa !76
  store ptr %i.ir, ptr %i.ji, align 8, !tbaa !67
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr %i.ir, ptr %i.jo, align 8, !tbaa !77
  store i64 0, ptr %i.jh, align 8, !tbaa !73
  br label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i148
  br i1 %.not8.i.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.jp, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.jp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #22 ; 2 uses
  %i.jq = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ir) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef 40) #19
  %i.jr = load i64, ptr %i.jh, align 8, !tbaa !73
  %i.js = add i64 %i.jr, -1
  store i64 %i.js, ptr %i.jh, align 8, !tbaa !73
  %.not.i3.i = icmp eq ptr %i.jp, %.sroa.3.0.i.i148
  br i1 %.not.i3.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i, !llvm.loop !7

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i, %.critedge.i.i
  %i.jt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0150.0225) #22 ; 2 uses
  %.not176 = icmp eq ptr %i.jt, %i.in
  br i1 %.not176, label %.loopexit, label %.lr.ph226

.critedge:                                        ; preds = %.loopexit, %bb.au, %bb.at, %.preheader180
  %.lcssa = phi i1 [ false, %.preheader180 ], [ true, %bb.at ], [ %i.if, %bb.au ], [ %i.if, %.loopexit ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ju)
          to label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #24
  unreachable

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.lcssa

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64
  %.pn46.pn = phi { ptr, i32 } [ %i.gu, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110 ], [ %i.cw, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.fw, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88 ], [ %i.du, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64 ], [ %lpad.loopexit.split-lp385, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn46.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !48
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !90
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef %i.k)
          to label %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i: ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 96) #19
  br label %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !133

_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !84
  br label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4VPSC18blockGraphIsCyclicEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(84) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::map.39", align 8       ; 15 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 14 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
end_hunk_0
