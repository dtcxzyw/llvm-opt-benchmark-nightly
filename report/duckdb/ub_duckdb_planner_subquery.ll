inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  %i.ks = load ptr, ptr %34, align 8, !tbaa !401
  store ptr %i.ks, ptr %0, align 8, !tbaa !272
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit2629

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit955: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i936, %bb.bq
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load ptr, ptr %i.da, align 8, !tbaa !67
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.da) #22, !inline_history !69
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit955, %_ZN6duckdb13JoinConditionD2Ev.exit930, %bb.al
  %.sroa.02920.1 = phi ptr [ %i.da, %_ZN6duckdb13JoinConditionD2Ev.exit930 ], [ %i.da, %bb.al ], [ null, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit955 ] ; 2 uses
  %.pn563.pn = phi { ptr, i32 } [ %.pn563, %_ZN6duckdb13JoinConditionD2Ev.exit930 ], [ %i.ep, %bb.al ], [ %i.kt, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit955 ] ; 2 uses
  %i.kx = load ptr, ptr %34, align 8, !tbaa !401  ; 3 uses
  %.not.i956 = icmp eq ptr %i.kx, null
  br i1 %.not.i956, label %.body891, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i957

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i957: ; preds = %bb.bs
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !67
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(280) %i.kx) #22, !inline_history !438
  br label %.body891

.body891:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i957, %bb.bs, %bb.ak, %bb.ah
  %.sroa.02920.2 = phi ptr [ %i.da, %bb.ak ], [ %i.da, %bb.ah ], [ %.sroa.02920.1, %bb.bs ], [ %.sroa.02920.1, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i957 ]
  %.pn563.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %i.dv, %bb.ah ], [ %.pn563.pn, %bb.bs ], [ %.pn563.pn, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i957 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.body

bb.bt:                                            ; preds = %bb.ad
  %i.lb = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.lb, ptr %37, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins11DecorrelateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEEbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %36, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %37, i1 noundef zeroext true, i64 noundef 0)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.da, ptr %38, align 8, !tbaa !272
  invoke void @_ZN6duckdb19LogicalCrossProduct6CreateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull %36, ptr noundef nonnull %38)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.lc = load ptr, ptr %38, align 8, !tbaa !65   ; 3 uses
  %.not.i959 = icmp eq ptr %i.lc, null
  br i1 %.not.i959, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit961, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i960

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i960: ; preds = %bb.bv
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !67
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.lc) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit961

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit961: ; preds = %bb.bv, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i960
  %i.lg = load ptr, ptr %36, align 8, !tbaa !65   ; 3 uses
  %.not.i962 = icmp eq ptr %i.lg, null
  br i1 %.not.i962, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i963

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i963: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit961
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !67
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.lg) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit961, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i963
  %i.lk = load ptr, ptr %37, align 8, !tbaa !65   ; 3 uses
  %.not.i965 = icmp eq ptr %i.lk, null
  br i1 %.not.i965, label %_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit2629, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i966

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i966: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit964
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.lk) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit2629

bb.bw:                                            ; preds = %bb.bt
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit973

bb.bx:                                            ; preds = %bb.bu
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %38, align 8, !tbaa !65   ; 3 uses
  %.not.i968 = icmp eq ptr %i.lq, null
  br i1 %.not.i968, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i969

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i969: ; preds = %bb.bx
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !67
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.lq) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970: ; preds = %bb.bx, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i969
  %i.lu = load ptr, ptr %36, align 8, !tbaa !65   ; 3 uses
  %.not.i971 = icmp eq ptr %i.lu, null
  br i1 %.not.i971, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit973, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i972

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i972: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !67
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.lu) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit973

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit973: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i972, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970, %bb.bw
  %.sroa.02920.3 = phi ptr [ %i.da, %bb.bw ], [ null, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970 ], [ null, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i972 ] ; 2 uses
  %.pn557 = phi { ptr, i32 } [ %i.lo, %bb.bw ], [ %i.lp, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit970 ], [ %i.lp, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i972 ] ; 2 uses
  %i.ly = load ptr, ptr %37, align 8, !tbaa !65   ; 3 uses
  %.not.i974 = icmp eq ptr %i.ly, null
  br i1 %.not.i974, label %.body, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i975

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i975: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit973
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !67
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ly) #22, !inline_history !69
  br label %.body

.critedge:                                        ; preds = %bb.aa, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit
  %.sroa.02920.6 = phi ptr [ null, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit ], [ %i.da, %bb.aa ] ; 168 uses
  %i.mc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.by unwind label %bb.s

bb.by:                                            ; preds = %.critedge
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load i8, ptr %i.md, align 8, !tbaa !75
  switch i8 %i.me, label %bb.apv [
    i8 5, label %bb.bz
    i8 2, label %bb.bz
    i8 1, label %bb.cu
    i8 3, label %bb.er
    i8 54, label %bb.kc
    i8 57, label %bb.oe
    i8 53, label %bb.oh
    i8 56, label %bb.oh
    i8 52, label %bb.oh
    i8 6, label %bb.xb
    i8 4, label %bb.acw
    i8 76, label %bb.aeb
    i8 77, label %bb.aeb
    i8 75, label %bb.aeb
    i8 11, label %bb.agq
    i8 28, label %bb.ahl
    i8 14, label %bb.ait
    i8 7, label %bb.aiy
    i8 25, label %bb.ajh
    i8 79, label %bb.akm
    i8 78, label %bb.akm
    i8 31, label %bb.apc
    i8 51, label %bb.apg
    i8 12, label %bb.apl
    i8 55, label %bb.apq
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.mf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ca unwind label %bb.cb     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !264 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !264 ; 2 uses
  %.not30503538 = icmp eq ptr %i.mh, %i.mj
  br i1 %.not30503538, label %._crit_edge3542, label %.lr.ph3541

.lr.ph3541:                                       ; preds = %bb.ca
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 241 ; 2 uses
  br label %bb.cc

._crit_edge3542:                                  ; preds = %bb.ce, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.ml = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cg unwind label %bb.co

bb.cb:                                            ; preds = %bb.bz
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %.lr.ph3541, %bb.ce
  %.sroa.02887.03539 = phi ptr [ %i.mh, %.lr.ph3541 ], [ %i.mq, %bb.ce ] ; 2 uses
  %i.mn = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02887.03539)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.mo = invoke noundef zeroext i1 @_ZN6duckdb23SubqueryDependentFilterERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %i.mn)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.mp = load i8, ptr %i.mk, align 1, !tbaa !40, !range !101, !noundef !50
  %197 = zext i1 %i.mo to i8
  %198 = or i8 %i.mp, %197
  store i8 %198, ptr %i.mk, align 1, !tbaa !40
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.02887.03539, i64 8 ; 2 uses
  %.not3050 = icmp eq ptr %i.mq, %i.mj
  br i1 %.not3050, label %._crit_edge3542, label %bb.cc

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %._crit_edge3542
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, i64 noundef 0)
          to label %bb.ch unwind label %bb.co     ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !65
  store i64 %i.mu, ptr %40, align 8, !tbaa !65
  store ptr null, ptr %i.mt, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %39, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %40, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.ci unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.mv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cj unwind label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.mw, i64 noundef 0)
          to label %bb.ck unwind label %bb.cq     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.my = load ptr, ptr %39, align 8, !tbaa !65
  store ptr null, ptr %39, align 8, !tbaa !65
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !65 ; 3 uses
  store ptr %i.my, ptr %i.mx, align 8, !tbaa !65
  %.not.i.i.i.i.i977 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i.i977, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ck
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !67
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.mz) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ck, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.nd = load ptr, ptr %39, align 8, !tbaa !65   ; 3 uses
  %.not.i978 = icmp eq ptr %i.nd, null
  br i1 %.not.i978, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i979

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i979: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !67
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nd) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i979
  %i.nh = load ptr, ptr %40, align 8, !tbaa !65   ; 3 uses
  %.not.i981 = icmp eq ptr %i.nh, null
  br i1 %.not.i981, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i982

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i982: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !67
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nh) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit980, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i982
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0209.0.copyload = load i64, ptr %i.nl, align 8, !tbaa !46
  %.sroa.2210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2210.0.copyload = load i64, ptr %.sroa.2210.0..sroa_idx, align 8, !tbaa !46
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressionsC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull align 8 dereferenceable(41) %41, i64 %.sroa.0209.0.copyload, i64 %.sroa.2210.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.nm, i64 noundef %4, i1 noundef zeroext false)
          to label %bb.cl unwind label %bb.cr

bb.cl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983
  %i.nn = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %41, ptr noundef nonnull align 8 dereferenceable(97) %i.nn)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.no = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.no, ptr %0, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit967

bb.co:                                            ; preds = %bb.cg, %._crit_edge3542
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989

bb.cp:                                            ; preds = %bb.ch
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986

bb.cq:                                            ; preds = %bb.cj, %bb.ci
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ns = load ptr, ptr %39, align 8, !tbaa !65   ; 3 uses
  %.not.i984 = icmp eq ptr %i.ns, null
  br i1 %.not.i984, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985: ; preds = %bb.cq
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !67
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ns) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985, %bb.cq, %bb.cp
  %.pn859 = phi { ptr, i32 } [ %i.nq, %bb.cp ], [ %i.nr, %bb.cq ], [ %i.nr, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i985 ] ; 2 uses
  %i.nw = load ptr, ptr %40, align 8, !tbaa !65   ; 3 uses
  %.not.i987 = icmp eq ptr %i.nw, null
  br i1 %.not.i987, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !67
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.nw) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit989: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986, %bb.co
  %.pn859.pn = phi { ptr, i32 } [ %i.np, %bb.co ], [ %.pn859, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit986 ], [ %.pn859, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i988 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %.body

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit983
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cm, %bb.cl
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn862 = phi { ptr, i32 } [ %i.ob, %bb.cs ], [ %i.oa, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body

bb.cu:                                            ; preds = %bb.by
  %i.oc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cv unwind label %bb.cw     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 40
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !264 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !264 ; 2 uses
  %.not30483530 = icmp eq ptr %i.oe, %i.og
  br i1 %.not30483530, label %._crit_edge3534, label %.lr.ph3533

._crit_edge3534:                                  ; preds = %bb.cy, %bb.cv
  %i.oh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.da unwind label %bb.dk

bb.cw:                                            ; preds = %bb.cu
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph3533:                                       ; preds = %bb.cv, %bb.cy
  %.sroa.02883.03531 = phi ptr [ %i.or, %bb.cy ], [ %i.oe, %bb.cv ] ; 2 uses
  %i.oj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02883.03531)
          to label %bb.cx unwind label %bb.cz     ; 2 uses

bb.cx:                                            ; preds = %.lr.ph3533
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !67
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 112
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = invoke noundef zeroext i1 %i.om(ptr noundef nonnull align 8 dereferenceable(88) %i.oj)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.oo = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %199 = icmp ne i8 %i.oo, 0
  %i.op = and i1 %i.on, %199
  %i.oq = zext i1 %i.op to i8
  store i8 %i.oq, ptr %3, align 1, !tbaa !340
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.02883.03531, i64 8 ; 2 uses
  %.not3048 = icmp eq ptr %i.or, %i.og
  br i1 %.not3048, label %._crit_edge3534, label %.lr.ph3533

bb.cz:                                            ; preds = %bb.cx, %.lr.ph3533
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %._crit_edge3534
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
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
  %i.oz = and i1 %.not840, %200
  %i.pa = zext i1 %i.oz to i8
  store i8 %i.pa, ptr %3, align 1, !tbaa !340
  br i1 %i.at, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.pb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.de unwind label %bb.dl

bb.de:                                            ; preds = %bb.dd
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pc, i64 noundef 0)
          to label %bb.df unwind label %bb.dl     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !65
  store i64 %i.pe, ptr %44, align 8, !tbaa !65
  store ptr null, ptr %i.pd, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins11DecorrelateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEEbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %43, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %44, i1 noundef zeroext true, i64 noundef 0)
          to label %bb.dg unwind label %bb.dm

bb.dg:                                            ; preds = %bb.df
  store ptr %.sroa.02920.6, ptr %45, align 8, !tbaa !272
  invoke void @_ZN6duckdb19LogicalCrossProduct6CreateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %42, ptr noundef nonnull %43, ptr noundef nonnull %45)
          to label %bb.dh unwind label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.pf = load ptr, ptr %45, align 8, !tbaa !65   ; 3 uses
  %.not.i990 = icmp eq ptr %i.pf, null
  br i1 %.not.i990, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i991

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i991: ; preds = %bb.dh
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !67
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pf) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992: ; preds = %bb.dh, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i991
  %i.pj = load ptr, ptr %43, align 8, !tbaa !65   ; 3 uses
  %.not.i993 = icmp eq ptr %i.pj, null
  br i1 %.not.i993, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i994

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i994: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !67
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pj) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit992, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i994
  %i.pn = load ptr, ptr %44, align 8, !tbaa !65   ; 3 uses
  %.not.i996 = icmp eq ptr %i.pn, null
  br i1 %.not.i996, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i997

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i997: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !67
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pn) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit995, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i997
  %i.pr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.di unwind label %bb.do

bb.di:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ps, i64 noundef 0)
          to label %bb.dj unwind label %bb.do     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %i.pu = load ptr, ptr %42, align 8, !tbaa !65
  store ptr null, ptr %42, align 8, !tbaa !65
  %i.pv = load ptr, ptr %i.pt, align 8, !tbaa !65 ; 3 uses
  store ptr %i.pu, ptr %i.pt, align 8, !tbaa !65
  %.not.i.i.i.i.i999 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i.i999, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1000

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1000: ; preds = %bb.dj
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !67
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pv) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001: ; preds = %bb.dj, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1000
  %i.pz = load ptr, ptr %42, align 8, !tbaa !65   ; 3 uses
  %.not.i1002 = icmp eq ptr %i.pz, null
  br i1 %.not.i1002, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1004, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1003

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1003: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !67
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.pz) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1004

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1004: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1001, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1003
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.dy

bb.dk:                                            ; preds = %bb.db, %bb.da, %._crit_edge3534
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dl:                                            ; preds = %bb.de, %bb.dd
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013

bb.dm:                                            ; preds = %bb.df
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010

bb.dn:                                            ; preds = %bb.dg
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = load ptr, ptr %45, align 8, !tbaa !65   ; 3 uses
  %.not.i1005 = icmp eq ptr %i.qh, null
  br i1 %.not.i1005, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1006

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1006: ; preds = %bb.dn
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !67
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qh) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007: ; preds = %bb.dn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1006
  %i.ql = load ptr, ptr %43, align 8, !tbaa !65   ; 3 uses
  %.not.i1008 = icmp eq ptr %i.ql, null
  br i1 %.not.i1008, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ql) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007, %bb.dm
  %.sroa.02920.7 = phi ptr [ %.sroa.02920.6, %bb.dm ], [ null, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007 ], [ null, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009 ] ; 2 uses
  %.pn844 = phi { ptr, i32 } [ %i.qf, %bb.dm ], [ %i.qg, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1007 ], [ %i.qg, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1009 ] ; 2 uses
  %i.qp = load ptr, ptr %44, align 8, !tbaa !65   ; 3 uses
  %.not.i1011 = icmp eq ptr %i.qp, null
  br i1 %.not.i1011, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !67
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qp) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013

bb.do:                                            ; preds = %bb.di, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit998
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qu = load ptr, ptr %42, align 8, !tbaa !65   ; 3 uses
  %.not.i1014 = icmp eq ptr %i.qu, null
  br i1 %.not.i1014, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015: ; preds = %bb.do
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !67
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qu) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1013: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015, %bb.do, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010, %bb.dl
  %.sroa.02920.8 = phi ptr [ %.sroa.02920.7, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012 ], [ %.sroa.02920.6, %bb.dl ], [ %.sroa.02920.7, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010 ], [ null, %bb.do ], [ null, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015 ]
  %.pn846 = phi { ptr, i32 } [ %.pn844, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1012 ], [ %i.qe, %bb.dl ], [ %.pn844, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1010 ], [ %i.qt, %bb.do ], [ %i.qt, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1015 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body

bb.dp:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  %i.qy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qz, i64 noundef 0)
          to label %bb.dr unwind label %bb.dv     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !65
  store i64 %i.rb, ptr %47, align 8, !tbaa !65
  store ptr null, ptr %i.ra, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %46, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %47, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.rc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
middle.block5561:                                 ; preds = %vector.body5554
  %cmp.n5562 = icmp eq i64 %i.ub, %n.vec5553
  br i1 %cmp.n5562, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i1039.preheader5565

.lr.ph.i.i.i.i.i.i.i1039.preheader5565:           ; preds = %vector.memcheck5541, %.lr.ph.i.i.i.i.i.i.i1039.preheader, %middle.block5561
  %.012.i.i.i.i.i.i.i1040.ph = phi ptr [ %i.tv, %vector.memcheck5541 ], [ %i.tv, %.lr.ph.i.i.i.i.i.i.i1039.preheader ], [ %i.ug, %middle.block5561 ]
  %.0911.i.i.i.i.i.i.i1041.ph = phi ptr [ %i.tk, %vector.memcheck5541 ], [ %i.tk, %.lr.ph.i.i.i.i.i.i.i1039.preheader ], [ %i.uh, %middle.block5561 ]
  br label %.lr.ph.i.i.i.i.i.i.i1039

.lr.ph.i.i.i.i.i.i.i1039:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1039.preheader5565, %.lr.ph.i.i.i.i.i.i.i1039
  %.012.i.i.i.i.i.i.i1040 = phi ptr [ %i.up, %.lr.ph.i.i.i.i.i.i.i1039 ], [ %.012.i.i.i.i.i.i.i1040.ph, %.lr.ph.i.i.i.i.i.i.i1039.preheader5565 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1041 = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i.i.i1039 ], [ %.0911.i.i.i.i.i.i.i1041.ph, %.lr.ph.i.i.i.i.i.i.i1039.preheader5565 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.un = load i64, ptr %.0911.i.i.i.i.i.i.i1041, align 8, !tbaa !211, !alias.scope !444, !noalias !441
  store i64 %i.un, ptr %.012.i.i.i.i.i.i.i1040, align 8, !tbaa !211, !alias.scope !441, !noalias !444
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1041, align 8, !tbaa !211, !alias.scope !444, !noalias !441
  %i.uo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1041, i64 8 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1040, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1042 = icmp eq ptr %i.uo, %i.tf
  br i1 %.not.i.i.i.i.i.i.i1042, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i1039, !llvm.loop !452

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i1039, %middle.block5561, %.noexc1046
  %.0.lcssa.i.i.i.i.i.i.i1043 = phi ptr [ %i.tv, %.noexc1046 ], [ %i.ug, %middle.block5561 ], [ %i.up, %.lr.ph.i.i.i.i.i.i.i1039 ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1043, i64 8 ; 2 uses
  %.not.i23.i.i.i1044 = icmp eq ptr %i.tk, null
  br i1 %.not.i23.i.i.i1044, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread4455, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread4455: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.tv, ptr %i.tc, align 8, !tbaa !212
  store ptr %i.uq, ptr %i.te, align 8, !tbaa !209
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tt
  store ptr %i.ur, ptr %i.tg, align 8, !tbaa !210
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.tk) #23
  %.pre3923.pre = load ptr, ptr %49, align 8, !tbaa !379 ; 3 uses
  store ptr %i.tv, ptr %i.tc, align 8, !tbaa !212
  store ptr %i.uq, ptr %i.te, align 8, !tbaa !209
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tt
  store ptr %i.us, ptr %i.tg, align 8, !tbaa !210
  %.not.i1050 = icmp eq ptr %.pre3923.pre, null
  br i1 %.not.i1050, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1051

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1051: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049
  %i.ut = load ptr, ptr %.pre3923.pre, align 8, !tbaa !67
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(112) %.pre3923.pre) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1052: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread4455, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1049, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1051
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.uw = add nuw i64 %storemerge8483535, 1       ; 2 uses
  %i.ux = load ptr, ptr %i.si, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !42
  %i.va = load ptr, ptr %i.ux, align 8, !tbaa !45 ; 2 uses
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = sub i64 %i.vb, %i.vc
  %i.ve = sdiv exact i64 %i.vd, 80
  %i.vf = icmp ult i64 %i.uw, %i.ve
  br i1 %i.vf, label %bb.eg, label %._crit_edge3537, !llvm.loop !453

bb.el:                                            ; preds = %bb.eg
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.eo

bb.em:                                            ; preds = %bb.eh
  %i.vh = landingpad { ptr, i32 }
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
  %.not.i1053 = icmp eq ptr %i.td, null
  br i1 %.not.i1053, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054: ; preds = %bb.en
  %i.vi = load ptr, ptr %i.td, align 8, !tbaa !67
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(88) %i.td) #22, !inline_history !229
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054, %bb.en, %bb.em
  %.pn849 = phi { ptr, i32 } [ %i.vh, %bb.em ], [ %lpad.phi, %bb.en ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1054 ] ; 2 uses
  %i.vl = load ptr, ptr %49, align 8, !tbaa !379  ; 3 uses
  %.not.i1056 = icmp eq ptr %i.vl, null
  br i1 %.not.i1056, label %bb.eo, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !67
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(112) %i.vl) #22, !inline_history !381
  br label %bb.eo

bb.eo:                                            ; preds = %bb.el, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057
  %.pn849.pn = phi { ptr, i32 } [ %i.vg, %bb.el ], [ %.pn849, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1055 ], [ %.pn849, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1057 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %bb.eq

bb.ep:                                            ; preds = %._crit_edge3537
  %i.vp = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.vq = getelementptr inbounds nuw i8, ptr %i.sq, i64 48
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !209
  %i.vs = load ptr, ptr %i.vp, align 8, !tbaa !212
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = ashr exact i64 %i.vv, 3
  %i.vx = load ptr, ptr %i.si, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !42
  %i.wa = load ptr, ptr %i.vx, align 8, !tbaa !45
  %i.wb = ptrtoint ptr %i.vz to i64
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = sub i64 %i.wb, %i.wc
  %.neg3049 = sdiv exact i64 %i.wd, -80
  %i.we = add nsw i64 %.neg3049, %i.vw            ; 2 uses
  store i64 %i.we, ptr %.sroa.2204.0..sroa_idx, align 8, !tbaa !408
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.we, ptr %i.wf, align 8, !tbaa !238
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.wg, align 8, !tbaa !233
  %i.wh = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.wh, ptr %0, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit967

bb.eq:                                            ; preds = %bb.ee, %bb.eo, %bb.ef, %bb.ed
  %.pn849.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sr, %bb.ed ], [ %i.ss, %bb.ee ], [ %.pn849.pn, %bb.eo ], [ %i.st, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.body

bb.er:                                            ; preds = %bb.by
  %i.wi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.wj = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZN6duckdb15LogicalOperator4CastINS_16LogicalAggregateEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.wi)
          to label %bb.et unwind label %bb.ev     ; 21 uses

bb.et:                                            ; preds = %bb.es
  %i.wk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.eu unwind label %bb.ew     ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 40
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !264 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 48
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !264 ; 2 uses
  %.not30443500 = icmp eq ptr %i.wm, %i.wo
  br i1 %.not30443500, label %._crit_edge3504, label %.lr.ph3503

._crit_edge3504:                                  ; preds = %bb.ey, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  %i.wp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fa unwind label %bb.fj

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ew:                                            ; preds = %bb.et
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph3503:                                       ; preds = %bb.eu, %bb.ey
  %.sroa.02873.03501 = phi ptr [ %i.xa, %bb.ey ], [ %i.wm, %bb.eu ] ; 2 uses
  %i.ws = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02873.03501)
          to label %bb.ex unwind label %bb.ez     ; 2 uses

bb.ex:                                            ; preds = %.lr.ph3503
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !67
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 112
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = invoke noundef zeroext i1 %i.wv(ptr noundef nonnull align 8 dereferenceable(88) %i.ws)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.wx = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %201 = icmp ne i8 %i.wx, 0
  %i.wy = and i1 %i.ww, %201
  %i.wz = zext i1 %i.wy to i8
  store i8 %i.wz, ptr %3, align 1, !tbaa !340
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.02873.03501, i64 8 ; 2 uses
  %.not3044 = icmp eq ptr %i.xa, %i.wo
  br i1 %.not3044, label %._crit_edge3504, label %.lr.ph3503

bb.ez:                                            ; preds = %bb.ex, %.lr.ph3503
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fa:                                            ; preds = %._crit_edge3504
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, i64 noundef 0)
          to label %bb.fb unwind label %bb.fj     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !65
  store i64 %i.xe, ptr %52, align 8, !tbaa !65
  store ptr null, ptr %i.xd, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %51, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %52, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.fc unwind label %bb.fk

bb.fc:                                            ; preds = %bb.fb
  %i.xf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fd unwind label %bb.fl

bb.fd:                                            ; preds = %bb.fc
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xg, i64 noundef 0)
          to label %bb.fe unwind label %bb.fl     ; 2 uses

bb.fe:                                            ; preds = %bb.fd
  %i.xi = load ptr, ptr %51, align 8, !tbaa !65
  store ptr null, ptr %51, align 8, !tbaa !65
  %i.xj = load ptr, ptr %i.xh, align 8, !tbaa !65 ; 3 uses
  store ptr %i.xi, ptr %i.xh, align 8, !tbaa !65
  %.not.i.i.i.i.i1059 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i.i.i1059, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1060

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1060: ; preds = %bb.fe
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !67
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8
  call void %i.xm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.xj) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061: ; preds = %bb.fe, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1060
  %i.xn = load ptr, ptr %51, align 8, !tbaa !65   ; 3 uses
  %.not.i1062 = icmp eq ptr %i.xn, null
  br i1 %.not.i1062, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1063

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1063: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !67
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8
  call void %i.xq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.xn) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1061, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1063
  %i.xr = load ptr, ptr %52, align 8, !tbaa !65   ; 3 uses
  %.not.i1065 = icmp eq ptr %i.xr, null
  br i1 %.not.i1065, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1066

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1066: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !67
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8
  call void %i.xu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.xr) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1064, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1066
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.0178.0.copyload = load i64, ptr %i.xv, align 8, !tbaa !46
  %.sroa.2179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.2179.0.copyload = load i64, ptr %.sroa.2179.0..sroa_idx, align 8, !tbaa !46
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressionsC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull align 8 dereferenceable(41) %53, i64 %.sroa.0178.0.copyload, i64 %.sroa.2179.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.xw, i64 noundef %4, i1 noundef zeroext false)
          to label %bb.ff unwind label %bb.fm

bb.ff:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067
  %i.xx = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fg unwind label %bb.fn

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %53, ptr noundef nonnull align 8 dereferenceable(97) %i.xx)
          to label %bb.fh unwind label %bb.fn

bb.fh:                                            ; preds = %bb.fg
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 8, !tbaa !26, !range !101, !noundef !50
  %i.ya = trunc nuw i8 %i.xz to i1
  br i1 %i.ya, label %bb.fi, label %.lr.ph3512

bb.fi:                                            ; preds = %bb.fh
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !42 ; 2 uses
  %i.yf = load ptr, ptr %i.yc, align 8, !tbaa !45 ; 2 uses
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = sdiv exact i64 %i.yi, 80
  %.not3556 = icmp eq ptr %i.ye, %i.yf
  br i1 %.not3556, label %._crit_edge3513.thread, label %.lr.ph3512

.lr.ph3512:                                       ; preds = %bb.fh, %bb.fi
  %i.yk = phi i64 [ %i.yj, %bb.fi ], [ 1, %bb.fh ] ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ym = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wj, i64 152
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wj, i64 160
  %i.yp = getelementptr inbounds nuw i8, ptr %i.wj, i64 128 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wj, i64 136 ; 5 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wj, i64 144 ; 3 uses
  br label %bb.fo

._crit_edge3513:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1100
  %.pre3920 = load i8, ptr %i.xy, align 8, !tbaa !26, !range !101
  %i.ys = trunc nuw i8 %.pre3920 to i1
  br i1 %i.ys, label %._crit_edge3513.thread, label %bb.gc

bb.fj:                                            ; preds = %bb.fa, %._crit_edge3504
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073

bb.fk:                                            ; preds = %bb.fb
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070

bb.fl:                                            ; preds = %bb.fd, %bb.fc
  %i.yv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yw = load ptr, ptr %51, align 8, !tbaa !65   ; 3 uses
  %.not.i1068 = icmp eq ptr %i.yw, null
  br i1 %.not.i1068, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069: ; preds = %bb.fl
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !67
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8
  call void %i.yz(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.yw) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069, %bb.fl, %bb.fk
  %.pn805 = phi { ptr, i32 } [ %i.yu, %bb.fk ], [ %i.yv, %bb.fl ], [ %i.yv, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1069 ] ; 2 uses
  %i.za = load ptr, ptr %52, align 8, !tbaa !65   ; 3 uses
  %.not.i1071 = icmp eq ptr %i.za, null
  br i1 %.not.i1071, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !67
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8
  call void %i.zd(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.za) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1073: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070, %bb.fj
  %.pn805.pn = phi { ptr, i32 } [ %i.yt, %bb.fj ], [ %.pn805, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1070 ], [ %.pn805, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1072 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  br label %.body

bb.fm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1067
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.fn:                                            ; preds = %bb.fg, %bb.ff
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.fo:                                            ; preds = %.lr.ph3512, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1100
  %storemerge8083510 = phi i64 [ 0, %.lr.ph3512 ], [ %i.acs, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1100 ] ; 5 uses
  %i.zg = load ptr, ptr %i.yl, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !42
  %i.zj = load ptr, ptr %i.zg, align 8, !tbaa !45 ; 2 uses
  %i.zk = ptrtoint ptr %i.zi to i64
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = sub i64 %i.zk, %i.zl
  %i.zn = sdiv exact i64 %i.zm, 80                ; 2 uses
  %.not.i.i.i1074 = icmp ult i64 %storemerge8083510, %i.zn
  br i1 %.not.i.i.i1074, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge8083510, i64 noundef %i.zn) #24
          to label %.noexc1075 unwind label %bb.fu

.noexc1075:                                       ; preds = %bb.fp
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.zo = getelementptr inbounds nuw [80 x i8], ptr %i.zj, i64 %storemerge8083510 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
end_hunk_1
begin_hunk_2_@_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_:bb.a
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb24HasCorrelatedExpressionsC2ERKNS_17CorrelatedColumnsEbm(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 10), (16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb24HasCorrelatedExpressionsE, i64 16), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.a, ptr %i.c, align 1, !tbaa !865
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.e, align 8, !tbaa !866
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor24VisitOperatorExpressionsERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24HasCorrelatedExpressions12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, ptr readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !867  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !866  ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.d, 1
  %i.f = icmp ugt i64 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %.not34 = icmp eq ptr %i.j, %i.k
  br i1 %.not34, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph

_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph:  ; preds = %.preheader
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !352
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.s = load i64, ptr %i.r, align 8
  br label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !865, !range !101, !noundef !50
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.09 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.09, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.09, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread: ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.08 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ae) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.08, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.08, label %.sink.split, label %bb.n

bb.l:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.ah = add nuw i64 %storemerge32, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.o
  br i1 %exitcond.not, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, !llvm.loop !870

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph, %bb.l
  %storemerge32 = phi i64 [ 0, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %storemerge32 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !352
  %i.ak = icmp eq i64 %i.aj, %i.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.am, %i.s
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge, label %bb.l

_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge: ; preds = %bb.l, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, %.preheader
  %.lcssa = phi i8 [ 0, %.preheader ], [ 1, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !367, !range !101, !noundef !50
  %i.ar = or i8 %i.aq, %.lcssa
  store i8 %i.ar, ptr %i.ap, align 8, !tbaa !367
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !279
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  call void @__cxa_free_exception(ptr %i.w) #22
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19.pn = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn19.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn19.pn

bb.o:                                             ; preds = %bb.j, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24HasCorrelatedExpressions12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !45
  %.not13 = icmp eq ptr %i.j, %i.k
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %storemerge12 = phi i64 [ %i.af, %bb.d ], [ 0, %.preheader ] ; 4 uses
  %i.l = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !350
  %i.o = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 80                  ; 2 uses
  %.not.i.i.i = icmp ult i64 %storemerge12, %i.w
  br i1 %.not.i.i.i, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge12, i64 noundef %i.w) #24
  unreachable

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !350
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %storemerge12
  %i.aa = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20CorrelatedColumnInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.n, ptr %i.y, ptr nonnull align 8 dereferenceable(80) %i.z)
  %i.ab = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !350
  %.not8 = icmp eq ptr %i.aa, %i.ad
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !367
  br label %.loopexit

bb.d:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.af = add nuw i64 %storemerge12, 1            ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 80
  %i.ao = icmp ult i64 %i.af, %i.an
  br i1 %i.ao, label %.lr.ph, label %.loopexit, !llvm.loop !871

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !872    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EE13AssertNotNullEb.exit, !prof !206

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_6BinderELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb28RewriteCorrelatedExpressionsC2ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(41) initializes((0, 41)) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %5 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb28RewriteCorrelatedExpressionsE, i64 16), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !873
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.d, align 8, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.e, align 8, !tbaa !345
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor21VisitOperatorChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN6duckdb28RewriteCorrelatedExpressions12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(112) %2, ptr readnone captures(none) %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !867  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !349
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !351, !nonnull !50, !align !51 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !341
  %.not.not.i.i = icmp eq i64 %i.i, 0
end_hunk_2
