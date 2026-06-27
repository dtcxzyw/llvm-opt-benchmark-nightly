inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  %.sroa.02887.03539 = phi ptr [ %i.mh, %.lr.ph3541 ], [ %i.ms, %bb.ce ] ; 2 uses
  %i.mn = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02887.03539)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.mo = invoke noundef zeroext i1 @_ZN6duckdb23SubqueryDependentFilterERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %i.mn)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.mp = load i8, ptr %i.mk, align 1, !tbaa !40, !range !101, !noundef !50
  %i.mq = zext i1 %i.mo to i8
  %i.mr = or i8 %i.mp, %i.mq
  store i8 %i.mr, ptr %i.mk, align 1, !tbaa !40
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.02887.03539, i64 8 ; 2 uses
  %.not3050 = icmp eq ptr %i.ms, %i.mj
  br i1 %.not3050, label %._crit_edge3542, label %bb.cc

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %._crit_edge3542
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i64 noundef 0)
          to label %bb.ch unwind label %bb.co     ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !65
  store i64 %i.mw, ptr %40, align 8, !tbaa !65
  store ptr null, ptr %i.mv, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %39, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %40, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.ci unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.mx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cj unwind label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 noundef 0)
          to label %bb.ck unwind label %bb.cq     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.na = load ptr, ptr %39, align 8, !tbaa !65
  store ptr null, ptr %39, align 8, !tbaa !65
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !65 ; 3 uses
  store ptr %i.na, ptr %i.mz, align 8, !tbaa !65
  %.not.i.i.i.i.i977 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i977, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ck
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !67
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nb) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ck, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.nf = load ptr, ptr %39, align 8, !tbaa !65   ; 3 uses
  %.not.i978 = icmp eq ptr %i.nf, null
  br i1 %.not.i978, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i979

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i979: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !67
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nf) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i979
  %i.nj = load ptr, ptr %40, align 8, !tbaa !65   ; 3 uses
  %.not.i981 = icmp eq ptr %i.nj, null
  br i1 %.not.i981, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i982

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i982: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !67
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nj) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i982
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0209.0.copyload = load i64, ptr %i.nn, align 8, !tbaa !46
  %.sroa.2210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2210.0.copyload = load i64, ptr %.sroa.2210.0..sroa_idx, align 8, !tbaa !46
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressionsC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull align 8 dereferenceable(41) %41, i64 %.sroa.0209.0.copyload, i64 %.sroa.2210.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.no, i64 noundef %4, i1 noundef zeroext false)
          to label %bb.cl unwind label %bb.cr

bb.cl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983
  %i.np = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %41, ptr noundef nonnull align 8 dereferenceable(97) %i.np)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.nq = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.nq, ptr %0, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit967

bb.co:                                            ; preds = %bb.cg, %._crit_edge3542
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989

bb.cp:                                            ; preds = %bb.ch
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986

bb.cq:                                            ; preds = %bb.cj, %bb.ci
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %39, align 8, !tbaa !65   ; 3 uses
  %.not.i984 = icmp eq ptr %i.nu, null
  br i1 %.not.i984, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985: ; preds = %bb.cq
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !67
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nu) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985, %bb.cq, %bb.cp
  %.pn859 = phi { ptr, i32 } [ %i.ns, %bb.cp ], [ %i.nt, %bb.cq ], [ %i.nt, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985 ] ; 2 uses
  %i.ny = load ptr, ptr %40, align 8, !tbaa !65   ; 3 uses
  %.not.i987 = icmp eq ptr %i.ny, null
  br i1 %.not.i987, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !67
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ny) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986, %bb.co
  %.pn859.pn = phi { ptr, i32 } [ %i.nr, %bb.co ], [ %.pn859, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986 ], [ %.pn859, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %.body

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cm, %bb.cl
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn862 = phi { ptr, i32 } [ %i.od, %bb.cs ], [ %i.oc, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body

bb.cu:                                            ; preds = %bb.by
  %i.oe = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cv unwind label %bb.cw     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !264 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !264 ; 2 uses
  %.not30483530 = icmp eq ptr %i.og, %i.oi
  br i1 %.not30483530, label %._crit_edge3534, label %.lr.ph3533

._crit_edge3534:                                  ; preds = %bb.cy, %bb.cv
  %i.oj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.da unwind label %bb.dk

bb.cw:                                            ; preds = %bb.cu
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph3533:                                       ; preds = %bb.cv, %bb.cy
  %.sroa.02883.03531 = phi ptr [ %i.or, %bb.cy ], [ %i.og, %bb.cv ] ; 2 uses
  %i.ol = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02883.03531)
          to label %bb.cx unwind label %bb.cz     ; 2 uses

bb.cx:                                            ; preds = %.lr.ph3533
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !67
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 112
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = invoke noundef zeroext i1 %i.oo(ptr noundef nonnull align 8 dereferenceable(88) %i.ol)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.oq = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %197 = icmp ne i8 %i.oq, 0
  %198 = and i1 %i.op, %197
  %199 = zext i1 %198 to i8
  store i8 %199, ptr %3, align 1, !tbaa !340
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.02883.03531, i64 8 ; 2 uses
  %.not3048 = icmp eq ptr %i.or, %i.oi
  br i1 %.not3048, label %._crit_edge3534, label %.lr.ph3533

bb.cz:                                            ; preds = %bb.cx, %.lr.ph3533
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %._crit_edge3534
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ot, i64 noundef 0)
          to label %bb.db unwind label %bb.dk

bb.db:                                            ; preds = %bb.da
  %i.ov = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ou)
          to label %bb.dc unwind label %bb.dk

bb.dc:                                            ; preds = %bb.db
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i8, ptr %i.ow, align 8, !tbaa !75
  %.not840 = icmp ne i8 %i.ox, 57
  %i.oy = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %200 = icmp ne i8 %i.oy, 0
  %201 = and i1 %.not840, %200
  %202 = zext i1 %201 to i8
  store i8 %202, ptr %3, align 1, !tbaa !340
  br i1 %i.at, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.oz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.de unwind label %bb.dl

bb.de:                                            ; preds = %bb.dd
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pa, i64 noundef 0)
          to label %bb.df unwind label %bb.dl     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !65
  store i64 %i.pc, ptr %44, align 8, !tbaa !65
  store ptr null, ptr %i.pb, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins11DecorrelateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEEbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %43, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %44, i1 noundef zeroext true, i64 noundef 0)
          to label %bb.dg unwind label %bb.dm

bb.dg:                                            ; preds = %bb.df
  store ptr %.sroa.02920.6, ptr %45, align 8, !tbaa !272
  invoke void @_ZN6duckdb19LogicalCrossProduct6CreateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %42, ptr noundef nonnull %43, ptr noundef nonnull %45)
          to label %bb.dh unwind label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.pd = load ptr, ptr %45, align 8, !tbaa !65   ; 3 uses
  %.not.i990 = icmp eq ptr %i.pd, null
  br i1 %.not.i990, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i991

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i991: ; preds = %bb.dh
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !67
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pd) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992: ; preds = %bb.dh, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i991
  %i.ph = load ptr, ptr %43, align 8, !tbaa !65   ; 3 uses
  %.not.i993 = icmp eq ptr %i.ph, null
  br i1 %.not.i993, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i994

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i994: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !67
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ph) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i994
  %i.pl = load ptr, ptr %44, align 8, !tbaa !65   ; 3 uses
  %.not.i996 = icmp eq ptr %i.pl, null
  br i1 %.not.i996, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i997

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i997: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !67
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pl) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i997
  %i.pp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.di unwind label %bb.do

bb.di:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pq, i64 noundef 0)
          to label %bb.dj unwind label %bb.do     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %i.ps = load ptr, ptr %42, align 8, !tbaa !65
  store ptr null, ptr %42, align 8, !tbaa !65
  %i.pt = load ptr, ptr %i.pr, align 8, !tbaa !65 ; 3 uses
  store ptr %i.ps, ptr %i.pr, align 8, !tbaa !65
  %.not.i.i.i.i.i999 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i.i999, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1000

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1000: ; preds = %bb.dj
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !67
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pt) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001: ; preds = %bb.dj, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1000
  %i.px = load ptr, ptr %42, align 8, !tbaa !65   ; 3 uses
  %.not.i1002 = icmp eq ptr %i.px, null
  br i1 %.not.i1002, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1004, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1003

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1003: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !67
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.px) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1004

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1004: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1003
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.dy

bb.dk:                                            ; preds = %bb.db, %bb.da, %._crit_edge3534
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dl:                                            ; preds = %bb.de, %bb.dd
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013

bb.dm:                                            ; preds = %bb.df
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010

bb.dn:                                            ; preds = %bb.dg
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = load ptr, ptr %45, align 8, !tbaa !65   ; 3 uses
  %.not.i1005 = icmp eq ptr %i.qf, null
  br i1 %.not.i1005, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1006

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1006: ; preds = %bb.dn
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !67
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qf) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007: ; preds = %bb.dn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1006
  %i.qj = load ptr, ptr %43, align 8, !tbaa !65   ; 3 uses
  %.not.i1008 = icmp eq ptr %i.qj, null
  br i1 %.not.i1008, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !67
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qj) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007, %bb.dm
  %.sroa.02920.7 = phi ptr [ %.sroa.02920.6, %bb.dm ], [ null, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007 ], [ null, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009 ] ; 2 uses
  %.pn844 = phi { ptr, i32 } [ %i.qd, %bb.dm ], [ %i.qe, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007 ], [ %i.qe, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009 ] ; 2 uses
  %i.qn = load ptr, ptr %44, align 8, !tbaa !65   ; 3 uses
  %.not.i1011 = icmp eq ptr %i.qn, null
  br i1 %.not.i1011, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !67
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qn) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013

bb.do:                                            ; preds = %bb.di, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qs = load ptr, ptr %42, align 8, !tbaa !65   ; 3 uses
  %.not.i1014 = icmp eq ptr %i.qs, null
  br i1 %.not.i1014, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015: ; preds = %bb.do
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !67
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qs) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015, %bb.do, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010, %bb.dl
  %.sroa.02920.8 = phi ptr [ %.sroa.02920.7, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012 ], [ %.sroa.02920.6, %bb.dl ], [ %.sroa.02920.7, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010 ], [ null, %bb.do ], [ null, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015 ]
  %.pn846 = phi { ptr, i32 } [ %.pn844, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012 ], [ %i.qc, %bb.dl ], [ %.pn844, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010 ], [ %i.qr, %bb.do ], [ %i.qr, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body

bb.dp:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  %i.qw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qx, i64 noundef 0)
          to label %bb.dr unwind label %bb.dv     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !65
  store i64 %i.qz, ptr %47, align 8, !tbaa !65
  store ptr null, ptr %i.qy, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %46, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %47, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.ra = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, i64 noundef 0)
          to label %bb.du unwind label %bb.dx     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
middle.block5561:                                 ; preds = %vector.body5554
  %cmp.n5562 = icmp eq i64 %i.tz, %n.vec5553
  br i1 %cmp.n5562, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i1039.preheader5565

.lr.ph.i.i.i.i.i.i.i1039.preheader5565:           ; preds = %vector.memcheck5541, %.lr.ph.i.i.i.i.i.i.i1039.preheader, %middle.block5561
  %.012.i.i.i.i.i.i.i1040.ph = phi ptr [ %i.tt, %vector.memcheck5541 ], [ %i.tt, %.lr.ph.i.i.i.i.i.i.i1039.preheader ], [ %i.ue, %middle.block5561 ]
  %.0911.i.i.i.i.i.i.i1041.ph = phi ptr [ %i.ti, %vector.memcheck5541 ], [ %i.ti, %.lr.ph.i.i.i.i.i.i.i1039.preheader ], [ %i.uf, %middle.block5561 ]
  br label %.lr.ph.i.i.i.i.i.i.i1039

.lr.ph.i.i.i.i.i.i.i1039:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1039.preheader5565, %.lr.ph.i.i.i.i.i.i.i1039
  %.012.i.i.i.i.i.i.i1040 = phi ptr [ %i.un, %.lr.ph.i.i.i.i.i.i.i1039 ], [ %.012.i.i.i.i.i.i.i1040.ph, %.lr.ph.i.i.i.i.i.i.i1039.preheader5565 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1041 = phi ptr [ %i.um, %.lr.ph.i.i.i.i.i.i.i1039 ], [ %.0911.i.i.i.i.i.i.i1041.ph, %.lr.ph.i.i.i.i.i.i.i1039.preheader5565 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ul = load i64, ptr %.0911.i.i.i.i.i.i.i1041, align 8, !tbaa !211, !alias.scope !444, !noalias !441
  store i64 %i.ul, ptr %.012.i.i.i.i.i.i.i1040, align 8, !tbaa !211, !alias.scope !441, !noalias !444
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1041, align 8, !tbaa !211, !alias.scope !444, !noalias !441
  %i.um = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1041, i64 8 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1040, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1042 = icmp eq ptr %i.um, %i.td
  br i1 %.not.i.i.i.i.i.i.i1042, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i1039, !llvm.loop !452

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i1039, %middle.block5561, %.noexc1046
  %.0.lcssa.i.i.i.i.i.i.i1043 = phi ptr [ %i.tt, %.noexc1046 ], [ %i.ue, %middle.block5561 ], [ %i.un, %.lr.ph.i.i.i.i.i.i.i1039 ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1043, i64 8 ; 2 uses
  %.not.i23.i.i.i1044 = icmp eq ptr %i.ti, null
  br i1 %.not.i23.i.i.i1044, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread4455, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread4455: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.tt, ptr %i.ta, align 8, !tbaa !212
  store ptr %i.uo, ptr %i.tc, align 8, !tbaa !209
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr
  store ptr %i.up, ptr %i.te, align 8, !tbaa !210
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ti) #23
  %.pre3923.pre = load ptr, ptr %49, align 8, !tbaa !379 ; 3 uses
  store ptr %i.tt, ptr %i.ta, align 8, !tbaa !212
  store ptr %i.uo, ptr %i.tc, align 8, !tbaa !209
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr
  store ptr %i.uq, ptr %i.te, align 8, !tbaa !210
  %.not.i1050 = icmp eq ptr %.pre3923.pre, null
  br i1 %.not.i1050, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1051

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1051: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049
  %i.ur = load ptr, ptr %.pre3923.pre, align 8, !tbaa !67
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load ptr, ptr %i.us, align 8
  call void %i.ut(ptr noundef nonnull align 8 dereferenceable(112) %.pre3923.pre) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread4455, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1051
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.uu = add nuw i64 %storemerge8483535, 1       ; 2 uses
  %i.uv = load ptr, ptr %i.sg, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !42
  %i.uy = load ptr, ptr %i.uv, align 8, !tbaa !45 ; 2 uses
  %i.uz = ptrtoint ptr %i.ux to i64
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = sub i64 %i.uz, %i.va
  %i.vc = sdiv exact i64 %i.vb, 80
  %i.vd = icmp ult i64 %i.uu, %i.vc
  br i1 %i.vd, label %bb.eg, label %._crit_edge3537, !llvm.loop !453

bb.el:                                            ; preds = %bb.eg
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.eo

bb.em:                                            ; preds = %bb.eh
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.loopexit.split-lp:                               ; preds = %bb.ek
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.en:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i1053 = icmp eq ptr %i.tb, null
  br i1 %.not.i1053, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054: ; preds = %bb.en
  %i.vg = load ptr, ptr %i.tb, align 8, !tbaa !67
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(88) %i.tb) #22, !inline_history !229
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054, %bb.en, %bb.em
  %.pn849 = phi { ptr, i32 } [ %i.vf, %bb.em ], [ %lpad.phi, %bb.en ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054 ] ; 2 uses
  %i.vj = load ptr, ptr %49, align 8, !tbaa !379  ; 3 uses
  %.not.i1056 = icmp eq ptr %i.vj, null
  br i1 %.not.i1056, label %bb.eo, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !67
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(112) %i.vj) #22, !inline_history !381
  br label %bb.eo

bb.eo:                                            ; preds = %bb.el, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057
  %.pn849.pn = phi { ptr, i32 } [ %i.ve, %bb.el ], [ %.pn849, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055 ], [ %.pn849, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %bb.eq

bb.ep:                                            ; preds = %._crit_edge3537
  %i.vn = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  %i.vo = getelementptr inbounds nuw i8, ptr %i.so, i64 48
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !209
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !212
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = ashr exact i64 %i.vt, 3
  %i.vv = load ptr, ptr %i.sg, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !42
  %i.vy = load ptr, ptr %i.vv, align 8, !tbaa !45
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = sub i64 %i.vz, %i.wa
  %.neg3049 = sdiv exact i64 %i.wb, -80
  %i.wc = add nsw i64 %.neg3049, %i.vu            ; 2 uses
  store i64 %i.wc, ptr %.sroa.2204.0..sroa_idx, align 8, !tbaa !408
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !238
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.we, align 8, !tbaa !233
  %i.wf = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.wf, ptr %0, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit967

bb.eq:                                            ; preds = %bb.ee, %bb.eo, %bb.ef, %bb.ed
  %.pn849.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sp, %bb.ed ], [ %i.sq, %bb.ee ], [ %.pn849.pn, %bb.eo ], [ %i.sr, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.body

bb.er:                                            ; preds = %bb.by
  %i.wg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.wh = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZN6duckdb15LogicalOperator4CastINS_16LogicalAggregateEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.wg)
          to label %bb.et unwind label %bb.ev     ; 21 uses

bb.et:                                            ; preds = %bb.es
  %i.wi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.eu unwind label %bb.ew     ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 40
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !264 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !264 ; 2 uses
  %.not30443500 = icmp eq ptr %i.wk, %i.wm
  br i1 %.not30443500, label %._crit_edge3504, label %.lr.ph3503

._crit_edge3504:                                  ; preds = %bb.ey, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  %i.wn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fa unwind label %bb.fj

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ew:                                            ; preds = %bb.et
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph3503:                                       ; preds = %bb.eu, %bb.ey
  %.sroa.02873.03501 = phi ptr [ %i.ww, %bb.ey ], [ %i.wk, %bb.eu ] ; 2 uses
  %i.wq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02873.03501)
          to label %bb.ex unwind label %bb.ez     ; 2 uses

bb.ex:                                            ; preds = %.lr.ph3503
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !67
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 112
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = invoke noundef zeroext i1 %i.wt(ptr noundef nonnull align 8 dereferenceable(88) %i.wq)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.wv = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %203 = icmp ne i8 %i.wv, 0
  %204 = and i1 %i.wu, %203
  %205 = zext i1 %204 to i8
  store i8 %205, ptr %3, align 1, !tbaa !340
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.02873.03501, i64 8 ; 2 uses
  %.not3044 = icmp eq ptr %i.ww, %i.wm
  br i1 %.not3044, label %._crit_edge3504, label %.lr.ph3503

bb.ez:                                            ; preds = %bb.ex, %.lr.ph3503
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fa:                                            ; preds = %._crit_edge3504
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wy, i64 noundef 0)
          to label %bb.fb unwind label %bb.fj     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !65
  store i64 %i.xa, ptr %52, align 8, !tbaa !65
  store ptr null, ptr %i.wz, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %51, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %52, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.fc unwind label %bb.fk

bb.fc:                                            ; preds = %bb.fb
  %i.xb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fd unwind label %bb.fl

bb.fd:                                            ; preds = %bb.fc
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, i64 noundef 0)
          to label %bb.fe unwind label %bb.fl     ; 2 uses

bb.fe:                                            ; preds = %bb.fd
  %i.xe = load ptr, ptr %51, align 8, !tbaa !65
  store ptr null, ptr %51, align 8, !tbaa !65
  %i.xf = load ptr, ptr %i.xd, align 8, !tbaa !65 ; 3 uses
  store ptr %i.xe, ptr %i.xd, align 8, !tbaa !65
  %.not.i.i.i.i.i1059 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i.i1059, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1060

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1060: ; preds = %bb.fe
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !67
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8
  call void %i.xi(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.xf) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061: ; preds = %bb.fe, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1060
  %i.xj = load ptr, ptr %51, align 8, !tbaa !65   ; 3 uses
  %.not.i1062 = icmp eq ptr %i.xj, null
  br i1 %.not.i1062, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1063

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1063: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !67
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8
  call void %i.xm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.xj) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1063
  %i.xn = load ptr, ptr %52, align 8, !tbaa !65   ; 3 uses
  %.not.i1065 = icmp eq ptr %i.xn, null
  br i1 %.not.i1065, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1066

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1066: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !67
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8
  call void %i.xq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.xn) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1066
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.0178.0.copyload = load i64, ptr %i.xr, align 8, !tbaa !46
  %.sroa.2179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.2179.0.copyload = load i64, ptr %.sroa.2179.0..sroa_idx, align 8, !tbaa !46
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressionsC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull align 8 dereferenceable(41) %53, i64 %.sroa.0178.0.copyload, i64 %.sroa.2179.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.xs, i64 noundef %4, i1 noundef zeroext false)
          to label %bb.ff unwind label %bb.fm

bb.ff:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067
  %i.xt = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fg unwind label %bb.fn

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %53, ptr noundef nonnull align 8 dereferenceable(97) %i.xt)
          to label %bb.fh unwind label %bb.fn

bb.fh:                                            ; preds = %bb.fg
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.xv = load i8, ptr %i.xu, align 8, !tbaa !26, !range !101, !noundef !50
  %i.xw = trunc nuw i8 %i.xv to i1
  br i1 %i.xw, label %bb.fi, label %.lr.ph3512

bb.fi:                                            ; preds = %bb.fh
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !42 ; 2 uses
  %i.yb = load ptr, ptr %i.xy, align 8, !tbaa !45 ; 2 uses
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = sdiv exact i64 %i.ye, 80
  %.not3556 = icmp eq ptr %i.ya, %i.yb
  br i1 %.not3556, label %._crit_edge3513.thread, label %.lr.ph3512

.lr.ph3512:                                       ; preds = %bb.fh, %bb.fi
  %i.yg = phi i64 [ %i.yf, %bb.fi ], [ 1, %bb.fh ] ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.yi = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wh, i64 152
  %i.yk = getelementptr inbounds nuw i8, ptr %i.wh, i64 160
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wh, i64 128 ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wh, i64 136 ; 5 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wh, i64 144 ; 3 uses
  br label %bb.fo

._crit_edge3513:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1100
  %.pre3920 = load i8, ptr %i.xu, align 8, !tbaa !26, !range !101
  %i.yo = trunc nuw i8 %.pre3920 to i1
  br i1 %i.yo, label %._crit_edge3513.thread, label %bb.gc

bb.fj:                                            ; preds = %bb.fa, %._crit_edge3504
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073

bb.fk:                                            ; preds = %bb.fb
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070

bb.fl:                                            ; preds = %bb.fd, %bb.fc
  %i.yr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ys = load ptr, ptr %51, align 8, !tbaa !65   ; 3 uses
  %.not.i1068 = icmp eq ptr %i.ys, null
  br i1 %.not.i1068, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069: ; preds = %bb.fl
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !67
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8
  call void %i.yv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ys) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069, %bb.fl, %bb.fk
  %.pn805 = phi { ptr, i32 } [ %i.yq, %bb.fk ], [ %i.yr, %bb.fl ], [ %i.yr, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069 ] ; 2 uses
  %i.yw = load ptr, ptr %52, align 8, !tbaa !65   ; 3 uses
  %.not.i1071 = icmp eq ptr %i.yw, null
  br i1 %.not.i1071, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !67
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8
  call void %i.yz(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.yw) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070, %bb.fj
  %.pn805.pn = phi { ptr, i32 } [ %i.yp, %bb.fj ], [ %.pn805, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070 ], [ %.pn805, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  br label %.body

bb.fm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.fn:                                            ; preds = %bb.fg, %bb.ff
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.fo:                                            ; preds = %.lr.ph3512, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1100
  %storemerge8083510 = phi i64 [ 0, %.lr.ph3512 ], [ %i.aco, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1100 ] ; 5 uses
  %i.zc = load ptr, ptr %i.yh, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !42
  %i.zf = load ptr, ptr %i.zc, align 8, !tbaa !45 ; 2 uses
  %i.zg = ptrtoint ptr %i.ze to i64
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = sub i64 %i.zg, %i.zh
  %i.zj = sdiv exact i64 %i.zi, 80                ; 2 uses
  %.not.i.i.i1074 = icmp ult i64 %storemerge8083510, %i.zj
  br i1 %.not.i.i.i1074, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge8083510, i64 noundef %i.zj) #24
          to label %.noexc1075 unwind label %bb.fu

.noexc1075:                                       ; preds = %bb.fp
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.zk = getelementptr inbounds nuw [80 x i8], ptr %i.zf, i64 %storemerge8083510 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
end_hunk_1
