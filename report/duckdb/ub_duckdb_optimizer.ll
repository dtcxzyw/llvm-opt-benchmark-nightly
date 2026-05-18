inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZNK6duckdb21TopNWindowElimination24CreateProjectionOperatorENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERKNS_31TopNWindowEliminationParametersERKSt3mapImmSt4lessImESaISt4pairIKmmEEE:bb.a
  %i.mh = getelementptr i8, ptr %i.lj, i64 %i.mf
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph378
  %index382 = phi i64 [ 0, %vector.ph378 ], [ %index.next387, %vector.body381 ] ; 2 uses
  %i.mi = shl i64 %index382, 3                    ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.lu, i64 %i.mi ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.lj, i64 %i.mi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  %i.mj = getelementptr i8, ptr %next.gep384, i64 16
  %wide.load385 = load <2 x i64>, ptr %next.gep384, align 8, !tbaa !156, !alias.scope !3781, !noalias !3776
  %wide.load386 = load <2 x i64>, ptr %i.mj, align 8, !tbaa !156, !alias.scope !3781, !noalias !3776
  %i.mk = getelementptr i8, ptr %next.gep383, i64 16
  store <2 x i64> %wide.load385, ptr %next.gep383, align 8, !tbaa !156, !alias.scope !3784, !noalias !3781
  store <2 x i64> %wide.load386, ptr %i.mk, align 8, !tbaa !156, !alias.scope !3784, !noalias !3781
  %i.ml = getelementptr i8, ptr %next.gep384, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep384, align 8, !tbaa !156, !alias.scope !3781, !noalias !3776
  store <2 x ptr> splat (ptr null), ptr %i.ml, align 8, !tbaa !156, !alias.scope !3781, !noalias !3776
  %index.next387 = add nuw i64 %index382, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.mm, label %middle.block388, label %vector.body381, !llvm.loop !3786

middle.block388:                                  ; preds = %vector.body381
  %cmp.n389 = icmp eq i64 %i.ma, %n.vec380
  br i1 %cmp.n389, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i143.preheader392

.lr.ph.i.i.i.i.i.i.i143.preheader392:             ; preds = %vector.memcheck370, %.lr.ph.i.i.i.i.i.i.i143.preheader, %middle.block388
  %.012.i.i.i.i.i.i.i144.ph = phi ptr [ %i.lu, %vector.memcheck370 ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i143.preheader ], [ %i.mg, %middle.block388 ]
  %.0911.i.i.i.i.i.i.i145.ph = phi ptr [ %i.lj, %vector.memcheck370 ], [ %i.lj, %.lr.ph.i.i.i.i.i.i.i143.preheader ], [ %i.mh, %middle.block388 ]
  br label %.lr.ph.i.i.i.i.i.i.i143

.lr.ph.i.i.i.i.i.i.i143:                          ; preds = %.lr.ph.i.i.i.i.i.i.i143.preheader392, %.lr.ph.i.i.i.i.i.i.i143
  %.012.i.i.i.i.i.i.i144 = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i.i.i143 ], [ %.012.i.i.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i.i.i143.preheader392 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i145 = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i.i.i143 ], [ %.0911.i.i.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i.i.i143.preheader392 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  %i.mn = load i64, ptr %.0911.i.i.i.i.i.i.i145, align 8, !tbaa !156, !alias.scope !3779, !noalias !3776
  store i64 %i.mn, ptr %.012.i.i.i.i.i.i.i144, align 8, !tbaa !156, !alias.scope !3776, !noalias !3779
  store ptr null, ptr %.0911.i.i.i.i.i.i.i145, align 8, !tbaa !156, !alias.scope !3779, !noalias !3776
  %i.mo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i145, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i144, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i146 = icmp eq ptr %i.mo, %i.le
  br i1 %.not.i.i.i.i.i.i.i146, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i143, !llvm.loop !3787

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i143, %middle.block388, %.noexc150
  %.0.lcssa.i.i.i.i.i.i.i147 = phi ptr [ %i.lu, %.noexc150 ], [ %i.mg, %middle.block388 ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i143 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i147, i64 8
  %.not.i23.i.i.i148 = icmp eq ptr %i.lj, null
  br i1 %.not.i23.i.i.i148, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.lj) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.lu, ptr %i.lc, align 8, !tbaa !154
  store ptr %i.mq, ptr %i.ld, align 8, !tbaa !153
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ls
  store ptr %i.mr, ptr %i.lf, align 8, !tbaa !365
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.by
  %i.ms = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  invoke void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97) %i.ms)
          to label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.cg

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cc
  %i.mt = load ptr, ptr %19, align 8, !tbaa !352
  store ptr %i.mt, ptr %0, align 8, !tbaa !649
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  %i.mu = load ptr, ptr %15, align 8, !tbaa !810  ; 3 uses
  %.not.i152 = icmp eq ptr %i.mu, null
  br i1 %.not.i152, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit154, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i153

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i153: ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !7
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(112) %i.mu) #33, !inline_history !679
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit154

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit154: ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.my = load ptr, ptr %i.ao, align 8, !tbaa !1504
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.my)
          to label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit unwind label %bb.cd

bb.cd:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit154
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #37
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %.pre222 = load ptr, ptr %12, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %.not.i.i.i157 = icmp eq ptr %.pre222, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre222) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  ret void

bb.cf:                                            ; preds = %bb.bs, %bb.br
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.cg:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ca, %bb.cc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.bw
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = load ptr, ptr %19, align 8, !tbaa !352  ; 3 uses
  %.not.i158 = icmp eq ptr %i.nd, null
  br i1 %.not.i158, label %.body137, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i159

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i159: ; preds = %bb.cg
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(112) %i.nd) #33, !inline_history !380
  br label %.body137

.body137:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i159, %bb.cg, %bb.cf, %bb.bv
  %.pn29 = phi { ptr, i32 } [ %i.la, %bb.bv ], [ %i.nb, %bb.cf ], [ %i.nc, %bb.cg ], [ %i.nc, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit77

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i76, %bb.au, %.body137, %bb.bq, %bb.bf, %bb.ao
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body137 ], [ %.pn26.pn, %bb.bf ], [ %.pn.pn, %bb.bq ], [ %i.ea, %bb.ao ], [ %i.fr, %bb.au ], [ %i.fr, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i76 ] ; 2 uses
  %i.nh = load ptr, ptr %15, align 8, !tbaa !810  ; 3 uses
  %.not.i161 = icmp eq ptr %i.nh, null
  br i1 %.not.i161, label %.body, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i162

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i162: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit77
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(112) %i.nh) #33, !inline_history !679
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i162, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit77, %bb.an, %bb.w
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn.i, %bb.w ], [ %i.dz, %bb.an ], [ %.pn29.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit77 ], [ %.pn29.pn, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %.body45

.body45:                                          ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit55, %bb.ae, %bb.ak, %.body, %bb.s
  %.pn35 = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %.pn29.pn.pn, %.body ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit55 ], [ %i.ds, %bb.ak ], [ %.pn.i40, %bb.ae ] ; 2 uses
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.nl = load ptr, ptr %12, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165, label %bb.ch

bb.ch:                                            ; preds = %.body45
  call void @_ZdlPv(ptr noundef nonnull %i.nl) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165: ; preds = %bb.ch, %.body45, %bb.n
  %.pn35.pn = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %.pn35, %.body45 ], [ %.pn35, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165, %bb.m
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165 ], [ %i.ax, %bb.m ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21TopNWindowElimination13ConstructJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_mRKNS_31TopNWindowEliminationParametersE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.86") align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(22) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.duckdb::ColumnIndex", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::unique_ptr.1373", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"struct.duckdb::JoinCondition", align 8 ; 13 uses
  %9 = alloca %"class.duckdb::unique_ptr.321", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 6 uses
  %11 = alloca %"class.duckdb::vector.114", align 8 ; 7 uses
  %12 = alloca %"class.duckdb::unique_ptr.321", align 8 ; 7 uses
  %13 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 6 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !3574, !range !60, !noundef !61
  %14 = trunc nuw i8 %i.d to i1
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 24
  %.neg = xor i64 %3, -1
  %i.n = sub i64 0, %3
  %.p = select i1 %14, i64 %.neg, i64 %i.n
  %15 = add i64 %i.m, %.p                         ; 3 uses
  %i.o = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp eq i8 %i.q, 3
  %i.s = select i1 %i.r, i64 0, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3788)
  %i.t = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #36, !noalias !3788 ; 3 uses
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.t, i8 noundef zeroext 5, i8 noundef zeroext 52)
          to label %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !3788

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit101, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.b ], [ %.pn35.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit101 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #34, !noalias !3788
  br label %common.resume

_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.t, ptr %6, align 8, !tbaa !1321, !alias.scope !3788
  %.not = icmp eq i64 %15, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6duckdb9make_uniqINS_21LogicalComparisonJoinEJNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ag = load i8, ptr %i.c, align 4, !tbaa !3574, !range !60, !noundef !61
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.ak, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0123 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.y       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24
  %.neg30 = sub i64 %.0123, %15
  %i.ar = add i64 %i.aq, %.neg30                  ; 4 uses
  %i.as = add i64 %.0123, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3791)
  %i.at = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.d
  %i.au = load ptr, ptr %1, align 8, !tbaa !156, !noalias !3791 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !15, !noalias !3791
  %.not.i = icmp eq i8 %i.aw, 25
  br i1 %.not.i, label %.noexc44, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %i.ar)
          to label %.noexc40 unwind label %bb.z

.noexc40:                                         ; preds = %bb.e
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %.noexc41 unwind label %bb.z

.noexc41:                                         ; preds = %.noexc40
  %i.ba = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.az)
          to label %.noexc42 unwind label %bb.z

.noexc42:                                         ; preds = %.noexc41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1648, !noalias !3791
  %i.bd = load ptr, ptr %1, align 8, !tbaa !156, !noalias !3791
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef 0)
          to label %.noexc43 unwind label %bb.z

.noexc43:                                         ; preds = %.noexc42
  %i.bg = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.noexc44 unwind label %bb.z

.noexc44:                                         ; preds = %.noexc43, %.noexc
  %.sroa.010.0.i = phi ptr [ %i.at, %.noexc ], [ %i.bg, %.noexc43 ]
  %.0.i = phi i64 [ %i.ar, %.noexc ], [ %i.bc, %.noexc43 ]
  %i.bh = invoke noundef nonnull align 8 dereferenceable(1104) ptr @_ZN6duckdb15LogicalOperator4CastINS_10LogicalGetEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %.sroa.010.0.i)
          to label %.noexc45 unwind label %bb.z   ; 2 uses

.noexc45:                                         ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !3791
  %i.bi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10LogicalGet12GetColumnIdsEv(ptr noundef nonnull align 8 dereferenceable(1104) %i.bh)
          to label %.noexc46 unwind label %bb.z

.noexc46:                                         ; preds = %.noexc45
  %i.bj = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %.0.i)
          to label %.noexc47 unwind label %bb.z

.noexc47:                                         ; preds = %.noexc46
  invoke void @_ZN6duckdb11ColumnIndexC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %i.bj)
          to label %.noexc48 unwind label %bb.z

.noexc48:                                         ; preds = %.noexc47
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb10LogicalGet13GetColumnNameB5cxx11ERKNS_11ColumnIndexE(ptr noundef nonnull align 8 dereferenceable(1104) %i.bh, ptr noundef nonnull align 8 dereferenceable(104) %5)
          to label %bb.f unwind label %bb.k, !noalias !3791 ; 2 uses

bb.f:                                             ; preds = %.noexc48
  store ptr %i.v, ptr %7, align 8, !tbaa !387, !alias.scope !3791
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !124 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !388 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !3791
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !66, !noalias !3791
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.k   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.bp, ptr %7, align 8, !tbaa !124, !alias.scope !3791
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !66, !noalias !3791
  store i64 %i.bq, ptr %i.v, align 8, !tbaa !241, !alias.scope !3791
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.f
  %i.br = phi ptr [ %i.bp, %.noexc.i ], [ %i.v, %bb.f ] ; 2 uses
  switch i64 %i.bn, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !241
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !241
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !66, !noalias !3791 ; 2 uses
  store i64 %i.bt, ptr %i.w, align 8, !tbaa !388, !alias.scope !3791
  %i.bu = load ptr, ptr %7, align 8, !tbaa !124, !alias.scope !3791
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !3791
  %i.bw = load ptr, ptr %i.x, align 8, !tbaa !1658, !noalias !3791 ; 3 uses
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !1659, !noalias !3791 ; 2 uses
  %.not.i.i2.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i2.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.0.i.i3.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %i.bw, %bb.i ] ; 2 uses
  call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i), !inline_history !1660
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1661

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !1658, !noalias !3791
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.i
  %i.bz = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.bw, %bb.i ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #34, !inline_history !1662
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i: ; preds = %bb.j, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #33, !inline_history !1663
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !124, !noalias !3791 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ab
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ca) #34, !inline_history !1663
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i, %.noexc48
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11ColumnIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !3791
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 16, i1 false)
  store i8 25, ptr %i.ac, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %i.ar)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.ab      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.114") align 8 %11, ptr noundef nonnull align 8 dereferenceable(97) %i.cg)
          to label %bb.o unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 0)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !66
  store i64 %i.cl, ptr %10, align 8, !tbaa !239
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !250
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeENS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.321") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %9, align 8, !tbaa !810
  store ptr null, ptr %9, align 8, !tbaa !810
  %i.cn = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  store ptr %i.cm, ptr %8, align 8, !tbaa !199
  %.not.i.i.i.i.i49 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i49, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.q
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(88) %i.cn) #33, !inline_history !359
  %.pr = load ptr, ptr %9, align 8, !tbaa !810    ; 3 uses
  %.not.i51 = icmp eq ptr %.pr, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cr = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(112) %.pr) #33, !inline_history !679
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.q, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i
  %i.cu = load ptr, ptr %11, align 8, !tbaa !158  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cu) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.cv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = add i64 %.0123, %3
  %i.cy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 noundef %i.cx)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.cz = invoke fastcc noundef i64 @_ZN6duckdb12_GLOBAL__N_115GetAggregateIdxERKNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %bb.t
  store i64 %i.cz, ptr %13, align 8, !tbaa !239
  store i64 %i.as, ptr %i.ae, align 8, !tbaa !250
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeENS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.321") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %12, align 8, !tbaa !810
  store ptr null, ptr %12, align 8, !tbaa !810
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !199 ; 3 uses
  store ptr %i.da, ptr %i.af, align 8, !tbaa !199
  %.not.i.i.i.i.i52 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i52, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit60, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit57

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit57: ; preds = %bb.v
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(88) %i.db) #33, !inline_history !359
  %.pr108 = load ptr, ptr %12, align 8, !tbaa !810 ; 3 uses
  %.not.i58 = icmp eq ptr %.pr108, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit60, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i59

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i59: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit57
  %i.df = load ptr, ptr %.pr108, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(112) %.pr108) #33, !inline_history !679
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit60

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit60: ; preds = %bb.v, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit57, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.di = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.w unwind label %bb.ai      ; 3 uses

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 192 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1343 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 200
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2086
  %.not.i.i = icmp eq ptr %i.dk, %i.dm
  br i1 %.not.i.i, label %bb.x, label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.w
  %i.dn = load i64, ptr %8, align 8, !tbaa !199
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !199
  store ptr null, ptr %8, align 8, !tbaa !199
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dp = load i64, ptr %i.af, align 8, !tbaa !199
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !199
  store ptr null, ptr %i.af, align 8, !tbaa !199
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dr = load i8, ptr %i.ac, align 8, !tbaa !201
  store i8 %i.dr, ptr %i.dq, align 8, !tbaa !201
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %i.ds, ptr %i.dj, align 8, !tbaa !1343
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 184
  invoke void @_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(17) %8)
          to label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit unwind label %bb.ai

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.x
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !199 ; 3 uses
  %.not.i.i62 = icmp eq ptr %.pre, null
  br i1 %.not.i.i62, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit
  %i.du = load ptr, ptr %.pre, align 8, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(88) %.pre) #33, !inline_history !2103
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit
  %i.dx = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.dx, null
  br i1 %.not.i1.i, label %_ZN6duckdb13JoinConditionD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(88) %i.dx) #33, !inline_history !2103
  br label %_ZN6duckdb13JoinConditionD2Ev.exit

_ZN6duckdb13JoinConditionD2Ev.exit:               ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.eb = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.v
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.eb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ed = add nuw i64 %.0123, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %15
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !3794

bb.y:                                             ; preds = %bb.c
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.noexc47, %.noexc46, %.noexc45, %.noexc44, %.noexc43, %.noexc42, %.noexc41, %.noexc40, %bb.e, %bb.d
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.n, %bb.m
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit64

bb.ac:                                            ; preds = %bb.p, %bb.o
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %11, align 8, !tbaa !158  ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorImSaImEED2Ev.exit64, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit64

_ZNSt6vectorImSaImEED2Ev.exit64:                  ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.ab ], [ %i.ei, %bb.ac ], [ %i.ei, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit64, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit64 ], [ %i.eg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.aj

bb.af:                                            ; preds = %bb.s, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.u, %bb.t
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn33 = phi { ptr, i32 } [ %i.el, %bb.ag ], [ %i.ek, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.aj

bb.ai:                                            ; preds = %bb.x, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit60
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae
  %.pn35 = phi { ptr, i32 } [ %i.em, %bb.ai ], [ %.pn33, %bb.ah ], [ %.pn.pn, %bb.ae ]
  %i.en = load ptr, ptr %i.af, align 8, !tbaa !199 ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.en, null
  br i1 %.not.i.i65, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i67, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i66

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i66: ; preds = %bb.aj
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(88) %i.en) #33, !inline_history !2103
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i67

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i67: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i66, %bb.aj
  %i.er = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i1.i68 = icmp eq ptr %i.er, null
  br i1 %.not.i1.i68, label %_ZN6duckdb13JoinConditionD2Ev.exit70, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i69

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i69: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i67
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(88) %i.er) #33, !inline_history !2103
  br label %_ZN6duckdb13JoinConditionD2Ev.exit70

_ZN6duckdb13JoinConditionD2Ev.exit70:             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i67, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ev = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.v
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit70
  call void @_ZdlPv(ptr noundef %i.ev) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.body

bb.ak:                                            ; preds = %._crit_edge
  %i.ex = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 97
  store i8 3, ptr %i.ey, align 1, !tbaa !188
  %i.ez = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.am unwind label %bb.at     ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.fa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.an unwind label %bb.au     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 136 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !75
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !74
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 24
  %i.fk = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 144 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !227 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 152 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !211
  %.not.i.i74 = icmp eq ptr %i.fm, %i.fo
  br i1 %.not.i.i74, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i64 %i.fk, ptr %i.fm, align 8, !tbaa !66
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fp, ptr %i.fl, align 8, !tbaa !227
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ap:                                            ; preds = %bb.an
  %i.fq = load ptr, ptr %i.fb, align 8, !tbaa !158 ; 4 uses
  %i.fr = ptrtoint ptr %i.fm to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 5 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.aq, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc75 unwind label %bb.au

.noexc75:                                         ; preds = %bb.aq
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.fv = ashr exact i64 %i.ft, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #36
          to label %.noexc76 unwind label %bb.au  ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ft ; 2 uses
  store i64 %i.fk, ptr %i.gc, align 8, !tbaa !66
  %i.gd = icmp sgt i64 %i.ft, 0
  br i1 %i.gd, label %bb.ar, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ar:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gb, ptr align 8 %i.fq, i64 %i.ft, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ar, %.noexc76
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gb, ptr %i.fb, align 8, !tbaa !158
  store ptr %i.ge, ptr %i.fl, align 8, !tbaa !227
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gf, ptr %i.fn, align 8, !tbaa !211
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.at:                                            ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i83, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.al, %bb.ak
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
